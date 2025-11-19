uint64_t closure #1 in closure #3 in InterstitialViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #3 in InterstitialViewController.viewDidLoad(), v6, v5);
}

uint64_t closure #1 in closure #3 in InterstitialViewController.viewDidLoad()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(**(v0 + 24) + 184))();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #3 in InterstitialViewController.viewDidLoad();
  v2 = *(v0 + 32);

  return NotificationHandlingManager.handleEngagementEvent(with:)(v2);
}

{
  v2 = *v1;
  v2[9] = v0;

  v3 = v2[4];
  if (v0)
  {

    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
    v4 = v2[6];
    v5 = v2[7];
    v6 = closure #1 in closure #3 in InterstitialViewController.viewDidLoad();
  }

  else
  {
    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
    v4 = v2[6];
    v5 = v2[7];
    v6 = closure #1 in closure #3 in InterstitialViewController.viewDidLoad();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[9];
  v2 = v0[2];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

uint64_t specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 369) = v13;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 368) = a4;
  *(v8 + 72) = a3;
  *(v8 + 112) = type metadata accessor for EngagementEvent();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = type metadata accessor for Client();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad(), 0, 0);
}

uint64_t specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad()()
{
  v1 = v0;
  if (one-time initialization token for interstitial != -1)
  {
LABEL_62:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v1 + 256) = __swift_project_value_buffer(v2, static CommonLogger.interstitial);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[AddToEntry] Background Processing BEGIN", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + 232);
  v7 = *(v1 + 72);

  v8 = (v7 + *(v6 + 24));
  v9 = *v8;
  *(v1 + 264) = *v8;
  if (!v9)
  {
    goto LABEL_52;
  }

  v10 = *(v1 + 368);
  v11 = v8[1];
  *(v1 + 272) = v11;
  if (v10 == 3)
  {
    v12 = *(v1 + 248);
    v13 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    v15 = *(*v13 + 280);
    v16 = swift_unknownObjectRetain();
    v15(v16);
    (*(v11 + 16))(v12, ObjectType, v11);
    outlined destroy of Client(v12, type metadata accessor for Client);
  }

  else
  {
    swift_unknownObjectRetain();
    if (static Task<>.isCancelled.getter())
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_21607C000, v17, v18, "[AddToEntry] Background Processing CANCELLED", v19, 2u);
        MEMORY[0x21CE94770](v19, -1, -1);
      }

      goto LABEL_23;
    }
  }

  v20 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  if (v22 > 0.0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      *(v25 + 4) = v22;
      _os_log_impl(&dword_21607C000, v23, v24, "[AddToEntry] Background Processing Fake Work for %{public}f seconds BEGIN", v25, 0xCu);
      MEMORY[0x21CE94770](v25, -1, -1);
    }

    v26 = static Duration.seconds(_:)();
    v28 = v27;
    static Clock<>.continuous.getter();
    v29 = swift_task_alloc();
    *(v1 + 280) = v29;
    *v29 = v1;
    v29[1] = specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad();

    return specialized Clock.sleep(for:tolerance:)(v26, v28, 0, 0, 1);
  }

  if (*(v1 + 368) != 3 && (static Task<>.isCancelled.getter() & 1) != 0)
  {
    v17 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21607C000, v17, v31, "[AddToEntry] Background Processing CANCELLED", v32, 2u);
      MEMORY[0x21CE94770](v32, -1, -1);
    }

LABEL_23:

LABEL_51:
    swift_unknownObjectRelease();
LABEL_52:
    $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[AddToEntry] Background Processing END");

    v95 = *(v1 + 8);

    return v95();
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21607C000, v33, v34, "[AddToEntry] Background Processing Suggestions", v35, 2u);
    MEMORY[0x21CE94770](v35, -1, -1);
  }

  v36 = *(v1 + 80);

  v37 = (*(*v36 + 344))();
  *(v1 + 288) = v37;
  if (!v37)
  {
    goto LABEL_51;
  }

  v38 = v37;
  v40 = *(v1 + 96);
  v39 = *(v1 + 104);
  v41 = *(v1 + 88);
  v113 = *(*(v1 + 176) + 16);
  v113(*(v1 + 200), v37 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, *(v1 + 168));
  v42 = type metadata accessor for TemplatedString();
  v43 = objc_allocWithZone(v42);
  v44 = &v43[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
  *v44 = v41;
  *(v44 + 1) = v40;
  *(v1 + 40) = v43;
  *(v1 + 48) = v42;

  v123 = objc_msgSendSuper2((v1 + 40), sel_init);
  v45 = *(v38 + OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle);
  v46 = *((*MEMORY[0x277D85000] & *v38) + 0xA8);
  v111 = *(v38 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  v47 = v111;
  v112 = v45;
  v48 = v45;
  v49 = v46();
  v125 = MEMORY[0x277D84F90];
  v118 = v38;
  v119 = v48;
  v120 = v47;
  v116 = v49;
  v50 = v39 & 0xFFFFFFFFFFFFFF8;
  if (v39 >> 62)
  {
    v51 = __CocoaSet.count.getter();
  }

  else
  {
    v51 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 0;
  v53 = v39 & 0xC000000000000001;
  v54 = *(v1 + 104) + 32;
  v121 = MEMORY[0x277D84F90];
  while (v51 != v52)
  {
    if (v53)
    {
      v55 = MEMORY[0x21CE93180](v52, *(v1 + 104));
    }

    else
    {
      if (v52 >= *(v50 + 16))
      {
        goto LABEL_61;
      }

      v55 = *(v54 + 8 * v52);
    }

    v56 = v55;
    v57 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v58 = Asset.transferrable.getter();

    ++v52;
    if (v58)
    {
      MEMORY[0x21CE92260]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v121 = v125;
      v52 = v57;
    }
  }

  v59 = *(v1 + 200);
  v60 = v1;
  v63 = v1 + 168;
  v62 = *(v1 + 168);
  v61 = *(v63 + 8);
  v65 = *(v60 + 152);
  v64 = *(v60 + 160);
  v108 = v118[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType];
  v109 = *(v60 + 144);
  v107 = v118[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType];
  v66 = *&v118[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt];
  v67 = *(v61 + 56);
  v67(v64, 1, 1, v62);
  v67(v65, 1, 1, v62);
  v110 = type metadata accessor for Suggestion();
  v68 = objc_allocWithZone(v110);
  v69 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  *&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
  v113(&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v59, v62);
  *&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = v123;
  *&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = v112;
  *&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = v111;
  swift_beginAccess();
  *&v68[v69] = v116;
  *&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = v121;
  v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v108;
  v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v107;
  *&v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = v66;
  outlined init with copy of DateInterval?(v64, &v68[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID], &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(v65, v109, &_s10Foundation4UUIDVSgMd);
  v70 = *(v61 + 48);
  *(v60 + 296) = v70;
  *(v60 + 304) = (v61 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v70(v109, 1, v62) == 1)
  {
    v114 = *(v60 + 168);
    v71 = *(v60 + 144);
    v72 = v116;
    v73 = v66;
    v74 = v119;
    v75 = v120;
    v76 = v73;
    v77 = v123;
    UUID.init()();
    v117 = v72;
    if (v70(v71, 1, v114) != 1)
    {
      outlined destroy of UTType?(*(v60 + 144), &_s10Foundation4UUIDVSgMd);
    }

    v79 = v119;
    v78 = v120;
  }

  else
  {
    (*(*(v60 + 176) + 32))(*(v60 + 192), *(v60 + 144), *(v60 + 168));
    v117 = v116;
    v80 = v66;
    v79 = v119;
    v81 = v119;
    v78 = v120;
    v82 = v120;
    v76 = v80;
    v83 = v123;
  }

  v84 = *(v60 + 192);
  v122 = *(v60 + 200);
  v85 = *(v60 + 168);
  v86 = *(v60 + 176);
  v87 = *(v60 + 152);
  v115 = *(v60 + 160);
  v88 = *(v60 + 368);
  v89 = OBJC_IVAR____TtC9MomentsUI10Suggestion_id;
  v90 = *(v86 + 32);
  *(v60 + 312) = v90;
  *(v60 + 320) = (v86 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v90(&v68[v89], v84, v85);
  *(v60 + 56) = v68;
  *(v60 + 64) = v110;
  v91 = objc_msgSendSuper2((v60 + 56), sel_init);
  *(v60 + 328) = v91;

  outlined destroy of UTType?(v87, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v115, &_s10Foundation4UUIDVSgMd);
  (*(v86 + 8))(v122, v85);
  if (v88 != 3 && (static Task<>.isCancelled.getter() & 1) != 0)
  {
    v1 = v60;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_21607C000, v92, v93, "[AddToEntry] Background Processing CANCELLED", v94, 2u);
      MEMORY[0x21CE94770](v94, -1, -1);
    }

    goto LABEL_51;
  }

  v96 = v60;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_21607C000, v97, v98, "[AddToEntry] Background Sending Suggestions", v99, 2u);
    MEMORY[0x21CE94770](v99, -1, -1);
  }

  v100 = v96[34];
  v101 = v96[10];

  v102 = swift_getObjectType();
  v96[42] = v102;
  v103 = *v101;
  v104 = *(*v101 + 280);
  v96[43] = v104;
  v96[44] = (v103 + 280) & 0xFFFFFFFFFFFFLL | 0x53C1000000000000;
  v104();
  v124 = (*(v100 + 24) + **(v100 + 24));
  v105 = swift_task_alloc();
  v96[45] = v105;
  *v105 = v96;
  v105[1] = specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad();
  v106 = v96[31];

  return v124(v91, v106, v102, v100);
}

{
  v2 = *v1;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[AddToEntry] Background Processing Fake Work END", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  if (*(v0 + 368) != 3 && (static Task<>.isCancelled.getter() & 1) != 0)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[AddToEntry] Background Processing CANCELLED", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

LABEL_35:
    swift_unknownObjectRelease();
    $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[AddToEntry] Background Processing END");

    v69 = *(v0 + 8);

    return v69();
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21607C000, v7, v8, "[AddToEntry] Background Processing Suggestions", v9, 2u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  v10 = *(v0 + 80);

  v11 = (*(*v10 + 344))();
  *(v0 + 288) = v11;
  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = v11;
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 88);
  v88 = *(*(v0 + 176) + 16);
  v88(*(v0 + 200), v11 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, *(v0 + 168));
  v16 = type metadata accessor for TemplatedString();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
  *v18 = v15;
  *(v18 + 1) = v14;
  *(v0 + 40) = v17;
  *(v0 + 48) = v16;

  v95 = objc_msgSendSuper2((v0 + 40), sel_init);
  v19 = *(v12 + OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle);
  v20 = *((*MEMORY[0x277D85000] & *v12) + 0xA8);
  v86 = *(v12 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  v21 = v86;
  v87 = v19;
  v22 = v19;
  v23 = v20();
  v98 = MEMORY[0x277D84F90];
  v91 = v22;
  v92 = v21;
  v89 = v23;
  if (v13 >> 62)
  {
LABEL_45:
    v24 = v13 & 0xFFFFFFFFFFFFFF8;
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = v13 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v27 = v13 & 0xC000000000000001;
  v28 = *(v0 + 104) + 32;
  v93 = MEMORY[0x277D84F90];
  while (v25 != v26)
  {
    if (v27)
    {
      v29 = MEMORY[0x21CE93180](v26, *(v0 + 104));
    }

    else
    {
      if (v26 >= *(v24 + 16))
      {
        goto LABEL_44;
      }

      v29 = *(v28 + 8 * v26);
    }

    v30 = v29;
    v13 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v31 = Asset.transferrable.getter();

    ++v26;
    if (v31)
    {
      MEMORY[0x21CE92260]();
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v93 = v98;
      v26 = v13;
    }
  }

  v32 = *(v0 + 200);
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v83 = *(v12 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType);
  v84 = *(v0 + 144);
  v82 = *(v12 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType);
  v81 = v12;
  v37 = *(v12 + OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt);
  v38 = *(v33 + 56);
  v38(v36, 1, 1, v34);
  v38(v35, 1, 1, v34);
  v85 = type metadata accessor for Suggestion();
  v39 = objc_allocWithZone(v85);
  v40 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  *&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
  v88(&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v32, v34);
  *&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = v95;
  *&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = v87;
  *&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = v86;
  swift_beginAccess();
  *&v39[v40] = v89;
  *&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = v93;
  v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v83;
  v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v82;
  *&v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = v37;
  outlined init with copy of DateInterval?(v36, &v39[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID], &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(v35, v84, &_s10Foundation4UUIDVSgMd);
  v41 = *(v33 + 48);
  *(v0 + 296) = v41;
  *(v0 + 304) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v41(v84, 1, v34) == 1)
  {
    v42 = *(v0 + 168);
    v43 = *(v0 + 144);
    v44 = v89;
    v45 = v37;
    v46 = v91;
    v47 = v92;
    v48 = v45;
    v49 = v95;
    UUID.init()();
    v90 = v44;
    if (v41(v43, 1, v42) != 1)
    {
      outlined destroy of UTType?(*(v0 + 144), &_s10Foundation4UUIDVSgMd);
    }

    v50 = v95;
    v52 = v91;
    v51 = v92;
    v53 = v48;
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 144), *(v0 + 168));
    v90 = v89;
    v54 = v37;
    v52 = v91;
    v55 = v91;
    v51 = v92;
    v56 = v92;
    v53 = v54;
    v50 = v95;
    v57 = v95;
  }

  v58 = *(v0 + 192);
  v96 = *(v0 + 200);
  v59 = *(v0 + 168);
  v60 = *(v0 + 176);
  v62 = *(v0 + 152);
  v61 = *(v0 + 160);
  v94 = *(v0 + 368);
  v63 = OBJC_IVAR____TtC9MomentsUI10Suggestion_id;
  v64 = *(v60 + 32);
  *(v0 + 312) = v64;
  *(v0 + 320) = (v60 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v64(&v39[v63], v58, v59);
  *(v0 + 56) = v39;
  *(v0 + 64) = v85;
  v65 = objc_msgSendSuper2((v0 + 56), sel_init);
  *(v0 + 328) = v65;

  outlined destroy of UTType?(v62, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v61, &_s10Foundation4UUIDVSgMd);
  (*(v60 + 8))(v96, v59);
  if (v94 != 3 && (static Task<>.isCancelled.getter() & 1) != 0)
  {
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_21607C000, v66, v67, "[AddToEntry] Background Processing CANCELLED", v68, 2u);
      MEMORY[0x21CE94770](v68, -1, -1);
    }

    goto LABEL_35;
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_21607C000, v71, v72, "[AddToEntry] Background Sending Suggestions", v73, 2u);
    MEMORY[0x21CE94770](v73, -1, -1);
  }

  v74 = *(v0 + 272);
  v75 = *(v0 + 80);

  ObjectType = swift_getObjectType();
  *(v0 + 336) = ObjectType;
  v77 = *v75;
  v78 = *(*v75 + 280);
  *(v0 + 344) = v78;
  *(v0 + 352) = (v77 + 280) & 0xFFFFFFFFFFFFLL | 0x53C1000000000000;
  v78();
  v97 = (*(v74 + 24) + **(v74 + 24));
  v79 = swift_task_alloc();
  *(v0 + 360) = v79;
  *v79 = v0;
  v79[1] = specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad();
  v80 = *(v0 + 248);

  return v97(v65, v80, ObjectType, v74);
}

