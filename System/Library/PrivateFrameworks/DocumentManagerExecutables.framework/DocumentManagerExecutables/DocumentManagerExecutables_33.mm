uint64_t DOCItemCollectionViewController.resolvedIndexPathForProvider(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (MEMORY[0x24C1F8130]() != 2)
  {
    v12 = type metadata accessor for IndexPath();
    v9 = *(*(v12 - 8) + 56);
    v13 = v12;
    v10 = a2;
    v11 = 1;
    goto LABEL_10;
  }

  v5 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0x11B8))() & 1) == 0)
  {
    v7 = type metadata accessor for IndexPath();
    v15 = *(v7 - 8);
    (*(v15 + 16))(a2, a1, v7);
LABEL_8:
    v9 = *(v15 + 56);
    v10 = a2;
    v11 = 0;
    goto LABEL_9;
  }

  v6 = (*((*v5 & *v2) + 0x1898))(a1);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  if ((v6 & 1) == 0)
  {
    v15 = *(v7 - 8);
    (*(v8 + 16))(a2, a1, v7);
    goto LABEL_8;
  }

  v9 = *(v8 + 56);
  v10 = a2;
  v11 = 1;
LABEL_9:
  v13 = v7;
LABEL_10:

  return v9(v10, v11, 1, v13);
}

void __swiftcall DOCItemCollectionViewController.topSuperView(from:)(UIView *__return_ptr retstr, UIView *from)
{
  v3 = [(UIView *)from superview];
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x18A8))();

    type metadata accessor for DOCServiceView();
    if (!swift_dynamicCastClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        from;
      }
    }
  }

  else
  {

    v6 = from;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateCollectionLayoutConfiguration()()
{
  v1 = [v0 traitCollection];
  (*((*MEMORY[0x277D85000] & *v0) + 0x18B8))();
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateCollectionLayoutConfiguration(for:)(UITraitCollection a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(a1.super.isa);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 preparedCells];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v4;
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_5:
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x24C1FC540](v9, v7);
          }

          else
          {
            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = v11;
          type metadata accessor for DOCItemCollectionCell();
          v13 = swift_dynamicCastClass();
          if (v13)
          {
            v14 = v2;
            v15 = *((*v2 & *v13) + 0x208);
            v16 = v15();
            if (v16)
            {
              v17 = v16;
              (*((*v14 & *v16) + 0x328))([v23 effectiveAppearance]);
            }

            v18 = v15();
            if (v18)
            {
              v19 = v18;
              v20 = *(v10 + 4);
              v21 = *(v10 + 1);
              v24[0] = *v10;
              v24[1] = v21;
              v25 = v20;
              v26 = 0;
              v2 = v14;
              (*((*v14 & *v18) + 0x528))(v24);
            }

            else
            {

              v2 = v14;
            }
          }

          else
          {
          }

          ++v9;
        }

        while (v8 != v9);
        goto LABEL_20;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

LABEL_20:
}

uint64_t DOCItemCollectionViewController.isNodePickable(_:)(void *a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isActionable];
  if (result)
  {
    result = [a1 isReadable];
    if (result)
    {
      if ([a1 isCopying])
      {
        return 0;
      }

      else
      {
        result = [a1 isFullyFormed];
        if (result)
        {
          if ((v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), ([v10 forMovingDocuments] & 1) == 0) && (objc_msgSend(v10, sel_forSavingDocuments) & 1) == 0 && !objc_msgSend(v10, sel_forPickingFoldersOnly) || (result = objc_msgSend(a1, sel_isFolder), result))
          {
            if ([a1 isFolder])
            {
              return 1;
            }

            else
            {
              v11 = [a1 contentType];
              static UTType._unconditionallyBridgeFromObjectiveC(_:)();

              isa = [v10 documentContentTypes];
              if (!isa)
              {
                static Array._unconditionallyBridgeFromObjectiveC(_:)();
                isa = Array._bridgeToObjectiveC()().super.isa;
              }

              v13 = UTType._bridgeToObjectiveC()().super.isa;
              v14 = [(objc_class *)v13 doc_conformsToAnyInContentTypes:isa];

              (*(v4 + 8))(v8, v3);
              return v14;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.fpfs_cell(for:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v2) + 0xDA0))(a1, v8);
  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
  if (!v12)
  {
    return 0;
  }

  v13 = (*((*v11 & *v2) + 0x18D0))(v12);
  swift_unknownObjectRelease();
  return v13;
}

id DOCItemCollectionViewController.cell(for:)(uint64_t a1)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v42 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v42 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v42 - v18;
  v20 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(v17);
  if (v20)
  {
    v51 = v14;
    v54 = v20;
    result = [v20 preparedCells];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = v23;
    if (v23 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v49 = v1;
      v50 = v5;
      v55 = v19;
      v24 = 0;
      v1 = v53;
      v19 = (v53 & 0xC000000000000001);
      v43 = v10;
      v44 = v53 & 0xFFFFFFFFFFFFFF8;
      v25 = (v7 + 32);
      v45 = (v7 + 8);
      v46 = (v7 + 48);
      v5 = v6;
      v6 = v54;
      v10 = i;
      v47 = v7 + 32;
      v48 = v53 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v26 = MEMORY[0x24C1FC540](v24, v1);
        }

        else
        {
          if (v24 >= *(v44 + 16))
          {
            goto LABEL_25;
          }

          v26 = v1[v24 + 4];
        }

        v7 = v26;
        v27 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          break;
        }

        type metadata accessor for DOCItemCollectionCell();
        v28 = swift_dynamicCastClass();
        if (v28 && (v29 = v28, (v30 = [v6 indexPathForCell_]) != 0))
        {
          v31 = v51;
          v32 = v30;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v33 = *v25;
          v34 = v55;
          (*v25)(v55, v31, v5);
          v35 = v49;
          v36 = v5;
          v37 = v50;
          (*((*MEMORY[0x277D85000] & *v49) + 0x18A0))(v34);
          if ((*v46)(v37, 1, v36) == 1)
          {
            (*v45)(v34, v36);

            outlined destroy of CharacterSet?(v37, &_s10Foundation9IndexPathVSgMd);
            v5 = v36;
LABEL_21:
            v1 = v53;
            v6 = v54;
            v10 = i;
            v19 = v48;
            goto LABEL_7;
          }

          v38 = v43;
          v33(v43, v37, v36);
          v5 = v36;
          if (!(*((*MEMORY[0x277D85000] & *v35) + 0xD88))(v38, 0))
          {

            v41 = *v45;
            (*v45)(v38, v36);
            v41(v55, v36);
            goto LABEL_21;
          }

          swift_getObjectType();
          v39 = DOCNode.isEqualTo(node:)();
          swift_unknownObjectRelease();
          v40 = *v45;
          (*v45)(v38, v36);
          v40(v55, v36);
          v19 = v48;
          if (v39)
          {

            return v29;
          }

          v1 = v53;
          v6 = v54;
          v10 = i;
        }

        else
        {
        }

LABEL_7:
        ++v24;
        if (v27 == v10)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_28:
  }

  return 0;
}

void DOCItemCollectionViewController.scrollToIndexPathIfNeeded(_:completionBlock:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchTime();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x28223BE20](v17, v18);
  v21 = &v36 - v20;
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x1018))(v19);
  if (!v23)
  {
    a2();
    return;
  }

  v37 = v7;
  v38 = a3;
  v45 = v23;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v45 cellForItemAtIndexPath_];

  if (v25)
  {
    [v25 frame];
    if ([v45 _isRectFullyVisible_])
    {

      a2();
      goto LABEL_11;
    }
  }

  v26 = [v45 numberOfSections];

  if (v26 >= 1)
  {
    v27 = (*((*v22 & *v4) + 0x1010))();
    v28 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v27 scrollToItemAtIndexPath:v28 atScrollPosition:0 animated:1];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v36 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v41 = *(v41 + 8);
    (v41)(v16, v44);
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 16) = a2;
    *(v29 + 24) = v30;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_227;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v33 = v39;
    v32 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v36;
    MEMORY[0x24C1FB940](v21, v13, v33, v31);
    _Block_release(v31);

    (*(v37 + 8))(v33, v32);
    (*(v42 + 8))(v13, v43);
    (v41)(v21, v44);
    return;
  }

  a2();
LABEL_11:
  v35 = v45;
}

void DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v311 = a4;
  v310 = a3;
  LODWORD(v309) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v298 = v290 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v301 = v290 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v293 = v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v297 = v290 - v17;
  v292 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v308 = v290 - v21;
  v22 = type metadata accessor for Date();
  v295 = *(v22 - 8);
  v296 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v294 = v290 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v306 = *(v25 - 1);
  v307 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v304 = v290 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = type metadata accessor for DispatchQoS();
  v303 = *(v305 - 8);
  MEMORY[0x28223BE20](v305, v28);
  v302 = v290 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v300 = v11;
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.UI);
  swift_unknownObjectRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v34 = os_log_type_enabled(v32, v33);
  v299 = v12;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000051, 0x8000000249BDEDC0, &aBlock);
    *(v35 + 12) = 2080;
    v37 = a1;
    v38 = v31;
    v39 = [a1 displayName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v31 = v38;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &aBlock);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_2493AC000, v32, v33, "%s [TAP] [Interaction] Validating selection of item %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v36, -1, -1);
    MEMORY[0x24C1FE850](v35, -1, -1);
  }

  else
  {
    v37 = a1;
  }

  v44 = v312;
  v45 = *&v312[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  v46 = [v45 sceneIdentifier];
  v313 = specialized static DOCInteractionManager.sharedManager(for:)(v46);

  v47 = MEMORY[0x277D85000];
  v48 = (*((*MEMORY[0x277D85000] & *v44) + 0xAE8))();
  if (v48)
  {
    v49 = v48;
    v50 = [v48 activeDocumentCreationIntent];

    if (v50)
    {
      v51 = [v37 displayName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&aBlock = v58;
        *v57 = 136315138;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &aBlock);

        *(v57 + 4) = v59;
        _os_log_impl(&dword_2493AC000, v55, v56, "[TAP] [Interaction] An item, '%s', was selected while there is UIP document creation in progress. Bailing out.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x24C1FE850](v58, -1, -1);
        MEMORY[0x24C1FE850](v57, -1, -1);
      }

      else
      {
      }

      v310();
      v101 = v313;

      return;
    }
  }

  v60 = *((*v47 & *v313) + 0x60);
  v61 = v37;
  if (v60())
  {
    swift_unknownObjectRelease();
    v62 = [v37 displayName];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = v60();
    swift_unknownObjectRetain();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&aBlock = v70;
      *v69 = 136315394;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &aBlock);

      *(v69 + 4) = v71;
      *(v69 + 12) = 2080;
      *&v320 = v66;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v72 = String.init<A>(describing:)();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &aBlock);

      *(v69 + 14) = v74;
      _os_log_impl(&dword_2493AC000, v67, v68, "[TAP] [Interaction] An item, '%s', was selected while another is trying to be opened: '%s'. Bailing out.", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v70, -1, -1);
      MEMORY[0x24C1FE850](v69, -1, -1);

      v75 = swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_70;
  }

  v291 = v45;
  ObjectType = swift_getObjectType();
  if (([v61 isTrashed] & 1) != 0 || ((*((*MEMORY[0x277D85000] & *v44) + 0xA50))(&v320), v327 = v322, v328 = v323, v329 = v324, aBlock = v320, v326 = v321, outlined destroy of DOCItemCollectionConfiguration(&aBlock), BYTE1(v327) == 1))
  {
    if (([v61 isFolder] & 1) == 0)
    {
      v116 = *((*MEMORY[0x277D85000] & *v44) + 0xBD8);
      if (v116() != 3 || v116() == 3 && ((*((*MEMORY[0x277D85000] & *v44) + 0x1280))() & 1) != 0)
      {
        swift_unknownObjectRetain();
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          *&aBlock = v120;
          *v119 = 136315138;
          v121 = [v61 displayName];
          v122 = v61;
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v124;

          v126 = v123;
          v61 = v122;
          v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v125, &aBlock);

          *(v119 + 4) = v127;
          _os_log_impl(&dword_2493AC000, v117, v118, "[TAP] [Interaction] A trashed item, '%s', was selected, alerting the user it can't be opened. Bailing out.", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x24C1FE850](v120, -1, -1);
          v128 = v119;
          v44 = v312;
          MEMORY[0x24C1FE850](v128, -1, -1);
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v129 = static OS_dispatch_queue.main.getter();
        v130 = swift_allocObject();
        *(v130 + 16) = v61;
        *(v130 + 24) = v44;
        *&v327 = partial apply for closure #1 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
        *(&v327 + 1) = v130;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v326 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v326 + 1) = &block_descriptor_249_0;
        v131 = v44;
        v132 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v133 = v131;

        v134 = v302;
        static DispatchQoS.unspecified.getter();
        *&aBlock = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v135 = v304;
        v136 = v307;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v134, v135, v132);
        _Block_release(v132);

        (v306)[1](v135, v136);
        v75 = (v303)[1](v134, v305);
        goto LABEL_70;
      }
    }
  }

  v306 = ObjectType;
  v77 = DOCNode.fpfs_syncFetchFPItem()();
  v78 = MEMORY[0x277D85000];
  if (!v77)
  {
    swift_unknownObjectRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&aBlock = v82;
      *v81 = 136315138;
      *&v320 = v61;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v83 = String.init<A>(describing:)();
      v85 = v31;
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &aBlock);

      *(v81 + 4) = v86;
      v31 = v85;
      _os_log_impl(&dword_2493AC000, v79, v80, "[TAP] [Interaction] Couldn't get FPItem from node for '%s. Continuing", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v87 = v82;
      v44 = v312;
      MEMORY[0x24C1FE850](v87, -1, -1);
      v88 = v81;
      v78 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v88, -1, -1);
    }
  }

  v290[1] = v31;
  v89 = *((*v78 & *v44) + 0xBD8);
  if (v89() != 3 || ((*((*v78 & *v44) + 0x1280))() & 1) != 0)
  {
    if ((specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(v61, v291) & 1) == 0)
    {
      swift_unknownObjectRetain();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136315138;
        v145 = [v61 displayName];
        v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;

        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &aBlock);

        *(v93 + 4) = v149;
        v100 = "[TAP] [Interaction] An non-downloaded item, '%s', was selected, but cannot be downloaded.";
        goto LABEL_52;
      }

LABEL_53:

LABEL_70:
      (v310)(v75);

      return;
    }

    if (v77 && [v77 doc_isCollaborationInvitation])
    {
      v90 = FPItem.openInvitationIfPossible()();
      swift_unknownObjectRetain();
      v91 = Logger.logObject.getter();
      if (!v90)
      {
        v92 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v91, v92))
        {
          goto LABEL_53;
        }

        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136315138;
        v195 = [v61 displayName];
        v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v198 = v197;

        v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v198, &aBlock);

        *(v93 + 4) = v199;
        v100 = "TAP] [Interaction] Could not open invitation for %s";
        goto LABEL_52;
      }

      v92 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136315138;
        v95 = [v61 displayName];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &aBlock);

        *(v93 + 4) = v99;
        v100 = "[TAP] [Interaction] Opened invitation link for %s";
LABEL_52:
        _os_log_impl(&dword_2493AC000, v91, v92, v100, v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x24C1FE850](v94, -1, -1);
        MEMORY[0x24C1FE850](v93, -1, -1);
        goto LABEL_53;
      }

      goto LABEL_53;
    }
  }

  v303 = v77;
  v307 = v61;
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_2493AC000, v102, v103, "[TAP] [Interaction] Clearing the last selected Item", v104, 2u);
    v105 = v104;
    v78 = MEMORY[0x277D85000];
    MEMORY[0x24C1FE850](v105, -1, -1);
  }

  (*((*v78 & *v313) + 0x80))(0);
  v304 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v305 = swift_allocObject();
  v106 = swift_unknownObjectWeakInit();
  v107 = v44;
  v290[0] = (*((*v78 & *v44) + 0xE8))(v106);
  v108 = v291;
  LODWORD(v302) = [v291 useSharedQuickLook];
  v109 = v89();
  (*((*v78 & *v107) + 0xA50))(&v320);
  v327 = v322;
  v328 = v323;
  v329 = v324;
  aBlock = v320;
  v326 = v321;
  v110 = *(&v321 + 1);
  v111 = *(&v321 + 1);
  v112 = outlined destroy of DOCItemCollectionConfiguration(&aBlock);
  v113 = *((*v78 & *v107) + 0x1280);
  v114 = (v113)(v112);
  if (v309 & 1) != 0 && ([v108 useSharedQuickLook])
  {
    v115 = 1;
  }

  else
  {
    v115 = [v108 skipDownload];
  }

  *&v315 = v290[0];
  *(&v315 + 1) = partial apply for closure #2 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
  *&v316 = v304;
  *(&v316 + 1) = partial apply for closure #3 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
  *&v317 = v305;
  LODWORD(v309) = v309 & 1;
  BYTE8(v317) = v309;
  BYTE9(v317) = v302;
  BYTE10(v317) = v109 == 3;
  *&v318 = v110;
  BYTE8(v318) = v114 & 1;
  BYTE9(v318) = v115;
  v319 = v312;
  v334 = v312;
  v330 = v315;
  v331 = v316;
  v332 = v317;
  v333 = v318;
  v137 = v312;

  v139 = (v89)(v138);
  v312 = v137;
  if (v139 == 3 && (v113() & 1) == 0)
  {
    v144 = 0;
    v141 = v307;
    v143 = v303;
  }

  else
  {
    v140 = [v291 shouldOpenInApp];
    v141 = v307;
    if (v140)
    {
      v142 = [v307 isFolder];
      v143 = v303;
      if (v142)
      {
        v144 = 0;
      }

      else
      {
        v144 = [v141 isExternalDownloadPlaceholder] ^ 1;
      }
    }

    else
    {
      v144 = 0;
      v143 = v303;
    }
  }

  swift_unknownObjectRetain();
  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v154 = v141;
    v155 = v153;
    v314[0] = v153;
    *v152 = 136315394;
    v156 = [v154 displayName];
    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v158;

    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, v314);

    *(v152 + 4) = v160;
    *(v152 + 12) = 1024;
    *(v152 + 14) = v144;
    _os_log_impl(&dword_2493AC000, v150, v151, "[TAP] [Interaction] An item, '%s', was selected. Attempting to open it? %{BOOL}d", v152, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v155);
    MEMORY[0x24C1FE850](v155, -1, -1);
    MEMORY[0x24C1FE850](v152, -1, -1);
  }

  if (!v144)
  {

    v185 = v307;
    swift_unknownObjectRetain();
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v314[0] = v189;
      *v188 = 136315138;
      v190 = [v185 displayName];
      v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v193 = v192;

      v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v191, v193, v314);

      *(v188 + 4) = v194;
      v185 = v307;
      _os_log_impl(&dword_2493AC000, v186, v187, "[TAP] [Interaction] Not trying to open: %s with LaunchUtils", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      MEMORY[0x24C1FE850](v189, -1, -1);
      MEMORY[0x24C1FE850](v188, -1, -1);
    }

    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(v185, &v330, v313, v306);
    v75 = outlined destroy of DOCInteractionManagerContext(&v315);
    goto LABEL_70;
  }

  v161 = v307;
  swift_unknownObjectRetain();
  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v314[0] = v165;
    *v164 = 136315138;
    v166 = [v307 displayName];
    v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v168;

    v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v314);

    *(v164 + 4) = v170;
    _os_log_impl(&dword_2493AC000, v162, v163, "[TAP] [Interaction] Should Try to Open with LaunchUtils: %s", v164, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v165);
    v161 = v307;
    MEMORY[0x24C1FE850](v165, -1, -1);
    MEMORY[0x24C1FE850](v164, -1, -1);
  }

  v171 = *((*MEMORY[0x277D85000] & *v313) + 0x68);
  v172 = (*MEMORY[0x277D85000] & *v313) + 104;
  v306 = v143;
  v302 = v171;
  v290[0] = v172;
  (v171)(v143);
  swift_unknownObjectRetain();
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v314[0] = v176;
    *v175 = 136315138;
    v177 = [v161 displayName];
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v179;

    v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v180, v314);

    *(v175 + 4) = v181;
    _os_log_impl(&dword_2493AC000, v173, v174, "[TAP] [Interaction] Keeping track of last opened item in 'validateItemSelectionAndPerformDidPickIfNeeded()': %s", v175, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v176);
    MEMORY[0x24C1FE850](v176, -1, -1);
    MEMORY[0x24C1FE850](v175, -1, -1);
  }

  v182 = v308;
  if ([v291 forPickingDocuments])
  {
    if (v143)
    {
      v183 = v306;
      v184 = v294;
      Date.init()();
      FPItem.setLastOpenDate(_:delay:)(v184, 3.0);

      (*(v295 + 8))(v184, v296);
    }

    else
    {
      v200 = v307;
      swift_unknownObjectRetain();
      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        v314[0] = v204;
        *v203 = 136315138;
        v205 = [v200 displayName];
        v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v208 = v207;

        v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v206, v208, v314);
        v182 = v308;

        *(v203 + 4) = v209;
        _os_log_impl(&dword_2493AC000, v201, v202, "[TAP] [Interaction] Could not bump last opened date because node: %s does not have an assocaited FPItem", v203, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v204);
        MEMORY[0x24C1FE850](v204, -1, -1);
        MEMORY[0x24C1FE850](v203, -1, -1);
      }
    }
  }

  v210 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v211 = swift_allocObject();
  v212 = v330;
  *(v211 + 72) = v331;
  v213 = v333;
  *(v211 + 88) = v332;
  *(v211 + 104) = v213;
  v214 = v307;
  *(v211 + 16) = v210;
  *(v211 + 24) = v214;
  v215 = v310;
  v216 = v311;
  *(v211 + 32) = v313;
  *(v211 + 40) = v215;
  *(v211 + 48) = v216;
  *(v211 + 120) = v334;
  *(v211 + 56) = v212;
  *(v211 + 128) = v309;
  swift_unknownObjectRetain();

  v217 = v313;
  outlined init with copy of DOCInteractionManagerContext(&v315, v314);
  v218 = [v214 nodeURL];
  if (v218)
  {
    v312 = v217;
    v313 = v210;
    v219 = v218;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRetain();
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v314[0] = v223;
      *v222 = 136315138;
      v224 = [v214 displayName];
      v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v227 = v226;

      v228 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v225, v227, v314);

      *(v222 + 4) = v228;
      v182 = v308;
      __swift_destroy_boxed_opaque_existential_0(v223);
      MEMORY[0x24C1FE850](v223, -1, -1);
      MEMORY[0x24C1FE850](v222, -1, -1);
    }

    v229 = v299;
    v230 = v300;
    v231 = v301;
    v232 = *(v299 + 16);
    v232(v301, v182, v300);
    (*(v229 + 56))(v231, 0, 1, v230);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v234 = v298;
    v303 = Strong;
    if (Strong)
    {
      outlined init with copy of DOCGridLayout.Spec?(v231, v298, &_s10Foundation3URLVSgMd);
      if ((*(v229 + 48))(v234, 1, v230) != 1)
      {
        v263 = v229;
        v302 = *(v229 + 32);
        v264 = v297;
        (v302)(v297, v234, v230);
        v265 = swift_allocObject();
        v298 = v265;
        swift_unknownObjectWeakInit();
        v266 = v293;
        v232(v293, v264, v230);
        v267 = (*(v263 + 80) + 56) & ~*(v263 + 80);
        v268 = (v292 + v267 + 7) & 0xFFFFFFFFFFFFFFF8;
        v269 = swift_allocObject();
        v270 = v230;
        v271 = v307;
        v269[2] = v265;
        v269[3] = v271;
        v273 = v311;
        v272 = v312;
        v274 = v310;
        v269[4] = v312;
        v269[5] = v274;
        v269[6] = v273;
        (v302)(v269 + v267, v266, v270);
        v275 = v269 + v268;
        v276 = v333;
        *(v275 + 2) = v332;
        *(v275 + 3) = v276;
        *(v275 + 8) = v334;
        v277 = v331;
        *v275 = v330;
        *(v275 + 1) = v277;
        v275[72] = v309;
        swift_unknownObjectRetain();

        v278 = v272;
        outlined init with copy of DOCInteractionManagerContext(&v315, v314);

        DOCRunInMainThread(_:)();

        outlined destroy of DOCInteractionManagerContext(&v315);

        v279 = v300;
        v280 = *(v299 + 8);
        v280(v297, v300);
        outlined destroy of CharacterSet?(v301, &_s10Foundation3URLVSgMd);
        v280(v308, v279);

        return;
      }

      outlined destroy of CharacterSet?(v234, &_s10Foundation3URLVSgMd);
      v235 = v307;
      swift_unknownObjectRetain();
      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v314[0] = v309;
        *v238 = 136315138;
        v239 = [v235 displayName];
        v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v242 = v241;

        v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v240, v242, v314);
        v182 = v308;

        *(v238 + 4) = v243;
        _os_log_impl(&dword_2493AC000, v236, v237, "[TAP] [Interaction] Clearing lastOpenedNode Got a nil url from fetchURL for item: %s but no error.", v238, 0xCu);
        v244 = v309;
        __swift_destroy_boxed_opaque_existential_0(v309);
        MEMORY[0x24C1FE850](v244, -1, -1);
        v245 = v238;
        v231 = v301;
        MEMORY[0x24C1FE850](v245, -1, -1);
      }

      v246 = v312;
      v247 = (v302)(0);
      (v310)(v247);
    }

    else
    {
    }

    outlined destroy of DOCInteractionManagerContext(&v315);

    outlined destroy of CharacterSet?(v231, &_s10Foundation3URLVSgMd);
    (*(v229 + 8))(v182, v230);

    return;
  }

  swift_unknownObjectRetain();
  v248 = Logger.logObject.getter();
  if (v303)
  {
    v249 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v312 = v217;
      v251 = v250;
      v252 = swift_slowAlloc();
      v314[0] = v252;
      *v251 = 136315138;
      v253 = [v214 displayName];
      v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v256 = v255;

      v257 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254, v256, v314);

      *(v251 + 4) = v257;
      __swift_destroy_boxed_opaque_existential_0(v252);
      MEMORY[0x24C1FE850](v252, -1, -1);
      v258 = v251;
      v217 = v312;
      MEMORY[0x24C1FE850](v258, -1, -1);
    }

    v259 = [objc_opt_self() defaultManager];
    v260 = swift_allocObject();
    v260[2] = v214;
    v260[3] = partial apply for closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
    v260[4] = v211;
    v314[4] = partial apply for closure #5 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
    v314[5] = v260;
    v314[0] = MEMORY[0x277D85DD0];
    v314[1] = 1107296256;
    v314[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v314[3] = &block_descriptor_239;
    v261 = _Block_copy(v314);
    swift_unknownObjectRetain();

    v262 = v306;
    [v259 fetchURLForItem:v306 completionHandler:v261];

    outlined destroy of DOCInteractionManagerContext(&v315);

    _Block_release(v261);
  }

  else
  {
    v281 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v248, v281))
    {
      v282 = swift_slowAlloc();
      v312 = v217;
      v283 = v282;
      v284 = swift_slowAlloc();
      v314[0] = v284;
      *v283 = 136315138;
      v285 = [v214 displayName];
      v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v288 = v287;

      v289 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v286, v288, v314);

      *(v283 + 4) = v289;
      __swift_destroy_boxed_opaque_existential_0(v284);
      MEMORY[0x24C1FE850](v284, -1, -1);
      MEMORY[0x24C1FE850](v283, -1, -1);
    }

    else
    {
    }

    outlined destroy of DOCInteractionManagerContext(&v315);
  }
}