{
  v1 = *(*v0 + 248);

  outlined destroy of Client(v1, type metadata accessor for Client);

  return MEMORY[0x2822009F8](specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad(), 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[AddToEntry] Background Sending Engagement Event", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v4 = *(v0 + 344);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);

  v4();
  v7 = (v5 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];

  v10 = outlined destroy of Client(v5, type metadata accessor for Client);
  if (!v8)
  {
    v16 = *(v0 + 288);

    goto LABEL_9;
  }

  v11 = (*(**(v0 + 80) + 256))(v10);
  if (!v11)
  {
    v17 = *(v0 + 288);

    goto LABEL_9;
  }

  v12 = v11;
  v13 = *(v0 + 80);
  v14 = *(v13 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  if (v14 == 65)
  {
    v15 = *(v0 + 288);

LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v20 = *(v0 + 296);
  v21 = *(v0 + 168);
  v22 = *(v0 + 136);
  (*(*v13 + 184))();
  if (v20(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 288);
    v24 = *(v0 + 136);

    swift_unknownObjectRelease();
    outlined destroy of UTType?(v24, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    v33 = *(v0 + 336);
    v34 = *(v0 + 328);
    v25 = *(v0 + 312);
    v35 = *(v0 + 288);
    v32 = *(v0 + 272);
    v29 = *(v0 + 184);
    v26 = *(v0 + 168);
    v31 = *(v0 + 128);
    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 369);
    v25();
    *v28 = v9;
    v28[1] = v8;
    v28[2] = v12;
    (v25)(v28 + v27[6], v29, v26);
    *(v28 + v27[7]) = v14;
    *(v28 + v27[8]) = 0;
    *(v28 + v27[9]) = v30;
    outlined init with take of Client(v28, v31, type metadata accessor for EngagementEvent);
    (*(v32 + 48))(v31, v33);

    swift_unknownObjectRelease();
    outlined destroy of Client(v31, type metadata accessor for EngagementEvent);
  }

LABEL_10:
  $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[AddToEntry] Background Processing END");

  v18 = *(v0 + 8);

  return v18();
}

void InterstitialViewController.show(childViewController:)(void *a1)
{
  v3 = [a1 parentViewController];
  if (v3)
  {
LABEL_4:

    return;
  }

  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v10 = [v4 superview];

  v3 = v10;
  if (v10)
  {
    goto LABEL_4;
  }

  [v1 addChildViewController_];
  v6 = v1;
  v7 = *&v1[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView];
  v8 = [a1 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = v8;
  (*((*MEMORY[0x277D85000] & *v7) + 0x2A8))();

  [a1 didMoveToParentViewController_];
}

void InterstitialViewController.willTransition(to:with:)(void *a1, void *a2)
{
  v3 = v2;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v10[4] = partial apply for closure #1 in InterstitialViewController.willTransition(to:with:);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v10[3] = &block_descriptor_32;
  v8 = _Block_copy(v10);
  v9 = a1;

  [a2 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void closure #1 in InterstitialViewController.willTransition(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
    swift_beginAccess();
    if (v5[v6])
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = *&v5[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView];
    v9 = *((*MEMORY[0x277D85000] & *v8) + 0x2A0);
    v10 = v8;
    v9(a3);

    v5 = v10;
LABEL_7:
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id InterstitialViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InterstitialViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall InterstitialViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1);
  v4 = [v2 sheetPresentationController];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_originalDetents;
    swift_beginAccess();
    v7 = *&v2[v6];
    if (v7 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_5;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:

      goto LABEL_6;
    }

    [(objc_class *)v5 setPrefersGrabberVisible:1];
    type metadata accessor for UISheetPresentationControllerDetent();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [(objc_class *)v5 setDetents:isa];

    v5 = isa;
    goto LABEL_5;
  }

LABEL_6:
  v9 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v10)
  {
    v9 = 1;
  }

  if (specialized DefaultsManager.SheetTransfer.TransferUIMode.init(rawValue:)(v9) == 2)
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static CommonLogger.interstitial);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21607C000, v12, v13, "Cancelling transfer BTask", v14, 2u);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    if (*&v2[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController__btask])
    {

      MEMORY[0x21CE92450](v15, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }
  }
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized static InterstitialViewController.assetTypes(from:)(unint64_t a1)
{
  v45 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v47 = a1 & 0xC000000000000001;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F98];
    v46 = i;
    while (v47)
    {
      v14 = MEMORY[0x21CE93180](v3, a1);
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_31;
      }

LABEL_12:
      v15 = v14;
      v16 = specialized AssetType.init(_:)(v15);
      if (v16 == 20)
      {
        if (one-time initialization token for interstitial != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static CommonLogger.interstitial);
        v18 = v15;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v5 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v44 = v13;
          v48 = v43;
          *v5 = 136315138;
          v42 = v18;
          v6 = [v42 description];
          v7 = a1;
          v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v9;

          v11 = v8;
          a1 = v7;
          v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v48);
          i = v46;

          *(v5 + 4) = v12;
          _os_log_impl(&dword_21607C000, v19, v20, "Unable to include asset view model=%s in asset group view model: asset type is nil", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v13 = v44;
          MEMORY[0x21CE94770](v43, -1, -1);
          MEMORY[0x21CE94770](v5, -1, -1);
        }

        else
        {
        }

        goto LABEL_5;
      }

      v21 = v16;
      LOBYTE(v48) = v16;
      [v45 addObject_];
      swift_unknownObjectRelease();
      if (v4[2] && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v23 & 1) != 0))
      {
        v24 = *(v4[7] + 8 * v22);
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658E210;
      *(inited + 32) = v15;
      v48 = v24;
      v26 = v15;
      specialized Array.append<A>(contentsOf:)(inited);
      v27 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v4;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      v31 = v4[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_32;
      }

      v35 = v30;
      if (v4[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
        if ((v35 & 1) != (v36 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_26:
        v4 = v48;
        if (v35)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v37 = v29;
      specialized _NativeDictionary.copy()();
      v29 = v37;
      v4 = v48;
      if (v35)
      {
LABEL_27:
        *(v4[7] + 8 * v29) = v27;

        i = v46;
        goto LABEL_5;
      }

LABEL_29:
      v4[(v29 >> 6) + 8] |= 1 << v29;
      *(v4[6] + v29) = v21;
      *(v4[7] + 8 * v29) = v27;

      v38 = v4[2];
      v33 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v33)
      {
        goto LABEL_34;
      }

      v4[2] = v39;
      i = v46;
LABEL_5:
      ++v3;
      if (v13 == i)
      {
        return v45;
      }
    }

    if (v3 >= *(v41 + 16))
    {
      goto LABEL_33;
    }

    v14 = *(a1 + 8 * v3 + 32);
    v13 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  return v45;
}

char *specialized static InterstitialViewController.assetGroupViewModels(from:)(unint64_t a1)
{
  v1 = specialized static InterstitialViewController.assetTypes(from:)(a1);
  v3 = v2;
  v4 = v1;

  v5 = [v4 array];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v13 = *v9++;
      v12 = v13;
      if (*(v3 + 16))
      {
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if (v15)
        {
          v16 = *(*(v3 + 56) + 8 * v14);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          }

          v18 = *(v10 + 2);
          v17 = *(v10 + 3);
          if (v18 >= v17 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
          }

          *(v10 + 2) = v18 + 1;
          v11 = &v10[16 * v18];
          v11[32] = v12;
          *(v11 + 5) = v16;
        }
      }

      --v8;
    }

    while (v8);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  return v10;
}

char *specialized InterstitialViewController.__allocating_init(suggestionViewModel:)(uint64_t a1)
{
  v2 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v60);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v50 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = (*(*a1 + 304))(v19);
  if (!v22)
  {

    return 0;
  }

  v23 = v22;
  v59 = v4;
  outlined init with copy of DateInterval?(a1 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v12, &_s10Foundation4DateVSgMd);
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {

    outlined destroy of UTType?(v12, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v56 = v24;
  v51 = *(v14 + 32);
  v52 = v14 + 32;
  v51(v21, v12, v13);
  v64 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI5AssetCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v26 = (*(*a1 + 208))();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  v57 = v28;
  v58 = v29;
  v55 = specialized Sequence.compactMap<A>(_:)(v23, &v64);

  if (*(a1 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) == 7 && (type metadata accessor for MosaicSuggestionViewModel(), (v30 = swift_dynamicCastClass()) != 0))
  {
    v31 = v30;

    v57 = (*(*v31 + 440))(v32);
    v58 = v33;
    v34 = (*(*v31 + 448))();
    v53 = v35;
    v54 = v34;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  (*(*a1 + 280))(v30);
  v36 = v60;
  v37 = &v6[*(v60 + 32)];
  v38 = *(v37 + 1);
  if (v38 && (*v37 == 0xD000000000000011 && v38 == 0x8000000216578900 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = &v6[*(v36 + 28)];
    v39 = *v41;
    v40 = v41[1];
  }

  outlined destroy of Client(v6, type metadata accessor for Client);
  v63[0] = v39;
  v63[1] = v40;
  v42 = *(v14 + 16);
  v42(v62, v21, v13);
  outlined init with copy of DateInterval?(a1 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, v10, &_s10Foundation4DateVSgMd);
  v43 = v56;
  if (v56(v10, 1, v13) == 1)
  {
    v42(v61, v21, v13);
    if (v43(v10, 1, v13) != 1)
    {
      outlined destroy of UTType?(v10, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v51(v61, v10, v13);
  }

  v44 = v59;
  DateInterval.init(start:end:)();
  v45 = objc_allocWithZone(type metadata accessor for InterstitialViewController());
  v46 = InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)(v63, v57, v58, v54, v53, v44, v55);
  (*(v14 + 8))(v21, v13);
  v47 = v64;
  v48 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewModelUUIDToAssetMapping;
  swift_beginAccess();
  *&v46[v48] = v47;
  v49 = v46;

  swift_beginAccess();
  swift_weakAssign();

  return v49;
}

uint64_t partial apply for closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)(a1, v4, v5, v6, v7, v8);
}

void specialized InterstitialViewController.hide(childViewController:)(void *a1)
{
  v2 = [a1 parentViewController];
  if (!v2)
  {
    return;
  }

  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 superview];

  if (!v5)
  {
    return;
  }

  [a1 willMoveToParentViewController_];
  v6 = [a1 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  [a1 removeFromParentViewController];
}

uint64_t specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for UUID();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:), v4, v3);
}

void specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)()
{
  v1 = specialized static InterstitialViewController.assetTypes(from:)(*(v0 + 96));
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  v3 = [v1 array];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized _arrayConditionalCast<A, B>(_:)(v4);
  *(v0 + 200) = v5;

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v5 = MEMORY[0x277D84F90];
  }

  v7 = *(v5 + 16);
  *(v0 + 208) = v7;
  if (!v7)
  {

    v13 = MEMORY[0x277D84F98];
    v14 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F98];
LABEL_67:
    v85 = *(v0 + 184);
    swift_bridgeObjectRelease_n();

    v86 = *(v0 + 8);

    v86(v14, v9, v13);
    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v10 = static CommonLogger.interstitial;
  v11 = &_s9MomentsUI12MapViewModel_pMd;
  v12 = &one-time initialization token for shared;
  v13 = MEMORY[0x277D84F98];
  v14 = v6;
  while (1)
  {
    *(v0 + 248) = v13;
    *(v0 + 256) = v9;
    *(v0 + 232) = v8;
    *(v0 + 240) = v14;
    *(v0 + 216) = v9;
    *(v0 + 224) = v13;
    v15 = *(v0 + 200);
    if (!v15)
    {
      v15 = v6;
    }

    if (v8 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    v16 = *(v0 + 192);
    v17 = *(v15 + v8 + 32);
    *(v0 + 296) = v17;
    if (v16[2])
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if (v19)
      {
        break;
      }
    }

LABEL_8:
    v8 = *(v0 + 232) + 1;
    if (v8 == *(v0 + 208))
    {

      goto LABEL_67;
    }
  }

  v6 = *(*(*(v0 + 192) + 56) + 8 * v18);
  if (v17 != 2)
  {
    if (v17 != 4)
    {

LABEL_57:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v0 + 240);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, *(v0 + 240));
      }

      v82 = *(v14 + 2);
      v81 = *(v14 + 3);
      if (v82 >= v81 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v14);
      }

      v83 = *(v0 + 296);
      *(v14 + 2) = v82 + 1;
      v84 = &v14[16 * v82];
      v84[32] = v83;
      *(v84 + 5) = v6;
LABEL_7:
      v6 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }

    if (v6 >> 62)
    {
      goto LABEL_93;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_75;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_89;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_90;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_89;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {

    v21 = MEMORY[0x21CE93180](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

    v20 = *(v6 + 32);

    v21 = v20;
  }

  v16 = v21;
  swift_getObjectType();
  v22 = swift_conformsToProtocol2();
  if (v22)
  {
    v23 = v16 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    goto LABEL_102;
  }

  v24 = v22;

  ObjectType = swift_getObjectType();
  v26 = (*(v24 + 16))(ObjectType, v24);
  v27 = v16;
  if (!v26)
  {
    if (v12[107] != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, v10);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v10;
      v68 = v27;
      v69 = v11;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_21607C000, v65, v66, "Unable to get multi pin map view models contained within the multi pin map", v70, 2u);
      v71 = v70;
      v11 = v69;
      MEMORY[0x21CE94770](v71, -1, -1);

      v10 = v67;
      v12 = &one-time initialization token for shared;
    }

    else
    {
    }

    goto LABEL_7;
  }

  v101 = v16;
  v28 = *(v26 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v28)
  {
LABEL_56:

    goto LABEL_57;
  }

  v96 = v13;
  *(v0 + 48) = MEMORY[0x277D84F90];
  v29 = v26;
  specialized ContiguousArray.reserveCapacity(_:)();
  v30 = 32;
  do
  {
    v31 = *(v29 + v30);
    *(v0 + 16) = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    type metadata accessor for AssetViewModel();
    swift_dynamicCast();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v30 += 16;
    --v28;
  }

  while (v28);
  v6 = *(v0 + 48);
  v33 = v29;
  v98 = *(v29 + 16);
  if (!v98)
  {
    v10 = static CommonLogger.interstitial;
    v12 = &one-time initialization token for shared;
    v13 = v96;
    goto LABEL_56;
  }

  v34 = 0;
  v100 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
  v35 = 32;
  v95 = *(v0 + 48);
  v97 = v29;
  while (v34 < *(v33 + 16))
  {
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    v41 = *(v0 + 104);
    v42 = *(*(v0 + 112) + 16);
    v43 = *(v33 + v35);
    v42(v40, &v43[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v41);
    v102 = v42;
    v42(v39, &v101[v100], v41);
    v6 = v43;
    v44 = v9;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v9;
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
    v48 = v9[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_87;
    }

    v51 = v46;
    v104 = v6;
    if (v44[3] >= v50)
    {
      if ((v45 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v52 = *(v0 + 128);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, v45);
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
      if ((v51 & 1) != (v54 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v47 = v53;
    }

    v55 = *(v0 + 64);
    v6 = *(v0 + 120);
    v56 = *(v0 + 128);
    v57 = *(v0 + 104);
    v58 = *(v0 + 112);
    if (v51)
    {
      v9 = *(v0 + 64);
      v36 = v55[7] + *(v58 + 72) * v47;
      v37 = *(v0 + 128);
      (*(v58 + 40))(v36, *(v0 + 120), *(v0 + 104));

      v38 = *(v58 + 8);
      v38(v37, v57);
    }

    else
    {
      v55[(v47 >> 6) + 8] |= 1 << v47;
      v59 = *(v58 + 72) * v47;
      v60 = v56;
      v102(v55[6] + v59, v56, v57);
      (*(v58 + 32))(v55[7] + v59, v6, v57);

      v38 = *(v58 + 8);
      v38(v60, v57);
      v61 = v55[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_88;
      }

      v9 = v55;
      v55[2] = v63;
    }

    ++v34;
    v35 += 16;
    v33 = v97;
    if (v98 == v34)
    {
      if (!*(v97 + 16))
      {
        goto LABEL_92;
      }

      v16 = *(v97 + 32);
      v72 = swift_getObjectType();
      v73 = swift_conformsToProtocol2();
      if (v73)
      {
        v74 = v73;
        v75 = *(v0 + 104);
        v93 = *(v73 + 64);
        v94 = *(v0 + 136);
        v99 = v16;
        v76 = v93(v72, v74);
        v102(v94, &v101[v100], v75);
        v77 = *(v97 + 16);

        v78 = swift_isUniquelyReferenced_nonNull_native();
        if (v76)
        {
          v79 = 2;
        }

        else
        {
          v79 = 1;
        }

        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v79, v94, v78);

        v38(v94, v75);
        v13 = v96;
        v10 = static CommonLogger.interstitial;
        v11 = &_s9MomentsUI12MapViewModel_pMd;
        v12 = &one-time initialization token for shared;
        v6 = v95;
        goto LABEL_57;
      }

      goto LABEL_103;
    }
  }

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
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  if (v6 < 0)
  {
    v16 = v6;
  }

  else
  {
    v16 = (v6 & 0xFFFFFFFFFFFFFF8);
  }

  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_99;
  }

  if (!__CocoaSet.count.getter())
  {
    __break(1u);
    goto LABEL_99;
  }

LABEL_75:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v87 = *(v6 + 32);

      v88 = v87;
      goto LABEL_78;
    }

    __break(1u);
LABEL_102:

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:

    __break(1u);
    return;
  }