void closure #1 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x24C1FAD20](v2);

    v1 = v3;
  }

  v4 = v1;
  DOCAlertUserTrashedFileCanNotBeOpened();
}

void closure #2 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if (!a1)
  {

    return;
  }

  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *Strong) + 0xCB8);
  v6 = a1;
  v7 = v5();
  Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v7);

  v32 = Available;

  v9 = specialized Collection<>.firstIndex(of:)(v6, Available);
  v11 = v10;

  if (v11)
  {
    v12 = v6;
    MEMORY[0x24C1FB090]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_12:
    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration;
    v16 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
    v9 = v3;
    if (![v16 useSharedQuickLook] || (objc_msgSend(v6, sel_isFolder) & 1) != 0)
    {

LABEL_15:

      return;
    }

    v17 = *&v3[v15];

    v18 = [v17 sceneIdentifier];
    if (!v18)
    {
      if (one-time initialization token for Source != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)();

      goto LABEL_15;
    }

    v19 = one-time initialization token for mapTable;
    v13 = v18;
    if (v19 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (!(v32 >> 62))
  {
    v13 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v9)
    {
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = __CocoaSet.count.getter();
  if (v13 < v9)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v9 & 0x8000000000000000) == 0)
  {
    v14 = v6;
    specialized Array.replaceSubrange<A>(_:with:)(v9, v9, v14);

    goto LABEL_12;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v28 = v13;
  swift_once();
  v13 = v28;
LABEL_19:
  v20 = static DOCPreviewController.mapTable;
  v21 = v13;
  v22 = [v20 objectForKey_];
  if (!v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
    v22 = DOCPreviewController.init()();
    [v20 setObject:v22 forKey:v21];
  }

  if (v32 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v24 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v24 = v32;
  }

  v29 = v24;
  v30 = 0;
  v31 = 0;
  v25 = specialized Collection<>.firstIndex(of:)(v6, v32);
  v27 = v26;

  (*((*v4 & *v22) + 0x1C8))(&v29, v25, v27 & 1);

  outlined consume of DOCPreviewSource?(v29, v30, v31);
}

void closure #3 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22[-v6 - 8];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    outlined init with copy of DOCGridLayout.Spec?(a2, v7, &_s10Foundation3URLVSgMd);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      if (a1)
      {
        v15 = *((*MEMORY[0x277D85000] & *v14) + 0xA90);
        v16 = a1;
        v17 = v15(v22);
        v19 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v19;
        *v19 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v12, isUniquelyReferenced_nonNull_native, &v21);
        *v19 = v21;
        v17(v22, 0);

        (*(v9 + 8))(v12, v8);
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }
  }
}

void closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v70 = a5;
  v71 = a7;
  v67 = a4;
  v68 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v64 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v25 = a2;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.UI);
      v27 = a2;
      v28 = v67;
      swift_unknownObjectRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v73[0] = v32;
        *v31 = 136315394;
        v33 = [v28 displayName];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v73);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2080;
        v72 = a2;
        v38 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v39 = String.init<A>(describing:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v73);

        *(v31 + 14) = v41;
        _os_log_impl(&dword_2493AC000, v29, v30, "[TAP] [Interaction] Clearing lastOpenedNode: Got a nil url from fetchURL for item %s. error %s. Bailing out.", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v32, -1, -1);
        MEMORY[0x24C1FE850](v31, -1, -1);
      }

      v42 = (*((*MEMORY[0x277D85000] & *v70) + 0x68))(0);
      v68(v42);
    }

    else
    {
      outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s10Foundation3URLVSgMd);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd);
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.UI);
        v44 = v67;
        swift_unknownObjectRetain();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v73[0] = v48;
          *v47 = 136315138;
          v49 = [v44 displayName];
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v73);

          *(v47 + 4) = v53;
          _os_log_impl(&dword_2493AC000, v45, v46, "[TAP] [Interaction] Clearing lastOpenedNode Got a nil url from fetchURL for item: %s but no error.", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x24C1FE850](v48, -1, -1);
          MEMORY[0x24C1FE850](v47, -1, -1);
        }

        v54 = (*((*MEMORY[0x277D85000] & *v70) + 0x68))(0);
        v68(v54);
      }

      else
      {
        v66 = a9;
        v65 = *(v17 + 32);
        v65(v24, v15, v16);
        v55 = swift_allocObject();
        v64 = v55;
        swift_unknownObjectWeakInit();
        (*(v17 + 16))(v20, v24, v16);
        v56 = (*(v17 + 80) + 56) & ~*(v17 + 80);
        v57 = swift_allocObject();
        *(v57 + 2) = v55;
        v58 = v70;
        *(v57 + 3) = v67;
        *(v57 + 4) = v58;
        v59 = v71;
        *(v57 + 5) = v68;
        *(v57 + 6) = v59;
        v65(&v57[v56], v20, v16);
        v60 = &v57[(v18 + v56 + 7) & 0xFFFFFFFFFFFFFFF8];
        v61 = *(a8 + 48);
        *(v60 + 2) = *(a8 + 32);
        *(v60 + 3) = v61;
        *(v60 + 8) = *(a8 + 64);
        v62 = *(a8 + 16);
        *v60 = *a8;
        *(v60 + 1) = v62;
        v60[72] = v66 & 1;
        swift_unknownObjectRetain();

        v63 = v70;

        outlined init with copy of DOCInteractionManagerContext(a8, v73);
        DOCRunInMainThread(_:)();

        (*(v17 + 8))(v24, v16);
      }
    }
  }
}

uint64_t closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v62 = a8;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v64 = a6;
    if (os_log_type_enabled(v18, v19))
    {
      v60 = a3;
      v20 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65[0] = v58;
      *v20 = 136315138;
      v21 = a5;
      v22 = [a2 displayName];
      v59 = a4;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v16;
      v26 = v25;

      a5 = v21;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v65);
      v16 = v24;

      *(v20 + 4) = v27;
      a4 = v59;
      _os_log_impl(&dword_2493AC000, v18, v19, "[TAP] [Interaction] tryOpeningInDefaultApp for: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C1FE850](v58, -1, -1);
      v28 = v20;
      a3 = v60;
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    v61 = [objc_opt_self() supportsQuickLookInsteadOfOpen_];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v31 = *a7;
    *(v30 + 56) = *(a7 + 16);
    v32 = *(a7 + 48);
    *(v30 + 72) = *(a7 + 32);
    *(v30 + 88) = v32;
    *(v30 + 16) = v29;
    *(v30 + 24) = a3;
    *(v30 + 32) = a2;
    *(v30 + 104) = *(a7 + 64);
    *(v30 + 40) = v31;
    *(v30 + 112) = v62 & 1;
    *(v30 + 120) = a4;
    *(v30 + 128) = a5;
    swift_unknownObjectRetain_n();

    v33 = a3;
    outlined init with copy of DOCInteractionManagerContext(a7, v65);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65[0] = v63;
      *v36 = 136315394;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v65);
      *(v36 + 12) = 2080;
      v37 = v16;
      v38 = [a2 description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v65);

      *(v36 + 14) = v42;
      v16 = v37;
      _os_log_impl(&dword_2493AC000, v34, v35, "%s node is non-nil trying to open with node first: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v63, -1, -1);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v64, a2, v61, 1, v16, partial apply for closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:), v30, ObjectType);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.UI);
    swift_unknownObjectRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v48 = 136315138;
      v50 = [a2 displayName];
      v51 = a4;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = v52;
      a4 = v51;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v65);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_2493AC000, v46, v47, "[TAP] [Interaction] Clearing lastOpenedNode: self is nil. item: %s. Bailing out.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    v57 = (*((*MEMORY[0x277D85000] & *a3) + 0x68))(0);
    return a4(v57);
  }
}

uint64_t closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v17 = swift_allocObject();
  v18 = *a5;
  *(v17 + 56) = *(a5 + 16);
  v19 = *(a5 + 48);
  *(v17 + 72) = *(a5 + 32);
  *(v17 + 88) = v19;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  v20 = *(a5 + 64);
  *(v17 + 40) = v18;
  *(v17 + 104) = v20;
  *(v17 + 112) = v15;
  *(v17 + 120) = a6;
  *(v17 + 128) = a7;
  *(v17 + 136) = a8;
  v21 = a3;
  swift_unknownObjectRetain();
  outlined init with copy of DOCInteractionManagerContext(a5, &v23);

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, void *a2, char a3, uint64_t a4, void *a5, int a6, uint64_t (*a7)(void), uint64_t a8)
{
  v156 = a8;
  LODWORD(v154) = a6;
  v153 = a4;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v13 - 8);
  v145 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v142 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v16);
  v140 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchTime();
  v19 = *(v18 - 8);
  v150 = v18;
  v151 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v139 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v149 = &v136 - v24;
  v25 = type metadata accessor for Date();
  v147 = *(v25 - 8);
  v148 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v146 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v152 = a1;
  v29(0, v27);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.UI);
  swift_unknownObjectRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v155 = a5;
    v35 = v34;
    v137 = swift_slowAlloc();
    *&aBlock = v137;
    *v35 = 136315138;
    v36 = [a2 displayName];
    v138 = v31;
    v37 = v36;
    v38 = a3;
    v39 = a2;
    v40 = a7;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = v41;
    a7 = v40;
    a2 = v39;
    a3 = v38;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &aBlock);

    *(v35 + 4) = v45;
    v46 = v137;
    __swift_destroy_boxed_opaque_existential_0(v137);
    MEMORY[0x24C1FE850](v46, -1, -1);
    a5 = v155;
    MEMORY[0x24C1FE850](v35, -1, -1);
  }

  swift_unknownObjectRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v49 = os_log_type_enabled(v47, v48);
  if ((a3 & 1) == 0)
  {
    if (v49)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&aBlock = v78;
      *v77 = 136315138;
      v79 = [a2 displayName];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &aBlock);

      *(v77 + 4) = v83;
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x24C1FE850](v78, -1, -1);
      MEMORY[0x24C1FE850](v77, -1, -1);
    }

    ObjectType = swift_getObjectType();
    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a2, v153, v152, ObjectType);
    return a7(v85);
  }

  if (v49)
  {
    v50 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&aBlock = v155;
    *v50 = 136315138;
    v51 = [a2 displayName];
    v52 = a5;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = a7;
    v55 = a2;
    v57 = v56;

    v58 = v53;
    a5 = v52;
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &aBlock);
    a2 = v55;
    a7 = v54;

    *(v50 + 4) = v59;
    v60 = v155;
    __swift_destroy_boxed_opaque_existential_0(v155);
    MEMORY[0x24C1FE850](v60, -1, -1);
    MEMORY[0x24C1FE850](v50, -1, -1);
  }

  v61 = MEMORY[0x277D85000];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = Strong;
    (*((*v61 & *Strong) + 0xA50))(&v158);

    v165 = v160;
    v166 = v161;
    v167 = v162;
    aBlock = v158;
    v164 = v159;
    v64 = *(&v159 + 1);
    v65 = *(&v159 + 1);
    outlined destroy of DOCItemCollectionConfiguration(&aBlock);
    if (v64)
    {
      v66 = [v65 fileProviderItem];

      if (v66)
      {
        swift_beginAccess();
        v67 = swift_unknownObjectWeakLoadStrong();
        if (v67)
        {
          v68 = v67;
          v69 = *(v67 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);

          v70 = [v69 hostIdentifier];
          if (!v70)
          {
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = MEMORY[0x24C1FAD20](v71);
          }

          if (one-time initialization token for sharedManager != -1)
          {
            swift_once();
          }

          v155 = static DOCSmartFolderManager.sharedManager;
          v72 = v66;
          v73 = v146;
          Date.init()();
          v74 = objc_allocWithZone(MEMORY[0x277D05ED0]);
          isa = Date._bridgeToObjectiveC()().super.isa;
          v76 = [v74 initWithAppBundleIdentifier:v70 folderItem:v72 type:0 lastUsedDate:isa frecency:1.0];

          (*(v147 + 8))(v73, v148);
          DOCSmartFolderManager.register(event:)(v76);
        }

        else
        {
        }
      }
    }
  }

  swift_beginAccess();
  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
LABEL_29:
    if (v154)
    {
      swift_beginAccess();
      v114 = swift_unknownObjectWeakLoadStrong();
      if (v114 && (v115 = v114, v116 = *(v114 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), v115, v117 = [v116 sceneIdentifier], v116, v117))
      {
        v118 = one-time initialization token for mapTable;
        v119 = v117;
        if (v118 != -1)
        {
          v135 = v119;
          swift_once();
          v119 = v135;
        }

        v120 = static DOCPreviewController.mapTable;
        v121 = v119;
        v122 = [v120 objectForKey_];
        if (!v122)
        {
          v123 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
          v122 = DOCPreviewController.init()();
          [v120 setObject:v122 forKey:v121];
        }

        v124 = [v122 presentingViewController];
        if (v124)
        {

          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v154 = static OS_dispatch_queue.main.getter();
          v125 = v139;
          static DispatchTime.now()();
          + infix(_:_:)();
          v126 = *(v151 + 8);
          v151 += 8;
          v155 = v126;
          (v126)(v125, v150);
          v127 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v165 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
          *(&v165 + 1) = v127;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v164 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v164 + 1) = &block_descriptor_1106;
          v128 = _Block_copy(&aBlock);

          v129 = v140;
          static DispatchQoS.unspecified.getter();
          *&aBlock = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v130 = v142;
          v131 = v145;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v132 = v149;
          v133 = v154;
          MEMORY[0x24C1FB940](v149, v129, v130, v128);
          _Block_release(v128);

          (*(v144 + 8))(v130, v131);
          (*(v141 + 8))(v129, v143);
          v85 = (v155)(v132, v150);
        }

        else
        {
        }
      }

      else
      {
        if (one-time initialization token for Source != -1)
        {
          swift_once();
        }

        static os_log_type_t.debug.getter();
        v85 = os_log(_:dso:log:type:_:)();
      }
    }

    return a7(v85);
  }

  v86 = v85;
  v155 = a5;
  v153 = a7;
  v87 = *(v85 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = a2;
  swift_unknownObjectRetain();
  v89 = v87;
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(inited);
  v90 = v157[42];
  v91 = objc_opt_self();
  v92 = [v91 mainBundle];

  v93 = (*((*v61 & *v86) + 0xA68))();
  v94 = [v93 identifier];

  v95 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v94);
  v96 = v157[1];
  v97 = (*((*v61 & *v86) + 0xBD8))(v95);
  if (v97 < 4)
  {
    LODWORD(v152) = v96;
    LODWORD(v148) = 0x3020201u >> (8 * v97);
    v98 = [v91 mainBundle];
    v99 = [v98 bundleIdentifier];

    v100 = v90;
    if (v99)
    {
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;
    }

    else
    {
      v101 = 0;
      v103 = 0;
    }

    v104 = v89;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v104, v101, v103, &aBlock);
    v105 = aBlock;
    v106 = v104;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v106, &v158);
    v107 = v158;
    v108 = v106;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v108, v157);
    v109 = v157[0];
    v110 = [v108 hostIdentifier];
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    *&v158 = 0xD000000000000032;
    *(&v158 + 1) = 0x8000000249BCDC20;
    *&v159 = v111;
    *(&v159 + 1) = v113;
    LOBYTE(v160) = 2;
    BYTE1(v160) = v105;
    BYTE2(v160) = v100;
    BYTE3(v160) = v152;
    BYTE4(v160) = v148;
    BYTE5(v160) = v107;
    BYTE6(v160) = v109;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(&v158, static DOCAnalyticsManager.shared);

    v85 = outlined destroy of DOCAnalyticsActionEvent(&v158);
    a7 = v153;
    goto LABEL_29;
  }

  *&aBlock = v97;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t closure #5 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136315138;
    v12 = [a3 displayName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a4;
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v16, &v20);
    a4 = v14;

    *(v11 + 4) = v17;
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  return a4(a1, a2);
}

Swift::Void __swiftcall DOCItemCollectionViewController.wantsToCreateNewFile()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v1)
  {
    DOCItemCollectionViewController.getCurrentLocation()(OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    v3 = v2;
    (*((*MEMORY[0x277D85000] & *v1) + 0x110))();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.wantsToCreateNewFolder()()
{
  v1 = v0;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "received request to create new folder", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x1550);

  v6(0, 1);
}

Swift::String *DOCItemCollectionViewController.viewOptionsViewModel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel);
  }

  else
  {
    v2 = DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:)(2);
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::String *DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:)(int a1)
{
  v2 = v1;
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v83 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v84 = &v73 - v9;
  v10 = [v1 traitCollection];
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v81 = v90;
  v11 = [v2 traitCollection];
  UITraitCollection.subscript.getter();

  v80 = v91;
  v12 = objc_opt_self();
  v13 = [v12 viewOptionsSizeSetting];
  v14 = [v13 isEnabled];

  if (v14)
  {
    v15 = &outlined read-only object #0 of DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = [v2 traitCollection];
  UITraitCollection.subscript.getter();

  v17 = v89;
  v18 = [v12 viewOptionsResizableIcon];
  v19 = [v18 isEnabled];

  if (v19 && !v17 || (v20 = [v12 viewOptionsResizableList], v21 = objc_msgSend(v20, sel_isEnabled), v20, v21) && (v17 - 1) <= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = MEMORY[0x277D84F90];
      if (v14)
      {
        v35 = &outlined read-only object #0 of DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:);
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v15);
    }

    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v15[v23 + 32] = 2;
  }

  v24 = DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()();
  v25 = MEMORY[0x277D85000];
  v26 = *((*MEMORY[0x277D85000] & *v2) + 0x1160);
  v26(&v89, v24);
  v27 = v89;
  v28 = v90;
  v29 = outlined consume of DOCItemSortDescriptor?(v89, v90);
  v26(&v89, v29);
  v30 = v89;
  v31 = v90;
  if (!v90)
  {
    goto LABEL_23;
  }

  outlined consume of DOCItemSortDescriptor?(v30, v31);
  if (v31 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_15;
    }

LABEL_23:
    v78 = 0;
    goto LABEL_24;
  }

  result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x24C1FC540](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v33 = *(v31 + 32);
  }

  v34 = v33;
  v78 = [v33 ascending];

LABEL_24:
  v77 = v27;
  outlined consume of DOCItemSortDescriptor?(v30, v31);
  v74 = DOCItemCollectionViewController.getAvailableGroupingBehaviors(shouldInsertNoneOption:)(1);
  v36 = (*((*v25 & *v2) + 0xCE8))(&v88);
  v75 = v88;
  v37 = (*((*v25 & *v2) + 0xA68))(v36);
  v73 = (*((*v25 & *v37) + 0x1D0))();

  v76 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isShowingAllFilenameExtensions);
  v79 = (*((*v25 & *v2) + 0xD18))();
  type metadata accessor for DOCViewOptionsViewModel();
  v38 = swift_allocObject();
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = result;
  v92._object = 0x8000000249BE0C60;
  v40._countAndFlagsBits = 0x74704F2077656956;
  v40._object = 0xEC000000736E6F69;
  v92._countAndFlagsBits = 0xD000000000000025;
  v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v41.value._object = 0xEB00000000656C62;
  v42._countAndFlagsBits = 0x74704F2077656956;
  v42._object = 0xEC000000736E6F69;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v92);

  v38[1] = v43;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v44 = result;
  v93._object = 0x8000000249BE0C90;
  v45._countAndFlagsBits = 0x79422070756F7247;
  v93._countAndFlagsBits = 0xD00000000000003CLL;
  v45._object = 0xE800000000000000;
  v46.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v46.value._object = 0xEB00000000656C62;
  v47._countAndFlagsBits = 0x79422070756F7247;
  v47._object = 0xE800000000000000;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v93);

  v38[2] = v48;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = result;
  v94._object = 0x8000000249BE0CD0;
  v50._countAndFlagsBits = 0x79422074726F53;
  v94._countAndFlagsBits = 0xD00000000000003BLL;
  v50._object = 0xE700000000000000;
  v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v51.value._object = 0xEB00000000656C62;
  v52._countAndFlagsBits = 0x79422074726F53;
  v52._object = 0xE700000000000000;
  v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v94);

  v38[3] = v53;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v54 = result;
  v95._object = 0x8000000249BE0D30;
  v55._object = 0x8000000249BE0D10;
  v56._object = 0x8000000249BE0D10;
  v95._countAndFlagsBits = 0xD000000000000042;
  v55._countAndFlagsBits = 0xD000000000000012;
  v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v57.value._object = 0xEB00000000656C62;
  v56._countAndFlagsBits = 0xD000000000000012;
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v57, v54, v56, v95);

  v38[4] = v58;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v59 = result;
  if (v28)
  {
    v60 = v77;
  }

  else
  {
    v60 = 5;
  }

  v96._object = 0x8000000249BE0DA0;
  v61._countAndFlagsBits = 0xD00000000000001CLL;
  v61._object = 0x8000000249BE0D80;
  v62._countAndFlagsBits = 0xD00000000000001CLL;
  v62._object = 0x8000000249BE0D80;
  v96._countAndFlagsBits = 0xD00000000000004ELL;
  v63.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v63.value._object = 0xEB00000000656C62;
  v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v63, v59, v62, v96);

  v38[5] = v64;
  v65 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
  LOBYTE(v89) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  Published.init(initialValue:)();
  *(&v38->_object + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate) = 0;
  swift_unknownObjectWeakInit();
  v66 = v73;
  *(&v38->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_groupingBehaviors) = v74;
  *(&v38->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sortModes) = v66;
  *(&v38->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sizeSettings) = v15;
  swift_beginAccess();
  LOBYTE(v87) = v75;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v87) = v60;
  Published.init(initialValue:)();
  swift_endAccess();
  *(&v38->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending) = v78;
  swift_beginAccess();
  LOBYTE(v87) = v81;
  Published.init(initialValue:)();
  swift_endAccess();
  v67 = v80;
  swift_beginAccess();
  v87 = v67;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v87) = v76;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  (*(*(v68 - 8) + 8))(v38 + v65, v68);
  LOBYTE(v87) = v82;
  Published.init(initialValue:)();
  swift_endAccess();
  *(&v38->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_availableSections) = &outlined read-only object #1 of DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:);
  v87 = *&v79;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v69 = v84;
  Published.projectedValue.getter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  Publisher<>.assign(to:)();
  v71 = v85;
  v70 = v86;
  (*(v85 + 16))(v83, v69, v86);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v71 + 8))(v69, v70);

  v72 = v38 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v72 + 1) = &protocol witness table for DOCItemCollectionViewController;
  swift_unknownObjectWeakAssign();
  return v38;
}

uint64_t DOCItemCollectionViewController.updateViewOptionsViewModel()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x1920))();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:)(v10[0]);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = v2;

  v4 = (*((*v1 & *v0) + 0x1948))(v3);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewModel;
    v6 = v4;
    swift_beginAccess();
    *&v6[v5] = v2;

    v7 = dispatch thunk of UIHostingController.rootView.modify();
    *(v8 + 8) = v2;

    v7(v10, 0);
  }
}

void *DOCItemCollectionViewController.viewOptionsViewController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.viewOptionsViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.enqueuedCreatedFolderToBeRenamed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.enqueuedCreatedFolderToBeRenamed.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.registeredItemCellClassByIdentifier.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *DOCItemCollectionViewController.newFolderReadyForRenameTimer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.newFolderReadyForRenameTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.repositionRenamingCellTimer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.repositionRenamingCellTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.canUseInlineRename(forItemCell:)(uint64_t a1)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = DOCItemCollectionViewController.defaultItemCellClass.getter();
  }

  return (*(ObjectType + 504))() & 1;
}

uint64_t DOCItemCollectionViewController.defaultItemCellClass.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier + 8);
  }

  else
  {
    v4 = DOCItemCollectionViewController.createCellIdentifier.getter();
    v3 = v4;
    v2 = v5;
  }

  v6 = (*((*v1 & *v0) + 0x920))(v4);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);

      return v10;
    }
  }

  else
  {
  }

  return type metadata accessor for DOCItemCollectionGridCell();
}

void (*vtable thunk for DOCBrowserContainedViewController.isUserInteractionEnabled.modify dispatching to DOCItemCollectionViewController.isUserInteractionEnabled.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x9A8))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

uint64_t DOCItemCollectionViewController.sectionColumnLimitIfNecessary(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() && ((*((*v7 & *v1) + 0xF10))() & 1) != 0)
  {
    result = (*((*v7 & *v1) + 0x11C0))();
    if (!result)
    {
      return result;
    }

    (*(*result + 160))(v13);

    v10 = (*(*v6 + 136))(v9);
    v12[0] = v2;
    v12[1] = v3;
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v11 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(for:)(v12);
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v13);
    if ((v10 & 1) == 0 && (v11 & 1) == 0)
    {
      return v13[13];
    }
  }

  return 0;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.useOutlineStyleReload()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xBD8);
  if (v2() == 2 || v2() == 1 && (v4 = [objc_opt_self() outlineDisclosure], v5 = objc_msgSend(v4, sel_isEnabled), v4, v5))
  {
    v3 = (*((*v1 & *v0) + 0xF10))() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.establishFirstResponder()()
{
  [v0 setNeedsFocusUpdate];
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 requestCurrentFocus_];

  return v2;
}

uint64_t DOCItemCollectionViewController.sectionIsHorizontallyScrollable(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() && ((*((*v7 & *v1) + 0xF10))() & 1) != 0)
  {
    result = (*((*v7 & *v1) + 0x11C0))();
    if (!result)
    {
      return result;
    }

    (*(*result + 160))(v12);

    if ((*(*v6 + 136))(v9))
    {
      outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v12);
    }

    else
    {
      v11[0] = v2;
      v11[1] = v3;
      v11[2] = v4;
      v11[3] = v5;
      v11[4] = v6;
      v10 = DOCItemCollectionViewController.shouldShowShowMoreButton(for:)(v11);
      outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v12);
      if (v10)
      {
        return v13;
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(Swift::Int at)
{
  if (at < 0 || (v3 = *((*MEMORY[0x277D85000] & *v1) + 0xD60), v4 = *(v3() + 16), v5 = , v4 <= at))
  {
    v13 = 0;
  }

  else
  {
    v6 = (v3)(v5);
    if (*(v6 + 16) <= at)
    {
      __break(1u);
      return v6;
    }

    v7 = (v6 + 40 * at);
    v9 = v7[4];
    v8 = v7[5];
    v11 = v7[6];
    v10 = v7[7];
    v12 = v7[8];

    v15[0] = v9;
    v15[1] = v8;
    v15[2] = v11;
    v15[3] = v10;
    v15[4] = v12;
    v13 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(for:)(v15);
  }

  LOBYTE(v6) = v13 & 1;
  return v6;
}

uint64_t DOCItemCollectionViewController.shouldShowShowMoreButton(for:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() || ((*((*v3 & *v1) + 0xF10))() & 1) == 0)
  {
    return 0;
  }

  result = (*((*v3 & *v1) + 0x11C0))();
  if (!result)
  {
    return result;
  }

  (*(*result + 160))(v9);

  v6 = (*((*v3 & *v1) + 0x1018))(v5);
  if (!v6)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v9);
    return 0;
  }

  v7 = (*(*v2 + 112))();
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v9);
  return v9[13] < v8;
}

uint64_t DOCItemCollectionViewController.configure(sectionHeader:with:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a2[1];
  v32 = *a2;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v2) + 0xBD8))();
  (*((*v9 & *a1) + 0x3F8))(v10);
  v11 = *((*v9 & *a1) + 0x270);

  v12 = v11(v6, v7);
  v13 = (*(*v8 + 184))(v12);
  v39 = v13;
  v14 = MEMORY[0x277D84F90];
  *&v36 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    MEMORY[0x24C1FB090]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = v36;
  }

  outlined destroy of CharacterSet?(&v39, &_sSo6DOCTagCSgMd);
  (*((*v9 & *a1) + 0x258))(v14);
  *&v36 = v32;
  *(&v36 + 1) = v5;
  *&v37 = v6;
  *(&v37 + 1) = v7;
  v38 = v8;
  v16 = *((*v9 & *a1) + 0x418);

  v17 = v16(&v36);
  (*((*v9 & *v3) + 0x1160))(&v36, v17);
  v33 = v36;
  v34 = v37;
  v35 = BYTE8(v37);
  (*((*v9 & *a1) + 0x330))(&v33);
  v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 32);
  v19 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 16);
  v20 = *v9 & *a1;
  v36 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics);
  v37 = v19;
  v38 = v18;
  v21 = (*(v20 + 720))(&v36);
  v22 = (*((*v9 & *v3) + 0x11C0))(v21);
  v23 = (*((*v9 & *a1) + 0x2B8))(v22);
  if (((*((*v9 & *v3) + 0xF10))(v23) & 1) != 0 && ((*((*v9 & *v3) + 0xCE8))(&v36), v36 != 10))
  {
    v24 = DOCItemCollectionViewController.groupBySubmenu(withNoneOption:options:)(0, 0);
  }

  else
  {
    v24 = 0;
  }

  v25 = (*((*v9 & *a1) + 0x360))(v24);
  (*((*v9 & *v3) + 0xCE8))(&v36, v25);
  (*((*v9 & *a1) + 0x288))(*&aDate_8[8 * v36], qword_249BAB8A0[v36]);
  *&v36 = v32;
  *(&v36 + 1) = v5;
  *&v37 = v6;
  *(&v37 + 1) = v7;
  v38 = v8;
  if (DOCItemCollectionViewController.shouldShowShowMoreButton(for:)(&v36))
  {
    v26 = (*(*v8 + 136))();
    (*((*v9 & *a1) + 0x458))(v26 & 1);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = *((*v9 & *a1) + 0x430);

    v28(partial apply for closure #2 in DOCItemCollectionViewController.configure(sectionHeader:with:), v27);
  }

  else
  {
    (*((*v9 & *a1) + 0x458))(0);
    (*((*v9 & *a1) + 0x430))(0, 0);
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = *((*v9 & *a1) + 0x448);

  v30(partial apply for closure #3 in DOCItemCollectionViewController.configure(sectionHeader:with:), v29);
}

double DOCItemCollectionViewController.sectionHeaderHeightForItem(at:)()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  Height = 0.0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xEF8))(v4))
  {
    v9 = (*((*v7 & *v0) + 0x1010))();
    if (one-time initialization token for sectionHeader != -1)
    {
      swift_once();
    }

    v10 = MEMORY[0x24C1FAD20](static DOCItemCollectionViewController.ElementKind.sectionHeader, *algn_27EF18858);
    v11 = IndexPath.section.getter();
    MEMORY[0x24C1F8100](0, v11);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v6, v1);
    v13 = [v9 supplementaryViewForElementKind:v10 atIndexPath:isa];

    if (v13)
    {
      [v13 frame];
      Height = CGRectGetHeight(v16);
    }
  }

  return Height;
}

Swift::Void __swiftcall DOCItemCollectionViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xB20))();
  if (v5 && (v6 = v5, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView), v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) != 0))
  {

    DOCItemCollectionViewController.resetButtons()();
  }

  else
  {
    (*((*v4 & *v2) + 0x17E0))();
    v9 = *((*v4 & *v2) + 0xF60);

    v9();
  }
}

void DOCItemCollectionViewController.updateContent(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x11C0);
  v6 = v5();
  if (v6)
  {
    (*(*v6 + 184))(&v60);

    v79 = v68;
    v80 = v69;
    v81[0] = v70[0];
    *(v81 + 9) = *(v70 + 9);
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v74 = v63;
    DOCGridLayout.specIconWidth.modify(*&v62, *&v63);
    v90 = v79;
    v91 = v80;
    v92[0] = v81[0];
    *(v92 + 9) = *(v81 + 9);
    v86 = v75;
    v87 = v76;
    v88 = v77;
    v89 = v78;
    v82 = v71;
    v83 = v72;
    v84 = v73;
    v85 = v74;
  }

  else
  {
    _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgWOi0_(&v82);
  }

  v79 = v90;
  v80 = v91;
  v81[0] = v92[0];
  *(v81 + 9) = *(v92 + 9);
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v7 = v5();
  if (v7)
  {
    (*(*v7 + 256))(&v44);

    v64 = v48;
    v65 = v49;
    v66 = v50;
    v67 = v51;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    DOCGridLayout.specIconWidth.modify(*&v46, *&v47);
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
  }

  else
  {
    _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(&v52);
  }

  v64 = v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v8 = *((*v4 & *a1) + 0x3D0);
  if (v8())
  {
    swift_unknownObjectRelease();
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 16);
  v44 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics);
  v45 = v9;
  *&v46 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 32);
  v10 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) preferLastUsedDate];
  [v1 isEditing];
  v11 = v8();
  if (v11)
  {
    v12 = v11;
    (*((*v4 & *v1) + 0x1790))();
    if ((*((*v4 & *v1) + 0x18C0))(v12))
    {
      DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(v12);
    }

    v11 = swift_unknownObjectRelease();
  }

  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v13)
  {
    v14 = (*((*v4 & *v13) + 0x1A8))(v11);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass() != 0;
    }

    else
    {
      v41 = 0;
    }

    v16 = (*((*v4 & *v13) + 0x1A8))();
    v42 = v10;
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v43 = [v18 itemsOrigin];
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v19 = (*((*v4 & *v2) + 0xA68))();
    v20 = [v19 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v28 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    if (v28)
    {
      v29 = v28;
      v30 = v8();
      if (v30)
      {
        v31 = v30;
        if (v25 & 1 | (v43 == 1) || v41 && ((v36 = [v30 providerDomainID], v37 = DOCProviderDomainIDIsSharedServerDomainID(), v36, (v37) || (v38 = objc_msgSend(v31, sel_providerDomainID), v39 = DOCProviderDomainIDIsExternalDevice(), v38, v39))) && (v32 = *&v29[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver], swift_getObjectType(), v33 = v32, v34 = DOCNode.sourceIdentifier.getter(), v35 = objc_msgSend(v33, sel_cachedDisplayNameForSourceIdentifier_, v34), v33, v34, v35))
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          v26 = swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v40 = MEMORY[0x28223BE20](v26, v27);
    (*((*MEMORY[0x277D85000] & *a1) + 0x2B8))(partial apply for closure #3 in DOCItemCollectionViewController.updateContent(_:), v40);
    outlined destroy of CharacterSet?(&v82, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined destroy of CharacterSet?(&v52, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in DOCItemCollectionViewController.prefetchCellContent(for:)(void *a1)
{
  v2 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xB70))(v4);
  if (result)
  {
    (*((*v7 & *a1) + 0x6E8))();
    v9 = outlined destroy of RestorableSettings(v6, type metadata accessor for DOCFastLabel.LabelInformation);
    (*((*v7 & *a1) + 0x758))(v9);

    (*((*v7 & *a1) + 0x738))(v10);

    (*((*v7 & *a1) + 0x780))(v11);

    result = (*((*v7 & *a1) + 0x800))(v12);
    if ((result & 1) == 0)
    {
      (*((*v7 & *a1) + 0xA80))();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t @objc DOCItemCollectionViewController.collectionView(_:prefetchItemsAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for IndexPath();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

uint64_t closure #3 in DOCItemCollectionViewController.updateContent(_:)(void *a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5, char a6, __int128 *a7, void *a8, char a9, char a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  v54 = a7[1];
  v55 = *a7;
  v21 = *(a7 + 4);
  v22 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0x408))(a2);
  v23 = DOCItemCollectionViewController.shouldPreserveSpaceForDisclosureButton.getter();
  v24 = (*((*v22 & *a1) + 0x450))(v23 & 1);
  (*((*v22 & *a3) + 0xCE8))(&v60, v24);
  (*((*v22 & *a1) + 0x420))(&v60);
  v25 = *v22 & *a1;
  v26 = a4[9];
  v68 = a4[8];
  v69 = v26;
  v70[0] = a4[10];
  *(v70 + 9) = *(a4 + 169);
  v27 = a4[5];
  v64 = a4[4];
  v65 = v27;
  v28 = a4[7];
  v66 = a4[6];
  v67 = v28;
  v29 = a4[1];
  v60 = *a4;
  v61 = v29;
  v30 = a4[3];
  v62 = a4[2];
  v63 = v30;
  v31 = *(v25 + 736);
  outlined init with copy of DOCGridLayout.Spec?(a4, &v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v31(&v60);
  v32 = *v22 & *a1;
  v33 = a5[5];
  v64 = a5[4];
  v65 = v33;
  v34 = a5[7];
  v66 = a5[6];
  v67 = v34;
  v35 = a5[1];
  v60 = *a5;
  v61 = v35;
  v36 = a5[3];
  v62 = a5[2];
  v63 = v36;
  v37 = *(v32 + 760);
  outlined init with copy of DOCGridLayout.Spec?(a5, &v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  v38 = v37(&v60);
  v39 = (*((*v22 & *a3) + 0x11C0))(v38);
  if (v39)
  {
    (*(*v39 + 232))(&v60);

    v40.n128_u64[0] = v60;
  }

  else
  {
    v40.n128_u64[0] = 0;
  }

  (*((*v22 & *a1) + 0x310))(v39, v40);
  (*((*v22 & *a1) + 0x468))(a6 & 1);
  v60 = v55;
  v61 = v54;
  *&v62 = v21;
  BYTE8(v62) = 0;
  (*((*v22 & *a1) + 0x528))(&v60);
  v41 = *((*v22 & *a1) + 0x328);
  v42 = a8;
  v41(a8);
  (*((*v22 & *a1) + 0x388))(a9 & 1);
  (*((*v22 & *a1) + 0x510))(a10 & 1);
  (*((*v22 & *a1) + 0x498))(a11 & 1);
  (*((*v22 & *a1) + 0x4E0))(a12 & 1);
  v43 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v44 = [v43 isPickerUI];
  v45 = [a3 traitCollection];
  if (v44)
  {
    v46 = UITraitCollection.modifyingTraits(_:)();

    v45 = v46;
  }

  (*((*v22 & *a1) + 0x370))(v45);
  (*((*v22 & *a1) + 0x480))(a13, 0);
  (*((*v22 & *a1) + 0x4F8))(a14 & 1);
  v47 = *((*v22 & *a1) + 0x968);

  v47(v48);
  v49 = *((*v22 & *a1) + 0x848);

  v49(a15, a16);
  v50 = (*((*v22 & *a1) + 0x8A0))([v43 isPopoverOrWidget]);
  (*((*v22 & *a3) + 0x1160))(&v60, v50);
  v57 = v60;
  v58 = v61;
  v59 = BYTE8(v61);
  (*((*v22 & *a1) + 0x3F0))(&v57);
  v51 = (*((*v22 & *a1) + 0x3A0))(1);
  v52 = (*((*v22 & *a3) + 0xFE0))(v51);
  return (*((*v22 & *a1) + 0x3B8))(v52 & 1);
}

uint64_t DOCItemCollectionViewController.shouldPreserveSpaceForDisclosureButton.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6, v7);
  v10 = &v31 - v9;
  v11 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF10))(v8);
  if (result)
  {
    return 0;
  }

  v13 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v13)
  {
    v14 = (*((*v11 & *v13) + 0x1A8))();
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();

      if (v16)
      {
        return 0;
      }
    }

    v17 = (*((*v11 & *v1) + 0xA68))();
    v18 = [v17 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        return 1;
      }
    }

    v26 = (*((*v11 & *v1) + 0xC70))(v25);
    if (v26)
    {
      v27 = [v26 nodeURL];
      swift_unknownObjectRelease();
      if (v27)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = type metadata accessor for URL();
        (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
      }

      else
      {
        v28 = type metadata accessor for URL();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      outlined init with take of (key: URL, value: FPItem)(v5, v10, &_s10Foundation3URLVSgMd);
      type metadata accessor for URL();
      v30 = 1;
      if ((*(*(v28 - 8) + 48))(v10, 1, v28) != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    }

    v30 = 0;
LABEL_20:
    outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
    return v30;
  }

  __break(1u);
  return result;
}

CGPoint __swiftcall DOCItemCollectionViewController.collectionView(_:targetContentOffsetForProposedContentOffset:)(UICollectionView *_, CGPoint targetContentOffsetForProposedContentOffset)
{
  v4 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))(__PAIR128__(v5, *&targetContentOffsetForProposedContentOffset.x), __PAIR128__(v6, *&targetContentOffsetForProposedContentOffset.y));
  (*((*v4 & *v7) + 0x140))();
  v9 = v8;

  [(UICollectionView *)_ contentOffset];
  if (v10 >= v9)
  {
    v10 = v9;
  }

  v11 = 0.0;
  result.y = v10;
  result.x = v11;
  return result;
}