LABEL_100:

  v88 = MEMORY[0x21CE93180](0, v6);
LABEL_78:
  v16 = v88;
  *(v0 + 264) = v88;
  swift_getObjectType();
  v89 = swift_conformsToProtocol2();
  *(v0 + 272) = v89;
  if (v89)
  {
    v90 = v16 == 0;
  }

  else
  {
    v90 = 1;
  }

  if (v90)
  {
    goto LABEL_104;
  }

  *(v0 + 280) = swift_getObjectType();
  v91 = *((*MEMORY[0x277D85000] & *v16) + 0x1C0);
  v16;
  v103 = (v91 + *v91);
  v92 = swift_task_alloc();
  *(v0 + 288) = v92;
  *v92 = v0;
  v92[1] = specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:);

  v103();
}

{
  v1 = (*(*(v0 + 272) + 16))(*(v0 + 280));
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    if (one-time initialization token for interstitial == -1)
    {
LABEL_20:
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static CommonLogger.interstitial);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 264);
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_21607C000, v41, v42, "Unable to get workout view models contained within the workout group", v45, 2u);
        MEMORY[0x21CE94770](v45, -1, -1);
      }

      v46 = *(v0 + 248);
      v14 = *(v0 + 256);
      v3 = *(v0 + 240);
      v9 = *(v0 + 216);
      v35 = *(v0 + 224);
      goto LABEL_120;
    }

LABEL_41:
    swift_once();
    goto LABEL_20;
  }

  v3 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    v138 = MEMORY[0x277D84F90];
LABEL_29:

    v14 = *(v0 + 256);
    v151 = *(v0 + 248);
    v9 = *(v0 + 216);
    v35 = *(v0 + 224);
    goto LABEL_116;
  }

  *(v0 + 72) = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 32;
  do
  {
    v6 = *&v3[v5];
    *(v0 + 32) = v6;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI16WorkoutViewModel_pMd);
    type metadata accessor for AssetViewModel();
    swift_dynamicCast();
    v2 = *(v0 + 80);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v5 += 16;
    --v4;
  }

  while (v4);
  v138 = *(v0 + 72);
  v139 = *(v3 + 2);
  if (!v139)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v8 = 0;
  v146 = *(v0 + 264);
  v141 = v3;
  v143 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
  v9 = *(v0 + 216);
  v10 = 32;
  do
  {
    if (v8 >= *(v3 + 2))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v2 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v13 + 16);
    v14 = v13 + 16;
    v16 = v9;
    v151 = v10;
    v17 = *&v3[v10];
    v15(v11, &v17[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v2);
    v149 = v15;
    v15(v12, (v146 + v143), v2);
    v18 = v17;
    v19 = v16;
    v20 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 88) = v19;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    v24 = v19[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_39;
    }

    v28 = v23;
    if (v19[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v22;
        specialized _NativeDictionary.copy()();
        v22 = v39;
      }
    }

    else
    {
      v29 = *(v0 + 152);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if ((v28 & 1) != (v30 & 1))
      {
LABEL_104:

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    ObjectType = *(v0 + 88);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v35 = *(v0 + 104);
    v34 = *(v0 + 112);
    if (v28)
    {
      (*(v34 + 40))(ObjectType[7] + *(v34 + 72) * v22, *(v0 + 144), *(v0 + 104));

      v2 = *(v34 + 8);
      (v2)(v32, v35);
      v9 = ObjectType;
    }

    else
    {
      ObjectType[(v22 >> 6) + 8] |= 1 << v22;
      v36 = *(v34 + 72) * v22;
      (v149)(ObjectType[6] + v36, v32, v35);
      (*(v34 + 32))(ObjectType[7] + v36, v33, v35);

      v2 = *(v34 + 8);
      (v2)(v32, v35);
      v37 = ObjectType[2];
      v26 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v26)
      {
        goto LABEL_40;
      }

      v9 = ObjectType;
      ObjectType[2] = v38;
    }

    ++v8;
    v10 = v151 + 16;
    v3 = v141;
  }

  while (v139 != v8);
  if (!*(v141 + 2))
  {
    __break(1u);
    goto LABEL_43;
  }

  v47 = *(v141 + 4);
  ObjectType = swift_getObjectType();
  v48 = swift_conformsToProtocol2();
  v136 = v9;
  if (v48 && v47)
  {
    v49 = v48;
    v50 = swift_getObjectType();
    v51 = *(v49 + 64);
    v52 = v47;
    v53 = (v51(v50, v49) & 1) == 0;
    v54 = 1;
LABEL_34:
    if (v53)
    {
      v59 = v54;
    }

    else
    {
      v59 = v54 + 1;
    }

    goto LABEL_37;
  }

  v55 = swift_conformsToProtocol2();
  if (!v55)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v56 = v55;
  v57 = *(v55 + 104);
  v58 = v47;
  if ((v57(ObjectType, v56) & 1) == 0)
  {
    v53 = ((*(v56 + 112))(ObjectType, v56) & 1) == 0;
    v54 = 4;
    goto LABEL_34;
  }

  v59 = 3;
LABEL_37:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 136);
  v63 = *(v0 + 104);
  (v149)(v62, v146 + v143, v63);
  v64 = *(v141 + 2);

  v65 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v61;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v59, v62, v65);

  (v2)(v62, v63);
LABEL_113:
  v35 = v152;
  v151 = v152;
  v9 = v136;
  v14 = v136;
  v2 = MEMORY[0x277D84F90];
LABEL_116:
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 240);
  v46 = v9;
  if ((v127 & 1) == 0)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v129 = *(v3 + 2);
    v128 = *(v3 + 3);
    if (v129 >= v128 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v3);
    }

    v130 = *(v0 + 296);
    *(v3 + 2) = v129 + 1;
    v131 = &v3[16 * v129];
    v131[32] = v130;
    *(v131 + 5) = v138;
    v9 = v46;
    v46 = v151;
LABEL_120:
    v66 = *(v0 + 232) + 1;
    if (v66 == *(v0 + 208))
    {
      break;
    }

    ObjectType = &one-time initialization token for shared;
    v146 = v14;
    v149 = v35;
    v151 = v46;
    while (1)
    {
      *(v0 + 248) = v46;
      *(v0 + 256) = v14;
      *(v0 + 232) = v66;
      *(v0 + 240) = v3;
      *(v0 + 216) = v9;
      *(v0 + 224) = v35;
      v67 = *(v0 + 200);
      if (!v67)
      {
        v67 = v2;
      }

      if (v66 >= *(v67 + 16))
      {
        break;
      }

      v68 = *(v0 + 192);
      v69 = *(v67 + v66 + 32);
      *(v0 + 296) = v69;
      if (v68[2])
      {
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
        if (v71)
        {
          v72 = *(*(v0 + 192) + 56);
          v46 = *(v72 + 8 * v70);
          if (v69 != 2)
          {
            if (v69 != 4)
            {
              v138 = *(v72 + 8 * v70);

              goto LABEL_116;
            }

            if (!(v46 >> 62))
            {
              if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
              {
                goto LABEL_76;
              }

LABEL_139:
              __break(1u);
              goto LABEL_140;
            }

LABEL_133:
            if (v46 < 0)
            {
              v68 = v46;
            }

            else
            {
              v68 = (v46 & 0xFFFFFFFFFFFFFF8);
            }

            if (__CocoaSet.count.getter() != 1)
            {
              goto LABEL_139;
            }

            if (!__CocoaSet.count.getter())
            {
              __break(1u);
              goto LABEL_139;
            }

LABEL_76:
            if ((v46 & 0xC000000000000001) == 0)
            {
              if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v82 = *(v46 + 32);

                v83 = v82;
LABEL_79:
                v68 = v83;
                *(v0 + 264) = v83;
                swift_getObjectType();
                v84 = swift_conformsToProtocol2();
                *(v0 + 272) = v84;
                if (v84)
                {
                  v85 = v68 == 0;
                }

                else
                {
                  v85 = 1;
                }

                if (!v85)
                {

                  *(v0 + 280) = swift_getObjectType();
                  v86 = *((*MEMORY[0x277D85000] & *v68) + 0x1C0);
                  v68;
                  v150 = (v86 + *v86);
                  v87 = swift_task_alloc();
                  *(v0 + 288) = v87;
                  *v87 = v0;
                  v87[1] = specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:);

                  v150();
                  return;
                }
              }

              else
              {
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:

                __break(1u);
              }

              __break(1u);
LABEL_145:
              __break(1u);
              return;
            }

LABEL_140:

            v83 = MEMORY[0x21CE93180](0, v46);
            goto LABEL_79;
          }

          if (v46 >> 62)
          {
            if (v46 < 0)
            {
              v68 = *(v72 + 8 * v70);
            }

            else
            {
              v68 = (v46 & 0xFFFFFFFFFFFFFF8);
            }

            if (__CocoaSet.count.getter() != 1)
            {
              goto LABEL_126;
            }

            if (!__CocoaSet.count.getter())
            {
              goto LABEL_127;
            }
          }

          else if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
          {
            goto LABEL_126;
          }

          if ((v46 & 0xC000000000000001) != 0)
          {

            v73 = MEMORY[0x21CE93180](0, v46);
          }

          else
          {
            if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_128;
            }

            v68 = *(v46 + 32);

            v73 = v68;
          }

          v35 = v73;
          swift_getObjectType();
          v74 = swift_conformsToProtocol2();
          if (v74)
          {
            v75 = v35 == 0;
          }

          else
          {
            v75 = 1;
          }

          if (v75)
          {
            goto LABEL_143;
          }

          v76 = v74;

          v77 = swift_getObjectType();
          v78 = (*(v76 + 16))(v77, v76);
          if (v78)
          {
            v14 = v78;
            v3 = *(v78 + 16);
            v88 = MEMORY[0x277D84F90];
            if (v3)
            {
              *(v0 + 48) = MEMORY[0x277D84F90];
              specialized ContiguousArray.reserveCapacity(_:)();
              v2 = 32;
              do
              {
                v89 = *(v14 + v2);
                *(v0 + 16) = v89;
                v90 = v89;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12MapViewModel_pMd);
                type metadata accessor for AssetViewModel();
                swift_dynamicCast();
                v46 = *(v0 + 56);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v2 += 16;
                --v3;
              }

              while (v3);
              v88 = *(v0 + 48);
              v137 = *(v14 + 16);
              if (v137)
              {
                v138 = *(v0 + 48);
                v91 = 0;
                v140 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
                v92 = 32;
                while (v91 < *(v14 + 16))
                {
                  v151 = v91;
                  v95 = *(v0 + 120);
                  v94 = *(v0 + 128);
                  v2 = *(v0 + 104);
                  v96 = *(v0 + 112);
                  v97 = *(v96 + 16);
                  v46 = v96 + 16;
                  v98 = v9;
                  v147 = v92;
                  v99 = *(v14 + v92);
                  v97(v94, &v99[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v2);
                  v142 = v97;
                  v97(v95, &v35[v140], v2);
                  v100 = v99;
                  v101 = v98;
                  v3 = v100;
                  v102 = swift_isUniquelyReferenced_nonNull_native();
                  *(v0 + 64) = v101;
                  v103 = specialized __RawDictionaryStorage.find<A>(_:)(v94);
                  v105 = v101[2];
                  v106 = (v104 & 1) == 0;
                  v26 = __OFADD__(v105, v106);
                  v107 = v105 + v106;
                  if (v26)
                  {
                    goto LABEL_130;
                  }

                  v108 = v104;
                  v144 = v3;
                  if (v101[3] >= v107)
                  {
                    if ((v102 & 1) == 0)
                    {
                      v117 = v103;
                      specialized _NativeDictionary.copy()();
                      v103 = v117;
                    }
                  }

                  else
                  {
                    v109 = *(v0 + 128);
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, v102);
                    v103 = specialized __RawDictionaryStorage.find<A>(_:)(v109);
                    if ((v108 & 1) != (v110 & 1))
                    {
                      goto LABEL_104;
                    }
                  }

                  v68 = *(v0 + 64);
                  v111 = *(v0 + 120);
                  v112 = *(v0 + 128);
                  v3 = *(v0 + 104);
                  v113 = *(v0 + 112);
                  if (v108)
                  {
                    v2 = *(v0 + 128);
                    (*(v113 + 40))(v68[7] + *(v113 + 72) * v103, v111, *(v0 + 104));

                    v93 = *(v113 + 8);
                    v93(v2, v3);
                    v9 = v68;
                  }

                  else
                  {
                    v68[(v103 >> 6) + 8] |= 1 << v103;
                    v2 = *(v113 + 72) * v103;
                    v134 = v111;
                    v142(v68[6] + v2, v112, v3);
                    (*(v113 + 32))(v68[7] + v2, v134, v3);

                    v114 = v112;
                    v93 = *(v113 + 8);
                    v93(v114, v3);
                    v115 = v68[2];
                    v26 = __OFADD__(v115, 1);
                    v116 = v115 + 1;
                    if (v26)
                    {
                      __break(1u);
                      goto LABEL_133;
                    }

                    v9 = v68;
                    v68[2] = v116;
                  }

                  v91 = v151 + 1;
                  v92 = v147 + 16;
                  if (v137 == v151 + 1)
                  {
                    v136 = v9;
                    if (!*(v14 + 16))
                    {
                      goto LABEL_142;
                    }

                    v118 = *(v14 + 32);
                    v119 = swift_getObjectType();
                    v120 = swift_conformsToProtocol2();
                    if (v120)
                    {
                      v121 = v120;
                      v145 = *(v0 + 136);
                      v135 = *(v0 + 104);
                      v122 = *(v120 + 64);
                      v148 = v118;
                      v123 = v122(v119, v121);
                      v142(v145, &v35[v140], v135);
                      v124 = *(v14 + 16);

                      v125 = swift_isUniquelyReferenced_nonNull_native();
                      v152 = v149;
                      if (v123)
                      {
                        v126 = 2;
                      }

                      else
                      {
                        v126 = 1;
                      }

                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, v126, v145, v125);

                      v93(v145, v135);
                      goto LABEL_113;
                    }

                    goto LABEL_145;
                  }
                }

                goto LABEL_129;
              }

              v2 = MEMORY[0x277D84F90];
            }

            v138 = v88;

            v14 = v146;
            v35 = v149;
            goto LABEL_116;
          }

          if (ObjectType[107] != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for Logger();
          __swift_project_value_buffer(v79, static CommonLogger.interstitial);
          v32 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();
          v14 = v146;
          if (os_log_type_enabled(v32, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_21607C000, v32, v80, "Unable to get multi pin map view models contained within the multi pin map", v81, 2u);
            MEMORY[0x21CE94770](v81, -1, -1);
          }

LABEL_44:

          v35 = v149;
          v46 = v151;
        }
      }

      v66 = *(v0 + 232) + 1;
      if (v66 == *(v0 + 208))
      {
        goto LABEL_122;
      }
    }

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
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

LABEL_122:

  v132 = *(v0 + 184);
  swift_bridgeObjectRelease_n();

  v133 = *(v0 + 8);

  v133(v3, v14, v46);
}

uint64_t specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)()
{
  v1 = *v0;
  v2 = *(*v0 + 264);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:), v4, v3);
}

void specialized InterstitialViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_assetSummaryCountAssetTypeMap) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_originalDetents) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer) = 2;
  v2 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewModelUUIDToAssetMapping;
  *(v0 + v2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI5AssetCTt0g5Tf4g_n(v1);
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController__btask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UISheetPresentationControllerDetent()
{
  result = lazy cache variable for type metadata for UISheetPresentationControllerDetent;
  if (!lazy cache variable for type metadata for UISheetPresentationControllerDetent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
  }

  return result;
}

uint64_t outlined init with take of (key: UUID, value: Set<UUID>)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #3 in InterstitialViewController.viewDidLoad()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #3 in InterstitialViewController.viewDidLoad()(a1, v4, v5, v6);
}

uint64_t partial apply for specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad()(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Client() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v2 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = static Exif.filterImage(imageSource:outputURL:);

  return specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad()(a1, a2, v2 + v6, v13, v9, v10, v11, v12);
}