uint64_t DOCItemCollectionViewController.collectionView(_:shouldDeselectItemAt:)(void *a1)
{
  if (([v1 isEditing] & 1) == 0)
  {
    result = [a1 delegate];
    if (!result)
    {
      return result;
    }

    v4 = result;
    if ([result respondsToSelector_])
    {
      swift_unknownObjectRetain();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v6 = [v4 collectionView:a1 shouldSelectItemAtIndexPath:isa];
      swift_unknownObjectRelease_n();

      return v6;
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

unint64_t DOCItemCollectionViewController.collectionView(_:shouldSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  *&v86 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v77 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v77 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v77 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  *&v82 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  *&v84 = v77 - v26;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v27, v28);
  v31 = v77 - v30;
  v32 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1448))(v29))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2493AC000, v34, v35, "Inline rename session in progress, skipping cell selection", v36, 2u);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    return 0;
  }

  v78 = v11;
  v38 = *((*v32 & *v2) + 0x18A0);
  v39 = (*v32 & *v2) + 6304;
  v85 = a2;
  v79 = v39;
  v80 = v38;
  v38(a2);
  v40 = *(v21 + 48);
  v41 = v40(v19, 1, v20);
  v81 = v21;
  if (v41 == 1)
  {
    v42 = outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    (*(v21 + 32))(v31, v19, v20);
    v43 = (*((*v32 & *v2) + 0xD88))(v31, 0);
    if (v43)
    {
      v44 = v43;
      if ((*((*v32 & *v2) + 0x148))())
      {
        v45 = (*((*v32 & *v2) + 0x1790))(v44);
        swift_unknownObjectRelease();
        v42 = (*(v81 + 8))(v31, v20);
        if ((v45 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        (*(v81 + 8))(v31, v20);
        v42 = swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = (*(v21 + 8))(v31, v20);
    }
  }

  if ((*((*v32 & *v3) + 0x1310))(v42))
  {
    goto LABEL_30;
  }

  v80(v85);
  if (v40(v15, 1, v20) != 1)
  {
    v46 = v81;
    v47 = v84;
    (*(v81 + 32))(v84, v15, v20);
    if (!(*((*v32 & *v3) + 0xD88))(v47, 0))
    {
      (*(v46 + 8))(v47, v20);
      goto LABEL_30;
    }

    v48 = *((*v32 & *v3) + 0x1338);
    v49 = v48();
    if (v49 >> 62)
    {
      v77[1] = v49;
      v50 = __CocoaSet.count.getter();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v50 == 1)
    {
      result = (v48)(v51);
      if (result >> 62)
      {
        v75 = result;
        v76 = __CocoaSet.count.getter();
        result = v75;
        if (v76)
        {
          goto LABEL_25;
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v52 = DOCNode.isEqualTo(node:)();
        swift_unknownObjectRelease();
        goto LABEL_50;
      }
    }

    v52 = 0;
LABEL_50:
    v53 = v40;
    (*((*v32 & *v3) + 0x1288))(v52 & 1);
    swift_unknownObjectRelease();
    (*(v81 + 8))(v84, v20);
    goto LABEL_31;
  }

  outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd);
LABEL_30:
  v53 = v40;
  (*((*v32 & *v3) + 0x1288))(0);
LABEL_31:
  v54 = v85;
  if (((*((*v32 & *v3) + 0x1788))(v85) & 1) == 0)
  {
    v65 = v86;
    v80(v54);
    if (v53(v65, 1, v20) == 1)
    {
      outlined destroy of CharacterSet?(v65, &_s10Foundation9IndexPathVSgMd);
    }

    else
    {
      v66 = v81;
      v67 = v82;
      (*(v81 + 32))(v82, v65, v20);
      v68 = (*((*v32 & *v3) + 0xD88))(v67, 0);
      if (v68)
      {
        v69 = [v68 fpfs_fpItem];
        v70 = swift_unknownObjectRelease();
        if (v69)
        {
          v71 = (*((*v32 & *v3) + 0xE8))(v70);
          if (v71)
          {
            [v71 didTapOnUnselectableItem_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      (*(v66 + 8))(v67, v20);
    }

    return 0;
  }

  if (!(*((*v32 & *v3) + 0xA98))())
  {
    return 1;
  }

  v56 = v55;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v58 = [v83 layoutAttributesForItemAtIndexPath_];

  if (v58)
  {
    [v58 frame];
    v83 = v59;
    v84 = v60;
    v82 = v61;
    v86 = v62;

    *&v64 = v82;
    *&v63 = v83;
    *(&v63 + 1) = v84;
    *(&v64 + 1) = v86;
  }

  else
  {
    v63 = 0uLL;
    v64 = 0uLL;
  }

  v72 = v81;
  v73 = v78;
  v87[0] = v63;
  v87[1] = v64;
  v88 = v58 == 0;
  ObjectType = swift_getObjectType();
  (*(v72 + 16))(v73, v54, v20);
  (*(v72 + 56))(v73, 0, 1, v20);
  (*(v56 + 16))(v3, v73, v87, ObjectType, v56);
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v73, &_s10Foundation9IndexPathVSgMd);
  return 1;
}

uint64_t @objc DOCItemCollectionViewController.collectionView(_:shouldDeselectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  LOBYTE(a5) = a5(v13, v12);

  (*(v9 + 8))(v12, v8);
  return a5 & 1;
}

uint64_t DOCItemCollectionViewController.fastTitle(forNode:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
  v8 = [v7 shouldShowFileExtensions];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = static DOCFileExtensionManager.shared;
    v11 = [a1 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v10) = (*(*v10 + 216))(v6);
    (*(v3 + 8))(v6, v2);
    v9 = v10 ^ 1;
  }

  swift_getObjectType();
  return DOCNode.displayName(withHiddenPathExtension:)(v9 & 1)._countAndFlagsBits;
}

uint64_t DOCItemCollectionViewController.unarchiveSelectedItem(_:)(void *a1)
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
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "Handling archive item: %@", v8, 0xCu);
    outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v12;
  v14 = v5;

  FPItemManager.unarchiveInPlace(item:alertPresenting:completion:)(v14, v2, partial apply for closure #1 in DOCItemCollectionViewController.unarchiveSelectedItem(_:), v13);
}

void closure #1 in DOCItemCollectionViewController.unarchiveSelectedItem(_:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 || !a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.UI);
    v21 = a3;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2080;
      v27 = v21;
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_2493AC000, oslog, v23, "Error unarchiving item: %@. Error: %s", v24, 0x16u);
      outlined destroy of CharacterSet?(v25, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v8 = one-time initialization token for UI;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      v14 = [a1 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_2493AC000, v10, v11, "Unarchive operation ended with result item: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1FE850](v13, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a1;
    swift_unknownObjectRetain();

    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.unarchiveSelectedItem(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA0290;
    *(v5 + 32) = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = DOCGridLayout.specIconWidth.modify;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_1080;
    v7 = _Block_copy(aBlock);

    [v4 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v7];
    _Block_release(v7);
  }
}

uint64_t @objc DOCItemCollectionViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5(v12);

  return (*(v9 + 8))(v12, v8);
}

void DOCItemCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11, v12);
  v15 = &v46 - v14;
  v16 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))(v13) == 3)
  {
    if (specialized DOCItemCollectionViewController.isColumnNavigationAction(in:at:)())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.UI);
      (*(v7 + 16))(v15, a2, v6);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v49[0] = v21;
        *v20 = 136315394;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEE20, v49);
        *(v20 + 12) = 2080;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v7 + 8))(v15, v6);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v49);

        *(v20 + 14) = v25;
        _os_log_impl(&dword_2493AC000, v18, v19, "%s %s navigation action. Error if this was not handled by didSelect:", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v20, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v15, v6);
      }

      return;
    }

    v47 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.UI);
    (*(v7 + 16))(v10, a2, v6);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49[0] = v46;
      *v40 = 136315394;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEE20, v49);
      *(v40 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v7 + 8))(v10, v6);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v49);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_2493AC000, v38, v39, "%s %s performing primary action", v40, 0x16u);
      v45 = v46;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v45, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v36 = v47;
LABEL_27:
    DOCItemCollectionViewController._handlePrimaryAction(_:at:)(v36, a2);
    return;
  }

  v26 = [objc_opt_self() doubleTapToOpen];
  v27 = [v26 isEnabled];

  if (!v27 || ![*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isFilesApp])
  {
    goto LABEL_19;
  }

  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  v28 = swift_beginAccess();
  if (!static DOCItemCollectionViewController._tapBehavior)
  {
    goto LABEL_19;
  }

  if (static DOCItemCollectionViewController._tapBehavior != 1)
  {
    v29 = (*((*v16 & *v3) + 0x1010))(v28);
    v30 = (*((*v16 & *v29) + 0x188))();

    if ((v30 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

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
    v48 = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEE20, &v48);
    _os_log_impl(&dword_2493AC000, v32, v33, "%s shouldSelectInsteadOfOpen=true selecting instead of opening if not already selected", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  if ((*((*v16 & *v3) + 0x1280))())
  {
LABEL_19:
    v36 = a1;
    goto LABEL_27;
  }
}

uint64_t DOCItemCollectionViewController._handlePrimaryAction(_:at:)(void *a1, uint64_t a2)
{
  v321 = type metadata accessor for URL();
  v320 = *(v321 - 8);
  MEMORY[0x28223BE20](v321, v5);
  v317 = v310 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v322 = v310 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v324 = v310 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v325 = v310 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v310 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20, v23);
  v319 = v310 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v310 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v330 = v310 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = v310 - v33;
  swift_beginAccess();
  v35 = static DOCItemCollectionViewController.__debug_last_action_id + 1;
  if (__OFADD__(static DOCItemCollectionViewController.__debug_last_action_id, 1))
  {
    __break(1u);
  }

  else
  {
    v313 = v22;
    v314 = v27;
    v316 = a1;
    v331 = v2;
    ++static DOCItemCollectionViewController.__debug_last_action_id;
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Logger.UI);
  v38 = v21[2];
  v327 = a2;
  v39 = a2;
  v40 = v38;
  v329 = v21 + 2;
  v38(v34, v39, v20);
  v332 = v37;
  v41 = Logger.logObject.getter();
  v42 = v21;
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v41, v43);
  v326 = v35;
  v328 = v40;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&aBlock = v46;
    *v45 = 136315650;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BE0BE0, &aBlock);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v35;
    *(v45 + 22) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v20;
    v50 = v49;
    v323 = v42[1];
    v323(v34, v48);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, &aBlock);
    v20 = v48;

    *(v45 + 24) = v51;
    _os_log_impl(&dword_2493AC000, v41, v43, "%s [TAP][%ld] Primary Action (user tapped) at index path: %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v46, -1, -1);
    MEMORY[0x24C1FE850](v45, -1, -1);
  }

  else
  {

    v323 = v21[1];
    v323(v34, v20);
  }

  v52 = v42;
  v53 = v331;
  v54 = [v331 isEditing];
  v55 = MEMORY[0x277D85000];
  v56 = v327;
  if ((v54 & 1) == 0)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v20;
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v326;
      _os_log_impl(&dword_2493AC000, v57, v58, "[TAP][%ld] Deselect item", v60, 0xCu);
      v61 = v60;
      v20 = v59;
      MEMORY[0x24C1FE850](v61, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    v62 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_249B9A480;
    v328(v63 + v62, v56, v20);
    v55 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v53) + 0x1300))(0, v63);
  }

  if (![v53 isEditing] && ((*((*v55 & *v53) + 0x1898))(v56) & 1) != 0)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v20;
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      *(v67 + 4) = v326;
      _os_log_impl(&dword_2493AC000, v64, v65, "[TAP][%ld] Create new file", v67, 0xCu);
      v68 = v67;
      v20 = v66;
      MEMORY[0x24C1FE850](v68, -1, -1);
    }

    (*((*v55 & *v53) + 0x18E8))();
  }

  (*((*v55 & *v53) + 0x18A0))(v56);
  if ((v52[6])(v19, 1, v20) == 1)
  {
    return outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
  }

  v70 = v52[4];
  v71 = v56;
  v312 = v52 + 4;
  v311 = v70;
  v72 = (v70)(v330, v19, v20);
  v73 = *((*v55 & *v53) + 0x1010);
  v310[1] = (*v55 & *v53) + 4112;
  v310[0] = v73;
  v74 = v73(v72);
  v75 = v325;
  v76 = v55;
  v77 = v328;
  v328(v325, v71, v20);
  v315 = v52;
  v78 = (v52[7])(v75, 0, 1, v20);
  v79 = (*((*v76 & *v74) + 0xF0))(v78);
  v318 = v20;
  v80 = v324;
  outlined init with copy of DOCGridLayout.Spec?(v75, v324, &_s10Foundation9IndexPathVSgMd);
  (*(*v79 + 112))(v80);

  v81 = v75;
  v82 = v330;
  outlined destroy of CharacterSet?(v81, &_s10Foundation9IndexPathVSgMd);
  v325 = (v53 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  v83 = v76;
  v84 = (*((*v76 & *v53) + 0xD88))(v82, 0);
  if (!v84)
  {
    v115 = v319;
    v116 = v318;
    v77(v319, v82, v318);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = v116;
      v121 = swift_slowAlloc();
      *&aBlock = v121;
      *v119 = 134218242;
      *(v119 + 4) = v326;
      *(v119 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      v125 = v323;
      v323(v115, v120);
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &aBlock);

      *(v119 + 14) = v126;
      _os_log_impl(&dword_2493AC000, v117, v118, "[TAP][%ld] No Node at resolved index path: %s. Bailing out", v119, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x24C1FE850](v121, -1, -1);
      MEMORY[0x24C1FE850](v119, -1, -1);

      return v125(v82, v120);
    }

    else
    {

      v169 = v323;
      v323(v115, v116);
      return v169(v82, v116);
    }
  }

  v85 = [v84 resolvedNode];
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v87 = [v85 nodeURL];
  v88 = v318;
  v89 = v83;
  if (v87)
  {
    v90 = v322;
    v91 = v87;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if ((URL.isFileURL.getter() & 1) == 0)
    {
      v154 = v320;
      v155 = v317;
      v156 = v321;
      (*(v320 + 16))(v317, v90, v321);
      swift_unknownObjectRetain();
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        *&aBlock = v332;
        *v159 = 136315394;
        v160 = DOCNode.nodeDescription.getter();
        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, &aBlock);

        *(v159 + 4) = v162;
        *(v159 + 12) = 2080;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        v166 = *(v154 + 8);
        v166(v155, v156);
        v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v165, &aBlock);

        *(v159 + 14) = v167;
        _os_log_impl(&dword_2493AC000, v157, v158, "[TAP] [Interaction] An item: %s with invalid URL: %s, was selected. Bailing out.", v159, 0x16u);
        v168 = v332;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v168, -1, -1);
        MEMORY[0x24C1FE850](v159, -1, -1);
        swift_unknownObjectRelease();

        v166(v322, v156);
      }

      else
      {
        swift_unknownObjectRelease();

        v170 = *(v154 + 8);
        v170(v155, v156);
        v170(v90, v156);
      }

      v153 = v330;
      v171 = v318;
      return (v323)(v153, v171);
    }

    (*(v320 + 8))(v90, v321);
  }

  if ([v53 isEditing])
  {
    v92 = v53;
    v93 = *((*v83 & *v53) + 0x1790);
    if (v93(v85))
    {
      swift_unknownObjectRetain();
      v94 = v92;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      v97 = os_log_type_enabled(v95, v96);
      v319 = v85;
      if (v97)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&aBlock = v99;
        *v98 = 134218498;
        *(v98 + 4) = v326;
        *(v98 + 12) = 2080;
        v100 = [v94 isEditing];
        v101 = v100 == 0;
        if (v100)
        {
          v102 = 5457241;
        }

        else
        {
          v102 = 20302;
        }

        if (v101)
        {
          v103 = 0xE200000000000000;
        }

        else
        {
          v103 = 0xE300000000000000;
        }

        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &aBlock);

        *(v98 + 14) = v104;
        *(v98 + 22) = 2080;
        v105 = v93(v85);
        v106 = (v105 & 1) == 0;
        if (v105)
        {
          v107 = 5457241;
        }

        else
        {
          v107 = 20302;
        }

        if (v106)
        {
          v108 = 0xE200000000000000;
        }

        else
        {
          v108 = 0xE300000000000000;
        }

        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &aBlock);

        *(v98 + 24) = v109;
        _os_log_impl(&dword_2493AC000, v95, v96, "[TAP][%ld] Selecting the node: isEditing: %s, canMultiSelect: %s", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v99, -1, -1);
        v110 = v98;
        v88 = v318;
        MEMORY[0x24C1FE850](v110, -1, -1);
      }

      v111 = v330;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v316 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      *(v94 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
      v113 = [v94 viewIfLoaded];
      v114 = [v113 window];

      if (v114)
      {

        DOCBrowserContainedViewController.updateOverlayIfNeeded()();
      }

      else
      {
        DOCBrowserContainedViewController.applyOverlaySearchSettings()();
      }

      swift_unknownObjectRelease();
      v153 = v111;
      goto LABEL_103;
    }
  }

  v324 = ObjectType;
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 134217984;
    *(v129 + 4) = v326;
    _os_log_impl(&dword_2493AC000, v127, v128, "[TAP][%ld] Performing action (user not in select mode)", v129, 0xCu);
    MEMORY[0x24C1FE850](v129, -1, -1);
  }

  v130 = v331;
  v131 = (*((*v89 & *v331) + 0x1790))(v85);
  v132 = v315;
  v133 = v328;
  if ((v131 & 1) == 0 && *(v130 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) == 1)
  {
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 134217984;
      *(v136 + 4) = v326;
      _os_log_impl(&dword_2493AC000, v134, v135, "[TAP][%ld] Folder opening prevented while in gesture selection mode. Bailing out", v136, 0xCu);
      MEMORY[0x24C1FE850](v136, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v153 = v330;
    goto LABEL_103;
  }

  v137 = [v85 copyingProgress];
  if (v137)
  {
    v138 = v137;
    if (([v137 isFinished] & 1) == 0)
    {
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 134217984;
        *(v191 + 4) = v326;
        _os_log_impl(&dword_2493AC000, v189, v190, "[TAP][%ld] Item is in the middle of a copy...", v191, 0xCu);
        MEMORY[0x24C1FE850](v191, -1, -1);
      }

      v192 = (*((*v89 & *v130) + 0xBD8))();
      v193 = Logger.logObject.getter();
      v194 = static os_log_type_t.default.getter();
      v195 = os_log_type_enabled(v193, v194);
      if (v192)
      {
        v196 = v330;
        if (v195)
        {
          v197 = swift_slowAlloc();
          *v197 = 134217984;
          *(v197 + 4) = v326;
          _os_log_impl(&dword_2493AC000, v193, v194, "[TAP][%ld] Deselecting the item. Bailing out", v197, 0xCu);
          MEMORY[0x24C1FE850](v197, -1, -1);
        }

        v198 = (v310[0])();
        v199 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v198 deselectItemAtIndexPath:v199 animated:1];
        swift_unknownObjectRelease();

        v153 = v196;
      }

      else
      {
        v200 = v330;
        if (v195)
        {
          v201 = swift_slowAlloc();
          *v201 = 134217984;
          *(v201 + 4) = v326;
          _os_log_impl(&dword_2493AC000, v193, v194, "[TAP][%ld] Cancelling the copy", v201, 0xCu);
          MEMORY[0x24C1FE850](v201, -1, -1);
        }

        [v138 cancel];
        swift_unknownObjectRelease();

        v153 = v200;
      }

      goto LABEL_103;
    }
  }

  v139 = &selRef_initWithFrame_;
  if ([v85 isFolder])
  {
    if (![v85 isBrowsable])
    {
LABEL_52:
      swift_unknownObjectRetain();
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *&aBlock = v143;
        *v142 = 134218242;
        *(v142 + 4) = v326;
        *(v142 + 12) = 2080;
        v144 = [v85 isFolder];
        v145 = v144 == 0;
        if (v144)
        {
          v146 = 0x6C626173776F7262;
        }

        else
        {
          v146 = 0x656C626164616572;
        }

        v147 = v88;
        if (v145)
        {
          v148 = 0xE800000000000000;
        }

        else
        {
          v148 = 0xE900000000000065;
        }

        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &aBlock);
        v88 = v147;

        *(v142 + 14) = v149;
        _os_log_impl(&dword_2493AC000, v140, v141, "[TAP][%ld] Item is not %s. Bailing out.", v142, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v143);
        MEMORY[0x24C1FE850](v143, -1, -1);
        MEMORY[0x24C1FE850](v142, -1, -1);
      }

      v150 = v330;
      v151 = [v85 displayName];
      if (!v151)
      {
        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = MEMORY[0x24C1FAD20](v152);
      }

      [v85 isFolder];
      DOCAlertItemIsNotReadable();
      swift_unknownObjectRelease();

      goto LABEL_63;
    }
  }

  else if (([v85 isReadable] & 1) == 0)
  {
    goto LABEL_52;
  }

  v172 = [v85 isFolder];
  if (v172)
  {
    v173 = v331;
    v174 = *&v331[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v85;
    v319 = v85;
    swift_unknownObjectRetain();
    DOCAnalyticsActionEvent.FileProvider.init(nodes:)(inited);
    LODWORD(v322) = v338;
    v176 = objc_opt_self();
    v177 = [v176 mainBundle];

    v178 = (*((*v89 & *v173) + 0xA68))();
    v179 = [v178 identifier];

    v180 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v179);
    v181 = v333[1];
    v182 = (*((*v89 & *v173) + 0xBD8))(v180);
    if (v182 < 4)
    {
      v183 = 0x3020201u >> (8 * v182);
      v184 = [v176 mainBundle];
      v185 = [v184 bundleIdentifier];

      if (v185)
      {
        v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v188 = v187;
      }

      else
      {
        v186 = 0;
        v188 = 0;
      }

      v202 = v174;
      DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v202, v186, v188, &aBlock);
      v203 = aBlock;
      v204 = v202;
      DOCAnalyticsActionEvent.SortMode.init(configuration:)(v204, v341);
      v205 = v341[0];
      v206 = v204;
      DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v206, v333);
      v207 = v333[0];
      v208 = [v206 hostIdentifier];
      v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v211 = v210;

      v341[0] = 0xD000000000000032;
      v341[1] = 0x8000000249BCDC20;
      v341[2] = v209;
      v341[3] = v211;
      v342 = 4;
      v343 = v203;
      v344 = v322;
      v345 = v181;
      v346 = v183;
      v347 = v205;
      v348 = v207;
      v212 = Logger.logObject.getter();
      v213 = static os_log_type_t.default.getter();
      v214 = os_log_type_enabled(v212, v213);
      v215 = v326;
      if (v214)
      {
        v216 = swift_slowAlloc();
        *v216 = 134217984;
        *(v216 + 4) = v215;
        _os_log_impl(&dword_2493AC000, v212, v213, "[TAP][%ld] Sending Analytics event.", v216, 0xCu);
        MEMORY[0x24C1FE850](v216, -1, -1);
      }

      v88 = v318;
      v132 = v315;
      v85 = v319;
      v133 = v328;
      if (one-time initialization token for shared != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_91;
    }