uint64_t outlined init with take of Client(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Bool __swiftcall OversizedBoundsButton.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  [v2 bounds];
  v6 = v5;
  [v2 bounds];
  v8 = v7;
  [v2 bounds];
  v12 = CGRectInset(v11, v6 * -1.5, v8 * -1.5);
  v10.x = x;
  v10.y = y;
  return CGRectContainsPoint(v12, v10);
}

id OversizedBoundsButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OversizedBoundsButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for OversizedBoundsButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id OversizedBoundsButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OversizedBoundsButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OversizedBoundsButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id OversizedBoundsButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OversizedBoundsButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__int128 *MediaFirstPartyView.Constants.accessibilityString.unsafeMutableAddressor()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  return &static MediaFirstPartyView.Constants.accessibilityString;
}

uint64_t static MediaFirstPartyView.Constants.accessibilityString.getter()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v0 = static MediaFirstPartyView.Constants.accessibilityString;

  return v0;
}

Swift::Void __swiftcall MediaFirstPartyView.releaseResources()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur) setImage_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView);

  [v1 setImage_];
}

void *MediaFirstPartyView.init(viewModel:style:)(void *a1, char *a2)
{
  v47 = *a2;
  v46 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView;
  *&v2[v46] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v45 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView;
  *&v2[v45] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v44 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView;
  *&v2[v44] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_blurView;
  v5 = objc_opt_self();
  v6 = [v5 effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v43 = v4;
  *&v2[v4] = v7;
  v8 = a1;
  v9 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_tertiaryVibrancyEffectView;
  v10 = [v5 effectWithStyle_];
  v11 = [objc_opt_self() effectForBlurEffect:v10 style:4];

  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v42 = v9;
  *&v2[v9] = v12;
  v13 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView;
  v14 = [v5 effectWithStyle_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory] = 4;
  v17 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel] = 0;
  v18 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel] = 0;
  v19 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel] = 0;
  v20 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack] = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton;
  *&v2[v21] = [objc_allocWithZone(type metadata accessor for CircularProgressView()) init];
  v2[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback] = 0;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v8)
  {
    v22 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v23 = static MediaFirstPartyView.Constants.accessibilityString;
    v24 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v25 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v26 = v8;
    *&v2[v24] = [v25 init];
    swift_unknownObjectWeakInit();
    v27 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v47;
    v48.receiver = v2;
    v48.super_class = type metadata accessor for AssetView();
    v29 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v30 = MEMORY[0x277D85000];
    v31 = *((*MEMORY[0x277D85000] & *v29) + 0xE8);
    v32 = v29;
    v31();
    AssetView.setFallBackView()();
    [v32 setIsAccessibilityElement_];
    v33 = [v32 accessibilityTraits];
    if ((v22 & ~v33) != 0)
    {
      v34 = v22;
    }

    else
    {
      v34 = 0;
    }

    [v32 setAccessibilityTraits_];
    v35 = MEMORY[0x21CE91FC0](v23, *(&v23 + 1));
    [v32 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21658CA50;
    v37 = type metadata accessor for UITraitUserInterfaceStyle();
    v38 = MEMORY[0x277D74BF0];
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    v39 = v32;
    MEMORY[0x21CE92C30](v36, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v39 handleTraitChange];
    [v39 setTranslatesAutoresizingMaskIntoConstraints_];

    [v39 setClipsToBounds_];
    v40 = v39;
    MediaFirstPartyView.addSubViews()();
    (*((*v30 & *v40) + 0x278))();

    return v29;
  }

  else
  {

    type metadata accessor for MediaFirstPartyView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for MediaFirstPartyView()
{
  result = type metadata singleton initialization cache for MediaFirstPartyView;
  if (!type metadata singleton initialization cache for MediaFirstPartyView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MediaFirstPartyView.addSubViews()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView;
  [v0 addSubview_];
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView;
  [v3 addSubview_];
  v5 = [*&v1[v4] contentView];
  [v5 addSubview_];

  [*&v1[v2] addSubview_];
  [*&v1[v2] addSubview_];
  [*&v1[v2] addSubview_];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76968];
  v8 = [v6 preferredFontForTextStyle_];
  isa = UIFont.withWeight(_:)(*MEMORY[0x277D74420]).super.isa;

  v10 = [v6 preferredFontForTextStyle_];
  v11 = MediaFirstPartyView.createMediaMetadataVerticalLabelStack(titleFont:subtitleFont:)(isa, v10);
  v13 = v12;
  v15 = v14;

  v16 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack];
  *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack] = v11;
  v17 = v11;

  v18 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel];
  *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel] = v13;
  v19 = v13;

  v20 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel];
  *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel] = v15;
  v24 = v15;

  Party = MediaFirstPartyView.createMediaCategoryLabel()();
  if (Party)
  {
    v22 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel];
    *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel] = Party;
    v23 = Party;

    [v17 addArrangedSubview_];
  }

  [*&v1[v2] addSubview_];
}

id MediaFirstPartyView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall MediaFirstPartyView.addConstraints()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView;
  [*(v1 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView) setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *(v1 + v2);
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [*(v1 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v1 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_blurView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v1 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_tertiaryVibrancyEffectView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v1 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v1 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x288);

  v4();
}

Swift::Void __swiftcall MediaFirstPartyView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);

  [v1 setHidden_];
}

Swift::Void __swiftcall MediaFirstPartyView.showViews()()
{
  AssetView.showViews()();
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView) setHidden_];
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
  v2(&v5);
  [v3 setHidden_];

  (*((*v1 & *v0) + 0x280))();
  v4 = *((*v1 & *v0) + 0x288);

  v4();
}

Swift::Void __swiftcall MediaFirstPartyView.handleLabelUpdates()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&var1);
  if (var1 > 5u || ((1 << var1) & 0x34) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack);
    if (v3)
    {
      [v3 setHidden_];
    }
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack);
    if (v2)
    {

      [v2 setHidden_];
    }
  }
}

void MediaFirstPartyView.didMoveFrom(_:)()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
LABEL_32:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "Removing media observer registration for old view model", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  if (v6)
  {
    v25 = v6;
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    v9 = v25;
    if (v8)
    {
      v10 = *(v8 + 40);
      v11 = v10(ObjectType, v8);
      v9 = v25;
      if (v11)
      {
        v12 = v10(ObjectType, v8);
        v13 = v12;
        if (v12)
        {
          v14 = (*(*v12 + 184))(v12);

          if (v14)
          {
            v23 = v11;
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = 0;
              v13 = MEMORY[0x277D84F90];
              do
              {
                v24 = v13;
                v17 = v16;
                while (1)
                {
                  if (v17 >= *(v14 + 16))
                  {
                    __break(1u);
                    goto LABEL_32;
                  }

                  v26 = *(v14 + 32 + 16 * v17);
                  v16 = v17 + 1;
                  type metadata accessor for MediaFirstPartyView();
                  v18 = swift_dynamicCastClass();
                  swift_unknownObjectRetain();
                  if (!v18)
                  {
                    break;
                  }

                  swift_unknownObjectRetain();
                  v19 = v1;
                  v20 = static NSObject.== infix(_:_:)();
                  swift_unknownObjectRelease();

                  if ((v20 & 1) == 0)
                  {
                    break;
                  }

                  swift_unknownObjectRelease();
                  ++v17;
                  if (v15 == v16)
                  {
                    v13 = v24;
                    goto LABEL_26;
                  }
                }

                v13 = v24;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
                  v13 = v24;
                }

                v22 = *(v13 + 16);
                v21 = *(v13 + 24);
                if (v22 >= v21 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
                  v13 = v24;
                }

                *(v13 + 16) = v22 + 1;
                *(v13 + 16 * v22 + 32) = v26;
              }

              while (v15 - 1 != v17);
            }

            else
            {
              v13 = MEMORY[0x277D84F90];
            }

LABEL_26:

            v11 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        (*(*v11 + 192))(v13);

        v9 = v25;
      }
    }
  }
}

uint64_t MediaFirstPartyView.updateAndShowViews()()
{
  v1[6] = v0;
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](MediaFirstPartyView.updateAndShowViews(), v3, v2);
}

{
  v76 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 48)) + 0x70))();
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    *(v0 + 88) = v4;
    if (v4)
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      *(v0 + 96) = ObjectType;
      v7 = (*(v5 + 40))();
      if (v7)
      {
        v8 = (*(*v7 + 200))(v0 + 16);
        v10 = v8;
        v11 = *v9;
        if (*v9)
        {
          v12 = v9;
          v74 = v8;
          v13 = *(v0 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v12 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
            *v12 = v11;
          }

          v16 = v11[2];
          v15 = v11[3];
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            v73 = v16 + 1;
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11);
            v17 = v16 + 1;
            v11 = v72;
            *v12 = v72;
          }

          v18 = *(v0 + 48);
          v11[2] = v17;
          v19 = &v11[2 * v16];
          v19[4] = v18;
          v19[5] = &protocol witness table for MediaFirstPartyView;
          v10 = v74;
        }

        v10(v0 + 16, 0);

        v1 = MEMORY[0x277D85000];
      }

      v20 = *(v0 + 48);
      (*(v5 + 32))(&v75, ObjectType, v5);
      v21 = v75;
      v22 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory;
      *(v0 + 104) = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory;
      *(v20 + v22) = v21;
      v23 = (*(v5 + 48))(ObjectType, v5);
      *(v0 + 112) = v23;
      if (v23)
      {
        v24 = *(v0 + 48);
        v25 = (*((*v1 & *v24) + 0x88))();
        v26 = (*((*v1 & *v24) + 0xD8))(v25);
        v27 = *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
        *(v0 + 120) = v27;
        v28 = v27;
        v29 = swift_task_alloc();
        *(v0 + 128) = v29;
        *v29 = v0;
        v29[1] = MediaFirstPartyView.updateAndShowViews();

        return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 144), 1, v26, v27, 0xD000000000000014, 0x8000000216587370);
      }

      v32 = *(v0 + 48);
      v33 = *(v32 + *(v0 + 104));
      if ((v33 - 1) >= 2)
      {
        if (v33 != 3)
        {
          v37 = 0;
          goto LABEL_27;
        }

        v34 = 0x7374736163646F70;
        v35 = 0xE800000000000000;
      }

      else
      {
        v34 = 0x636973756DLL;
        v35 = 0xE500000000000000;
      }

      v36 = MEMORY[0x21CE91FC0](v34, v35);
      v37 = [objc_opt_self() _systemImageNamed_];

      v32 = *(v0 + 48);
LABEL_27:
      [*(v32 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView) setImage_];

      *(v32 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback) = 1;
      v38 = *(*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView);
      Party = MediaFirstPartyView.sourceIcon.getter();
      if (Party)
      {
        v40 = Party;
        v41 = Image.uiImage.getter();
      }

      else
      {
        v41 = 0;
      }

      v42 = *(v0 + 48);
      [v38 setImage_];

      v43 = *(v42 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel);
      if (v43)
      {
        v44 = *(v0 + 96);
        v45 = *(*(v0 + 88) + 8);
        v46 = *(v45 + 8);
        v47 = v43;
        v48 = v46(v44, v45);
        if (v49)
        {
          v50 = MEMORY[0x21CE91FC0](v48);
        }

        else
        {
          v50 = 0;
        }

        [v47 setText_];
      }

      v51 = *(v0 + 48);
      v52 = *(v51 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel);
      if (v52)
      {
        v54 = *(v0 + 88);
        v53 = *(v0 + 96);
        v55 = *(v54 + 16);
        v56 = v52;
        v57 = v55(v53, v54);
        if (v58)
        {
          v59 = MEMORY[0x21CE91FC0](v57);
        }

        else
        {
          v59 = 0;
        }

        [v56 setText_];

        v51 = *(v0 + 48);
      }

      v60 = *(v51 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel);
      if (v60)
      {
        v61 = v60;
        v62 = MediaFirstPartyView.categoryDescription.getter();
        if (v63)
        {
          v64 = MEMORY[0x21CE91FC0](v62);
        }

        else
        {
          v64 = 0;
        }

        [v61 setText_];

        v51 = *(v0 + 48);
      }

      v65 = (*((*v1 & *v51) + 0x88))(&v75 + 1);
      if (BYTE1(v75) - 3 < 4 || BYTE1(v75) == 8)
      {
        v67 = *(v0 + 88);
        v66 = *(v0 + 96);
        v68 = *(v67 + 24);
        v69 = *(*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
        v70 = v68(v66, v67);
        (*((*v1 & *v69) + 0x138))(v70);
      }

      v71 = *(v0 + 80);
      (*((*v1 & **(v0 + 48)) + 0xF0))(v65);

      goto LABEL_18;
    }
  }

LABEL_18:
  v31 = *(v0 + 8);

  return v31();
}

{
  v50 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView);
    v4 = *(v0 + 136);
    [v3 setImage_];
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur);
    [v5 setImage_];

    goto LABEL_10;
  }

  v6 = *(v0 + 48);
  v7 = *(v6 + *(v0 + 104));
  if ((v7 - 1) >= 2)
  {
    if (v7 != 3)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v8 = 0x7374736163646F70;
    v9 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x636973756DLL;
    v9 = 0xE500000000000000;
  }

  v10 = MEMORY[0x21CE91FC0](v8, v9);
  v11 = [objc_opt_self() _systemImageNamed_];

  v6 = *(v0 + 48);
LABEL_9:
  [*(v6 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView) setImage_];

  *(v6 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback) = 1;
LABEL_10:
  v12 = *(*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView);
  Party = MediaFirstPartyView.sourceIcon.getter();
  if (Party)
  {
    v14 = Party;
    v15 = Image.uiImage.getter();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 48);
  [v12 setImage_];

  v17 = *(v16 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel);
  if (v17)
  {
    v18 = *(v0 + 96);
    v19 = *(*(v0 + 88) + 8);
    v20 = *(v19 + 8);
    v21 = v17;
    v22 = v20(v18, v19);
    if (v23)
    {
      v24 = MEMORY[0x21CE91FC0](v22);
    }

    else
    {
      v24 = 0;
    }

    [v21 setText_];
  }

  v25 = *(v0 + 48);
  v26 = *(v25 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel);
  if (v26)
  {
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);
    v29 = *(v28 + 16);
    v30 = v26;
    v31 = v29(v27, v28);
    if (v32)
    {
      v33 = MEMORY[0x21CE91FC0](v31);
    }

    else
    {
      v33 = 0;
    }

    [v30 setText_];

    v25 = *(v0 + 48);
  }

  v34 = *(v25 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel);
  if (v34)
  {
    v35 = v34;
    v36 = MediaFirstPartyView.categoryDescription.getter();
    if (v37)
    {
      v38 = MEMORY[0x21CE91FC0](v36);
    }

    else
    {
      v38 = 0;
    }

    [v35 setText_];

    v25 = *(v0 + 48);
  }

  v39 = MEMORY[0x277D85000];
  v40 = (*((*MEMORY[0x277D85000] & *v25) + 0x88))(&v49);
  if (v49 - 3 < 4 || v49 == 8)
  {
    v42 = *(v0 + 88);
    v41 = *(v0 + 96);
    v43 = *(v42 + 24);
    v44 = *(*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
    v45 = v43(v41, v42);
    (*((*v39 & *v44) + 0x138))(v45);
  }

  v46 = *(v0 + 80);
  (*((*v39 & **(v0 + 48)) + 0xF0))(v40);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t MediaFirstPartyView.updateAndShowViews()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 136) = a1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  return MEMORY[0x2822009F8](MediaFirstPartyView.updateAndShowViews(), v6, v5);
}

void *MediaFirstPartyView.sourceIcon.getter()
{
  ObjectType = swift_getObjectType();
  result = 0;
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory);
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      return result;
    }

    type metadata accessor for Image();
    v7 = MEMORY[0x21CE91FC0](0x7374736163646F70, 0xE800000000000000);
    v5 = [objc_opt_self() _systemImageNamed_];

    type metadata accessor for DBAssetModel();
    static DBAssetModel.subscript.getter(ObjectType, &v9);
    v8 = v9;
    v6 = &v8;
  }

  else
  {
    if (v3 - 1 >= 2)
    {
      return result;
    }

    type metadata accessor for Image();
    v4 = MEMORY[0x21CE91FC0](0x636973756DLL, 0xE500000000000000);
    v5 = [objc_opt_self() _systemImageNamed_];

    type metadata accessor for DBAssetModel();
    static DBAssetModel.subscript.getter(ObjectType, &v11);
    v10 = v11;
    v6 = &v10;
  }

  return Image.__allocating_init(uiImage:isGlyph:assetClass:)(v5, 1, v6);
}

uint64_t MediaFirstPartyView.categoryDescription.getter()
{
  countAndFlagsBits = 0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory);
  if (v2 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory))
    {
      type metadata accessor for MediaFirstPartyView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v14 = 0x80000002165874D0;
      v5 = 1735290707;
      v7 = 0xE400000000000000;
      v9.super.isa = v4;
      v10 = 0;
      v11 = 0xE000000000000000;
      v6 = 0xD000000000000013;
LABEL_9:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v9, *&v10, *&v6)._countAndFlagsBits;
    }
  }

  else
  {
    if (v2 == 2)
    {
      type metadata accessor for MediaFirstPartyView();
      v12 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v14 = 0x8000000216583220;
      v5 = 0x6D75626C41;
      v6 = 0xD000000000000014;
      v7 = 0xE500000000000000;
      goto LABEL_8;
    }

    if (v2 == 3)
    {
      type metadata accessor for MediaFirstPartyView();
      v3 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v14 = 0x80000002165874B0;
      v5 = 0x74736163646F50;
      v6 = 0xD000000000000016;
      v7 = 0xE700000000000000;
LABEL_8:
      v9.super.isa = v4;
      v10 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_9;
    }
  }

  return countAndFlagsBits;
}

Swift::Void __swiftcall MediaFirstPartyView.updateDynamicConstraints()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView);
  isa = [v1 constraints];
  if (!isa)
  {
    type metadata accessor for NSLayoutConstraint();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v1 removeConstraints_];

  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_tertiaryVibrancyEffectView);
  v4 = [v3 constraints];
  if (!v4)
  {
    type metadata accessor for NSLayoutConstraint();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v3 removeConstraints_];

  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView);
  v6 = [v5 constraints];
  if (!v6)
  {
    type metadata accessor for NSLayoutConstraint();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 removeConstraints_];

  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView);
  v8 = [v7 constraints];
  if (!v8)
  {
    type metadata accessor for NSLayoutConstraint();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v7 removeConstraints_];

  v9 = MEMORY[0x277D85000];
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback) == 1)
  {
    [v1 setContentMode_];
    v10 = [objc_opt_self() tertiarySystemFillColor];
    [v1 setBackgroundColor_];

    (*((*v9 & *v0) + 0x88))(&v15);
    if (v15 <= 8u && ((1 << v15) & 0x138) != 0)
    {
      v11 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:46.0];
    }

    else
    {
      v14 = [objc_opt_self() preferredFontForTextStyle_];
      v11 = [objc_opt_self() configurationWithFont:v14 scale:-1];
    }

    [v1 setSymbolConfiguration_];
  }

  else
  {
    [v1 setContentMode_];
    [v1 setClipsToBounds_];
  }

  v12 = (*((*v9 & *v0) + 0x290))();
  (*((*v9 & *v0) + 0x298))(v12);
  v13 = *((*v9 & *v0) + 0x2A0);

  v13();
}

Swift::Void __swiftcall MediaFirstPartyView.updateMetadataConstraints()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2((&v87 + 1));
  if (BYTE1(v87) > 5u || ((1 << SBYTE1(v87)) & 0x34) == 0)
  {
    v81 = *&v0[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack];
    if (v81)
    {
      [v81 setHidden_];
    }

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    v83 = v2;
    v4 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur;
    [*&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur] setHidden_];
    v5 = *&v1[v4];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v6 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      [v6 setTranslatesAutoresizingMaskIntoConstraints_];
      v9 = [v6 leadingAnchor];
      v10 = [v8 leadingAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      [v11 setConstant_];
      if (v11)
      {
        [v11 setActive_];
      }
    }

    v12 = [v6 superview];
    if (v12)
    {
      v13 = v12;
      [v6 setTranslatesAutoresizingMaskIntoConstraints_];
      v14 = [v6 topAnchor];
      v15 = [v13 topAnchor];
      v16 = [v14 constraintEqualToAnchor_];

      [v16 setConstant_];
      if (v16)
      {
        [v16 setActive_];
      }
    }

    v17 = [v6 superview];
    if (v17)
    {
      v18 = v17;
      [v6 setTranslatesAutoresizingMaskIntoConstraints_];
      v19 = [v6 bottomAnchor];
      v20 = [v18 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      if (v21)
      {
        [v21 setConstant_];
        [v21 setActive_];
      }
    }

    v22 = [v6 widthAnchor];
    v23 = [v6 heightAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    [v24 setActive_];
    v25 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_blurView];
    v26 = [v25 superview];
    v27 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v26)
    {
      v28 = v26;
      [v25 setTranslatesAutoresizingMaskIntoConstraints_];
      v29 = [v25 trailingAnchor];
      v30 = [v28 trailingAnchor];
      v31 = [v29 constraintEqualToAnchor_];

      [v31 setConstant_];
      [v31 setActive_];

      v27 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    v32 = [v25 superview];
    if (v32)
    {
      v33 = v32;
      [v25 setTranslatesAutoresizingMaskIntoConstraints_];
      v34 = [v25 bottomAnchor];
      v35 = [v33 bottomAnchor];
      v36 = [v34 constraintEqualToAnchor_];

      if (v36)
      {
        [v36 setConstant_];
        [v36 setActive_];
      }

      v27 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    v85 = v1;
    v37 = [v25 superview];
    if (v37)
    {
      v38 = v37;
      [v25 &off_27821E5B8 + 2];
      v39 = [v25 topAnchor];
      v40 = [v38 topAnchor];
      v41 = [v39 &selRef_safeAreaLayoutGuide + 5];

      [v41 setConstant_];
      [v41 setActive_];

      v27 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    v42 = [v25 leadingAnchor];
    v43 = [v6 v27[14]];
    v44 = [v42 &selRef_safeAreaLayoutGuide + 5];

    [v44 setActive_];
    v45 = *&v1[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_tertiaryVibrancyEffectView];
    [v45 &off_27821E5B8 + 2];
    v46 = [v45 leadingAnchor];
    v47 = [v6 v27[14]];
    v48 = [v46 &selRef_safeAreaLayoutGuide + 5];

    [v48 setConstant_];
    [v48 setActive_];

    v49 = [v45 superview];
    if (v49)
    {
      v50 = v49;
      [v45 &off_27821E5B8 + 2];
      v51 = [v45 v27[14]];
      v52 = [v50 v27[14]];
      v53 = [v51 &selRef_safeAreaLayoutGuide + 5];

      [v53 &selRef:0.0 setShadowPathIsBounds:? + 2];
      [v53 setActive_];
    }

    v54 = [v45 superview];
    if (v54)
    {
      v55 = v54;
      [v45 &off_27821E5B8 + 2];
      v56 = [v45 bottomAnchor];
      v57 = [v55 bottomAnchor];
      v58 = [v56 &selRef_safeAreaLayoutGuide + 5];

      if (v58)
      {
        [v58 &selRef:-0.0 setShadowPathIsBounds:? + 2];
        [v58 setActive_];
      }
    }

    v59 = [v45 superview];
    if (v59)
    {
      v60 = v59;
      [v45 &off_27821E5B8 + 2];
      v61 = [v45 topAnchor];
      v62 = [v60 topAnchor];
      v63 = [v61 &selRef_safeAreaLayoutGuide + 5];

      [v63 &selRef:0.0 setShadowPathIsBounds:? + 2];
      [v63 setActive_];
    }

    v83(&v87);
    if (v87 == 2)
    {
      v64 = 8.0;
    }

    else
    {
      v64 = 12.0;
    }

    v65 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack;
    v66 = *&v85[OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack];
    if (v66)
    {
      v67 = v66;
      [v67 &off_27821E5B8 + 2];
      v68 = [v67 leadingAnchor];
      v69 = [v45 leadingAnchor];
      v70 = [v68 constraintEqualToAnchor:v69 constant:v64];

      [v70 setActive_];
      v71 = *&v85[v65];
      if (v71)
      {
        v72 = -v64;
        v73 = v71;
        [v73 &off_27821E5B8 + 2];
        v74 = [v73 trailingAnchor];
        v75 = [v45 trailingAnchor];
        v76 = [v74 constraintEqualToAnchor:v75 constant:v72];

        [v76 setActive_];
        v77 = *&v85[v65];
        if (v77)
        {
          v86 = v77;
          v84 = [v86 superview];
          if (v84)
          {
            [v86 &off_27821E5B8 + 2];
            v78 = [v86 bottomAnchor];
            v79 = [v84 bottomAnchor];
            v80 = [v78 &selRef_safeAreaLayoutGuide + 5];

            if (v80)
            {
              [v80 setConstant_];
              [v80 setActive_];
            }

            else
            {
            }

            v82 = v84;
          }

          else
          {
            v82 = v86;
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall MediaFirstPartyView.updatePlayButtonConstraints()()
{
  if ((*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback) & 1) != 0 || *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory) - 1 > 1)
  {
    goto LABEL_10;
  }

  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v36);
  if (v36 - 4 >= 2)
  {
    if (v36 == 6 || v36 == 3)
    {
      v1 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton;
      v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
      v3 = [v2 superview];
      v4 = &unk_27821E000;
      if (v3)
      {
        v5 = v3;
        [v2 setTranslatesAutoresizingMaskIntoConstraints_];
        v6 = [v2 topAnchor];
        v7 = [v5 topAnchor];
        v8 = [v6 constraintEqualToAnchor_];

        [v8 0x1FAE0C992];
        if (v8)
        {
          [v8 setActive_];
        }

        v4 = &unk_27821E000;
      }

      else
      {
        v8 = 0;
        v5 = v2;
      }

      v26 = *(v0 + v1);
      v27 = [v26 superview];
      if (v27)
      {
        v28 = v27;
        [v26 v4[440]];
        v29 = [v26 leadingAnchor];
        v30 = [v28 leadingAnchor];
        v31 = [v29 constraintEqualToAnchor_];

        [v31 0x1FAE0C992];
        if (v31)
        {
          [v31 &selRef:1 setPrefetchDataSource:?];
        }

        v4 = &unk_27821E000;
      }

      else
      {
        v31 = 0;
        v28 = v26;
      }

      v32 = *(v0 + v1);
      [v32 v4[440]];
      v33 = [v32 widthAnchor];
      v34 = [v33 constraintEqualToConstant_];

      [v34 setActive_];
      v23 = *(v0 + v1);
      [v23 v4[440]];
      v35 = [v23 heightAnchor];
      v25 = [v35 constraintEqualToConstant_];

      [v25 setActive_];
      goto LABEL_19;
    }

LABEL_10:
    v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
    v10 = 1;
    goto LABEL_20;
  }

  v1 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton;
  v11 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_tertiaryVibrancyEffectView);
  v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 topAnchor];
  v14 = [v11 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:7.0];

  [v15 setActive_];
  v16 = *(v0 + v1);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v16 leadingAnchor];
  v18 = [v11 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:7.0];

  [v19 setActive_];
  v20 = *(v0 + v1);
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v20 widthAnchor];
  v22 = [v21 constraintEqualToConstant_];

  [v22 setActive_];
  v23 = *(v0 + v1);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [v23 heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  [v25 setActive_];
LABEL_19:

  v9 = *(v0 + v1);
  v10 = 0;
LABEL_20:

  [v9 setHidden_];
}

Swift::Void __swiftcall MediaFirstPartyView.updateSourceIconConstraints()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v1((&v45 + 2));
  if (BYTE2(v45) && (*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView);
    v4 = [objc_opt_self() whiteColor];
    [v3 setTintColor_];

    v5 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView;
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView) _setCornerRadius_];
    v6 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v7 = [v3 superview];
    if (v7)
    {
      v8 = v7;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v9 = [v3 leadingAnchor];
      v10 = [v8 leadingAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      [v11 setConstant_];
      if (v11)
      {
        [v11 setActive_];
      }
    }

    v12 = [v3 superview];
    if (v12)
    {
      v13 = v12;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v14 = [v3 trailingAnchor];
      v15 = [v13 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor_];

      [v16 setConstant_];
      if (v16)
      {
        [v16 setActive_];
      }
    }

    v17 = [v3 superview];
    if (v17)
    {
      v18 = v17;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v19 = [v3 topAnchor];
      v20 = [v18 topAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      [v21 setConstant_];
      if (v21)
      {
        [v21 setActive_];
      }
    }

    v22 = [v3 superview];
    if (v22)
    {
      v23 = v22;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v24 = [v3 bottomAnchor];
      v25 = [v23 bottomAnchor];
      v26 = [v24 constraintEqualToAnchor_];

      if (v26)
      {
        [v26 setConstant_];
        [v26 setActive_];
      }
    }

    v27 = *(v0 + v5);
    v1((&v45 + 1));
    v28 = 6.0;
    if ((BYTE1(v45) - 1) <= 7u)
    {
      v28 = dbl_2165A5B10[(BYTE1(v45) - 1)];
    }

    v29 = [v27 superview];
    if (v29)
    {
      v30 = v29;
      [v27 setTranslatesAutoresizingMaskIntoConstraints_];
      v31 = [v27 leadingAnchor];
      v32 = [v30 leadingAnchor];
      v33 = [v31 constraintEqualToAnchor_];

      [v33 setConstant_];
      if (v33)
      {
        [v33 setActive_];
      }

      v6 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    else
    {
      v33 = 0;
      v30 = v27;
    }

    v34 = *(v0 + v5);
    v1(&v45);
    v35 = 6.0;
    if ((v45 - 1) <= 7u)
    {
      v35 = dbl_2165A5B10[(v45 - 1)];
    }

    v36 = [v34 v6[5]];
    if (v36)
    {
      v37 = v36;
      [v34 setTranslatesAutoresizingMaskIntoConstraints_];
      v38 = [v34 bottomAnchor];
      v39 = [v37 bottomAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      if (v40)
      {
        [v40 setConstant_];
        [v40 setActive_];
      }
    }

    else
    {
      v40 = 0;
      v37 = v34;
    }

    v41 = [*(v0 + v5) widthAnchor];
    v42 = [v41 constraintEqualToConstant_];

    [v42 setActive_];
    v43 = [*(v0 + v5) heightAnchor];
    v44 = [v43 constraintEqualToConstant_];

    [v44 setActive_];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView) setHidden_];
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView);

    [v2 setHidden_];
  }
}

id MediaFirstPartyView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MediaFirstPartyView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);
}

id MediaFirstPartyView.layoutSubviews()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MediaFirstPartyView();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance MediaFirstPartyView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 624))(a1, &v6);
  *a3 = result;
  return result;
}

id MediaFirstPartyView.createMediaMetadataVerticalLabelStack(titleFont:subtitleFont:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setSpacing_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) &_OBJC_LABEL_PROTOCOL___NSSecureCoding];
  [v5 setLineBreakMode_];
  [v5 setTextAlignment_];
  [v5 setNumberOfLines_];
  v6 = *MEMORY[0x277D76808];
  v7 = v5;
  [v7 setMaximumContentSizeCategory_];
  [v7 setFont_];
  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  v10 = [v9 colorWithAlphaComponent_];

  [v7 setTextColor_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  v12 = v11;
  [v12 setMaximumContentSizeCategory_];
  [v12 setFont_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  (*((*MEMORY[0x277D85000] & *v2) + 0x88))(&v20);
  v13 = v20;
  v14 = [v8 whiteColor];
  v15 = v14;
  v16 = 0.4;
  if (v13 == 4)
  {
    v16 = 0.7;
  }

  v17 = [v14 colorWithAlphaComponent_];

  [v12 setTextColor_];
  [v4 addArrangedSubview_];
  [v4 addArrangedSubview_];
  return v4;
}

id MediaFirstPartyView.createMediaCategoryLabel()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v6);
  if (v6 != 4)
  {
    return 0;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setNumberOfLines_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v1 setTextColor_];
  [v1 setMaximumContentSizeCategory_];
  return v1;
}

uint64_t MediaFirstPartyView.playbackStateDidChange(viewModel:state:)(void *a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v13 = a1;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = a2;
  *(v15 + 56) = v9;
  *(v15 + 60) = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in MediaFirstPartyView.playbackStateDidChange(viewModel:state:), v15);
}