LABEL_175:
    *&aBlock = v182;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

LABEL_92:
  v217 = v331;
  v218 = *((*v89 & *v331) + 0x1280);
  v219 = ((v218)(v172) & 1) != 0 || (*((*v89 & *v217) + 0xBD8))() == 3;
  LODWORD(v322) = v219;
  v220 = *(v217 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (![v220 isFilesApp] || (v218() & 1) == 0 && (*((*v89 & *v331) + 0xBD8))() == 3 || (objc_msgSend(v85, v139[65]) & 1) != 0)
  {
    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.default.getter();
    v223 = os_log_type_enabled(v221, v222);
    v224 = v326;
    if (v223)
    {
      v225 = swift_slowAlloc();
      *v225 = 134217984;
      *(v225 + 4) = v224;
      _os_log_impl(&dword_2493AC000, v221, v222, "[TAP][%ld] Validate Node Selection and perform did pick", v225, 0xCu);
      MEMORY[0x24C1FE850](v225, -1, -1);
    }

    v226 = v314;
    v133(v314, v327, v88);
    v227 = (*(v132 + 80) + 40) & ~*(v132 + 80);
    v228 = swift_allocObject();
    *(v228 + 16) = v224;
    *(v228 + 24) = v322;
    v229 = v316;
    *(v228 + 32) = v316;
    v311(v228 + v227, v226, v88);
    v230 = *((*v89 & *v331) + 0x18E0);
    v231 = v229;
    v232 = partial apply for closure #4 in DOCItemCollectionViewController._handlePrimaryAction(_:at:);
    v233 = v85;
    v234 = v228;
    goto LABEL_102;
  }

  v235 = Logger.logObject.getter();
  v236 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    *v237 = 134217984;
    *(v237 + 4) = v326;
    _os_log_impl(&dword_2493AC000, v235, v236, "[TAP][%ld] Triggering action in Files for a non folder item.", v237, 0xCu);
    MEMORY[0x24C1FE850](v237, -1, -1);
  }

  v238 = [v85 doc_eligibleActions];
  type metadata accessor for FPAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v239 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v240 = *MEMORY[0x277CC6060];
  v241 = specialized Set.contains(_:)(*MEMORY[0x277CC6060], v239);
  v242 = v331;
  if ((v241 & 1) == 0 || (v243 = (*((*v89 & *v331) + 0xC70))()) == 0 || (v244 = [v243 isWritable], swift_unknownObjectRelease(), !v244) || (objc_msgSend(v85, sel_isDownloading) & 1) != 0 || (v245 = DOCNode.fpfs_syncFetchFPItem()()) == 0)
  {
    if ((specialized Set.contains(_:)(v240, v239) & 1) == 0)
    {
      goto LABEL_128;
    }

    v250 = (*((*v89 & *v242) + 0xA68))();
    v251 = [v250 identifier];

    v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v254 = v253;
    if (v252 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v254 == v255)
    {
    }

    else
    {
      v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v256 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    if (([v85 isDownloading] & 1) == 0)
    {
      v257 = DOCNode.fpfs_syncFetchFPItem()();
      if (v257)
      {
        v258 = v257;

        v260 = (*((*v89 & *v242) + 0xE8))(v259);
        if (v260)
        {
          [v260 didTapLocationOf_];
          swift_unknownObjectRelease();
        }

        v261 = Logger.logObject.getter();
        v262 = static os_log_type_t.default.getter();
        v263 = os_log_type_enabled(v261, v262);
        v88 = v318;
        v264 = v330;
        if (v263)
        {
          v265 = swift_slowAlloc();
          *v265 = 134217984;
          *(v265 + 4) = v326;
          _os_log_impl(&dword_2493AC000, v261, v262, "[TAP][%ld] Unarchiving selected item from RECENTS. Fetching Parent", v265, 0xCu);
          MEMORY[0x24C1FE850](v265, -1, -1);
        }

        v266 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v267 = v314;
        v133(v314, v327, v88);
        v268 = (v315[80] + 56) & ~v315[80];
        v269 = swift_allocObject();
        v270 = v326;
        *(v269 + 16) = v266;
        *(v269 + 24) = v270;
        *(v269 + 32) = v258;
        *(v269 + 40) = v322;
        v271 = v316;
        *(v269 + 48) = v316;
        v311(v269 + v268, v267, v88);
        v336 = partial apply for closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:);
        v337 = v269;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v335 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
        *(&v335 + 1) = &block_descriptor_1070;
        v272 = _Block_copy(&aBlock);
        v273 = v258;
        v274 = v271;

        [v85 fetchParent_];
        _Block_release(v272);

        swift_unknownObjectRelease();
        v153 = v264;
        goto LABEL_103;
      }
    }

LABEL_128:
    v275 = Logger.logObject.getter();
    v276 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v275, v276))
    {
      v277 = swift_slowAlloc();
      *v277 = 134217984;
      *(v277 + 4) = v326;
      _os_log_impl(&dword_2493AC000, v275, v276, "[TAP][%ld] Preparing Quick Look for the preview", v277, 0xCu);
      MEMORY[0x24C1FE850](v277, -1, -1);
    }

    (*((*v89 & *v242) + 0x820))(&aBlock);
    v278 = *(&v335 + 1);
    v279 = v315;
    if (*(&v335 + 1))
    {
      v280 = v336;
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v335 + 1));
      v281 = (*(v280 + 4))(v85, v278, v280);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v282 = v326;
      if (!v281)
      {

        v284 = (*((*v89 & *v242) + 0xCB8))(v283);
        v88 = v318;
        goto LABEL_138;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd);
      v282 = v326;
    }

    DOCNode.parentIdentifierKey.getter(&v338);
    v88 = v318;
    if (*(&v339 + 1))
    {
      aBlock = v338;
      v335 = v339;
      v336 = v340;
      v285 = *(v242 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      v133 = v328;
      if (!v285)
      {
        __break(1u);
        goto LABEL_175;
      }

      v284 = (*((*v89 & *v285) + 0x250))(&aBlock);
      outlined destroy of AnyHashable(&aBlock);
      goto LABEL_139;
    }

    outlined destroy of CharacterSet?(&v338, &_ss11AnyHashableVSgMd);
    v284 = MEMORY[0x277D84F90];
LABEL_138:
    v133 = v328;
LABEL_139:
    if (![v220 useSharedQuickLook])
    {
      goto LABEL_160;
    }

    v286 = [v220 sceneIdentifier];
    if (!v286)
    {
      if (one-time initialization token for Source != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)();
LABEL_160:

LABEL_164:
      v300 = Logger.logObject.getter();
      v301 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v300, v301))
      {
        v302 = swift_slowAlloc();
        *v302 = 134217984;
        *(v302 + 4) = v282;
        _os_log_impl(&dword_2493AC000, v300, v301, "[TAP][%ld] Validate Node Selection and perform did pick", v302, 0xCu);
        MEMORY[0x24C1FE850](v302, -1, -1);
      }

      v303 = v314;
      v133(v314, v327, v88);
      v304 = (v279[80] + 40) & ~v279[80];
      v305 = swift_allocObject();
      *(v305 + 16) = v282;
      *(v305 + 24) = v322;
      v306 = v316;
      *(v305 + 32) = v316;
      v311(v305 + v304, v303, v88);
      v230 = *((*v89 & *v242) + 0x18E0);
      v307 = v306;
      v232 = partial apply for closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:);
      v233 = v85;
      v234 = v305;
LABEL_102:
      v230(v233, 0, v232, v234);
      swift_unknownObjectRelease();

      v153 = v330;
      goto LABEL_103;
    }

    v287 = one-time initialization token for mapTable;
    v288 = v286;
    if (v287 != -1)
    {
      v309 = v288;
      swift_once();
      v288 = v309;
    }

    v289 = static DOCPreviewController.mapTable;
    v290 = v288;
    v291 = [v289 objectForKey_];
    if (!v291)
    {
      v292 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
      v291 = DOCPreviewController.init()();
      [v289 setObject:v291 forKey:v290];
    }

    v88 = v284 & 0xFFFFFFFFFFFFFF8;
    if (v284 >> 62)
    {
      v293 = __CocoaSet.count.getter();
    }

    else
    {
      v293 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v132 = 0;
    v139 = (v284 & 0xC000000000000001);
    while (1)
    {
      if (v293 == v132)
      {
        v296 = 0;
LABEL_163:
        v297 = v293 == v132;
        (*((*v89 & *v291) + 0x248))(1);
        v298 = *((*v89 & *v291) + 0x1D8);
        v242 = v331;
        v299 = swift_unknownObjectRetain();
        v298(v299, &protocol witness table for DOCItemCollectionViewController);
        aBlock = v284;
        LOBYTE(v335) = 0;
        (*((*v89 & *v291) + 0x1C8))(&aBlock, v296, v297);

        outlined consume of DOCPreviewSource?(aBlock, *(&aBlock + 1), v335);
        v88 = v318;
        v279 = v315;
        v282 = v326;
        v133 = v328;
        goto LABEL_164;
      }

      if (v139)
      {
        v133 = MEMORY[0x24C1FC540](v132, v284);
      }

      else
      {
        if (v132 >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          swift_once();
LABEL_91:
          specialized DOCAnalyticsManager.sendEvent(_:)(v341, static DOCAnalyticsManager.shared);
          v172 = outlined destroy of DOCAnalyticsActionEvent(v341);
          goto LABEL_92;
        }

        v133 = *(v284 + 8 * v132 + 32);
        swift_unknownObjectRetain();
      }

      v294 = DOCNode.isEqualTo(node:)();
      swift_unknownObjectRelease();
      if (v294)
      {
        v296 = v132;
        goto LABEL_163;
      }

      if (__OFADD__(v132++, 1))
      {
        goto LABEL_171;
      }
    }
  }

  v246 = v245;

  v247 = Logger.logObject.getter();
  v248 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v247, v248))
  {
    v249 = swift_slowAlloc();
    *v249 = 134217984;
    *(v249 + 4) = v326;
    _os_log_impl(&dword_2493AC000, v247, v248, "[TAP][%ld] Unarchiving selected item.", v249, 0xCu);
    MEMORY[0x24C1FE850](v249, -1, -1);
  }

  DOCItemCollectionViewController.unarchiveSelectedItem(_:)(v246);
  v150 = v330;
  if (v322)
  {
    v323(v330, v88);

    return swift_unknownObjectRelease();
  }

  v308 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v316 deselectItemAtIndexPath:v308 animated:1];
  swift_unknownObjectRelease();

LABEL_63:
  v153 = v150;
LABEL_103:
  v171 = v88;
  return (v323)(v153, v171);
}

id DOCItemCollectionViewController._multitaskingDragExclusionRects()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))())
  {
    return MEMORY[0x277D84F90];
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result safeAreaInsets];
  v5 = v4;
  v7 = v6;

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v5, v7);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = (*((*v1 & *v0) + 0x11C0))();
  if (v24)
  {
    (*(*v24 + 160))(v29);

    v17 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, *&v29[9], *&v29[10]);
    v19 = v25;
    v21 = v26;
    v23 = v27;
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v29);
  }

  v28 = [objc_opt_self() valueWithCGRect_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  result = swift_allocObject();
  *(result + 1) = xmmword_249BA0290;
  *(result + 4) = v28;
  return result;
}

uint64_t static DOCItemCollectionViewController.__debug_last_action_id.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static DOCItemCollectionViewController.__debug_last_action_id = a1;
  return result;
}

void closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void *a7, uint64_t a8)
{
  v29 = a8;
  v30 = a7;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && !a2)
    {
      v28 = Strong;
      if ([swift_unknownObjectRetain() isWritable])
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.UI);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = v20;
          v23 = v21;
          *v21 = 134217984;
          *(v21 + 4) = a4;
          _os_log_impl(&dword_2493AC000, v19, v22, "[TAP][%ld] Parent is writable, unarchiving...", v21, 0xCu);
          MEMORY[0x24C1FE850](v23, -1, -1);
        }

        DOCItemCollectionViewController.unarchiveSelectedItem(_:)(a5);
      }

      if ((a6 & 1) == 0)
      {
        (*(v14 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v13);
        v24 = (*(v14 + 80) + 24) & ~*(v14 + 80);
        v25 = swift_allocObject();
        v26 = v30;
        *(v25 + 16) = v30;
        (*(v14 + 32))(v25 + v24, &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
        v27 = v26;
        DOCRunInMainThread(_:)();
      }

      swift_unknownObjectRelease();
      Strong = v28;
    }
  }
}

uint64_t closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v19 = a3;
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v11, v12, "[TAP][%ld] Validation finished", v13, 0xCu);
    a3 = v19;
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2 & 1;
  *(v15 + 24) = a3;
  (*(v7 + 32))(v15 + v14, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = a3;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v5 = [a2 cellForItemAtIndexPath_];

    if (v5)
    {
      [v5 layoutIfNeeded];
    }

    v6 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a2 deselectItemAtIndexPath:v6 animated:1];
  }
}

void DOCItemCollectionViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2)
{
  type metadata accessor for DOCItemCollectionCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x228);
    v5 = a2;
    v4();
  }
}

uint64_t DOCItemCollectionViewController.collectionView(_:shouldSpringLoadItemAt:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xBD8);
  if (!v8())
  {
    return 0;
  }

  if (v8() == 3)
  {
    v9 = [a1 indexPathsForSelectedItems];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for IndexPath();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v10) = specialized Sequence<>.contains(_:)(a2, v11);

      if (v10)
      {
        return 0;
      }
    }
  }

  v13 = *((*v7 & *v3) + 0x17B0);

  return v13(a2, a3);
}

Swift::Bool __swiftcall DOCItemCollectionViewController.shouldAllowSelection()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1298))() & 1) == 0 || ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget] & 1) != 0 || ((*((*v1 & *v0) + 0x1448))())
  {
    LOBYTE(v2) = 0;
    return v2;
  }

  v3 = [v0 presentedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSearchController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      if ([v6 isActive])
      {
        if ([v6 isActive])
        {
          v8 = [*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] viewIfLoaded];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 isHidden];

            if (v10)
            {
              [v6 setActive_];
            }
          }
        }

        if ([v6 isActive] && (v11 = objc_msgSend(*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController], sel_viewIfLoaded)) != 0)
        {
          v12 = v11;
          v13 = [v11 isHidden];

          LOBYTE(v2) = v13 ^ 1;
        }

        else
        {

          LOBYTE(v2) = 1;
        }

        return v2;
      }
    }
  }

  if ((*((*v1 & *v0) + 0xBD8))() == 3)
  {
    v2 = (*((*v1 & *v0) + 0xA98))();
    if (v2)
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      LOBYTE(v15) = (*(v15 + 40))(v0, ObjectType, v15);
      swift_unknownObjectRelease();
      LOBYTE(v2) = v15 & 1;
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

void DOCItemCollectionViewController.collectionView(_:didBeginMultipleSelectionInteractionAt:)(void *a1)
{
  if (!DOCItemCollectionViewController.shouldAllowSelection()())
  {
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x148))())
    {
      return;
    }

    v5 = sel_setEditing_;
    v6 = a1;
    v7 = 0;

    goto LABEL_11;
  }

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 1;
  if (![a1 isEditing] || (v3 = MEMORY[0x277D85000], (v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xBB8))()) == 0))
  {
LABEL_13:
    v7 = [a1 isEditing];
    v5 = sel_setEditing_animated_;
    v6 = v1;

LABEL_11:
    [v6 v5];
    return;
  }

  v8 = v4;
  if ((DOCSearchController.isActiveShowingNoResults.getter() & 1) == 0)
  {

    goto LABEL_13;
  }

  (*((*v3 & *v8) + 0x360))(0, 0, 1);
  [v1 setEditing:objc_msgSend(a1 animated:{sel_isEditing), 1}];
}

uint64_t DOCItemCollectionViewController.indexPathForPreferredFocusedView(in:)@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v49 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v51 = &v48 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v50 = &v48 - v26;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v27, v28);
  v31 = &v48 - v30;
  v32 = MEMORY[0x277D85000];
  v33 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v29);
  (*((*v32 & *v1) + 0xE30))();
  v34 = *(v18 + 48);
  if (v34(v16, 1, v17) != 1)
  {
    v48 = v8;
    v35 = v16;
    v36 = *(v18 + 32);
    v36(v31, v35, v17);
    UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v31, 0xD00000000000001FLL, 0x8000000249BDEE90, v12);
    (*(v18 + 8))(v31, v17);
    if (v34(v12, 1, v17) != 1)
    {

      v45 = v50;
      v36(v50, v12, v17);
      v43 = v53;
      v36(v53, v45, v17);
      goto LABEL_11;
    }

    v16 = v12;
    v8 = v48;
  }

  v37 = outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd);
  v38 = (*((*MEMORY[0x277D85000] & *v33) + 0xF0))(v37);
  (*(*v38 + 104))(v38);

  if (v34(v8, 1, v17) != 1)
  {
    v39 = v8;
    v40 = *(v18 + 32);
    v41 = v51;
    v40(v51, v39, v17);
    v42 = v52;
    UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v41, 0xD000000000000024, 0x8000000249BDEE60, v52);

    (*(v18 + 8))(v41, v17);
    if (v34(v42, 1, v17) == 1)
    {
      v8 = v42;
      goto LABEL_8;
    }

    v46 = v49;
    v40(v49, v42, v17);
    v43 = v53;
    v40(v53, v46, v17);
LABEL_11:
    v44 = 0;
    return (*(v18 + 56))(v43, v44, 1, v17);
  }