uint64_t closure #1 in MediaFirstPartyView.playbackStateDidChange(viewModel:state:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 100) = a8;
  *(v8 + 96) = a1;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 64) = a5;
  type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyView.playbackStateDidChange(viewModel:state:), v10, v9);
}

uint64_t closure #1 in MediaFirstPartyView.playbackStateDidChange(viewModel:state:)()
{
  v29 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))();

    if (v4)
    {
      swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      if (!v5)
      {
LABEL_23:

        goto LABEL_24;
      }

      v6 = v5;
      v7 = *(v0 + 80);
      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 40))(ObjectType, v7);
      if (v9)
      {
        v10 = (*(*v9 + 112))(v9);
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = swift_getObjectType();
      v14 = (*(v6 + 40))(v13, v6);
      if (v14)
      {
        v15 = (*(*v14 + 112))();
        v17 = v16;

        if (v12)
        {
          if (v17)
          {
            if (v10 == v15 && v12 == v17)
            {
            }

            else
            {
              v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v19 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

LABEL_21:
            swift_beginAccess();
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = *(v0 + 100);
              v22 = *(v0 + 96);
              v23 = v20;
              v24 = *(v20 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton);

              v27 = v22;
              v28 = v21;
              (*((*v3 & *v24) + 0x140))(&v27);
            }

            goto LABEL_23;
          }
        }

        else if (!v17)
        {
          goto LABEL_21;
        }
      }

      else if (!v12)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_24:
  v25 = *(v0 + 8);

  return v25();
}

void specialized MediaFirstPartyView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_baseMediaImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaSourceIconView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_blurView;
  v5 = objc_opt_self();
  v6 = [v5 effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_tertiaryVibrancyEffectView;
  v9 = [v5 effectWithStyle_];
  v10 = [objc_opt_self() effectForBlurEffect:v9 style:4];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  *(v0 + v8) = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_sourceBlurContainerView;
  v13 = [v5 effectWithStyle_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v12) = v14;
  v15 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_coverArtBlur;
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_mediaCategory) = 4;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_categoryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_labelStack) = 0;
  v16 = OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_circularProgressPlayPauseButton;
  *(v0 + v16) = [objc_allocWithZone(type metadata accessor for CircularProgressView()) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaFirstPartyView_needsFallback) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in MediaFirstPartyView.playbackStateDidChange(viewModel:state:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 60);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MediaFirstPartyView.playbackStateDidChange(viewModel:state:)(v9, a1, v4, v5, v6, v7, v8, v10);
}

uint64_t MOAngelDefaultsManager.notificationSchedule.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Any?(&v7);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657AEB0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !*(v3 + 16))
  {

    return 0;
  }

  return result;
}

unint64_t MOAngelDefaultsManager.authorizedAppsArray.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of Any?(&v7);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x800000021657E2D0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVyXlGMd);
  if (swift_dynamicCast())
  {
    v3 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v5);

    return v3;
  }

  return 0;
}

Swift::Void __swiftcall MOAngelDefaultsManager.setAuthorizedAppsArray(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v1 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x800000021657E2D0);
    [v1 setValue:isa forKey:v3];
  }
}

uint64_t MOAngelDefaultsManager.lastSuggestionNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000031, 0x80000002165828F0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000024, 0x80000002165829C0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165828C0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void one-time initialization function for defaults()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216587760);
  v2 = [v0 initWithSuiteName_];

  static MOAngelDefaultsManager.defaults = v2;
}

void one-time initialization function for siri()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216587740);
  v2 = [v0 initWithSuiteName_];

  static MOAngelDefaultsManager.siri = v2;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldUpLevelPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216587560);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldSkipDendrogram.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216587580);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIForceEmbeddedPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165875A0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUITripDropUninterestingPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165875C0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double MOAngelDefaultsManager.momentsUIDendrogramPOIPenalty.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0.5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x80000002165875F0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

double MOAngelDefaultsManager.momentsUILowConfidenceHighCertaintyThreshold.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 150.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000002CLL, 0x8000000216587610);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 150.0;
}

uint64_t MOAngelDefaultsManager.momentsUIGridBuckets.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Any?(&v7);
    return 5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216587640);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 5;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.momentsUIClusterMaxCount.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Any?(&v7);
    return 30;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216587660);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 30;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

double MOAngelDefaultsManager.momentsUITightPOIScale.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0.5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216587680);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t static MOAngelDefaultsManager.dateValueFor(_:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = MEMORY[0x21CE91FC0]();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationRealTimeCheckTimerDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x80000002165876A0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.eligiblePOICategories.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Any?(&v7);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000002DLL, 0x80000002165876D0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !*(v3 + 16))
  {

    return 0;
  }

  return result;
}

Swift::String_optional __swiftcall MOAngelDefaultsManager.chosenDefaultAppBundleID()()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults && (v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216587700), v2 = [v0 stringForKey_], v1, v2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t MOAngelDefaultsManager.siriCanLearnFromAppDenySet.getter()
{
  if (one-time initialization token for siri != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.siri;
  if (!static MOAngelDefaultsManager.siri)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_12:
    outlined destroy of Any?(&v8);
    return MEMORY[0x277D84FA0];
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216587720);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd);
  if (swift_dynamicCast())
  {
    v3 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    if (v3)
    {
      v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

      return v4;
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized MOAngelDefaultsManager.notificationReporterIdentification.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000022, 0x8000000216587780);
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of Any?(&v6);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t specialized static MOAngelDefaultsManager.arrayValueFor(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v4 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_12:
    outlined destroy of Any?(&v10);
    return 0;
  }

  v5 = MEMORY[0x21CE91FC0]();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  outlined init with copy of DateInterval?(a2, &v15 - v9, &_s10Foundation4UUIDVSgMd);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, a1, isa, v14);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSNumber, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void MOProcessingServerConnection.beginSystemTask(withTask:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 connection];
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed MOTaskAction, @in_guaranteed UUID?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_33;
  v8 = _Block_copy(v9);

  [v7 beginSystemTaskWithTask:a1 completionHandler:v8];
  _Block_release(v8);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MOTaskAction, @in_guaranteed UUID?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a2;
  v15 = a4;
  v11(v14, v10, a4);

  return outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void MOProcessingServerConnection.continueSystemTask(withToken:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 connection];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed NSNumber, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_3_2;
  v8 = _Block_copy(v9);

  [v6 continueSystemTaskWithToken:isa completionHandler:v8];
  _Block_release(v8);
}

void MOProcessingServerConnection.endSystemTask(withToken:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 connection];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_6_3;
  v8 = _Block_copy(v9);

  [v6 endSystemTaskWithToken:isa completionHandler:v8];
  _Block_release(v8);
}

uint64_t closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:)()
{
  v1 = [*(v0 + 152) connection];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_115;
  *(v0 + 112) = v2;
  [v1 cloudSyncWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:), 0, 0);
}

uint64_t partial apply for closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MOProcessingServerConnection.cloudSync(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:)()
{
  v1 = [*(v0 + 152) connection];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_112;
  *(v0 + 112) = v2;
  [v1 runNotificationServicingFor:0 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:), 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MOProcessingServerConnection.notificationServicing(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:), 0, 0);
}

uint64_t closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:)()
{
  v1 = [*(v0 + 144) connection];
  *(v0 + 168) = v1;
  *(v0 + 16) = v0;
  *(v0 + 24) = closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
  *(v0 + 104) = &block_descriptor_109;
  *(v0 + 112) = v2;
  [v1 keepUIActiveWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:);
  }

  else
  {
    v2 = closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 152);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  swift_willThrow();

  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MOProcessingServerConnection.keepUIActiveWithCompletionHandler(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = type metadata accessor for Date();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:)()
{
  v1 = [*(v0 + 152) presenterServerConnection];
  *(v0 + 224) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySis5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned Int) -> () with result type Int;
  *(v0 + 104) = &block_descriptor_106_1;
  *(v0 + 112) = v2;
  [v1 retrieveOnboardingStateWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:), 0, 0);
}

{
  v39 = v0;
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;

  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(v2);
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.processing);
  outlined init with copy of DateInterval?(v4, v5, &_s10Foundation4DateVSgMd);
  v7 = v3.super.super.isa;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 208);
  if (v10)
  {
    v36 = v9;
    v12 = *(v0 + 200);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v15 = 136446722;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x8000000216587920, &v38);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v7;
    isa = v3.super.super.isa;
    v34 = v16;
    v16->super.super.isa = v3.super.super.isa;
    *(v15 + 22) = 2080;
    outlined init with copy of DateInterval?(v11, v12, &_s10Foundation4DateVSgMd);
    v17 = *(v13 + 48);
    v18 = v17(v12, 1, v14);
    v19 = *(v0 + 200);
    if (v18 == 1)
    {
      v20 = *(v0 + 176);
      v21 = v7;
      static Date.distantPast.getter();
      if (v17(v19, 1, v20) != 1)
      {
        outlined destroy of UTType?(*(v0 + 200), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
      v22 = v7;
    }

    v23 = *(v0 + 208);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v26 = *(v0 + 176);
    lazy protocol witness table accessor for type Date and conformance Date();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v25 + 8))(v24, v26);
    outlined destroy of UTType?(v23, &_s10Foundation4DateVSgMd);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v38);

    *(v15 + 24) = v30;
    _os_log_impl(&dword_21607C000, v8, v36, "MOProcessingServerConnection.%{public}s:onboardingStateRawValue= %@ onboardingDate= %s", v15, 0x20u);
    outlined destroy of UTType?(v34, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v35, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);

    v3.super.super.isa = isa;
  }

  else
  {

    outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
  }

  v31 = *(v0 + 216);
  (*(v0 + 160))(v3.super.super.isa, v31);

  outlined destroy of UTType?(v31, &_s10Foundation4DateVSgMd);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t partial apply for closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned Int) -> () with result type Int(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSDate?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  outlined init with copy of DateInterval?(a2, &v12 - v7, &_s10Foundation4DateVSgMd);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, a1, isa);
}

uint64_t closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:)()
{
  v1 = [*(v0 + 152) connection];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
  *(v0 + 104) = &block_descriptor_103_0;
  *(v0 + 112) = v2;
  [v1 isUIActiveWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:);
  }

  else
  {
    v2 = closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v1(v2, 0);
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  swift_willThrow();

  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MOProcessingServerConnection.isUIActive(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t MOProcessingServerConnection.cloudSync(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a4, v12);
}

uint64_t closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:), 0, 0);
}

uint64_t closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:)()
{
  v1 = [*(v0 + 152) connection];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
  *(v0 + 104) = &block_descriptor_100;
  *(v0 + 112) = v2;
  [v1 isUIActiveWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:);
  }

  else
  {
    v2 = closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t partial apply for closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MOProcessingServerConnection.isUIActiveWithCompletionHandler(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc MOProcessingServerConnection.cloudSync(completionHandler:)(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, a7, v17);
}

MOProcessingServerConnection __swiftcall MOProcessingServerConnection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.presenterServerConnection = v3;
  result.connection = v2;
  result.super.isa = v1;
  return result;
}

id MOProcessingServerConnection.init()()
{
  v1 = OBJC_IVAR___MOProcessingServerConnection_connection;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for ProcessingServerConnection()) init];
  v2 = OBJC_IVAR___MOProcessingServerConnection_presenterServerConnection;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PresenterServerConnection()) init];
  v4.receiver = v0;
  v4.super_class = MOProcessingServerConnection;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t type metadata accessor for MOProcessingServerConnection()
{
  result = lazy cache variable for type metadata for MOProcessingServerConnection;
  if (!lazy cache variable for type metadata for MOProcessingServerConnection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MOProcessingServerConnection);
  }

  return result;
}

uint64_t closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MOProcessingServerConnection.retrieveOnboardingCompletionStatusRawValueAndOnboardingDate(handler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t ClientStateOfMindViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientStateOfMindViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientStateOfMindViewModel.valenceIcon.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

void *ClientStateOfMindViewModel.stateOfMind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_stateOfMind);
  v2 = v1;
  return v1;
}

uint64_t ClientStateOfMindViewModel.shortTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortTitle);

  return v1;
}

uint64_t ClientStateOfMindViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subtitle);

  return v1;
}

uint64_t ClientStateOfMindViewModel.shortSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortSubtitle);

  return v1;
}

uint64_t ClientStateOfMindViewModel.subheading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subheading);

  return v1;
}

uint64_t ClientStateOfMindViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientStateOfMindViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientStateOfMindViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientStateOfMindViewModel.init(from:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientStateOfMindViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientStateOfMindViewModel.init(coder:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientStateOfMindViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for StateOfMindView());
  return StateOfMindView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientStateOfMindViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientStateOfMindViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientStateOfMindViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for StateOfMindViewModel.stateOfMind.getter in conformance ClientStateOfMindViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_stateOfMind);
  v2 = v1;
  return v1;
}

uint64_t protocol witness for StateOfMindViewModel.shortTitle.getter in conformance ClientStateOfMindViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortTitle);

  return v1;
}

uint64_t protocol witness for StateOfMindViewModel.subtitle.getter in conformance ClientStateOfMindViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subtitle);

  return v1;
}

uint64_t protocol witness for StateOfMindViewModel.shortSubtitle.getter in conformance ClientStateOfMindViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortSubtitle);

  return v1;
}

uint64_t protocol witness for StateOfMindViewModel.subheading.getter in conformance ClientStateOfMindViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subheading);

  return v1;
}

uint64_t specialized ClientStateOfMindViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v36[3] = a3;
  v36[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_weakInit();
  outlined init with copy of DBObject(v36, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBStateOfMindModel();
  if (swift_dynamicCast())
  {
    v12 = v34;
    outlined init with copy of StateOfMind?(v34 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, v10);
    v13 = type metadata accessor for StateOfMind();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
    {
      outlined destroy of StateOfMind?(v10);
      v14 = 0;
    }

    else
    {
      v14 = StateOfMind.hkStateOfMind.getter();
      outlined destroy of StateOfMind(v10);
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_stateOfMind] = v14;
    v15 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle + 8);
    v16 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortTitle];
    *v16 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);
    v16[1] = v15;
    v17 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle + 8);
    v18 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subtitle];
    *v18 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);
    v18[1] = v17;
    v19 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle + 8);
    v20 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortSubtitle];
    *v20 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);
    v20[1] = v19;
    v21 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading + 8);
    v22 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subheading];
    *v22 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);
    v22[1] = v21;
    v23 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v35[0] = MEMORY[0x277D84F90];
      v25 = *(v23 + 16);
      if (v25)
      {

        v26 = (v23 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v26 - 3) green:*(v26 - 2) blue:*(v26 - 1) alpha:*v26];
          MEMORY[0x21CE92260]();
          if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v26 += 4;
          --v25;
        }

        while (v25);
        v27 = v35[0];
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v27 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_lightBackgroundColors] = v27;
    v28 = *(v12 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors);
    if (v28)
    {
      v35[0] = v24;
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (v28 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v30 - 3) green:*(v30 - 2) blue:*(v30 - 1) alpha:*v30];
          MEMORY[0x21CE92260]();
          if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v30 += 4;
          --v29;
        }

        while (v29);
        v24 = v35[0];
      }
    }

    else
    {
      v24 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_darkBackgroundColors] = v24;
    swift_weakAssign();
    v31 = specialized AssetViewModel.init(clientDBObject:)(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v31;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientStateOfMindViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientStateOfMindViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientStateOfMindViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientStateOfMindViewModel()
{
  result = type metadata singleton initialization cache for ClientStateOfMindViewModel;
  if (!type metadata singleton initialization cache for ClientStateOfMindViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *WorkoutLocationPinView.__allocating_init(annotation:type:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();

  return specialized WorkoutLocationPinView.init(annotation:type:)(a1, a2 & 1, v5);
}

Swift::Int WorkoutLocationPinView.RouteAnnotationViewType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

void *WorkoutLocationPinView.init(annotation:type:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return specialized WorkoutLocationPinView.init(annotation:type:)(a1, a2 & 1, v2);
}

id WorkoutLocationPinView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t WorkoutLocationPinView.init(coder:)(void *a1)
{
  type metadata accessor for WorkoutLocationPinView();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall WorkoutLocationPinView.setTintColor(_:)(MomentsUI::WorkoutLocationPinView::RouteAnnotationViewType a1)
{
  if (a1)
  {
    v2 = HKUIStandardMapRedColor();
  }

  else
  {
    v2 = HKUIStandardMapGreenColor();
  }

  v3 = v2;
  [v1 setTintColor_];
}

Swift::Void __swiftcall WorkoutLocationPinView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    c = v6;
    CGContextSetLineWidth(v6, 2.0);
    v7 = [v1 tintColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 CGColor];

      CGContextSetFillColorWithColor(c, v9);
      v10 = [objc_opt_self() whiteColor];
      v11 = [v10 CGColor];

      CGContextSetStrokeColorWithColor(c, v11);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v15 = CGRectInset(v14, 2.0, 2.0);
      CGContextAddEllipseInRect(c, v15);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id WorkoutLocationPinView.__allocating_init(annotation:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = MEMORY[0x21CE91FC0](a2, a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithAnnotation:a1 reuseIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id WorkoutLocationPinView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutLocationPinView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized WorkoutLocationPinView.init(annotation:type:)(uint64_t a1, char a2, void *a3)
{
  swift_getObjectType();
  v20.receiver = a3;
  v20.super_class = type metadata accessor for WorkoutLocationPinView();
  v6 = objc_msgSendSuper2(&v20, sel_initWithAnnotation_reuseIdentifier_, a1, 0);
  [v6 setFrame_];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  [v8 setCanShowCallout_];
  (*((*MEMORY[0x277D85000] & *v8) + 0x58))(a2 & 1);
  [v8 setIsAccessibilityElement_];
  v10 = *MEMORY[0x277D76560];
  v11 = [v8 accessibilityTraits];
  if ((v10 & ~v11) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessibilityTraits_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v21._object = 0x800000021657BF40;
  v15._countAndFlagsBits = 0x6E73206574756F52;
  v15._object = 0xEE00746F68737061;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000033;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v18 = MEMORY[0x21CE91FC0](v17._countAndFlagsBits, v17._object);

  [v8 setAccessibilityLabel_];
  swift_unknownObjectRelease();

  return v8;
}

unint64_t lazy protocol witness table accessor for type WorkoutLocationPinView.RouteAnnotationViewType and conformance WorkoutLocationPinView.RouteAnnotationViewType()
{
  result = lazy protocol witness table cache variable for type WorkoutLocationPinView.RouteAnnotationViewType and conformance WorkoutLocationPinView.RouteAnnotationViewType;
  if (!lazy protocol witness table cache variable for type WorkoutLocationPinView.RouteAnnotationViewType and conformance WorkoutLocationPinView.RouteAnnotationViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutLocationPinView.RouteAnnotationViewType and conformance WorkoutLocationPinView.RouteAnnotationViewType);
  }

  return result;
}

id SectionDayBackgroundView.startColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_startColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SectionDayBackgroundView.startColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_startColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SectionDayBackgroundView.endColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_endColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SectionDayBackgroundView.endColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_endColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SectionDayBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SectionDayBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SectionDayBackgroundView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_startColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 clearColor];
  v3 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_endColor;
  *(v0 + v3) = [v2 clearColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SectionDayBackgroundView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionDayBackgroundView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_gradient];
  [v0 bounds];
  [v1 setFrame_];
}

Swift::Void __swiftcall SectionDayBackgroundView.setColors()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = MEMORY[0x277D85000];
  if (v2 == 1)
  {
    v4 = objc_opt_self();
    v5 = [v4 whiteColor];
    v6 = [v5 colorWithAlphaComponent_];

    (*((*v3 & *v0) + 0x70))(v6);
    v7 = [v4 systemGray5Color];
    v8 = [v7 colorWithAlphaComponent_];
  }

  else
  {
    v9 = [v0 traitCollection];
    v10 = [v9 userInterfaceStyle];

    if (v10 != 2)
    {
      goto LABEL_6;
    }

    v11 = objc_opt_self();
    v12 = [v11 blackColor];
    v13 = [v12 colorWithAlphaComponent_];

    (*((*v3 & *v0) + 0x70))(v13);
    v7 = [v11 blackColor];
    v8 = [v7 colorWithAlphaComponent_];
  }

  v14 = v8;

  (*((*v3 & *v0) + 0x88))(v14);
LABEL_6:
  v15 = *(v0 + OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_gradient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21658CA60;
  v17 = (*((*v3 & *v0) + 0x68))();
  v18 = [v17 CGColor];

  type metadata accessor for CGColorRef(0);
  v20 = v19;
  *(v16 + 56) = v19;
  *(v16 + 32) = v18;
  v21 = (*((*v3 & *v0) + 0x80))();
  v22 = [v21 CGColor];

  *(v16 + 88) = v20;
  *(v16 + 64) = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setColors_];
}

id SectionDayBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionDayBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized SectionDayBackgroundView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_startColor;
  v2 = objc_opt_self();
  *&v0[v1] = [v2 clearColor];
  v3 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_endColor;
  *&v0[v3] = [v2 clearColor];
  v4 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *&v0[OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_gradient] = v4;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SectionDayBackgroundView();
  v9 = v4;
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, v5, v6, v7, v8);
  v11 = [v10 layer];
  [v11 addSublayer_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21658CA50;
  v13 = type metadata accessor for UITraitUserInterfaceStyle();
  v14 = MEMORY[0x277D74BF0];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  MEMORY[0x21CE92C30](v12, sel_handleTraitChange);
  swift_unknownObjectRelease();

  (*((*MEMORY[0x277D85000] & *v10) + 0x98))(v15);

  return v10;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MOWeakReference.strongValue.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOWeakReference.strongValue.modify(uint64_t *a1))(void **a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOWeakReference.strongValue.modify;
}

void MOWeakReference.strongValue.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MOWeakReference.__allocating_init(_:)()
{
  v0 = specialized MOWeakReference.__allocating_init(_:)();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MOWeakReference.init(_:)()
{
  v0 = specialized MOWeakReference.init(_:)();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MOWeakReference.__deallocating_deinit()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MOWeakArray.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v4 = type metadata accessor for Array();
  v5 = type metadata accessor for MOWeakReference();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MOWeakArray.init(_:), v10, v4, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  *a3 = v8;
  a3[1] = v8;
  a3[2] = 0;
}

double MOWeakArray.init(repeating:count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v9 = a1;
  v6 = specialized Array.init(repeating:count:)(&v9, a2, a3);
  MOWeakArray.init(_:)(v6, a3, &v9);
  swift_unknownObjectRelease();
  v7 = v10;
  result = *&v9;
  *a4 = v9;
  *(a4 + 16) = v7;
  return result;
}

uint64_t MOWeakArray.first.getter()
{
  type metadata accessor for MOWeakReference();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.first.getter();
  if (!v3)
  {
    return 0;
  }

  v1 = (*(*v3 + 96))(v0);

  return v1;
}

uint64_t MOWeakArray.endIndex.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  v4 = type metadata accessor for MOWeakReference();

  return a2(v3, v4);
}

uint64_t MOWeakArray.subscript.getter()
{
  v0 = type metadata accessor for MOWeakReference();
  v1 = Array.subscript.getter(v0, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = (*(*v4 + 96))(v1);

  return v2;
}

uint64_t key path getter for MOWeakArray.subscript(_:) : <A>MOWeakArray<A>A@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MOWeakArray();
  result = MOWeakArray.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for MOWeakArray.subscript(_:) : <A>MOWeakArray<A>A(uint64_t a1, uint64_t a2, Swift::Int *a3)
{
  v3 = *a3;
  type metadata accessor for MOWeakArray();
  v4 = swift_unknownObjectRetain();
  return MOWeakArray.subscript.setter(v4, v3);
}

uint64_t MOWeakArray.subscript.setter(uint64_t result, Swift::Int a2)
{
  if (result)
  {
    type metadata accessor for MOWeakReference();
    v4 = specialized MOWeakReference.__allocating_init(_:)();
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v5 = *v2;
    Array._checkSubscript_mutating(_:)(a2);
    swift_unknownObjectRelease();
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v4;
  }

  return result;
}

uint64_t (*MOWeakArray.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = MOWeakArray.subscript.getter();
  return MOWeakArray.subscript.modify;
}

uint64_t MOWeakArray.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MOWeakArray.subscript.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  MOWeakArray.subscript.setter(v3, v2);

  return swift_unknownObjectRelease();
}

Swift::Int __swiftcall MOWeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MOWeakArray<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MOWeakArray.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MOWeakArray<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = MOWeakArray.subscript.read(v2);
  v3[4] = v5;
  v3[5] = v4;
  return protocol witness for Collection.subscript.read in conformance MOWeakArray<A>;
}

void protocol witness for Collection.subscript.read in conformance MOWeakArray<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MOWeakArray<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x277D83D00], MEMORY[0x277D83608]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x277D83638], MEMORY[0x277D83618]);
}

void *protocol witness for Collection.index(after:) in conformance MOWeakArray<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance MOWeakArray<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance MOWeakArray<A>@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance MOWeakArray<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance MOWeakArray<A>()
{
  swift_getWitnessTable();
  v0 = specialized Collection._copyToContiguousArray()();

  return v0;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t specialized MOWeakReference.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t specialized MOWeakReference.__allocating_init(_:)()
{
  type metadata accessor for MOWeakReference();
  swift_allocObject();
  return specialized MOWeakReference.init(_:)();
}

uint64_t partial apply for closure #1 in MOWeakArray.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MOWeakReference();
  result = specialized MOWeakReference.__allocating_init(_:)();
  *a1 = result;
  return result;
}

uint64_t type metadata instantiation function for MOWeakArray()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MOWeakArray(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MOWeakArray(uint64_t result, int a2, int a3)
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

uint64_t static WorkoutCollectionViewAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static WorkoutCollectionViewAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *WorkoutCollectionViewAssetCell.workoutView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30WorkoutCollectionViewAssetCell_workoutView);
  v2 = v1;
  return v1;
}

id WorkoutCollectionViewAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static WorkoutCollectionViewSmallAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static WorkoutCollectionViewSmallAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *WorkoutCollectionViewSmallAssetCell.workoutView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI35WorkoutCollectionViewSmallAssetCell_workoutView);
  v2 = v1;
  return v1;
}

void WorkoutCollectionViewAssetCell.init(coder:)(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v6 = static MutableWorkoutViewModel.empty;
  v8 = a3;
  v7 = objc_allocWithZone(type metadata accessor for WorkoutView());
  *(v3 + v5) = WorkoutView.init(viewModel:style:)(v6, &v8);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc WorkoutCollectionViewAssetCell.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v7 = *a4;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v8 = static MutableWorkoutViewModel.empty;
  v10 = a5;
  v9 = objc_allocWithZone(type metadata accessor for WorkoutView());
  *(a1 + v7) = WorkoutView.init(viewModel:style:)(v8, &v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id WorkoutCollectionViewAssetCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *specialized WorkoutCollectionViewAssetCell.init(frame:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  if (one-time initialization token for empty != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  v5 = static MutableWorkoutViewModel.empty;
  v16 = a2;
  v6 = objc_allocWithZone(type metadata accessor for WorkoutView());
  v7 = WorkoutView.init(viewModel:style:)(v5, &v16);
  *(v3 + v4) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = CollectionViewAssetCell.init(assetView:)(v8);
    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x90);
    v11 = v9;
    v12 = v10();
    [v12 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v11;
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v14);
  }
}

uint64_t NotificationsOnboardingViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NotificationsOnboardingViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

uint64_t NotificationsOnboardingViewController.onboardingOnlyPresentation.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_onboardingOnlyPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NotificationsOnboardingViewController.onboardingOnlyPresentation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_onboardingOnlyPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NotificationsOnboardingViewController.clientBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_clientBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t NotificationsOnboardingViewController.clientBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_clientBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id closure #1 in NotificationsOnboardingViewController.onboardingAsset.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216587F10);
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setContentMode_];
  [v5 setClipsToBounds_];

  return v5;
}

id NotificationsOnboardingViewController.onboardingAsset.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id closure #1 in NotificationsOnboardingViewController.descriptionLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  [v2 userInterfaceIdiom];

  v3 = [v1 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v21 = 0x8000000216587E90;
    v10 = 0x1000000000000078;
    v9 = 0x8000000216587E10;
    v14 = 0xD00000000000002DLL;
    v11.super.isa = v8;
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_5;
  }

  v5 = [v1 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v21 = 0x8000000216587DE0;
    v9 = 0x8000000216587D80;
    v10 = 0x1000000000000055;
    v11.super.isa = v8;
    v12 = 0;
    v13 = 0xE000000000000000;
    v14 = 0xD00000000000002BLL;
LABEL_5:
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, 0, v11, *&v12, *&v14);

    v17 = MEMORY[0x21CE91FC0](v16._countAndFlagsBits, v16._object);

    [v0 setText_];
  }

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v19 = [objc_opt_self() systemGrayColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  return v0;
}

char *NotificationsOnboardingViewController.init(delegate:onboardingOnlyPresentation:clientBundleIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  v11 = &v6[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_delegate];
  *&v6[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_onboardingOnlyPresentation;
  v6[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_onboardingOnlyPresentation] = 0;
  v13 = &v6[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController_clientBundleIdentifier];
  *v13 = 0;
  v13[1] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController____lazy_storage___onboardingAsset] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController____lazy_storage___descriptionLabel] = 0;
  swift_beginAccess();
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v6[v12] = a3;
  swift_beginAccess();
  *v13 = a4;
  v13[1] = a5;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v31._object = 0x8000000216587C70;
  v16._countAndFlagsBits = 0xD000000000000027;
  v16._object = 0x8000000216587C40;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v31);

  v19 = MEMORY[0x21CE91FC0](v18._countAndFlagsBits, v18._object);
  v30.receiver = v6;
  v30.super_class = type metadata accessor for NotificationsOnboardingViewController();
  v20 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v19, 0, 0, 4);

  v21 = v20;
  result = [v21 view];
  if (result)
  {
    v23 = result;

    [v23 setAccessibilityViewIsModal_];

    v24 = [v21 headerView];
    [v24 setAllowFullWidthIcon_];

    v25 = [v21 contentView];
    v26 = [objc_opt_self() systemBackgroundColor];
    [v25 setBackgroundColor_];

    v27 = [v21 contentView];
    v28 = NotificationsOnboardingViewController.onboardingAsset.getter();
    [v27 addSubview_];

    v29 = *&v21[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController____lazy_storage___onboardingAsset];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    NotificationsOnboardingViewController.setUpContent()();
    NotificationsOnboardingViewController.setUpButton()();

    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void NotificationsOnboardingViewController.setUpContent()()
{
  v1 = [v0 secondaryContentView];
  if (v1)
  {
    v2 = v1;
    v3 = NotificationsOnboardingViewController.descriptionLabel.getter();
    [v2 addSubview_];
  }

  v4 = NotificationsOnboardingViewController.descriptionLabel.getter();
  v5 = [v4 superview];
  v6 = &unk_27821E000;
  if (v5)
  {
    v7 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [v4 topAnchor];
    v9 = [v7 topAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    [v10 setConstant_];
    if (v10)
    {
      [v10 setActive_];
    }

    v6 = &unk_27821E000;
  }

  else
  {
    v10 = 0;
    v7 = v4;
  }

  v11 = OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController____lazy_storage___descriptionLabel;
  v12 = *&v0[OBJC_IVAR____TtC9MomentsUI37NotificationsOnboardingViewController____lazy_storage___descriptionLabel];
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 v6[440]];
    v15 = [v12 leadingAnchor];
    v16 = [v14 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setConstant_];
    if (v17)
    {
      [v17 setActive_];
    }

    v6 = &unk_27821E000;
  }

  else
  {
    v14 = v12;
  }

  v18 = *&v0[v11];
  v19 = [v18 superview];
  if (v19)
  {
    v20 = v19;
    [v18 v6[440]];
    v21 = [v18 trailingAnchor];
    v22 = [v20 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    [v23 setConstant_];
    if (v23)
    {
      [v23 setActive_];
    }

    v6 = &unk_27821E000;
  }

  else
  {
    v20 = v18;
  }

  v24 = *&v0[v11];
  v25 = [v24 superview];
  if (v25)
  {
    v30 = v25;
    [v24 v6[440]];
    v26 = [v24 bottomAnchor];
    v27 = [v30 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    if (v28)
    {
      [v28 setConstant_];
      [v28 setActive_];
    }

    v29 = v30;
  }

  else
  {
    v29 = v24;
  }
}

void NotificationsOnboardingViewController.setUpButton()()
{
  swift_getObjectType();
  v1 = [v0 buttonTray];
  [v1 setUserInteractionEnabled_];

  v2 = [v0 buttonTray];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v24._object = 0x8000000216587EC0;
  v7._countAndFlagsBits = 0x65756E69746E6F43;
  v24._countAndFlagsBits = 0xD00000000000001DLL;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

  v22 = [objc_opt_self() boldButton];
  [v22 addTarget:v0 action:sel_didTapContinue_ forControlEvents:64];
  v10 = MEMORY[0x21CE91FC0](v9._countAndFlagsBits, v9._object);

  [v22 setTitle:v10 forState:0];

  v11 = [v0 buttonTray];
  [v11 addButton_];

  v12 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
  if (v13)
  {
    if (v12 == 0xD000000000000015 && v13 == 0x8000000216587C20)
    {

      return;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = [v5 bundleForClass_];
      v25._object = 0x8000000216587EE0;
      v16._countAndFlagsBits = 0x776F4E20746F4ELL;
      v25._countAndFlagsBits = 0xD00000000000002ELL;
      v16._object = 0xE700000000000000;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25);

      v19 = [objc_opt_self() linkButton];
      [v19 addTarget:v0 action:sel_didTapNotNow_ forControlEvents:64];
      v20 = MEMORY[0x21CE91FC0](v18._countAndFlagsBits, v18._object);

      [v19 setTitle:v20 forState:0];

      v21 = [v0 buttonTray];
      [v21 addButton_];
    }
  }
}

uint64_t NotificationsOnboardingViewController.didTapContinue(_:)()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Onboarding] Tapped the Notification Continue button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*((*v6 & *v1) + 0x90))();
    (*(v9 + 8))(v1, v11 & 1, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NotificationsOnboardingViewController.didTapNotNow(_:)()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Onboarding] Tapped the Notification Dismiss button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*((*v6 & *v1) + 0x90))();
    (*(v9 + 16))(v1, v11 & 1, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc NotificationsOnboardingViewController.didTapContinue(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

id NotificationsOnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = MEMORY[0x21CE91FC0]();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x21CE91FC0](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = MEMORY[0x21CE91FC0](a5, a6);

LABEL_6:
  v17 = [objc_allocWithZone(v8) initWithTitle:v14 detailText:v15 symbolName:v16 contentLayout:a7];

  return v17;
}

id NotificationsOnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x21CE91FC0]();

  if (a4)
  {
    v13 = MEMORY[0x21CE91FC0](a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v7) initWithTitle:v12 detailText:v13 icon:a5 contentLayout:a6];

  return v14;
}

id NotificationsOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationsOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *EmbeddedPicker.hostingController.getter()
{
  v1 = OBJC_IVAR___EmbeddedPicker_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void EmbeddedPicker.hostingController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___EmbeddedPicker_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for EmbeddedPicker.clientDidBecomeReady : EmbeddedPicker@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t EmbeddedPicker.clientDidBecomeReady.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t EmbeddedPicker.clientDidBecomeReady.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*EmbeddedPicker.clientDidBecomeReady.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.colors.modify;
}

uint64_t key path setter for EmbeddedPicker.$clientDidBecomeReady : EmbeddedPicker(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x98))(v6);
}

uint64_t EmbeddedPicker.$clientDidBecomeReady.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t EmbeddedPicker.$clientDidBecomeReady.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*EmbeddedPicker.$clientDidBecomeReady.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___EmbeddedPicker__clientDidBecomeReady;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$pendingDBChanges.modify;
}

id EmbeddedPicker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmbeddedPicker.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  *&v0[OBJC_IVAR___EmbeddedPicker_hostingController] = 0;
  v5 = OBJC_IVAR___EmbeddedPicker__clientDidBecomeReady;
  v15 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v5], v4, v1);
  v6 = type metadata accessor for EmbeddedPicker(0);
  v14.receiver = v0;
  v14.super_class = v6;
  v7 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  [v7 setModalInPresentation_];
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.presentation);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21607C000, v9, v10, "init EmbeddedPicker", v11, 2u);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  return v7;
}

Swift::Void __swiftcall EmbeddedPicker.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EmbeddedPicker(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.presentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "viewDidLoad", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }
}

Swift::Void __swiftcall EmbeddedPicker.viewDidAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EmbeddedPicker(0);
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1);
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.presentation);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21607C000, v4, v5, "viewDidAppear", v6, 2u);
    MEMORY[0x21CE94770](v6, -1, -1);
  }
}

id EmbeddedPicker.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EmbeddedPicker.init(coder:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  *(v0 + OBJC_IVAR___EmbeddedPicker_hostingController) = 0;
  v5 = OBJC_IVAR___EmbeddedPicker__clientDidBecomeReady;
  v6[15] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id EmbeddedPicker.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmbeddedPicker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedPicker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EmbeddedPickerSceneSpecification.connectionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI32EmbeddedPickerSceneSpecification_connectionUUID;
  swift_beginAccess();
  return outlined init with copy of UUID?(v1 + v3, a1);
}

uint64_t EmbeddedPickerSceneSpecification.connectionUUID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI32EmbeddedPickerSceneSpecification_connectionUUID;
  swift_beginAccess();
  outlined assign with take of UUID?(a1, v1 + v3);
  return swift_endAccess();
}

NSUserActivity_optional __swiftcall EmbeddedPickerSceneSpecification.userActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MomentsUI32EmbeddedPickerSceneSpecification_connectionUUID;
  swift_beginAccess();
  outlined init with copy of UUID?(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
    v10 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v11 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v12 = MEMORY[0x21CE91FC0](0xD000000000000028, 0x8000000216587F70);
    v13 = [v11 initWithActivityType_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21658CA50;
    strcpy(v18, "connectionId");
    HIBYTE(v18[6]) = 0;
    v18[7] = -5120;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 setUserInfo_];

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of EmbeddedPickerSceneSpecification.userActivity());
    outlined destroy of String(&unk_2828DA578);
    v17 = Set._bridgeToObjectiveC()().super.isa;

    [v13 setRequiredUserInfoKeys_];

    (*(v5 + 8))(v7, v4);
    v10 = v13;
  }

  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id EmbeddedPickerSceneSpecification.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9MomentsUI32EmbeddedPickerSceneSpecification_connectionUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id EmbeddedPickerSceneSpecification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void EmbeddedPicker.setupSceneHosting(connectionUUID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UUID?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of UTType?(v9, &_s10Foundation4UUIDVSgMd);
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static CommonLogger.presentation);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21607C000, v15, v16, "must have non nil UUID", v17, 2u);
      MEMORY[0x21CE94770](v17, -1, -1);
    }
  }

  else
  {
    v18 = (*(v11 + 32))(v13, v9, v10);
    v19 = MEMORY[0x277D85000];
    v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))(v18);
    if (v20)
    {

      EmbeddedPicker.endSceneHostingSession()();
    }

    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static CommonLogger.presentation);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v19;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "setupSceneHosting", v25, 2u);
      v26 = v25;
      v19 = v24;
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    v27 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x80000002165767B0);
    v28 = [objc_opt_self() identityForAngelJobLabel_];

    v29 = [objc_allocWithZone(type metadata accessor for EmbeddedPickerSceneSpecification(0)) init];
    (*(v11 + 16))(v7, v13, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v30 = OBJC_IVAR____TtC9MomentsUI32EmbeddedPickerSceneSpecification_connectionUUID;
    swift_beginAccess();
    v31 = v29 + v30;
    v32 = v28;
    outlined assign with take of UUID?(v7, v31);
    swift_endAccess();
    v33 = objc_allocWithZone(MEMORY[0x277D761E0]);
    v46 = v29;
    v34 = [v33 initWithProcessIdentity:v28 sceneSpecification:v29];
    [v34 setDelegate_];
    v35 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
    [v34 setActivationController_];

    v36 = [v34 sceneViewController];
    [v2 addChildViewController_];
    v37 = [v36 view];
    if (v37)
    {
      v38 = v37;
      v39 = [v2 view];
      if (v39)
      {
        v45 = v39;
        [v39 addSubview_];
        [v38 setTranslatesAutoresizingMaskIntoConstraints_];
        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

        [v36 didMoveToParentViewController_];
        v40 = *v19 & *v2;
        v44 = v13;
        v41 = *(v40 + 104);
        v43 = v34;
        v41(v34);

        (*(v11 + 8))(v44, v10);
        return;
      }

      (*(v11 + 8))(v13, v10);

      v36 = v34;
      v34 = v38;
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }
  }
}

Swift::Void __swiftcall EmbeddedPicker.endSceneHostingSession()()
{
  v1 = v0;
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.presentation);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "endSceneHostingSession", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  if (v7)
  {
    v8 = v7;
    [v7 setDelegate_];
  }

  (*((*v6 & *v1) + 0x68))(0);
  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = v9;
  v11 = [v9 subviews];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIView);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_10:
      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x21CE93180](i, v12);
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
          }

          v16 = v15;
          [v15 removeFromSuperview];
        }

        goto LABEL_17;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }
  }

LABEL_17:

  v17 = [v1 childViewControllers];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIViewController);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    goto LABEL_29;
  }

  for (j = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x21CE93180](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 removeFromParentViewController];

      ++v20;
      if (v23 == j)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
}

Swift::Void __swiftcall EmbeddedPicker.clientIsReady()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in EmbeddedPicker.clientIsReady(), v6);
}

uint64_t closure #1 in EmbeddedPicker.clientIsReady()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in EmbeddedPicker.clientIsReady(), v6, v5);
}

uint64_t closure #1 in EmbeddedPicker.clientIsReady()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x80))(1);
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in EmbeddedPicker.clientIsReady()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in EmbeddedPicker.clientIsReady()(a1, v4, v5, v6);
}

void type metadata completion function for EmbeddedPicker()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for EmbeddedPickerSceneSpecification()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in EmbeddedPicker.clientIsReady()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in EmbeddedPicker.clientIsReady()(a1, v4, v5, v6);
}

uint64_t specialized Sequence<>.min()(uint64_t a1)
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
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
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
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t DBSnapshotWeeklyAnalytics.__allocating_init()()
{
  v0 = swift_allocObject();
  DBSnapshotWeeklyAnalytics.init()();
  return v0;
}

uint64_t DBSnapshotWeeklyAnalytics.readyToSubmit.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v64 - v7;
  MEMORY[0x28223BE20](v6);
  v67 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v64 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_lastSubmissionDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v1 + v19, v18, &_s10Foundation4DateVSgMd);
  v70 = v3;
  v20 = *(v3 + 48);
  v21 = v20(v18, 1, v2);
  outlined destroy of UTType?(v18, &_s10Foundation4DateVSgMd);
  if (v21 == 1)
  {
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static CommonLogger.analytics);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v71[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x536F547964616572, 0xED000074696D6275, v71);
      _os_log_impl(&dword_21607C000, v23, v24, "DBSnapshotWeeklyAnalytics.%{public}s:  Missing lastSubmissionDate. Setting last SubmissionDate to now to submit later.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x21CE94770](v26, -1, -1);
      MEMORY[0x21CE94770](v25, -1, -1);
    }

    v27 = v69;
    static Date.now.getter();
    v71[3] = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
    v29 = v70;
    (*(v70 + 16))(boxed_opaque_existential_1, v27, v2);
    specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v71, 0xD00000000000002BLL, 0x80000002165764E0);
    (*(v29 + 8))(v27, v2);
    outlined destroy of UTType?(v71, &_sypSgMd);
    return 0;
  }

  outlined init with copy of DateInterval?(v1 + v19, v16, &_s10Foundation4DateVSgMd);
  v69 = v20;
  result = v20(v16, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    v32 = v31;
    v33 = *(v70 + 8);
    v33(v16, v2);
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_submissionBlackoutPeriodInSeconds) >= -v32)
    {
      if (one-time initialization token for analytics != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static CommonLogger.analytics);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = v19;
        v47 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71[0] = v67;
        *v47 = 136446466;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x536F547964616572, 0xED000074696D6275, v71);
        *(v47 + 12) = 2080;
        v48 = v1 + v46;
        v49 = v66;
        outlined init with copy of DateInterval?(v48, v66, &_s10Foundation4DateVSgMd);
        v50 = v69;
        if ((v69)(v49, 1, v2) == 1)
        {
          v51 = v68;
          static Date.distantPast.getter();
          if (v50(v49, 1, v2) != 1)
          {
            outlined destroy of UTType?(v49, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          v51 = v68;
          (*(v70 + 32))(v68, v49, v2);
        }

        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
        v58 = v51;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v33(v58, v2);
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v71);

        *(v47 + 14) = v62;
        _os_log_impl(&dword_21607C000, v44, v45, "DBSnapshotWeeklyAnalytics.%{public}s:  Not ready to submit. last submission date is too close to now=%s.", v47, 0x16u);
        v63 = v67;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v63, -1, -1);
        MEMORY[0x21CE94770](v47, -1, -1);
      }

      return 0;
    }

    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static CommonLogger.analytics);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v19;
      v38 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v38 = 136446466;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x536F547964616572, 0xED000074696D6275, v71);
      *(v38 + 12) = 2080;
      v39 = v1 + v37;
      v40 = v65;
      outlined init with copy of DateInterval?(v39, v65, &_s10Foundation4DateVSgMd);
      v41 = v69;
      if ((v69)(v40, 1, v2) == 1)
      {
        v42 = v67;
        static Date.distantPast.getter();
        if (v41(v40, 1, v2) != 1)
        {
          outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
        }
      }

      else
      {
        v42 = v67;
        (*(v70 + 32))(v67, v40, v2);
      }

      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
      v52 = v42;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v33(v52, v2);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v71);

      *(v38 + 14) = v56;
      _os_log_impl(&dword_21607C000, v35, v36, "DBSnapshotWeeklyAnalytics.%{public}s:  Ready to submit: lastSubmissionDate=%s", v38, 0x16u);
      v57 = v68;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v57, -1, -1);
      MEMORY[0x21CE94770](v38, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t DBSnapshotWeeklyAnalytics.Event.send(device:isPrimary:)(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:)(a1, a2);
  DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:)(a1, v2);
  return v4 & v5 & 1;
}

uint64_t DBSnapshotWeeklyAnalytics.setLastSubmissionDate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_lastSubmissionDate;
  swift_beginAccess();
  outlined assign with take of Date?(v5, v1 + v8);
  return swift_endAccess();
}

uint64_t DBSnapshotWeeklyAnalytics.__deallocating_deinit()
{
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_lastSubmissionDate, &_s10Foundation4DateVSgMd);

  return swift_deallocClassInstance();
}

uint64_t DBSnapshotWeeklyAnalytics.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_lastSubmissionDate;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v12 - v2);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v3, 1, v5) == 1)
  {
    (*(v6 + 56))(v0 + v4, 1, 1, v5);
    if (v7(v3, 1, v5) != 1)
    {
      outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v6 + 32))(v0 + v4, v3, v5);
    (*(v6 + 56))(v0 + v4, 0, 1, v5);
  }

  v8 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  v10 = 604800;
  if ((v9 & 1) == 0)
  {
    v10 = v8;
  }

  *(v0 + OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_submissionBlackoutPeriodInSeconds) = v10;
  return v0;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBSnapshotWeeklyAnalytics.Event.AssetType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBSnapshotWeeklyAnalytics.Event.AssetType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(char a1)
{
  result = 0x7079547465737361;
  switch(a1)
  {
    case 1:
      result = 0x7954656369766564;
      break;
    case 2:
      result = 0x756F43726F727265;
      break;
    case 3:
      result = 0x707954726F727265;
      break;
    case 4:
      result = 0x72616D6972507369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 15:
    case 25:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 19:
    case 22:
    case 26:
      result = 0xD000000000000020;
      break;
    case 9:
      v3 = 1400398189;
      goto LABEL_8;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
    case 29:
      result = 0xD000000000000034;
      break;
    case 12:
      result = 0xD000000000000030;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
    case 32:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000035;
      break;
    case 21:
      result = 0xD000000000000031;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 27:
      v3 = 1399744877;
LABEL_8:
      result = v3 | 0x5370616E00000000;
      break;
    case 28:
      result = 0xD00000000000001FLL;
      break;
    case 30:
      result = 0xD000000000000028;
      break;
    case 31:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}