LABEL_8:
  v43 = v53;
  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
  v44 = 1;
  return (*(v18 + 56))(v43, v44, 1, v17);
}

void closure #1 in DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0xB08))();
    swift_beginAccess();
    v6 = *(v5 + 104);

    v10 = v2;
    v11 = v1;
    MEMORY[0x28223BE20](v7, v8);
    v9[2] = &v10;
    LOBYTE(v5) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0, v9, v6);

    v10 = v2;
    v11 = v1;
    if (v5)
    {
      DOCItemCollectionViewController.deleteColumn(columnType:)(&v10);
    }

    else
    {
      DOCItemCollectionViewController.addColumn(columnType:)(&v10);
    }
  }
}

void closure #2 in DOCItemCollectionViewController.configure(sectionHeader:with:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *a1) + 0x410))(&v12);
    v5 = v13;
    if (v13)
    {
      v6 = v14;
      v7 = v12;
      v8 = *(*v14 + 136);
      v9 = a1;
      LOBYTE(v8) = v8();
      (*(*v6 + 144))((v8 & 1) == 0);
      v10 = (*((*v4 & *v9) + 0x458))((v8 & 1) == 0);
      v11 = (*((*v4 & *v3) + 0xD60))(v10);
      LOWORD(v12) = 2;
      DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v11, &v12, 0);

      outlined consume of DOCCollectionSection?(v7, v5);
    }

    else
    {
    }
  }
}

void closure #3 in DOCItemCollectionViewController.configure(sectionHeader:with:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v2;
    DOCItemCollectionViewController.sortOption(changeTo:)(&v5);
  }
}

uint64_t DOCItemCollectionViewController.createCellIdentifier.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier;
  if ((v1 & 1) == 0)
  {
    v3 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier;
  }

  v4 = *(v0 + *v3);

  if (!(*((*MEMORY[0x277D85000] & *v0) + 0xBD8))(v5))
  {

    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  }

  return v4;
}

void *DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 16);
  swift_getObjectType();

  DOCNode.identifierKey.getter();
  v111 = a2;
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v10 & 1) != 0))
  {
    a2 = *(*(v8 + 56) + 8 * v9);
    swift_unknownObjectRetain();
    outlined destroy of AnyHashable(&aBlock);
  }

  else
  {

    outlined destroy of AnyHashable(&aBlock);
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  Document = DOCNode.isCreateDocumentSentinel()();
  v12 = MEMORY[0x277D85000];
  if (Document || (*((*MEMORY[0x277D85000] & *v3) + 0xBD8))() != 2)
  {
    v15 = DOCItemCollectionViewController.createCellIdentifier.getter();
    v14 = v16;
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
    v14 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier + 8);

    v15 = v13;
  }

  v17 = MEMORY[0x24C1FAD20](v15, v14);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:isa];

  type metadata accessor for DOCItemCollectionCell();
  v112 = v19;
  v20 = swift_dynamicCastClassUnconditional();
  (*((*v12 & *v20) + 0x258))([*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget] ^ 1);
  v21 = *((*v12 & *v20) + 0xF0);
  v22 = swift_unknownObjectRetain();
  v21(v22, &protocol witness table for DOCItemCollectionViewController);
  v23 = DOCNode.isCreateDocumentSentinel()();
  v110 = a3;
  if (v23)
  {
    v25 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCellContent(0)) init];
    DOCItemCollectionViewController.updateContent(_:)(v25);
  }

  else
  {
    v26 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
    v27 = MEMORY[0x28223BE20](v23, v24);
    v25 = (*(*v26 + 176))(a2, partial apply for closure #1 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v27);
  }

  v28 = *((*v12 & *v4) + 0xBF8);
  v29 = v28();
  if (v29)
  {
    v30 = v29;
    swift_unknownObjectRetain();
    outlined consume of (progress: NSProgress, node: DOCNode)?(v30);
    swift_getObjectType();
    LOBYTE(v30) = DOCNode.isEqualTo(node:)();
    v31 = swift_unknownObjectRelease();
    if (v30)
    {
      v29 = (v28)(v31);
      if (v29)
      {
        v32 = v29;
        v33 = v29;
        outlined consume of (progress: NSProgress, node: DOCNode)?(v32);
        v29 = v32;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = (*((*v12 & *v25) + 0x540))(v29);
  v35 = (*((*v12 & *v4) + 0xC10))(v34);
  if (v36)
  {
    v37 = v35;
    v38 = *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    swift_getObjectType();
    v39 = v38;
    v40 = a1;
    v41 = v39;
    [v39 setHidden_];
    swift_unknownObjectRelease();

    a1 = v40;
    v12 = MEMORY[0x277D85000];
  }

  else
  {
    [*(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setHidden_];
  }

  (*((*v12 & *v20) + 0x210))(v25);
  type metadata accessor for DOCItemCollectionOutlineCell();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
LABEL_26:
    v83 = v112;
    v84 = [a1 indexPathsForSelectedItems];
    if (v84)
    {
      type metadata accessor for IndexPath();
      v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v84) = specialized Sequence<>.contains(_:)(v110, v85);
    }

    [v20 setSelected_];
    v86 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation);
    if (!v86)
    {
      swift_unknownObjectRelease();
LABEL_45:

      return v20;
    }

    v87 = v86;
    v88 = [v111 fpfs_fpItem];
    if (!v88)
    {
      swift_unknownObjectRelease();
LABEL_44:

      goto LABEL_45;
    }

    v89 = v88;
    v90 = [v88 itemIdentifier];

    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
    if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
    {
    }

    else
    {
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v95 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v96 = [*(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
    if (v96)
    {
      v97 = v96;
      type metadata accessor for DOCImageViewContainerView();
      v98 = swift_dynamicCastClass();
      if (!v98)
      {
        swift_unknownObjectRelease();

        return v20;
      }

      v99 = v98;
      if (_UISolariumEnabled())
      {
        (*((*MEMORY[0x277D85000] & *v99) + 0x98))();
        v113 = objc_opt_self();
        v100 = swift_allocObject();
        v101 = v87;
        v100[2] = v99;
        v100[3] = v111;
        v100[4] = v4;
        v100[5] = v20;
        v118 = partial apply for closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:);
        v119 = v100;
        aBlock = MEMORY[0x277D85DD0];
        v115 = 1107296256;
        v116 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v117 = &block_descriptor_1307;
        v102 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v103 = v4;
        v104 = v83;
        v105 = v97;

        [v113 performAfterCATransactionCommits_];

        _Block_release(v102);
        swift_unknownObjectRelease();
        return v20;
      }

      swift_unknownObjectRelease();

      goto LABEL_43;
    }

LABEL_40:
    swift_unknownObjectRelease();
LABEL_43:

    goto LABEL_44;
  }

  v43 = v42;
  v107 = a1;
  v108 = v25;
  v109 = v20;
  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v45 = *(v43 + v44);
  v46 = *((*v12 & *v4) + 0xB08);
  v106 = v112;
  v47 = v45;
  v48 = v46();
  swift_beginAccess();
  v49 = *(v48 + 184);

  (*((*MEMORY[0x277D85000] & *v47) + 0x3B8))(v49);

  v50 = *(v43 + v44);
  v51 = v46();
  swift_beginAccess();
  v52 = *(v51 + 80);
  v54 = *(v51 + 88);
  v53 = *(v51 + 96);
  v56 = *(v51 + 104);
  v55 = *(v51 + 112);

  LOBYTE(aBlock) = v52;
  v115 = v54;
  v57 = MEMORY[0x277D85000];
  v116 = v53;
  v117 = v56;
  v118 = v55;
  (*((*MEMORY[0x277D85000] & *v50) + 0x418))(&aBlock);

  v58 = *(v43 + v44);
  result = [v4 view];
  if (result)
  {
    v60 = result;
    [result bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v120.origin.x = v62;
    v120.origin.y = v64;
    v120.size.width = v66;
    v120.size.height = v68;
    Width = CGRectGetWidth(v120);
    v70 = (*((*v57 & *v4) + 0xB20))();
    if (v70)
    {
      v71 = v70;
      [v70 contentOffset];
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v20 = v109;
    v25 = v108;
    v74 = (*((*v57 & *v4) + 0x1010))();
    [v74 safeAreaInsets];
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;

    aBlock = Width;
    v115 = v73;
    v116 = v76;
    v117 = v78;
    v118 = v80;
    v119 = v82;
    (*((*v57 & *v58) + 0x2B8))(&aBlock);

    a1 = v107;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = a3;
  v15 = a4;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v13;
  v17[5] = a2;
  v17[6] = v14;
  v17[7] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v17);
}

uint64_t closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v10 = *((*MEMORY[0x277D85000] & *a4) + 0xA8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:);

  return v13(a5);
}

uint64_t closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v3, v2);
}

uint64_t closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);
  v8 = v3;
  v9 = v2;
  v7(0, partial apply for closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v5, partial apply for closure #2 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v6);

  v10 = v0[1];

  return v10();
}

id closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + 40);
  v5 = *(a4 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      v8 = *(v6 - 3);
      if (v8)
      {

        return v8;
      }

      break;
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v10 init];
}

void *DOCItemCollectionViewController._collectionView(_:canEditItemAt:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a2, v7, &_s10Foundation9IndexPathVSgMd);
  v17 = *(v13 + 48);
  result = v17(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x18A0))(v7);
    v19 = *(v13 + 8);
    v19(v7, v12);
    if (v17(v11, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd);
      v20 = 0;
      return (v20 & 1);
    }

    (*(v13 + 32))(v16, v11, v12);
    v21 = MEMORY[0x277D85000];
    result = (*((*MEMORY[0x277D85000] & *v2) + 0xD88))(v16, 0);
    if (result)
    {
      v22 = result;
      v23 = DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(result);
      v24 = (*((*v21 & *v2) + 0x18C0))(v22);
      swift_unknownObjectRelease();
      v19(v16, v12);
      v20 = v24 & (v23 ^ 1);
      return (v20 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.toggleNode(_:nodes:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0xBD8))();
  if (result != 2)
  {
    return result;
  }

  v7 = (*((*v5 & *v2) + 0x1010))();
  v8 = [v7 visibleCells];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = a2;
  v29 = a1;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_21:
  }

LABEL_20:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_4:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1FC540](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for DOCItemCollectionOutlineCell();
    v15 = swift_dynamicCastClass();

    if (v15)
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_21;
    }
  }

  (*((*v5 & *v2) + 0x820))(v31, v16);
  v17 = v32;
  if (!v32)
  {
    return outlined destroy of CharacterSet?(v31, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd);
  }

  v18 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v19 = (*((*v5 & *v2) + 0xD60))();
  if (v19[2])
  {
    v20 = v19[4];
    v21 = v19[5];
    v22 = v19[6];
    v23 = v19[7];
    v24 = v19[8];

    v30[0] = v20;
    v30[1] = v21;
    v30[2] = v22;
    v30[3] = v23;
    v30[4] = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    v26 = *(v18 + 40);
    v27 = v2;
    v26(v28, v29, v30, partial apply for closure #2 in DOCItemCollectionViewController.toggleNode(_:nodes:), v25, v17, v18);

    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {

    __break(1u);
  }

  return result;
}

void closure #2 in DOCItemCollectionViewController.toggleNode(_:nodes:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 2)
  {
    v3 = (*((*v2 & *a1) + 0xB08))();
    swift_beginAccess();
    v4 = *(v3 + 88);

    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);

      v6 = [a1 traitCollection];
      v7 = [v6 horizontalSizeClass];

      if (v7 != 1)
      {
        DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(0, 0, v5);
        if (v5 < v8)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
          v9 = MEMORY[0x24C1FA8C0](0.5, 0.85, 0.0);
          MEMORY[0x28223BE20](v9, v10);
          *(swift_allocObject() + 16) = a1;
          v11 = a1;
          static UIView.animate(_:changes:completion:)();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in closure #2 in DOCItemCollectionViewController.toggleNode(_:nodes:)(void *a1, double a2)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xB08);
  v5 = v4();
  v4();
  swift_beginAccess();

  OutlineColumnData.withUpdatedSizeAt(_:size:)(0, &v18, a2);

  v6 = v18;
  swift_beginAccess();
  *(v5 + 80) = v6;
  v7 = v20;
  *(v5 + 88) = v19;
  *(v5 + 104) = v7;

  v9 = (*((*MEMORY[0x277D85000] & *a1) + 0xFC8))(v8);
  v10 = v4();
  swift_beginAccess();
  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = *(v10 + 96);
  v14 = *(v10 + 104);
  v15 = *(v10 + 112);

  LOBYTE(v18) = v11;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v18);

  v17 = (*((*MEMORY[0x277D85000] & *a1) + 0x1010))(v16);
  [v17 layoutIfNeeded];
}

uint64_t DOCItemCollectionViewController.data(forNodeCollectionShouldBeReloaded:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScrollPositionInfo(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v99 - v15;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isGathering];
  if (result)
  {
    return result;
  }

  v100 = v16;
  v101 = v12;
  v102 = v5;
  v103 = v4;
  v99 = v8;
  v24 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x17E0))();
  static os_signpost_type_t.begin.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v25 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  v105 = v25;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v26 = *(v18 + 8);
  v106 = v22;
  v107 = v18 + 8;
  v108 = v17;
  v104 = v26;
  v27 = v26(v22, v17);
  v109 = (*((*v24 & *v2) + 0x1338))(v27);
  v28 = *((*v24 & *v2) + 0xD60);
  v29 = v28();
  v30 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 8);
  v31 = *((*v24 & *v2) + 0xBD8);

  if (v31(v32) == 2 && ((*((*v24 & *v2) + 0xF10))() & 1) == 0)
  {
    v33 = (*((*v24 & *a1) + 0x290))();
  }

  else
  {
    v33 = (*((*v24 & *a1) + 0x258))();
  }

  v34 = (*((*v24 & *v2) + 0xCC0))(v33);
  v35 = (*((*v24 & *v2) + 0x1018))(v34);
  if (!v35)
  {
  }

  v36 = v35;
  v37 = (*((*v24 & *v2) + 0xCB8))();
  v38 = == infix(_:_:)(v37, v30);

  if ((v38 & 1) == 0)
  {

    v42 = v103;
    goto LABEL_18;
  }

  v40 = (v28)(v39);
  v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables20DOCCollectionSectionV_Tt1g5(v40, v29);

  v42 = v103;
  if ((v41 & 1) == 0)
  {
LABEL_18:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.UI);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v111[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BDEF10, v111);
      _os_log_impl(&dword_2493AC000, v51, v52, "DOCNodeCollectionDelegate %s reloading without animation", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    if ((*((*v24 & *v2) + 0xC58))())
    {
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
    }

    else
    {
      (*((*v24 & *v2) + 0x1820))();
    }

    goto LABEL_25;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.UI);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v111[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BDEF10, v111);
    _os_log_impl(&dword_2493AC000, v44, v45, "DOCNodeCollectionDelegate %s Skipping reloadCollection(), and instead updating cell contents since structure of items didn't change", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C1FE850](v47, -1, -1);
    MEMORY[0x24C1FE850](v46, -1, -1);
  }

  v48 = [v36 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*v24 & *v2) + 0x1828))(v49);

LABEL_25:
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal;
  v56 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal);
  if (v56 >> 62)
  {
    v57 = __CocoaSet.count.getter();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v36;
  if (v57 > 0 || (v58 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo, swift_beginAccess(), v59 = v2 + v58, v36 = v103, v60 = v100, outlined init with copy of DOCGridLayout.Spec?(v59, v100, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd), v61 = (*(v102 + 48))(v60, 1, v42), outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd), v61 != 1) || *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.UI);
    v63 = v2;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v110 = v100;
      *v66 = 134218498;
      v67 = *(v2 + v55);
      if (v67 >> 62)
      {
        v68 = __CocoaSet.count.getter();
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v102;
      *(v66 + 4) = v68;

      *(v66 + 12) = 2080;
      v70 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
      swift_beginAccess();
      v71 = v63 + v70;
      v72 = v101;
      outlined init with copy of DOCGridLayout.Spec?(v71, v101, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
      if ((*(v69 + 48))(v72, 1, v42))
      {
        outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
        v73 = 0x8000000249BDEF40;
        v74 = 0xD000000000000012;
      }

      else
      {
        v75 = v99;
        outlined init with copy of ScrollPositionInfo.ItemOffset(v72, v99, type metadata accessor for ScrollPositionInfo);
        outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
        v76 = ScrollPositionInfo.description.getter();
        v73 = v77;
        outlined destroy of RestorableSettings(v75, type metadata accessor for ScrollPositionInfo);
        v74 = v76;
      }

      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v110);

      *(v66 + 14) = v78;
      *(v66 + 22) = 2080;
      if (*(v63 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll))
      {
        v79 = [swift_unknownObjectRetain() description];
        swift_unknownObjectRelease();
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;
      }

      else
      {
        v82 = 0xE700000000000000;
        v80 = 0x65646F4E206F4ELL;
      }

      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v110);

      *(v66 + 24) = v83;
      _os_log_impl(&dword_2493AC000, v64, v65, "data(forNodeCollectionShouldBeReloaded) called. Forcing relayout: \n - enqueuedNodesToReveal.count: %ld\n enqueuedNodeScrollPositionInfo: %s\n enqueuedNodeToSelectAndScroll: %s ", v66, 0x20u);
      v84 = v100;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v84, -1, -1);
      MEMORY[0x24C1FE850](v66, -1, -1);
    }

    else
    {
    }

    [v36 layoutIfNeeded];
  }

  DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  __swift_project_value_buffer(v85, static Logger.UI);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v106;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v110 = v91;
    *v90 = 136315138;
    *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BDEF10, &v110);
    _os_log_impl(&dword_2493AC000, v86, v87, "%s - calling resolvePendingNodeContexts", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x24C1FE850](v91, -1, -1);
    MEMORY[0x24C1FE850](v90, -1, -1);
  }

  DOCItemCollectionViewController.resolvePendingNodeContexts()();
  (*((*v24 & *v2) + 0x1378))(v109, 0, 0);

  v93 = (*((*v24 & *v2) + 0xA68))(v92);
  v94 = *&v93[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  v95 = v93[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
  outlined copy of DOCFileProviderSourceType(v94);

  if (v95)
  {
    outlined consume of DOCFileProviderSourceType(v94);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v96 = [v2 viewIfLoaded];
    v97 = [v96 window];

    if (v97)
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
    outlined consume of DOCFileProviderSourceType(v94);
  }

  if ((*((*v24 & *v2) + 0x1448))())
  {
    DOCItemCollectionViewController._repositionRenamingCell()();
  }

  DOCItemCollectionViewController.updateInlineRenameIfNeeded()();
  v98 = (*((*v24 & *v2) + 0x9F8))();
  (*((*v24 & *v2) + 0xA00))(2);
  if (v98 != 2)
  {
    (*((*v24 & *v2) + 0xA30))(v98 & 1);
  }

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  return v104(v89, v108);
}

uint64_t DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(void *a1, void *a2)
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
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136446722;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDEF60, &v23);
    *(v11 + 12) = 2114;
    *(v11 + 14) = v7;
    *v12 = v7;
    *(v11 + 22) = 2082;
    v14 = v7;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_2493AC000, v9, v10, "[Content Unavailable] %{public}s: collection %{public}@ did encounter error %{public}s", v11, 0x20u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = a2;
  v20 = a2;
  v21 = v3;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v95 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v7);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for DispatchTime();
  v92 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16, v17);
  v91 = &v86 - v19;
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = 1;
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *a1) + 0xA68))(v18);
  v22 = [v21 identifier];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      v29 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
      if (v29)
      {
        [v29 setHidden_];
      }
    }
  }

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a1;
  aBlock[0] = a2;
  v31 = a2;
  v32 = a2;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPError);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = v101;
  v35 = (*((*v20 & *v33) + 0xA78))();
  if (!v35 || (v36 = [v35 fpfs_fpItem], swift_unknownObjectRelease(), !v36))
  {
LABEL_22:

    goto LABEL_23;
  }

  v34 = v34;
  v37 = [v34 userInfo];
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v38 + 16))
  {

LABEL_21:

    goto LABEL_22;
  }

  v87 = v36;
  v88 = v34;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {

    v36 = v87;
    v34 = v88;
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v38 + 56) + 32 * v41, aBlock);

  type metadata accessor for NSFileProviderItemIdentifier(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v70 = v88;
    goto LABEL_23;
  }

  v44 = v101;
  v45 = v88;
  v46 = [v88 code];

  if (v46 != -1005)
  {

    goto LABEL_23;
  }

  v47 = [v87 itemIdentifier];
  v86 = v44;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  if (v48 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v50 != v51)
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v52 = v88;
    if (v71)
    {
      goto LABEL_34;
    }

LABEL_23:
    v53 = _convertErrorToNSError(_:)();
    v54 = [v53 domain];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {

LABEL_30:
        closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(a2, v33);

        return;
      }
    }

    v60 = [v53 code];

    if (v60 == -2001)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v88 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v12 = 5;
      v62 = v89;
      v61 = v90;
      (*(v89 + 104))(v12, *MEMORY[0x277D85188], v90);
      v63 = v91;
      MEMORY[0x24C1FAA90](v15, v12);
      (*(v62 + 8))(v12, v61);
      v92 = *(v92 + 8);
      (v92)(v15, v99);
      v64 = swift_allocObject();
      *(v64 + 16) = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:);
      *(v64 + 24) = v30;
      aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
      aBlock[5] = v64;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1054;
      v65 = _Block_copy(aBlock);

      v66 = v93;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v67 = v95;
      v68 = v98;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v69 = v88;
      MEMORY[0x24C1FB940](v63, v66, v67, v65);
      _Block_release(v65);

      (*(v97 + 8))(v67, v68);
      (*(v94 + 8))(v66, v96);
      (v92)(v63, v99);
      return;
    }

    goto LABEL_30;
  }

  v52 = v88;
LABEL_34:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.UI);
  v73 = v87;
  v74 = v87;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v77 = 136446466;
    *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDEF60, aBlock);
    *(v77 + 12) = 2114;
    *(v77 + 14) = v74;
    *v78 = v73;
    v80 = v74;
    _os_log_impl(&dword_2493AC000, v75, v76, "%{public}s The parent item of this item collection no longer exists: %{public}@", v77, 0x16u);
    outlined destroy of CharacterSet?(v78, &_sSo8NSObjectCSgMd);
    v81 = v78;
    v52 = v88;
    MEMORY[0x24C1FE850](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x24C1FE850](v79, -1, -1);
    MEMORY[0x24C1FE850](v77, -1, -1);
  }

  v82 = v86;
  if ((*((*MEMORY[0x277D85000] & *v33) + 0x938))())
  {
    v84 = v83;
    ObjectType = swift_getObjectType();
    (*(v84 + 8))(ObjectType, v84);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = _convertErrorToNSError(_:)();
  v6 = [v4 augmentedErrorForError_];

  if (!v6)
  {
    v7 = a1;
    v6 = a1;
  }

  if ((*((*MEMORY[0x277D85000] & *a2) + 0xD0))())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    *(&v44 + 1) = type metadata accessor for DOCItemCollectionViewController(0);
    *&v43 = a2;
    v11 = *(v9 + 8);
    v12 = a2;
    v13 = v6;
    v11(&v43, v6, 0, 1, ObjectType, v9);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v43);
  }

  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v14 = [a2 viewIfLoaded];
  v15 = [v14 window];

  if (v15)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = MEMORY[0x24C1FAD20](v16, v18);

  v21 = [v19 initWithSuiteName_];

  if (!v21)
  {
    goto LABEL_21;
  }

  if ([v21 valueForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {

    outlined destroy of CharacterSet?(&v43, &_sypSgMd);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_21:
    return;
  }

  if (v40 != 1 || !DOCIsInternalBuild())
  {

    return;
  }

  v22 = _convertErrorToNSError(_:)();
  v23 = [v22 domain];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
LABEL_26:
      v29 = _convertErrorToNSError(_:)();
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      *&v43 = 0xD000000000000020;
      *(&v43 + 1) = 0x8000000249BE0B10;
      v30 = [v22 domain];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      MEMORY[0x24C1FAEA0](v31, v33);

      MEMORY[0x24C1FAEA0](0x20727245202D20, 0xE700000000000000);
      [v22 code];
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x24C1FAEA0](v34);

      MEMORY[0x24C1FAEA0](168442409, 0xE400000000000000);
      v35 = [v22 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = Dictionary.description.getter();
      v38 = v37;

      MEMORY[0x24C1FAEA0](v36, v38);

      v39 = MEMORY[0x24C1FAD20](v43, *(&v43 + 1));

      DOCPresentAlertForErrorWithForceHandler();

      goto LABEL_27;
    }
  }

  if ([v22 code] != -1000)
  {
    goto LABEL_26;
  }

LABEL_27:
}

uint64_t DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:)(void *a1, void *a2)
{
  result = [a1 isGathering];
  if ((result & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x1198))(2);
    (*((*v5 & *v2) + 0x10D8))(v6);
    specialized DOCItemCollectionViewController.updateOverlay(animated:)();
    DOCItemCollectionViewController.updateFooterViewFolderNode(_:)(a2);
    v7 = *((*v5 & *v2) + 0xA50);
    v8 = swift_unknownObjectRetain();
    v7(v14, v8);
    v9 = v14[3];
    outlined destroy of DOCItemCollectionConfiguration(v14);
    [v9 updateUnderlyingNodeToNode_];

    v10 = swift_unknownObjectRelease();
    (*((*v5 & *v2) + 0x12E0))(v10);
    DOCItemCollectionViewController.updateOutlineColumnsForCurrentSource()();
    specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v11 = [v2 viewIfLoaded];
    v12 = [v11 window];

    if (v12)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    swift_getObjectType();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:), v13);
  }

  return result;
}

void DOCItemCollectionViewController.updateFooterViewFolderNode(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
  if (v3)
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
    swift_beginAccess();
    v6 = *&v3[v5];
    swift_unknownObjectRetain();
    v7 = v3;
    v8 = specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(a1, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v3[v5];
      swift_unknownObjectRetain();
      if (specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(a1, v9))
      {
        *&v3[v5] = a1;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        DOCStatusFooterView.folderNode.didset(v9);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v10 = *(v1 + v2);
      *(v1 + v2) = 0;

      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
    }
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = v3;
    v5 = v3;

    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCItemCollectionViewController.updateLinkInteractions(_:)(a2);
  }
}

void DOCItemCollectionViewController.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v185 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v180 = &v164 - v16;
  v188 = type metadata accessor for IndexPath();
  v183 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v17);
  v184 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v181 = &v164 - v21;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.UI);
  v24 = a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v25 = v24;

  v176 = v23;
  v26 = Logger.logObject.getter();
  LOBYTE(v27) = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  v175 = v6;
  v182 = a4;
  v189 = a2;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v31._rawValue = swift_slowAlloc();
    rawValue = v31._rawValue;
    *v30 = 136316418;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
    *(v30 + 12) = 2080;
    v5 = v25;
    v32 = v25;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &rawValue);

    *(v30 + 14) = v37;
    v38 = v189;
    *(v30 + 22) = 2048;
    if (v38 >> 62)
    {
      goto LABEL_77;
    }

    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

    *(v30 + 24) = v39;

    *(v30 + 32) = 2048;
    a4 = v182;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v40 = __CocoaSet.count.getter();
    }

    else
    {
      v40 = *(a3 + 16);
    }

    *(v30 + 34) = v40;

    *(v30 + 42) = 2080;
    v41 = MEMORY[0x24C1FB0D0](a4, MEMORY[0x277D84F68] + 8);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &rawValue);

    *(v30 + 44) = v43;
    *(v30 + 52) = 1024;
    v44 = [v32 isGathering];

    *(v30 + 54) = v44;
    _os_log_impl(&dword_2493AC000, v26, v27, "DOCNodeCollectionDelegate %s nodeCollection: %s update: %ld replaceItemsByFormerID: %ld deletedItemIDs: %s isGathering: %{BOOL}d", v30, 0x3Au);
    swift_arrayDestroy();
    v45 = v31._rawValue;
    v29 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    MEMORY[0x24C1FE850](v45, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);

    v6 = v175;
    v25 = v5;
    a2 = v189;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  if ([v25 v29[489]])
  {
    return;
  }

  v46 = MEMORY[0x277D85000];
  v47 = (*((*MEMORY[0x277D85000] & *v6) + 0x1018))();
  if (!v47 || (v47, v48 = *((*v46 & *v6) + 0x820), v186 = (*v46 & *v6) + 2080, v187 = v48, v48(&rawValue), v49 = v195, v50 = outlined destroy of CharacterSet?(&rawValue, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd), !v49))
  {
    v52 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v52)
    {
      v53 = (*((*v46 & *v52) + 0x258))();
      (*((*v46 & *v6) + 0xCC0))(v53);
      return;
    }

LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v51 = (*((*v46 & *v6) + 0xF18))(v50);
  v171 = a4 >> 62;
  if ((v51 & 1) == 0)
  {
    if (a4 >> 62)
    {
      goto LABEL_79;
    }

    v54 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_20;
  }

  for (LODWORD(v179) = 0; ; LODWORD(v179) = v54 > 0)
  {
    v55 = (*v46 & *v6) + 4472;
    v173 = *((*v46 & *v6) + 0x1178);
    v172 = v55;
    v56 = v173();
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (!v57)
    {
      break;
    }

    __break(1u);
LABEL_79:
    v54 = __CocoaSet.count.getter();
LABEL_20:
    ;
  }

  v59 = (*v46 & *v6) + 4480;
  v170 = *((*v46 & *v6) + 0x1180);
  v169 = v59;
  v170(v58);
  v30 = v6;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v25;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    rawValue = v64;
    *v63 = 136315650;
    *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
    *(v63 + 12) = 1024;
    *(v63 + 14) = v179;
    *(v63 + 18) = 2048;
    *(v63 + 20) = v173();

    _os_log_impl(&dword_2493AC000, v60, v61, "DOCNodeCollectionDelegate %s animate: %{BOOL}d performingBatchUpdates: %ld", v63, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    v65 = v64;
    a2 = v189;
    MEMORY[0x24C1FE850](v65, -1, -1);
    v66 = v63;
    v25 = v62;
    MEMORY[0x24C1FE850](v66, -1, -1);
  }

  else
  {
  }

  v67 = (*(**(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool) + 200))(a2, 0, 0);
  v68 = MEMORY[0x277D85000];
  v69 = *((*MEMORY[0x277D85000] & *v30) + 0xD60);
  v178 = ((*MEMORY[0x277D85000] & *v30) + 3424);
  v165 = v69;
  v70 = (v69)(v67);
  a3 = (*v68 & *v30) + 3520;
  v167 = *((*v68 & *v30) + 0xDC0);
  v71 = v167(v70);
  v72 = *((*v68 & *v25) + 0x258);
  v166 = v25;
  v73 = v72(v71);
  v74 = (*((*v68 & *v30) + 0xCC0))(v73);
  v75 = *((*v68 & *v30) + 0xBD8);
  v76 = v75(v74);
  v174 = a2 >> 62;
  v177 = v30;
  v168 = a3;
  if (v76 != 2)
  {
    goto LABEL_31;
  }

  v187(&rawValue);
  v77 = v195;
  if (!v195)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v78 = v196;
  __swift_project_boxed_opaque_existential_1(&rawValue, v195);
  v79 = (*(v78 + 120))(v77, v78);
  v80 = __swift_destroy_boxed_opaque_existential_0(&rawValue);
  if (!v79)
  {
LABEL_31:
    v84 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 8);
    v85 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 16);
    v86 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 24);
    v87 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 25);
    rawValue = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);
    v193 = v84;
    v194 = v85;
    LOBYTE(v195) = v86;
    BYTE1(v195) = v87;
    a3 = *((*MEMORY[0x277D85000] & *v30) + 0xDB8);

    v197.value._rawValue = (a3)(v88);
    LOBYTE(v85) = DOCItemCollectionFPController.isStructureSimilar(to:)(v197);

    v32 = v193;

    if ((v85 & 1) == 0)
    {
      goto LABEL_38;
    }

    v32 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v32)
    {
      goto LABEL_38;
    }

    type metadata accessor for DOCNodeCollection();
    v89 = v166;
    v32 = v32;
    v90 = static NSObject.== infix(_:_:)();

    if ((v90 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_34:
    v91 = v189;

    v31._rawValue = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31._rawValue, v32))
    {
LABEL_52:

      goto LABEL_53;
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    rawValue = v93;
    *v92 = 136315394;
    *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
    *(v92 + 12) = 2048;
    if (v174)
    {
      goto LABEL_160;
    }

    v94 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
    *(v92 + 14) = v94;

    _os_log_impl(&dword_2493AC000, v31._rawValue, v32, "DOCNodeCollectionDelegate %s Item collection structure unchanged. Updating %ld items", v92, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x24C1FE850](v93, -1, -1);
    MEMORY[0x24C1FE850](v92, -1, -1);

LABEL_53:
    v26 = (v91 & 0xFFFFFFFFFFFFFF8);
    v93 = MEMORY[0x277D85000];
    if (v174)
    {
      if (v91 >= 0)
      {
        v31._rawValue = (v91 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v31._rawValue = v91;
      }

      if (__CocoaSet.count.getter() >= 1)
      {
        v185 = __CocoaSet.count.getter();
        if (v185)
        {
          goto LABEL_55;
        }

        v27 = MEMORY[0x277D84F90];
LABEL_116:
        v30 = v177;
        v31._rawValue = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v177) + 0x1828))(v27);
        v93 = v31._rawValue;

        goto LABEL_118;
      }
    }

    else
    {
      v185 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v185)
      {
LABEL_55:
        v30 = 0;
        v184 = (v91 & 0xC000000000000001);
        v5 = (v183 + 48);
        v98 = (v183 + 32);
        v27 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v184)
          {
            v32 = MEMORY[0x24C1FC540](v30, v91);
            v100 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v30 >= v26[2].isa)
            {
              goto LABEL_75;
            }

            v32 = *(v91 + 8 * v30 + 32);
            swift_unknownObjectRetain();
            v100 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              v39 = __CocoaSet.count.getter();
              goto LABEL_6;
            }
          }

          v31._rawValue = v26;
          v187(&rawValue);
          a3 = v195;
          if (!v195)
          {
            goto LABEL_162;
          }

          v101 = v196;
          __swift_project_boxed_opaque_existential_1(&rawValue, v195);
          v102 = *(v101 + 88);
          v103 = v101;
          v104 = v180;
          v102(v32, a3, v103);
          swift_unknownObjectRelease();
          v105 = v188;
          if ((*v5)(v104, 1, v188) == 1)
          {
            outlined destroy of CharacterSet?(v104, &_s10Foundation9IndexPathVSgMd);
            __swift_destroy_boxed_opaque_existential_0(&rawValue);
          }

          else
          {
            v32 = *v98;
            (*v98)(v181, v104, v105);
            __swift_destroy_boxed_opaque_existential_0(&rawValue);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
            }

            v107 = *(v27 + 16);
            v106 = *(v27 + 24);
            if (v107 >= v106 >> 1)
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v106 > 1, v107 + 1, 1, v27);
            }

            *(v27 + 16) = v107 + 1;
            (v32)(v27 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v107, v181, v188);
          }

          v91 = v189;
          ++v30;
          v99 = v100 == v185;
          a4 = v182;
          v26 = v31._rawValue;
          if (v99)
          {
            goto LABEL_116;
          }
        }
      }
    }

    (*((*v93 & *v30) + 0x1828))(0);
LABEL_118:
    if (!v174)
    {
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_128;
      }

LABEL_120:
      v137 = (*((*v93 & *v30) + 0xAE8))();
      if (v137)
      {
        v31._rawValue = v137;
        v32 = [v137 effectiveFullBrowser];

        v138 = [v32 effectiveBrowserViewController];
        if (v138)
        {
          v139 = v138;
          v31._rawValue = (*((*v93 & *v138) + 0xE8))();

          if (v31._rawValue)
          {
            type metadata accessor for DOCItemCollectionViewController(0);
            v140 = swift_dynamicCastClass();
            if (v140)
            {
              v91 = v140;
              v32 = v30;
              v141 = static NSObject.== infix(_:_:)();

              if (v141)
              {
                v31._rawValue = (*((*v93 & *v32) + 0xCB8))();
                DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(v31);
              }
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_128;
    }

    while (1)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_120;
      }

LABEL_128:
      if (v171)
      {
        if (__CocoaSet.count.getter() < 1)
        {
          goto LABEL_140;
        }
      }

      else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_140;
      }

      v142 = (*((*v93 & *v30) + 0x938))();
      if (v142)
      {
        v31._rawValue = v143;
        ObjectType = swift_getObjectType();
        (*(v31._rawValue + 1))(ObjectType, v31);
        v142 = swift_unknownObjectRelease();
      }

      v145 = (*((*v93 & *v30) + 0xAE8))(v142);
      if (v145)
      {
        v31._rawValue = v145;
        v32 = [v145 effectiveFullBrowser];

        v146 = [v32 effectiveBrowserViewController];
        if (v146)
        {
          v147 = v146;
          v31._rawValue = (*((*v93 & *v146) + 0xE8))();

          if (v31._rawValue)
          {
            type metadata accessor for DOCItemCollectionViewController(0);
            v148 = swift_dynamicCastClass();
            if (v148)
            {
              v91 = v148;
              v32 = v30;
              v149 = static NSObject.== infix(_:_:)();

              if (v149)
              {
                v31._rawValue = (*((*v93 & *v32) + 0xCB8))();
                DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(v31);
              }
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

LABEL_140:
      v92 = v30;
      v150 = v173();
      v57 = __OFSUB__(v150, 1);
      v151 = v150 - 1;
      if (v57)
      {
        __break(1u);
LABEL_160:
        v94 = __CocoaSet.count.getter();
        goto LABEL_37;
      }

      v170(v151);
      v32 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks;
      v31._rawValue = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks);
      v91 = *(v31._rawValue + 2);

      if (!v91)
      {
LABEL_145:

        *(v30 + v32) = MEMORY[0x277D84F90];

        v167(0);
        v154 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (v154)
        {
          type metadata accessor for DOCNodeCollection();
          v155 = v166;
          v156 = v154;
          v157 = static NSObject.== infix(_:_:)();

          if (v157)
          {
            *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
            DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
          }
        }

        DOCItemCollectionViewController.updateSectionHeaders()();
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
        v158 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
        if (v158)
        {
          v159 = v158;
          DOCStatusFooterView.updateQuotaLabel()();
        }

        DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
        DOCItemCollectionViewController.updateInlineRenameIfNeeded()();
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          rawValue = v163;
          *v162 = 136315138;
          *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
          _os_log_impl(&dword_2493AC000, v160, v161, "%s - calling resolvePendingNodeContexts", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x24C1FE850](v163, -1, -1);
          MEMORY[0x24C1FE850](v162, -1, -1);
        }

        DOCItemCollectionViewController.resolvePendingNodeContexts()();
        return;
      }

      v93 = 0;
      a3 = v31._rawValue + 40;
      while (v93 < *(v31._rawValue + 2))
      {
        v93 = (v93 + 1);
        v152 = *(a3 - 8);

        v152(v153);

        a3 += 16;
        if (v91 == v93)
        {
          goto LABEL_145;
        }
      }

      __break(1u);
    }
  }

  v81 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v81)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v82 = (*((*MEMORY[0x277D85000] & *v81) + 0x290))(v80);
  v32 = == infix(_:_:)(v82, v79);

  if (v32)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v75(v83) != 2)
  {
LABEL_82:
    v111 = v30;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    v114 = os_log_type_enabled(v112, v113);
    v181 = v111;
    if (v114)
    {
      v32 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      rawValue = v115;
      *v32 = 136315138;
      v116 = v111;
      v117 = *&v111[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];

      v118 = v189;
      if (!v117)
      {
LABEL_167:
        __break(1u);
        return;
      }

      v119 = (*((*MEMORY[0x277D85000] & *v117) + 0x290))();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v121 = MEMORY[0x24C1FB0D0](v119, v120);
      v123 = v122;

      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &rawValue);

      *(v32 + 4) = v124;
      _os_log_impl(&dword_2493AC000, v112, v113, "DOCNodeCollectionDelegate flat nodes %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x24C1FE850](v115, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);

      a3 = v181;
    }

    else
    {
      a3 = v111;

      v118 = v189;
    }

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v32 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      rawValue = v127;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
      _os_log_impl(&dword_2493AC000, v125, v126, "DOCNodeCollectionDelegate %s Item collection structure changed. Updating snapshot.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x24C1FE850](v127, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);
    }

    v128 = v165();
    LOWORD(rawValue) = v179;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v128, &rawValue, 0);

    if (v174)
    {
      goto LABEL_107;
    }

    v129 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v130 = a3;
    if (!v129)
    {
LABEL_108:
      v31._rawValue = MEMORY[0x277D84F90];
LABEL_109:
      v93 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v130) + 0x1828))(v31);

      a4 = v182;
      v30 = v177;
      v91 = v189;
      goto LABEL_118;
    }

LABEL_90:
    v131 = 0;
    v180 = (v118 & 0xC000000000000001);
    v179 = v118 & 0xFFFFFFFFFFFFFF8;
    v118 = v183 + 48;
    v178 = (v183 + 32);
    v31._rawValue = MEMORY[0x277D84F90];
    while (1)
    {
      if (v180)
      {
        v32 = MEMORY[0x24C1FC540](v131, v189);
        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v131 >= *(v179 + 16))
        {
          goto LABEL_106;
        }

        v32 = *(v189 + 8 * v131 + 32);
        swift_unknownObjectRetain();
        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v129 = __CocoaSet.count.getter();
          v130 = a3;
          if (!v129)
          {
            goto LABEL_108;
          }

          goto LABEL_90;
        }
      }

      v187(&rawValue);
      a3 = v195;
      if (!v195)
      {
        break;
      }

      v133 = v196;
      __swift_project_boxed_opaque_existential_1(&rawValue, v195);
      v134 = v185;
      (*(v133 + 88))(v32, a3, v133);
      swift_unknownObjectRelease();
      v135 = v188;
      if ((*v118)(v134, 1, v188) == 1)
      {
        outlined destroy of CharacterSet?(v134, &_s10Foundation9IndexPathVSgMd);
        __swift_destroy_boxed_opaque_existential_0(&rawValue);
      }

      else
      {
        v32 = *v178;
        (*v178)(v184, v134, v135);
        __swift_destroy_boxed_opaque_existential_0(&rawValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31._rawValue + 2) + 1, 1, v31._rawValue);
        }

        a3 = *(v31._rawValue + 2);
        v136 = *(v31._rawValue + 3);
        if (a3 >= v136 >> 1)
        {
          v31._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v136 > 1, a3 + 1, 1, v31._rawValue);
        }

        *(v31._rawValue + 2) = a3 + 1;
        (v32)(v31._rawValue + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * a3, v184, v135);
      }

      v130 = v181;
      ++v131;
      if (v132 == v129)
      {
        goto LABEL_109;
      }
    }

    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v191 = MEMORY[0x277D84FA0];
  v26 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v26)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v95 = (*((*MEMORY[0x277D85000] & v26->isa) + 0x290))();
  v31._rawValue = v95;
  if (!(v95 >> 62))
  {
    v91 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v91)
    {
      goto LABEL_42;
    }

    goto LABEL_81;
  }

  v91 = __CocoaSet.count.getter();
  if (!v91)
  {
LABEL_81:

    goto LABEL_82;
  }

LABEL_42:
  v27 = 0;
  a4 = v31._rawValue & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v31._rawValue & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x24C1FC540](v27, v31._rawValue);
      v5 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v27 >= *((v31._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v32 = *(v31._rawValue + v27 + 4);
      swift_unknownObjectRetain();
      v5 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v96 = v191;
    a3 = swift_getObjectType();
    DOCNode.identifierKey.getter();
    v97 = specialized Set.contains(_:)(&rawValue, v96);
    outlined destroy of AnyHashable(&rawValue);
    if (v97)
    {
      break;
    }

    DOCNode.identifierKey.getter();
    v26 = &v191;
    specialized Set._Variant.insert(_:)(&rawValue, v190);
    swift_unknownObjectRelease();
    outlined destroy of AnyHashable(&rawValue);
    ++v27;
    v30 = v177;
    if (v5 == v91)
    {
      goto LABEL_81;
    }
  }

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_2493AC000, v108, v109, "ignoring snapshot update because of invalid nodes", v110, 2u);
    MEMORY[0x24C1FE850](v110, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.DiffableReloadType.description.getter()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    return 0x6F6C65526C6C7566;
  }

  _StringGuts.grow(_:)(34);

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v3, v4);

  MEMORY[0x24C1FAEA0](0x666E6F636572202CLL, 0xEF203A6572756769);
  if ((v1 & 0x100) != 0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if ((v1 & 0x100) != 0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v5, v6);

  return 0x696E612866666964;
}

void specialized closure #2 in DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(char a1, char a2, void *a3)
{
  if (a1 == 2)
  {
    DOCItemCollectionViewController.adjustContentOffsetIfNeeded()();
    (*((*MEMORY[0x277D85000] & *a3) + 0xF60))();
  }

  else if ((a2 & 1) == 0)
  {
    DOCItemCollectionViewController.adjustContentOffsetIfNeeded()();
  }

  DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  DOCItemCollectionViewController.updateViewOptionsViewModel()();
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (one-time initialization token for DOCItemCollectionViewDidUpdateContents != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidUpdateContents object:a3];
}

Swift::Void __swiftcall DOCItemCollectionViewController.adjustContentOffsetIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v3 = v2();
  v4 = (*((*v1 & *v3) + 0x138))();
  v6 = v5;

  v7 = v2();
  v8 = (*((*v1 & *v7) + 0x140))();
  v10 = v9;

  v11 = v2();
  [v11 contentOffset];
  v13 = v12;

  if (v10 >= v13)
  {
    v14 = v2();
    [v14 contentOffset];
    v16 = v15;

    if (v16 >= v6)
    {
      return;
    }

    v8 = v4;
    v10 = v6;
  }

  v17 = v2();
  [v17 setContentOffset_];
}

void *closure #3 in DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(void *a1, uint64_t (*a2)(void), uint64_t a3, char a4, unint64_t a5)
{
  v48 = type metadata accessor for IndexPath();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v10);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16, v17);
  v50 = &v40 - v19;
  v20 = *((*MEMORY[0x277D85000] & *a1) + 0xBD8);
  v49 = a1;
  result = v20(v18);
  if (result == 2)
  {
    result = a2();
    if (a4)
    {
      if (a5 >> 62)
      {
LABEL_18:
        result = __CocoaSet.count.getter();
        v47 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v47 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          return result;
        }
      }

      v22 = 0;
      v45 = a5 & 0xFFFFFFFFFFFFFF8;
      v46 = a5 & 0xC000000000000001;
      v43 = (v9 + 48);
      v44 = a5;
      v40 = (v9 + 8);
      v41 = (v9 + 32);
      v23 = &_s10Foundation9IndexPathVSgMd;
      v9 = &_s10Foundation9IndexPathVSgMR;
      while (1)
      {
        if (v46)
        {
          v33 = MEMORY[0x24C1FC540](v22, a5);
          a5 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v22 >= *(v45 + 16))
          {
            goto LABEL_17;
          }

          v33 = *(a5 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          a5 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        v34 = v9;
        v35 = v23;
        result = (*((*MEMORY[0x277D85000] & *v49) + 0x820))(v51);
        v36 = v52;
        if (!v52)
        {
          break;
        }

        v37 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v38 = v50;
        (*(v37 + 88))(v33, v36, v37);
        __swift_destroy_boxed_opaque_existential_0(v51);
        v9 = v34;
        outlined init with copy of DOCGridLayout.Spec?(v38, v15, v23);
        v39 = v48;
        if ((*v43)(v15, 1, v48) == 1)
        {
          outlined destroy of CharacterSet?(v50, v23);
          swift_unknownObjectRelease();
          v31 = v15;
        }

        else
        {
          v24 = v15;
          v25 = v42;
          v26 = (*v41)(v42, v24, v39);
          v27 = (*((*MEMORY[0x277D85000] & *v49) + 0x1010))(v26);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v27 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

          v9 = v34;
          v23 = v35;
          swift_unknownObjectRelease();
          v29 = v25;
          v30 = v50;
          v15 = v24;
          (*v40)(v29, v39);
          v31 = v30;
        }

        result = outlined destroy of CharacterSet?(v31, v23);
        ++v22;
        v32 = a5 == v47;
        a5 = v44;
        if (v32)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t closure #1 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(void *a1, void *a2)
{
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xBD8))();
  if (result)
  {
    return result;
  }

  result = (*((*v4 & *a2) + 0x60))();
  v6 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *((*v4 & *a1) + 0x18D0);
    v19 = v6 & 0xC000000000000001;
    v18 = v7;
    while (1)
    {
      if (v19)
      {
        v14 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v15 = v9(v14);
      if (v15)
      {
        v16 = v15;
        swift_getObjectType();
        type metadata accessor for DOCItemCollectionGridCell();
        v17 = dynamic_cast_existential_1_superclass_conditional(v16);
        if (!v17)
        {
          swift_unknownObjectRelease();

          goto LABEL_8;
        }

        v10 = v6;
        v11 = v4;
        v12 = *((*v4 & *v17) + 0x570);
        v13 = v16;
        v12(0);
        v4 = v11;
        v6 = v10;
        v7 = v18;
      }

      swift_unknownObjectRelease();
LABEL_8:
      if (v7 == ++v8)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(void *a1)
{
  type metadata accessor for DOCNodeContextMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if ([*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) browserViewContext])
    {
      return 0;
    }

    else
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v5 = [a1 cellForItemAtIndexPath_];

      result = 0;
      if (v5)
      {
        type metadata accessor for DOCItemCollectionCell();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = DOCItemCollectionViewController.targetPreview(for:)(v6);
        }

        else
        {
          v7 = 0;
        }

        return v7;
      }
    }
  }

  return result;
}

UITargetedPreview_optional __swiftcall DOCItemCollectionViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration *previewForHighlightingContextMenuWithConfiguration)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v16 = v14;
    v17 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v18 = previewForHighlightingContextMenuWithConfiguration;
    if ([v17 browserViewContext])
    {
LABEL_3:

LABEL_4:
      v14 = 0;
      goto LABEL_13;
    }

    v27 = v18;
    v19 = MEMORY[0x277D85000];
    v20 = (*((*MEMORY[0x277D85000] & *v16) + 0x60))();
    v21 = (*((*v19 & *v2) + 0xDB0))(v20);

    if (!*(v21 + 16))
    {

      goto LABEL_4;
    }

    (*(v6 + 16))(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v13, v9, v5);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = [(UICollectionView *)_ cellForItemAtIndexPath:isa];

    v18 = v27;
    if (!v23)
    {
      (*(v6 + 8))(v13, v5);
      goto LABEL_3;
    }

    type metadata accessor for DOCItemCollectionCell();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {

      (*(v6 + 8))(v13, v5);
      goto LABEL_4;
    }

    v25 = DOCItemCollectionViewController.targetPreview(for:)(v24);

    (*(v6 + 8))(v13, v5);
    v14 = v25;
  }

LABEL_13:
  result.value.super.isa = v14;
  result.is_nil = v15;
  return result;
}

id DOCItemCollectionViewController.collectionView(_:contextMenuConfiguration:dismissalPreviewForItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [v3 collectionView:a1 contextMenuConfiguration:a2 highlightPreviewForItemAtIndexPath:isa];

  return v7;
}

UITargetedPreview_optional __swiftcall DOCItemCollectionViewController.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration *previewForDismissingContextMenuWithConfiguration)
{
  v3 = [v2 collectionView:_ previewForHighlightingContextMenuWithConfiguration:previewForDismissingContextMenuWithConfiguration];

  v4 = v3;
  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

void __swiftcall DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UICollectionView *_, Swift::OpaquePointer contextMenuConfigurationForItemsAt, CGPoint point)
{
  y = point.y;
  x = point.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13, v14);
  v17 = &v52 - v16;
  v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x1010))(v15);
  v19 = [v18 hitTest:0 withEvent:{x, y}];

  v20 = DOCItemCollectionViewController.headerSupplementaryViews()();
  v21 = v20;
  v55 = _;
  rawValue = contextMenuConfigurationForItemsAt._rawValue;
  v53 = v12;
  v54 = v17;
  if (v20 >> 62)
  {
    goto LABEL_16;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v19; v22; i = v19)
  {
    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v19)
      {
        v27 = [v19 isDescendantOfView_];

        if (v27)
        {

          return;
        }
      }

      else
      {
      }

      ++v23;
      v19 = i;
      if (v26 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v22 = __CocoaSet.count.getter();
  }

LABEL_17:

  v29 = v4;
  v30 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x1448))(v28) & 1) != 0 || (v31 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), [v31 browserViewContext]) || (*((*v30 & *v4) + 0x6D8))() == 1 || (objc_msgSend(v31, sel_suppressBlackCallout))
  {
LABEL_30:

    return;
  }

  v32 = [v31 sceneIdentifier];
  v33 = specialized static DOCInteractionManager.sharedManager(for:)(v32);

  if ((*((*v30 & *v33) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v19;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2493AC000, v35, v36, "[Interaction] An action was trying to be performed while there is an item trying to be opened.", v38, 2u);
      MEMORY[0x24C1FE850](v38, -1, -1);

      return;
    }

    goto LABEL_30;
  }

  (*((*v30 & *v33) + 0x80))();
  v39 = rawValue;
  if (rawValue[2])
  {
    v40 = [(UICollectionView *)v55 indexPathForItemAtPoint:x, y];
    if (v40)
    {
      v41 = v53;
      v42 = v40;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = type metadata accessor for IndexPath();
      (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
    }

    else
    {
      v44 = type metadata accessor for IndexPath();
      v41 = v53;
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
    }

    v45 = v54;
    outlined init with take of (key: URL, value: FPItem)(v41, v54, &_s10Foundation9IndexPathVSgMd);
    v46 = (*((*v30 & *v29) + 0x1360))(v39);
    DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(v46, v45);

    outlined destroy of CharacterSet?(v45, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    if ([(UICollectionView *)v55 isEditing])
    {
    }

    else
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v29;
      v48 = v19;
      v49 = objc_opt_self();
      aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu();
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      aBlock[3] = &block_descriptor_266_0;
      v50 = _Block_copy(aBlock);
      v51 = v29;

      [v49 configurationWithIdentifier:0 previewProvider:0 actionProvider:v50];

      _Block_release(v50);
    }
  }
}

void *DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v79 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15 = [v2 contextMenuForItemsAt_];

  if (!v15)
  {
    return 0;
  }

  v88 = DOCItemCollectionViewController.nodes(at:in:)(a1, 0);
  outlined init with copy of DOCGridLayout.Spec?(a2, v8, &_s10Foundation9IndexPathVSgMd);
  v16 = (*(v10 + 48))(v8, 1, v9);
  v17 = MEMORY[0x277D85000];
  if (v16 == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
    v83 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v83 = (*((*v17 & *v2) + 0xD88))(v13, 0);
    v19 = *(v10 + 8);
    v10 += 8;
    v19(v13, v9);
  }

  type metadata accessor for DOCNodeContextMenuConfiguration();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_1030;
  v22 = _Block_copy(aBlock);
  v23 = v15;

  v24 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:0 actionProvider:v22];

  _Block_release(v22);
  v25 = [v23 children];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
LABEL_26:
    v27 = __CocoaSet.count.getter();
    v81 = v24;
    v82 = v23;
    if (v27)
    {
LABEL_8:
      v23 = 0;
      v20 = v26 & 0xC000000000000001;
      v87 = MEMORY[0x277D84F90];
      do
      {
        v24 = v23;
        while (1)
        {
          if (v20)
          {
            v28 = MEMORY[0x24C1FC540](v24, v26);
          }

          else
          {
            if (v24 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v28 = *(v26 + 8 * v24 + 32);
          }

          v10 = v28;
          v23 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (v29)
          {
            break;
          }

          ++v24;
          if (v23 == v27)
          {
            goto LABEL_28;
          }
        }

        v30 = [v29 children];
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87[2] + 1, 1, v87);
        }

        v10 = v87[2];
        v32 = v87[3];
        if (v10 >= v32 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v10 + 1, 1, v87);
        }

        v33 = v87;
        v87[2] = v10 + 1;
        v33[v10 + 4] = v31;
      }

      while (v23 != v27);
      goto LABEL_28;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v81 = v24;
    v82 = v23;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_28:

  v34 = 0;
  v86 = 0;
  v85 = v87 + 4;
  do
  {
LABEL_51:
    v48 = v87[2];
    if (v86 == v48)
    {

      goto LABEL_59;
    }

    if (v86 >= v48)
    {
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v66 = __CocoaSet.count.getter();
LABEL_91:
      v87 = v10;

      v10 = 0;
      while (v66 != v10)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x24C1FC540](v10, v88);
        }

        else
        {
          if (v10 >= *(v34 + 16))
          {
            goto LABEL_124;
          }

          v67 = *(v88 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        v68 = [v67 isItemPinned];
        swift_unknownObjectRelease();
        if (v68)
        {
          v66 = v10;
          break;
        }

        if (__OFADD__(v10++, 1))
        {
          goto LABEL_125;
        }
      }

      v20 = v88;
      if (v23)
      {
        v74 = __CocoaSet.count.getter();
      }

      else
      {
        v74 = *(v34 + 16);
      }

      v75 = specialized LazyFilterSequence<>.distance(from:to:)(v66, v74, v20, partial apply for implicit closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:));

      if (v75 < 1)
      {

        v71 = MEMORY[0x277D85000];
        v72 = v82;
        v73 = v83;
        v70 = v86;
      }

      else
      {
        v71 = MEMORY[0x277D85000];
        v73 = v83;
        if (v23)
        {
          v76 = __CocoaSet.count.getter();
        }

        else
        {
          v76 = *(v34 + 16);
        }

        v77 = v75 < v76;
        v72 = v82;
        v70 = v86;
        if (v77)
        {
          [v86 setState_];
        }
      }

      goto LABEL_116;
    }

    v23 = (v86 + 1);
    v49 = v85[v86];

    v34 = v49;
    v86 = v23;
  }

  while (!v49);
  v35 = 0;
  if (v49 >= 0)
  {
    v36 = v49 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v36 = v49;
  }

  v84 = v36;
  v10 = v49 & 0xC000000000000001;
  v23 = (v49 >> 62);
  while (1)
  {
    if (v23)
    {
      if (v35 == __CocoaSet.count.getter())
      {
        goto LABEL_51;
      }
    }

    else if (v35 == *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    if (v10)
    {
      v38 = MEMORY[0x24C1FC540](v35, v34);
    }

    else
    {
      if (v35 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_121;
      }

      v38 = *(v34 + 8 * v35 + 32);
    }

    v39 = v38;
    if (__OFADD__(v35, 1))
    {
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
      goto LABEL_126;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v37;
LABEL_34:

      goto LABEL_35;
    }

    v41 = [v40 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v46;
    if (!v44)
    {
      goto LABEL_34;
    }

    if (v42 == v45 && v44 == v46)
    {
      break;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_56;
    }

LABEL_35:

    ++v35;
  }

LABEL_56:

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (v50)
  {
    v80 = v50;
    [v50 setState_];
    goto LABEL_60;
  }

LABEL_59:
  v80 = 0;
LABEL_60:
  v86 = 0;
  while (1)
  {
    v62 = v87[2];
    if (v86 == v62)
    {
      break;
    }

    if (v86 >= v62)
    {
      goto LABEL_127;
    }

    v23 = (v86 + 1);
    v63 = v85[v86];

    v64 = v63;
    v86 = v23;
    if (v63)
    {
      v51 = 0;
      if (v63 >= 0)
      {
        v52 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v52 = v63;
      }

      v84 = v52;
      v23 = (v63 >> 62);
LABEL_68:
      if (v23)
      {
        if (v51 == __CocoaSet.count.getter())
        {
          continue;
        }
      }

      else if (v51 == *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        continue;
      }

      if ((v64 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x24C1FC540](v51, v64);
      }

      else
      {
        if (v51 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_123;
        }

        v54 = *(v64 + 8 * v51 + 32);
      }

      v10 = v54;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_122;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = [v55 identifier];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v58;

        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v60;
        if (v34)
        {
          if (v57 == v59 && v34 == v60)
          {

LABEL_88:

            objc_opt_self();
            v65 = swift_dynamicCastObjCClass();
            v20 = v88;
            if (!v65)
            {

              v70 = 0;
              goto LABEL_102;
            }

            v86 = v65;
            swift_getKeyPath();
            v34 = v20 & 0xFFFFFFFFFFFFFF8;
            v23 = (v20 >> 62);
            if (v20 >> 62)
            {
              goto LABEL_128;
            }

            v66 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_91;
          }

          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v61)
          {
            goto LABEL_88;
          }

          goto LABEL_67;
        }
      }

      else
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v53;
      }

LABEL_67:

      ++v51;
      goto LABEL_68;
    }
  }

  v70 = 0;
  v20 = v88;
LABEL_102:
  v71 = MEMORY[0x277D85000];
  v72 = v82;
  v73 = v83;
LABEL_116:
  v18 = v81;
  (*((*v71 & *v81) + 0x68))(v20);
  (*((*v71 & *v18) + 0x80))(v73);

  return v18;
}

void *DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v72 - v24;
  v79 = type metadata accessor for IndexPath();
  v26 = *(v79 - 8);
  v28.n128_f64[0] = MEMORY[0x28223BE20](v79, v27);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x1448))(v28))
  {
    return 0;
  }

  v77 = a1;
  v78 = v26;
  v31 = [a1 contextMenuInteraction];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 menuAppearance];

    v34 = v33 == 2;
  }

  else
  {
    v34 = 0;
  }

  if ([v5 isEditing] && !v34)
  {
    return 0;
  }

  v35 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v35 browserViewContext])
  {
    return 0;
  }

  v76 = v34;
  v74 = *(v78 + 16);
  v75 = v78 + 16;
  v74(v30, a2, v79);
  v36 = [v77 indexPathsForSelectedItems];
  if (v36)
  {
    v37 = v36;
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v39 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v5) + 0x6D8))() == 1 || ([v35 suppressBlackCallout] & 1) != 0 || ((*((*v39 & *v5) + 0x1898))(v30))
  {
    (*(v78 + 8))(v30, v79);

    return 0;
  }

  v41 = [v35 sceneIdentifier];
  v42 = specialized static DOCInteractionManager.sharedManager(for:)(v41);

  if ((*((*v39 & *v42) + 0x60))())
  {

    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.UI);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v78;
    v47 = v79;
    if (v46)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2493AC000, v44, v45, "[Interaction] An action was trying to be performed while there is an item trying to be opened.", v49, 2u);
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    (*(v48 + 8))(v30, v47);
    return 0;
  }

  v50 = *((*v39 & *v42) + 0x80);
  v73 = v42;
  v50();
  if (specialized Sequence<>.contains(_:)(v30, v38))
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v51 = v78;
  v52 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249B9A480;
  v74((v38 + v52), v30, v79);
  if ([v5 isEditing])
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v54 = [v5 collectionView:v77 shouldSelectItemAtIndexPath:isa];

    if (!v54)
    {
LABEL_23:
      v51 = v78;
      goto LABEL_27;
    }

    v55 = MEMORY[0x277D85000];
    v56 = (*((*MEMORY[0x277D85000] & *v5) + 0x1308))();
    v72 = ((*v55 & *v5) + 4112);
    v57 = *v72;
    v58 = (*v72)(v56);
    v59 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v58 selectItemAtIndexPath:v59 animated:0 scrollPosition:0];

    v60 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v5 collectionView:v77 performPrimaryActionForItemAtIndexPath:v60];

    v61 = v57();
    v62 = v79;
    v74(v25, v30, v79);
    v63 = v62;
    v39 = MEMORY[0x277D85000];
    v64 = (*(v78 + 56))(v25, 0, 1, v63);
    v65 = (*((*v39 & *v61) + 0xF0))(v64);
    outlined init with copy of DOCGridLayout.Spec?(v25, v21, &_s10Foundation9IndexPathVSgMd);
    (*(*v65 + 112))(v21);

    v51 = v78;

    outlined destroy of CharacterSet?(v25, &_s10Foundation9IndexPathVSgMd);
  }

LABEL_27:
  if (v76 && ([v5 isEditing] & 1) == 0)
  {
    v66 = (*((*v39 & *v5) + 0x1010))();
    specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v30, 1);
  }

  v67 = [v77 indexPathForItemAtPoint_];
  if (v67)
  {
    v68 = v67;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = v79;
  (*(v51 + 56))(v13, v69, 1, v79);
  outlined init with take of (key: URL, value: FPItem)(v13, v17, &_s10Foundation9IndexPathVSgMd);
  v71 = DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(v38, v17);

  outlined destroy of CharacterSet?(v17, &_s10Foundation9IndexPathVSgMd);
  (*(v51 + 8))(v30, v70);
  return v71;
}