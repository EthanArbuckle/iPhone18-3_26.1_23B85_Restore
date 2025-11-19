Swift::Void __swiftcall RecentsListViewController.didTapNewCallButton()()
{
  OUTLINED_FUNCTION_272();
  if (TUIsBareMakoAccount())
  {
    OUTLINED_FUNCTION_194_0();

    RecentsListViewController.showMakoUserAlert()();
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for PeoplePickerViewController());
    OUTLINED_FUNCTION_3_0();
    PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(v3, v4, v5, v6, v7, 0);
    v9 = v8;
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x378);
    v11 = v0;
    v10(v0, &protocol witness table for RecentsListViewController);
    v23 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [v23 setDefinesPresentationContext_];
    v12 = [v11 traitCollection];
    v13 = static PeoplePickerViewController.preferredModalPresentationStyle(trailCollection:)(v12);

    [v23 setModalPresentationStyle_];
    v14 = [v23 sheetPresentationController];

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      OUTLINED_FUNCTION_37_0();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1BC4BAC30;
      *(v15 + 32) = [objc_opt_self() largeDetent];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v14 setDetents_];

      v17 = [v11 traitCollection];
      v18 = [v17 userInterfaceIdiom];

      [v14 setPrefersGrabberVisible_];
    }

    v19 = [v11 navigationController];
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_259(v19, sel_presentViewController_animated_completion_, v23);
    }

    OUTLINED_FUNCTION_194_0();
  }
}

void RecentsListViewController.showMakoUserAlert()()
{
  v1 = objc_opt_self();
  v2 = [v1 conversationKit];
  v27._object = 0xE000000000000000;
  v3._object = 0x80000001BC4FC670;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4.value._countAndFlagsBits = 0x61737265766E6F43;
  v4.value._object = 0xEF74694B6E6F6974;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v27);

  LODWORD(v2) = [*(v0 + OBJC_IVAR___FTRecentsListViewController_featureFlags) appleAccountRebrandEnabled];
  v7 = [v1 conversationKit];
  v8 = "MAKO_ALERT_TITLE";
  if (v2)
  {
    v8 = "MAKO_ALERT_OPEN_SETTINGS";
    v9 = 0xD00000000000001FLL;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  v28._object = 0xE000000000000000;
  v10 = v8 | 0x8000000000000000;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, v11, v7, v12, v28);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v14 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v6._countAndFlagsBits, v6._object, v13._countAndFlagsBits, v13._object, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v15 = [v1 conversationKit];
  v29._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001BC4FC6B0;
  v17.value._countAndFlagsBits = 0x61737265766E6F43;
  v17.value._object = 0xEF74694B6E6F6974;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v29);

  v19 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v20 = [v1 conversationKit];
  v30._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x4C45434E4143;
  v21._object = 0xE600000000000000;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v30);

  v25 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v14 addAction_];
  [v14 addAction_];
  [v24 presentViewController:v14 animated:1 completion:0];
}

void RecentsListViewController.didTapNewLinkButton(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = *MEMORY[0x1E6982AE0];
  v7 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  RecentsListViewController.tipKitDismissTip(_:)(v5);
  outlined destroy of CallControlsService?(v5, &_s6TipKit4TipsO18InvalidationReasonOSgMd);
  v8 = type metadata accessor for LinkCreationCoordinator();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_shareSheetViewController] = 0;
  v10 = &v9[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_conversationLink];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v11 = &v9[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_parentViewController];
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for RecentsListViewController;
  swift_unknownObjectUnownedInit();
  v16.receiver = v9;
  v16.super_class = v8;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = *(v1 + OBJC_IVAR___FTRecentsListViewController_linkCoordinator);
  *(v1 + OBJC_IVAR___FTRecentsListViewController_linkCoordinator) = v12;
  v14 = v12;

  (*((*MEMORY[0x1E69E7D40] & *v14) + 0xB8))(a1);
}

uint64_t RecentsListViewController.recentsCallItem(at:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  v5 = v4;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x630))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v7 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_64_4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA940;
  (*(v9 + 16))(v10 + v1, v3, v7);
  (*(*v6 + 296))(v10);
  OUTLINED_FUNCTION_173();

  specialized Collection.first.getter(v3, v5);
  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.showRecentCallDetailsViewController(at:sourceRect:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v37 - v14;
  v16 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecentsListViewController.recentsCallItem(at:)();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of CallControlsService?(v15, &_s15ConversationKit15RecentsCallItemVSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BA940;
    v20 = type metadata accessor for IndexPath();
    (*(*(v20 - 8) + 16))(v12, a1, v20);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
    specialized >> prefix<A>(_:)(v12, v21, v22, v23, v24, v25, v26, v27, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9]);
    v29 = v28;
    v31 = v30;
    outlined destroy of CallControlsService?(v12, &_s10Foundation9IndexPathVSgMd);
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v29;
    *(v19 + 40) = v31;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.conversationKit);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BBC58000, v34, v35, "showRecentCallDetailsViewController", v36, 2u);
      MEMORY[0x1BFB23DF0](v36, -1, -1);
    }

    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(v18, 0, a2, a3, a4, a5);
    return _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  }
}

NSCollectionLayoutSize __swiftcall RecentsListViewController.updateHeaderForTip(_:)(NSCollectionLayoutSize a1)
{
  v2 = v1;
  v3 = RecentsListViewController.tipPopoverController.getter();
  v4 = MEMORY[0x1E69E7D40];
  if (v3)
  {
    v5 = v3;
    v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x530);
    if (v6())
    {
      OUTLINED_FUNCTION_86_1();
      v8 = (*(v7 + 256))();

      if (v8)
      {
        v9 = [v5 popoverPresentationController];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 presentedViewController];

          LOBYTE(v10) = [v11 isBeingPresented];
          if (v10)
          {
            v12 = v2;
            if ((v6)([v8 setActive_]))
            {
              OUTLINED_FUNCTION_86_1();
              v14 = (*(v13 + 280))();

              [v14 bounds];
              OUTLINED_FUNCTION_40_1();

              v25.origin.x = OUTLINED_FUNCTION_35();
              v15 = CGRectGetHeight(v25) + 90.0;
            }

            else
            {
              v15 = 90.0;
            }

            v21 = objc_opt_self();
            v22 = [v21 fractionalWidthDimension_];
            v23 = [v21 absoluteDimension_];
            v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

            OUTLINED_FUNCTION_273();
            return result;
          }
        }
      }
    }
  }

  if ((*((*v4 & *v2) + 0x530))())
  {
    OUTLINED_FUNCTION_86_1();
    v17 = (*(v16 + 256))();

    if (v17)
    {
      [v17 setActive_];
    }
  }

  OUTLINED_FUNCTION_273();

  return v18;
}

void RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_29();
  v144 = v0;
  v4 = v3;
  v6 = v5;
  v136 = v7;
  v8 = OUTLINED_FUNCTION_241();
  v143 = type metadata accessor for RecentOngoingConversationMetadata(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v142 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v15 = OUTLINED_FUNCTION_4_24();
  v148 = type metadata accessor for RecentCallRecentItemMetadata(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v141 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v151 = v19;
  v20 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RecentsCallItemType(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v146 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_224();
  v24 = type metadata accessor for RecentsCallItem(0);
  v25 = OUTLINED_FUNCTION_9_0(v24);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_20();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC0];
  v150 = v34;
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_20();
  v152 = swift_allocObject();
  *(v152 + 16) = v35;
  v36 = *(v1 + 16);
  v138 = v6;
  v139 = v4;
  v140 = v1;
  v135 = v27;
  if (v36)
  {
    v37 = v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v38 = v27;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = *(v38 + 72);
    v137 = v2;
    v41 = v151;
    while (1)
    {
      OUTLINED_FUNCTION_1_72();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      OUTLINED_FUNCTION_6_47();
      OUTLINED_FUNCTION_62_0();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_0_74();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          OUTLINED_FUNCTION_4_47();
          goto LABEL_40;
        case 2u:
          OUTLINED_FUNCTION_4_47();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          OUTLINED_FUNCTION_1_72();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          v44 = *(v152 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v152 + 16) = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_43();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            OUTLINED_FUNCTION_139_0(v75);
          }

          OUTLINED_FUNCTION_218();
          if (v47)
          {
            OUTLINED_FUNCTION_59_3(v46);
            OUTLINED_FUNCTION_122();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            OUTLINED_FUNCTION_139_0(v76);
          }

          OUTLINED_FUNCTION_0_74();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          *(v44 + 16) = v41;
          OUTLINED_FUNCTION_3_66();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          v41 = v151;
          *(v152 + 16) = v44;
          goto LABEL_41;
        case 3u:
        case 4u:
          OUTLINED_FUNCTION_4_47();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          OUTLINED_FUNCTION_1_72();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_43();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v39 = v73;
          }

          v43 = *(v39 + 16);
          v42 = *(v39 + 24);
          if (v43 >= v42 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v42);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v39 = v74;
          }

          OUTLINED_FUNCTION_0_74();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          *(v39 + 16) = v43 + 1;
          OUTLINED_FUNCTION_3_66();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          goto LABEL_41;
        default:
          OUTLINED_FUNCTION_9_34();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          OUTLINED_FUNCTION_1_72();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          v48 = *(v150 + 16);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v150 + 16) = v48;
          if ((v49 & 1) == 0)
          {
            OUTLINED_FUNCTION_43();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v48 = v77;
            *(v150 + 16) = v77;
          }

          OUTLINED_FUNCTION_218();
          if (v47)
          {
            OUTLINED_FUNCTION_59_3(v50);
            OUTLINED_FUNCTION_122();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v48 = v78;
          }

          *(v48 + 16) = v41;
          OUTLINED_FUNCTION_3_66();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          v41 = v151;
          *(v150 + 16) = v48;
          if (*(v151 + *(v148 + 44)))
          {
            OUTLINED_FUNCTION_1_72();
            _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
            v51 = *(v152 + 16);
            v52 = swift_isUniquelyReferenced_nonNull_native();
            *(v152 + 16) = v51;
            if ((v52 & 1) == 0)
            {
              OUTLINED_FUNCTION_43();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              OUTLINED_FUNCTION_139_0(v79);
            }

            OUTLINED_FUNCTION_218();
            if (v47)
            {
              OUTLINED_FUNCTION_59_3(v53);
              OUTLINED_FUNCTION_122();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              OUTLINED_FUNCTION_139_0(v80);
            }

            OUTLINED_FUNCTION_0_74();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
            *(v51 + 16) = v151;
            OUTLINED_FUNCTION_3_66();
            _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
            v41 = v151;
            *(v152 + 16) = v51;
          }

          else
          {
            v54 = *(v151 + *(v148 + 52));
            if (!v54)
            {
              OUTLINED_FUNCTION_0_74();
              _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
              type metadata accessor for UUID();
              v58 = OUTLINED_FUNCTION_84_1();
              __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
LABEL_33:
              v66 = OUTLINED_FUNCTION_249();
              outlined destroy of CallControlsService?(v66, v67);
              goto LABEL_39;
            }

            v55 = [v54 messageUUID];
            if (v55)
            {
              v56 = v55;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v57 = 0;
            }

            else
            {
              v57 = 1;
            }

            v62 = type metadata accessor for UUID();
            __swift_storeEnumTagSinglePayload(v137, v57, 1, v62);
            outlined init with take of URL?();
            v63 = OUTLINED_FUNCTION_90_2();
            OUTLINED_FUNCTION_115(v63, v64, v62);
            if (v65)
            {
              OUTLINED_FUNCTION_0_74();
              _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
              v41 = v151;
              goto LABEL_33;
            }

            v68 = OUTLINED_FUNCTION_249();
            outlined destroy of CallControlsService?(v68, v69);
            OUTLINED_FUNCTION_1_72();
            _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
            v70 = swift_isUniquelyReferenced_nonNull_native();
            v41 = v151;
            if ((v70 & 1) == 0)
            {
              OUTLINED_FUNCTION_43();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v39 = v81;
            }

            v72 = *(v39 + 16);
            v71 = *(v39 + 24);
            if (v72 >= v71 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v71);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v39 = v82;
            }

            OUTLINED_FUNCTION_0_74();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
            *(v39 + 16) = v72 + 1;
            OUTLINED_FUNCTION_3_66();
            _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          }

LABEL_39:
          OUTLINED_FUNCTION_5_45();
LABEL_40:
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_41:
          v37 += v40;
          if (!--v36)
          {
            v83 = v152;
            v35 = *(v152 + 16);
            v4 = v139;
            v1 = v140;
            v84 = v6;
            goto LABEL_44;
          }

          break;
      }
    }
  }

  v39 = v35;
  v83 = v152;
  v84 = v6;
LABEL_44:
  v85 = v146;
  if (!*(v35 + 16))
  {
    OUTLINED_FUNCTION_176();
    v99 = (*(v98 + 1584))();
    OUTLINED_FUNCTION_20();
    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_77_0();
    v101 = swift_allocObject();
    *(v101 + 48) = v136 & 1;
    *(v101 + 16) = v100;
    *(v101 + 24) = v84;
    *(v101 + 32) = v4;
    *(v101 + 40) = v83;
    *(v101 + 56) = v1;
    *(v101 + 64) = v150;
    *(v101 + 72) = v39;
    v102 = *(*v99 + 304);
    v103 = OUTLINED_FUNCTION_28_14();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v103);

    v102(v1, partial apply for closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:), v101);

    goto LABEL_61;
  }

  RecentsListViewController.linkController.getter();
  v86 = *(v83 + 16);
  OUTLINED_FUNCTION_77_0();
  v87 = swift_allocObject();
  *(v87 + 16) = v144;
  *(v87 + 24) = v84;
  *(v87 + 32) = v4;
  *(v87 + 40) = v83;
  *(v87 + 48) = v136 & 1;
  *(v87 + 56) = v150;
  *(v87 + 64) = v39;
  v149 = v87;
  *(v87 + 72) = v1;
  if (*(v86 + 16))
  {
    v147 = *(v86 + 16);
    OUTLINED_FUNCTION_40_3();
    v89 = v86 + v88;
    v90 = v144;
    OUTLINED_FUNCTION_123();

    v145 = v90;
    OUTLINED_FUNCTION_123();
    v91 = *(v135 + 72);

    v92 = v147;
    while (1)
    {
      OUTLINED_FUNCTION_1_72();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      OUTLINED_FUNCTION_6_47();
      OUTLINED_FUNCTION_206();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_110_0();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          v93 = *(v142 + *(v143 + 28));
          OUTLINED_FUNCTION_136();
          outlined copy of ConversationLink?(v95);
          goto LABEL_52;
        case 2u:
          v93 = *v85;
          goto LABEL_53;
        case 3u:
        case 4u:
          OUTLINED_FUNCTION_4_47();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          goto LABEL_55;
        default:
          OUTLINED_FUNCTION_9_34();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
          v93 = *(v141 + *(v148 + 44));
          OUTLINED_FUNCTION_136();
          outlined copy of ConversationLink?(v94);
LABEL_52:
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          v85 = v146;
          if (v93)
          {
LABEL_53:

            v96 = [v93 0x1FBE063A4];

            OUTLINED_FUNCTION_0_74();
            v97 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
            if (v96)
            {
              v111 = objc_opt_self();
              v112 = [v111 conversationKit];
              if (v147 == 1)
              {
                v113 = "DELETE_LINK_ALERT_TITLE";
              }

              else
              {
                v113 = "DELETE_LINKS_ALERT_TITLE";
              }

              if (v147 == 1)
              {
                v114 = 0xD000000000000019;
              }

              else
              {
                v114 = 0xD00000000000001ALL;
              }

              OUTLINED_FUNCTION_282();
              v116.super.isa = v112;
              OUTLINED_FUNCTION_17_0(v117, v115 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v116);

              v118 = [v111 &off_1E7FE9588];
              OUTLINED_FUNCTION_40_0();
              v119.super.isa = v118;
              OUTLINED_FUNCTION_17_0(v114, v113 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v119);
              OUTLINED_FUNCTION_237();
              v121 = v120;

              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
              OUTLINED_FUNCTION_28_0();

              v122 = OUTLINED_FUNCTION_312();
              v124 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v122, v123, v112, v121, 1);
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
              OUTLINED_FUNCTION_24();
              v125 = swift_allocObject();
              *(v125 + 16) = partial apply for specialized closure #1 in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
              *(v125 + 24) = v149;
              v126 = v124;

              OUTLINED_FUNCTION_312();
              v127 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
              v128 = [objc_opt_self() conversationKit];
              OUTLINED_FUNCTION_40_0();
              OUTLINED_FUNCTION_24_3();
              v129.super.isa = v128;
              OUTLINED_FUNCTION_17_0(v130, v131, v132, 0xEF74694B6E6F6974, v129);
              OUTLINED_FUNCTION_237();

              OUTLINED_FUNCTION_24();
              v133 = swift_allocObject();
              *(v133 + 16) = partial apply for specialized closure #1 in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
              *(v133 + 24) = v149;

              v134 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
              [v126 addAction_];
              [v126 addAction_];
              OUTLINED_FUNCTION_259(v145, sel_presentViewController_animated_completion_, v126);

              outlined consume of (@escaping @callee_guaranteed () -> ())?(v138);

              swift_bridgeObjectRelease_n();

              goto LABEL_61;
            }
          }

          else
          {
LABEL_55:
            OUTLINED_FUNCTION_0_74();
            v97 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          }

          v89 += v91;
          if (!--v92)
          {
            goto LABEL_60;
          }

          break;
      }
    }
  }

  v104 = v144;
  OUTLINED_FUNCTION_123();

  v105 = v104;
  OUTLINED_FUNCTION_123();

LABEL_60:
  v106 = (*((*MEMORY[0x1E69E7D40] & *v144) + 0x630))(v97);
  OUTLINED_FUNCTION_20();
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_77_0();
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v6;
  *(v108 + 32) = v139;
  *(v108 + 40) = v152;
  *(v108 + 48) = v136 & 1;
  *(v108 + 56) = v140;
  *(v108 + 64) = v150;
  *(v108 + 72) = v39;
  v109 = *(*v106 + 304);
  OUTLINED_FUNCTION_123();

  v109(v140, closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)partial apply, v108);

  v110 = OUTLINED_FUNCTION_28_14();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v110);

  swift_bridgeObjectRelease_n();

LABEL_61:

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v31 - v13 + 16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a2)
    {
      a2(1);
    }

    v17 = RecentsListViewController.linkController.getter();
    swift_beginAccess();
    v18 = *(*v17 + 296);

    v18(v19);

    if ((a5 & 1) == 0)
    {
      (*((*MEMORY[0x1E69E7D40] & *v16) + 0x2C0))(v31, v20);
      v21 = v32;
      v22 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      swift_beginAccess();
      v23 = *(v22 + 120);

      v23(v24, v21, v22);

      __swift_destroy_boxed_opaque_existential_1(v31);
      a6 = a8;
    }

    v25 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
    type metadata accessor for MainActor();
    v26 = v16;

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    v28[5] = a6;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:), v7, v6);
}

uint64_t closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_44();
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  OUTLINED_FUNCTION_72_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_277(v1);
  *v2 = v3;
  v2[1] = closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
  v4 = OUTLINED_FUNCTION_87_3(*(v0 + 72));

  return v5(v4);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
  }

  else
  {
    v7 = closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);

  return RecentsListViewController.deleteVideoMessageCallItems(_:)(a5);
}

uint64_t closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v4 + 40) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
  }

  else
  {
    v7 = closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t RecentsListViewController.deleteVideoMessageCallItems(_:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](RecentsListViewController.deleteVideoMessageCallItems(_:), v4, v3);
}

uint64_t RecentsListViewController.deleteVideoMessageCallItems(_:)()
{
  OUTLINED_FUNCTION_44();
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 72)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  OUTLINED_FUNCTION_72_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_277(v1);
  *v2 = v3;
  v2[1] = RecentsListViewController.deleteVideoMessageCallItems(_:);
  v4 = OUTLINED_FUNCTION_87_3(*(v0 + 64));

  return v5(v4);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = RecentsListViewController.deleteVideoMessageCallItems(_:);
  }

  else
  {
    v7 = RecentsListViewController.deleteVideoMessageCallItems(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t specialized closure #1 in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(uint64_t result, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
    v15 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x630))();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = a5;
    *(v17 + 48) = a6 & 1;
    *(v17 + 56) = a9;
    *(v17 + 64) = a7;
    *(v17 + 72) = a8;
    v18 = *(*v15 + 304);

    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);

    v18(a9, closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)partial apply, v17);
  }

  else if (a3)
  {
    return a3(0);
  }

  return result;
}

void RecentsListViewController.removeRecentCallsAndReportIfNeeded(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v69 = v4;
  v70 = v5;
  v71 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v72 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v15 = OUTLINED_FUNCTION_79_0();
  v73 = type metadata accessor for RecentsCallItemType(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v17 = OUTLINED_FUNCTION_82();
  v67 = type metadata accessor for RecentsCallItem(v17);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  v66 = v23;
  if (one-time initialization token for recents != -1)
  {
    OUTLINED_FUNCTION_44_9();
  }

  v24 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v24, &static Logger.recents);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = OUTLINED_FUNCTION_163(v26);
  v68 = v2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_23();
    v65 = v19;
    v30 = v3;
    v31 = v8;
    v32 = v29;
    v74 = v29;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000058, 0x80000001BC4FB280, &v74);
    *(v28 + 12) = 1024;
    *(v28 + 14) = v71 & 1;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v8 = v31;
    v3 = v30;
    v19 = v65;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  if (![*(v3 + OBJC_IVAR___FTRecentsListViewController_featureFlags) videoMessagingSpamReportEnabled])
  {
    OUTLINED_FUNCTION_30_0();

    RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)();
    return;
  }

  v63 = v3;
  v65 = v8;
  v40 = *(v8 + 16);
  if (!v40)
  {
LABEL_21:
    v57 = v66;
    OUTLINED_FUNCTION_168(v66, v38, v39, v67);
    outlined destroy of CallControlsService?(v57, &_s15ConversationKit15RecentsCallItemVSgMd);
    RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)();
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_40_3();
  v42 = v65 + v41;
  v43 = *(v19 + 72);
  v64 = v1;
  while (2)
  {
    OUTLINED_FUNCTION_1_72();
    OUTLINED_FUNCTION_45_1();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    OUTLINED_FUNCTION_6_47();
    OUTLINED_FUNCTION_246_0();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    OUTLINED_FUNCTION_7_8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 4u:
        OUTLINED_FUNCTION_4_47();
        goto LABEL_10;
      case 3u:
        OUTLINED_FUNCTION_4_47();
        goto LABEL_19;
      default:
        OUTLINED_FUNCTION_9_34();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
        v44 = *(v1 + *(v72 + 52));
        if (!v44)
        {
          v47 = type metadata accessor for UUID();
          OUTLINED_FUNCTION_168(v13, v48, v49, v47);
          goto LABEL_18;
        }

        v45 = [v44 messageUUID];
        if (v45)
        {
          v46 = v45;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v50 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        outlined init with take of URL?();
        OUTLINED_FUNCTION_115(v13, 1, v50);
        v1 = v64;
        if (v55)
        {
LABEL_18:
          outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd);
          OUTLINED_FUNCTION_5_45();
LABEL_10:
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_20:
          OUTLINED_FUNCTION_0_74();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          v42 += v43;
          if (!--v40)
          {
            goto LABEL_21;
          }

          continue;
        }

        outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd);
        OUTLINED_FUNCTION_5_45();
LABEL_19:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        RecentsCallItem.isInContacts.getter();
        if ((v56 & 1) == 0)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_3_66();
        v59 = v66;
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v67);
        outlined destroy of CallControlsService?(v59, &_s15ConversationKit15RecentsCallItemVSgMd);
        RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)();
LABEL_22:
        OUTLINED_FUNCTION_30_0();
        return;
    }
  }
}

void RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)()
{
  OUTLINED_FUNCTION_29();
  v59 = v0;
  v60 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = 0xD00000000000001ELL;
  OUTLINED_FUNCTION_306();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = [objc_opt_self() conversationKit];
  if (v7)
  {
    OUTLINED_FUNCTION_282();
    v17.super.isa = v15;
    OUTLINED_FUNCTION_17_0(0xD000000000000026, v16 | 0x8000000000000000, v1, 0xEF74694B6E6F6974, v17);
    OUTLINED_FUNCTION_250();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    v19.super.isa = v15;
    v2 = OUTLINED_FUNCTION_17_0(0xD00000000000001ELL, v18 | 0x8000000000000000, v1, 0xEF74694B6E6F6974, v19);
    v1 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = OUTLINED_FUNCTION_13_12();
    *(v21 + 16) = xmmword_1BC4BA940;
    specialized Collection.first.getter(v9, v14);
    v22 = type metadata accessor for RecentsCallItem(0);
    OUTLINED_FUNCTION_115(v14, 1, v22);
    if (v23)
    {
      outlined destroy of CallControlsService?(v14, &_s15ConversationKit15RecentsCallItemVSgMd);
      v7 = 0;
      v10 = 0;
    }

    else
    {
      specialized SpamModelable.formattedInitiatorHandle.getter();
      OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_0_74();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    }

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    if (v10)
    {
      v24 = v7;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v10)
    {
      v25 = v10;
    }

    *(v21 + 32) = v24;
    *(v21 + 40) = v25;
    String.init(format:_:)();
    OUTLINED_FUNCTION_250();

    OUTLINED_FUNCTION_306();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v26 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v58 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v26, v27, v14, v2, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v28 = objc_opt_self();
  v29 = [v28 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v30.super.isa = v29;
  OUTLINED_FUNCTION_17_0(0xD000000000000025, 0x80000001BC4FB300, v1, 0xEF74694B6E6F6974, v30);
  OUTLINED_FUNCTION_237();

  OUTLINED_FUNCTION_109();
  v31 = swift_allocObject();
  v32 = v59;
  v31[2] = v59;
  v31[3] = v9;
  v33 = v9;
  v34 = v60;
  v31[4] = v5;
  v31[5] = v34;
  v35 = v32;

  v36 = OUTLINED_FUNCTION_211();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v36);
  v59 = OUTLINED_FUNCTION_87_2();
  v37 = [v28 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_14_2();
  v38.super.isa = v37;
  OUTLINED_FUNCTION_17_0(v39, v40, v41, v42, v38);
  OUTLINED_FUNCTION_237();

  OUTLINED_FUNCTION_109();
  v43 = swift_allocObject();
  v43[2] = v35;
  v43[3] = v33;
  v43[4] = v5;
  v43[5] = v34;
  v57 = v35;

  v44 = OUTLINED_FUNCTION_211();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v44);
  v45 = OUTLINED_FUNCTION_87_2();
  v46 = [v28 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_14_2();
  v47.super.isa = v46;
  OUTLINED_FUNCTION_17_0(v48, v49, v50, v51, v47);
  OUTLINED_FUNCTION_237();

  OUTLINED_FUNCTION_24();
  v52 = swift_allocObject();
  *(v52 + 16) = v5;
  *(v52 + 24) = v34;
  v53 = OUTLINED_FUNCTION_211();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v53);
  v54 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v56 = v58;
  v55 = v59;
  [v58 addAction_];
  [v56 addAction_];
  [v56 addAction_];
  OUTLINED_FUNCTION_259(v57, sel_presentViewController_animated_completion_, v56);

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsListViewController.reportSpamCalls(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v2 = OUTLINED_FUNCTION_17_1();
    v3 = type metadata accessor for RecentsCallItem(v2);
    OUTLINED_FUNCTION_22(v3);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    ReportSpamManager.reportVideoMessagingSpam(call:)(v1 + v5);
  }
}

void RecentsListViewController.executeCompletionHandler(_:)(char a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR___FTRecentsListViewController_actionCompletionHandler);
  v4 = *(v1 + OBJC_IVAR___FTRecentsListViewController_actionCompletionHandler);
  if (v4)
  {

    v4(a1 & 1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
    v6 = *v3;
    *v3 = 0;
    v3[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
    v7 = *(v2 + OBJC_IVAR___FTRecentsListViewController_acceptedContactActionsManager);
    *(v2 + OBJC_IVAR___FTRecentsListViewController_acceptedContactActionsManager) = 0;
  }
}

id @nonobjc CNUIAcceptedContactConfiguration.__allocating_init(forEmailAddress:)()
{
  OUTLINED_FUNCTION_318();
  v1 = MEMORY[0x1BFB209B0]();

  v2 = [swift_getObjCClassFromMetadata() *v0];

  return v2;
}

uint64_t specialized SpamModelable.formattedInitiatorHandle.getter()
{
  v0 = RecentsCallItem.initiator.getter();
  if (v0)
  {
    v1 = v0;
    TUHandle.formattedPhoneNumber.getter();
    OUTLINED_FUNCTION_305();
  }

  else
  {
    v2 = RecentsCallItem.initiator.getter();
    v3 = v2;
    if (v2)
    {
      v4 = [v2 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_305();
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_46();
}

{
  return specialized SpamModelable.formattedInitiatorHandle.getter(CHRecentCall.initiatorHandle.getter);
}

{
  return specialized SpamModelable.formattedInitiatorHandle.getter(TUCall.initiatorHandle.getter);
}

uint64_t specialized SpamModelable.formattedInitiatorHandle.getter(uint64_t (*a1)(void))
{
  v2 = a1();
  if (v2)
  {
    v3 = v2;
    TUHandle.formattedPhoneNumber.getter();
    OUTLINED_FUNCTION_305();
  }

  else
  {
    v4 = a1();
    v5 = v4;
    if (v4)
    {
      v6 = [v4 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_305();
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t closure #1 in RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)();
}

void closure #2 in RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)();

  RecentsListViewController.reportSpamCalls(_:)(a3);
}

uint64_t RecentsListViewController.performDeleteAction(of:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RecentsCallItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  RecentsListViewController.tipKitStopObservation()();
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v9 = (v7 + ((*(v6 + 80) + 24) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v11 = (v10 + v9);
  *v11 = a2;
  v11[1] = a3;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in RecentsListViewController.performDeleteAction(of:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.performDeleteAction(of:completionHandler:), v6, v5);
}

uint64_t closure #1 in RecentsListViewController.performDeleteAction(of:completionHandler:)()
{
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd);
    v5 = OUTLINED_FUNCTION_241();
    v6 = type metadata accessor for RecentsCallItem(v5);
    OUTLINED_FUNCTION_9_0(v6);
    OUTLINED_FUNCTION_64_4();
    *(swift_allocObject() + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_1_72();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    OUTLINED_FUNCTION_37_0();
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = v4;
    v7[4] = v3;
    v8 = v2;
    v9 = OUTLINED_FUNCTION_45_1();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v9);
    OUTLINED_FUNCTION_311();
    RecentsListViewController.removeRecentCallsAndReportIfNeeded(_:shouldDeleteAllItemsForContact:preparationHandler:)();
  }

  OUTLINED_FUNCTION_13();

  return v10();
}

void closure #1 in closure #1 in RecentsListViewController.performDeleteAction(of:completionHandler:)(char a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    RecentsListViewController.tipKitStartObservation()();
  }

  if (a3)
  {
    a3(a1 & 1);
  }
}

id RecentsListViewController.deleteAction(of:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
  v1 = [objc_opt_self() conversationKit];
  v13._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v3._object = 0x80000001BC4FB4D0;
  v3._countAndFlagsBits = 0xD000000000000020;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v13);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v8 = @nonobjc UIContextualAction.__allocating_init(style:title:handler:)(1, v5._countAndFlagsBits, v5._object, partial apply for closure #1 in RecentsListViewController.deleteAction(of:), v7);
  v9 = objc_opt_self();
  v10 = MEMORY[0x1BFB209B0](0x69662E6873617274, 0xEA00000000006C6CLL);
  v11 = [v9 __systemImageNamedSwift_];

  [v8 setImage_];
  return v8;
}

void closure #1 in RecentsListViewController.deleteAction(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    RecentsListViewController.performDeleteAction(of:completionHandler:)(a6, a3, a4);
  }
}

id @nonobjc UIContextualAction.__allocating_init(style:title:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v8 = 0;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  v12[3] = &block_descriptor_489;
  v9 = _Block_copy(v12);
  v10 = [swift_getObjCClassFromMetadata() contextualActionWithStyle:a1 title:v8 handler:v9];

  _Block_release(v9);

  return v10;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ()(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> (), v8);
}

uint64_t closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    RecentsListViewController.tipKitStopObservation()();
    v21 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x398))();
    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    v8 = static ReportSpamManager.faceTime;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v24[3] = type metadata accessor for RecentsCallItem(0);
    v24[4] = &protocol witness table for RecentsCallItem;
    __swift_allocate_boxed_opaque_existential_1(v24);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    outlined init with copy of IDSLookupManager(v24, v23);
    v11 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v23, (v11 + 2));
    v11[7] = v7;
    v11[8] = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    v11[9] = v10;
    outlined init with copy of IDSLookupManager(v24, v22);
    v12 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v22, (v12 + 2));
    v12[7] = v8;
    v12[8] = v7;
    v12[9] = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    v12[10] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    *(v13 + 24) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    *(v14 + 24) = v10;
    swift_retain_n();
    v15 = v7;

    specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)();
    v17 = v16;

    [v15 fetchSharing];

    __swift_destroy_boxed_opaque_existential_1(v24);

    type metadata accessor for TPTipsHelper();
    static TPTipsHelper.taskQueue.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    v19 = v15;
    v20 = v17;
    dispatch thunk of TaskQueue.async(_:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:), v4, v3);
}

void RecentsListViewController.groupReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_29();
  v22 = v0;
  v1 = type metadata accessor for RecentsCallItem(0);
  v2 = OUTLINED_FUNCTION_9_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
  v3 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_5_5();
  v5.super.isa = v3;
  v8 = OUTLINED_FUNCTION_17_0(v4 + 22, 0x80000001BC4F9E10, v6, v7, v5);
  v10 = v9;

  OUTLINED_FUNCTION_20();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  OUTLINED_FUNCTION_3_66();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  @nonobjc UIContextualAction.__allocating_init(style:title:handler:)(0, v8, v10, v22, v12);
  objc_opt_self();
  v13 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4FC9E0);
  v14 = OUTLINED_FUNCTION_2_52();
  v16 = [v14 v15];

  v17 = OUTLINED_FUNCTION_205();
  [v17 v18];

  v19 = [objc_opt_self() systemOrangeColor];
  v20 = OUTLINED_FUNCTION_205();
  [v20 v21];

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsListViewController.reportAndBlockAction(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    RecentsListViewController.tipKitStopObservation()();
    v22 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x398))();
    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    v8 = static ReportSpamManager.faceTime;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v25[3] = type metadata accessor for RecentsCallItem(0);
    v25[4] = &protocol witness table for RecentsCallItem;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    outlined init with copy of IDSLookupManager(v25, v24);
    v11 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v24, (v11 + 2));
    v11[7] = v7;
    v11[8] = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    v11[9] = v10;
    outlined init with copy of IDSLookupManager(v25, v23);
    v12 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v23, (v12 + 2));
    v12[7] = v8;
    v12[8] = v7;
    v12[9] = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    v12[10] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    *(v13 + 24) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    *(v14 + 24) = v10;
    swift_retain_n();
    v15 = v7;

    specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:), v11, partial apply for closure #2 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:), v12, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v13);
    v17 = v16;

    [v15 fetchSharing];

    __swift_destroy_boxed_opaque_existential_1(v25);

    type metadata accessor for TPTipsHelper();
    static TPTipsHelper.taskQueue.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    v19 = v15;
    v20 = v17;
    dispatch thunk of TaskQueue.async(_:)();
  }

  return result;
}

uint64_t closure #1 in RecentsListViewController.blockAllAction(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    RecentsListViewController.tipKitStopObservation()();
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x398))();
    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v21[3] = type metadata accessor for RecentsCallItem(0);
    v21[4] = &protocol witness table for RecentsCallItem;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    outlined init with copy of IDSLookupManager(v21, v20);
    v12 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v20, (v12 + 2));
    v12[7] = v7;
    v12[8] = partial apply for closure #1 in closure #1 in RecentsListViewController.blockAllAction(of:);
    v12[9] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockAllAction(of:);
    *(v13 + 24) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockAllAction(of:);
    *(v14 + 24) = v10;
    swift_retain_n();
    v15 = v7;

    v16 = specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:), v12, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v13, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v14, v8);

    [v15 fetchSharing];

    __swift_destroy_boxed_opaque_existential_1(v21);

    type metadata accessor for TPTipsHelper();
    static TPTipsHelper.taskQueue.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = v15;
    v19 = v16;
    dispatch thunk of TaskQueue.async(_:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in RecentsListViewController.blockAllAction(of:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in RecentsListViewController.blockAllAction(of:), v4, v3);
}

uint64_t closure #2 in closure #1 in RecentsListViewController.blockAllAction(of:)()
{
  OUTLINED_FUNCTION_24_0();

  v0 = OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_259(v0, v1, v2);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #1 in RecentsListViewController.blockUnknownAction(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    RecentsListViewController.tipKitStopObservation()();
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x398))();
    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v21[3] = type metadata accessor for RecentsCallItem(0);
    v21[4] = &protocol witness table for RecentsCallItem;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    outlined init with copy of IDSLookupManager(v21, v20);
    v12 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v20, (v12 + 2));
    v12[7] = v7;
    v12[8] = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    v12[9] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    *(v13 + 24) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in closure #1 in RecentsListViewController.blockUnknownAction(of:);
    *(v14 + 24) = v10;
    swift_retain_n();
    v15 = v7;

    v16 = specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:), v12, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v13, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v14, v8);

    [v15 fetchSharing];

    __swift_destroy_boxed_opaque_existential_1(v21);

    type metadata accessor for TPTipsHelper();
    static TPTipsHelper.taskQueue.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = v15;
    v19 = v16;
    dispatch thunk of TaskQueue.async(_:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    RecentsListViewController.tipKitStartObservation()();
  }

  return v0(1);
}

void closure #1 in RecentsListViewController.joinCall(at:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for IndexPath();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    swift_beginAccess();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }
}

void RecentsListViewController.engaged(with:)()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = *v3;
    ConversationLink.prevailingSuggestion.getter();
    if (v5)
    {
      v6 = v5;
      RecentsListViewController.linkController.getter();
      OUTLINED_FUNCTION_27_15();
      (*(v7 + 328))(v6);
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  }
}

void RecentsListViewController.joinConversationLink(_:wantsStagingArea:)(void *a1, char a2)
{
  v3 = v2;
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  objc_allocWithZone(MEMORY[0x1E69D8C10]);
  v7 = @nonobjc TUJoinConversationRequest.init(conversationLink:otherInvitedHandles:sendLetMeInRequest:)(a1, v6, 0);
  [v7 setVideoEnabled_];
  if (one-time initialization token for joinLink != -1)
  {
    swift_once();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationInvitationPreference and conformance NSObject, &lazy cache variable for type metadata for TUConversationInvitationPreference);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v7 setInvitationPreferences_];

  [v7 setWantsStagingArea_];
  v9 = [v7 setOriginatingUIType_];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B8))(v9);
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 callFilterController];

    LODWORD(v12) = [v13 shouldRestrictJoinConversationRequest:v7 performSynchronously:1];
    if (v12)
    {
      v14 = v7;
      v11();

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
      goto LABEL_11;
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
  }

  v14 = [objc_opt_self() sharedInstance];
  [v14 launchAppForJoinRequest_];

LABEL_11:
}

void RecentsListViewController.joinOngoingConversation(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state])
  {
    v8 = [objc_opt_self() faceTimeShowInCallUIURL];
    if (v8)
    {
      v9 = v8;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v10);
      v12 = v11;
      (*(v5 + 8))(v7, v4);
      TUOpenURL();
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v13 = TUConversation.joinConversationRequest()();
  v14 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4B8))();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 callFilterController];

  LODWORD(v16) = [v17 shouldRestrictJoinConversationRequest:v13 performSynchronously:1];
  if (!v16)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v15);
LABEL_8:
    v20 = [objc_opt_self() sharedInstance];
    [v20 launchAppForJoinRequest_];

    goto LABEL_9;
  }

  v20 = v13;
  v15();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v15);
LABEL_9:
  v18 = v20;
}

void *RecentsListViewController.conversationLink(at:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_146();
  v3 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  RecentsListViewController.recentsCallItem(at:)();
  OUTLINED_FUNCTION_115(v0, 1, v3);
  if (v5)
  {
    outlined destroy of CallControlsService?(v0, &_s15ConversationKit15RecentsCallItemVSgMd);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_66();
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    RecentsCallItem.conversationLink.getter();
    OUTLINED_FUNCTION_0_74();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    v6 = v10;
    if (v10)
    {
      v7 = v10;
      v8 = OUTLINED_FUNCTION_44_0();
      outlined consume of ConversationLink?(v8);
    }
  }

  return v6;
}

Swift::Void __swiftcall RecentsListViewController.presentOnboardingViewController()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if (Features.isNameAndPhotoC3Enabled.getter())
  {
    OUTLINED_FUNCTION_257(v0, sel_dismissViewControllerAnimated_completion_);
    v2 = *&v0[OBJC_IVAR___FTRecentsListViewController_onboardingController];
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedInstance];
    v6 = [v5 contactStore];

    [v4 presentOnboardingControllerFrom:v1 withContactStore:v6];
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();

    os_log(_:dso:log:type:_:)();
  }
}

Swift::Void __swiftcall RecentsListViewController.updateEditing(_:)(Swift::Bool a1)
{
  [v1 setEditing:a1 animated:1];

  RecentsListViewController.updateLeftBarButton()();
}

void RecentsListViewController.beginEditing()()
{
  [v0 setEditing:1 animated:1];

  RecentsListViewController.updateLeftBarButton()();
}

void RecentsListViewController.endEditing()()
{
  [v0 setEditing:0 animated:1];

  RecentsListViewController.updateLeftBarButton()();
}

id closure #1 in RecentsListViewController.editMenuItems.getter(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = objc_allocWithZone(type metadata accessor for PersonalNicknameMenuView());
  v4 = a2;
  return PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(&v6, a2, &protocol witness table for RecentsListViewController);
}

void closure #2 in RecentsListViewController.editMenuItems.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR___FTRecentsListViewController_snapController) startOnboardingOrEditForMode:1 fromViewController:Strong];
  }
}

void closure #1 in RecentsListViewController.selectActionItem.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong beginEditing];
}

void RecentsListViewController.doneEditingBarButtonItem.getter()
{
  type metadata accessor for RecentsListViewController(0);
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v1 = v0;
  @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
}

uint64_t RecentsListViewController.getFilterMenuBadge()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIBarButtonItem.Badge();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RecentsListViewController.getFilterMenuBadgeCount()() < 1)
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }

  else
  {
    static UIBarButtonItem.Badge.count(_:)();
    v6 = [objc_opt_self() systemGreenColor];
    UIBarButtonItem.Badge.backgroundColor.setter();
    (*(v3 + 32))(a1, v5, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }
}

id RecentsListViewController.newCallBarButtonItem.getter()
{
  v1 = type metadata accessor for CapsuleButtonViewModel();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for CapsuleButton.ContentType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB013CapsuleButtonVAA14_PaddingLayoutVGMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = [objc_opt_self() conversationKit];
  v27._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._countAndFlagsBits = 5719374;
  v12._object = 0xE300000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v27);

  v5->_countAndFlagsBits = 0x69662E6F65646976;
  v5->_object = 0xEA00000000006C6CLL;
  v5[1] = v14;
  (*(v3 + 104))(v5, *MEMORY[0x1E69959C0], v2);
  *(swift_allocObject() + 16) = v0;
  v15 = v0;
  CapsuleButtonViewModel.init(badgeCount:)();
  CapsuleButton.init(content:action:largeScale:viewModel:)();
  v16 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v17 = &v9[*(v7 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVy014CommunicationsB013CapsuleButtonVAA14_PaddingLayoutVGGMd));
  v23 = _UIHostingView.init(rootView:)();
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  return v24;
}

Swift::Int __swiftcall RecentsListViewController.getFilterMenuBadgeCount()()
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))();
  OUTLINED_FUNCTION_27_15();
  (*(v2 + 184))();
  OUTLINED_FUNCTION_247();

  CurrentValueSubject.value.getter();

  return v4;
}

void closure #1 in RecentsListViewController.generateFilterMenu()(uint64_t a1)
{
  v2 = type metadata accessor for FilterMenuViewModel.Action();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, *MEMORY[0x1E6995A60], v2);
    v8 = specialized == infix<A>(_:_:)(a1, v5);
    (*(v3 + 8))(v5, v2);
    if (v8)
    {
      RecentsListViewController.handleCallFilteringAction()();
    }

    else
    {
      (*(v3 + 16))(v5, a1, v2);
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x570))(v5);
    }
  }
}

void RecentsListViewController.handleCallFilteringAction()()
{
  v1 = v0;
  v2 = type metadata accessor for FilterMenuViewModel.Style();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationKit);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Did tap call filtering button", v9, 2u);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69D8D10]) init];
  v11 = [v10 isFilterAsNewCallersEnabledForFaceTime];

  if (v11 & 1) != 0 || (TUFilterAsNewCallersSeenOnboardingScreenForFaceTime())
  {

    RecentsListViewController.goToCallFilteringInSettings()();
  }

  else
  {
    type metadata accessor for FilterOnboardingViewController();
    (*(v3 + 104))(v5, *MEMORY[0x1E6995A58], v2);
    v12 = static FilterOnboardingViewController.onboardingScreen(style:continueAction:dismissAction:target:)();
    (*(v3 + 8))(v5, v2);
    [v1 presentViewController:v12 animated:1 completion:0];
    TUSetFilterAsNewCallersSeenOnboardingScreenForFaceTime();
    v13 = *&v1[OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController];
    *&v1[OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController] = v12;
  }
}

void RecentsListViewController.goToCallFilteringInSettings()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationKit);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, "RecentsListViewController: Did call goToCallFilteringInSettings", v10, 2u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 5)
  {
    v13 = [objc_opt_self() defaultCenter];
    v19 = v13;
    if (one-time initialization token for showCallFilteringSettings != -1)
    {
      swift_once();
      v13 = v19;
    }

    [v13 postNotificationName:static NSNotificationName.showCallFilteringSettings object:0];
    v14 = v19;
  }

  else
  {
    URL.init(string:)();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      outlined destroy of CallControlsService?(v2, &_s10Foundation3URLVSgMd);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      TUOpenSensitiveURL();

      (*(v4 + 8))(v6, v3);
    }
  }
}

id RecentsListViewController.enableCallFiltering()()
{
  v1 = v0;
  if ([*&v0[OBJC_IVAR___FTRecentsListViewController_featureFlags] deviceExpertMigrationEnabled])
  {
    v2 = RecentsListViewController.configurationProvider.getter();
    [v2 setFilterAsNewCallersEnabledForFaceTime_];
  }

  else
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = @nonobjc NSUserDefaults.init(suiteName:)(v3, v5);
    if (!v7)
    {
      goto LABEL_6;
    }

    v2 = v7;
    [v7 setBool:1 forKey:*MEMORY[0x1E69D8E90]];
  }

LABEL_6:

  return [v1 dismissCallFilteringOnboarding];
}

void RecentsListViewController.dismissCallFilteringOnboarding()()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController;
  v2 = *(v0 + OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_1();
  v49 = v5;
  OUTLINED_FUNCTION_4_24();
  v6 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_201(v10);
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel;
  v12 = *(v0 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel);
  if (v12)
  {
    v50 = v10;
    v13 = v12;
    v14 = FilterMenuViewModel.actions.getter();

    v48 = *MEMORY[0x1E6995A90];
    v47 = *(v8 + 104);
    v15 = v47();
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_302_0();
    LOBYTE(v13) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v16, v14);

    v17 = *(v8 + 8);
    v18 = OUTLINED_FUNCTION_157();
    v17(v18);
    if (v13)
    {
      v19 = RecentsListViewController.configurationProvider.getter();
      v20 = [v19 isFilterAsNewCallersEnabledForFaceTime];

      if ((v20 & 1) == 0)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v36, static Logger.conversationKit);
        v31 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        v26 = v50;
        if (!OUTLINED_FUNCTION_18_0(v37))
        {
          goto LABEL_16;
        }

        v38 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_296(v38);
        OUTLINED_FUNCTION_120(&dword_1BBC58000, v39, v40, "Requests toggled off, updating UI");
        goto LABEL_15;
      }
    }

    v21 = *(v2 + v11);
    if (v21)
    {
      v22 = v21;
      v23 = FilterMenuViewModel.actions.getter();

      v24 = (v47)(v1, v48, v6);
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_302_0();
      LOBYTE(v22) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, v23);
      v26 = v50;

      v27 = OUTLINED_FUNCTION_157();
      v17(v27);
      if ((v22 & 1) == 0)
      {
        v28 = RecentsListViewController.configurationProvider.getter();
        v29 = [v28 isFilterAsNewCallersEnabledForFaceTime];

        if (v29)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_1_20();
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v30, static Logger.conversationKit);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (!OUTLINED_FUNCTION_18_0(v32))
          {
            goto LABEL_16;
          }

          v33 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_296(v33);
          OUTLINED_FUNCTION_120(&dword_1BBC58000, v34, v35, "Requests toggled on, updating UI");
LABEL_15:
          OUTLINED_FUNCTION_2_2();
LABEL_16:

          v41 = type metadata accessor for TaskPriority();
          OUTLINED_FUNCTION_168(v49, v42, v43, v41);
          v44 = type metadata accessor for MainActor();

          static MainActor.shared.getter();
          OUTLINED_FUNCTION_182();
          OUTLINED_FUNCTION_109();
          v45 = swift_allocObject();
          v46 = MEMORY[0x1E69E85E0];
          v45[2] = v44;
          v45[3] = v46;
          v45[4] = partial apply for closure #1 in RecentsListViewController.configurationChanged();
          v45[5] = v26;
          type metadata completion function for SyncedScreeningAlphaGradientView();
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in RecentsListViewController.configurationChanged()()
{
  v0 = type metadata accessor for FilterMenuViewModel.Action();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    RecentsListViewController.updateFilterMenu()();
    v9 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v8) + 0x568))();
    v10 = *(v1 + 104);
    v10(v3, *MEMORY[0x1E6995A90], v0);
    v11 = specialized == infix<A>(_:_:)(v6, v3);
    v12 = *(v1 + 8);
    v12(v3, v0);
    v13 = (v12)(v6, v0);
    if (v11)
    {
      v10(v6, *MEMORY[0x1E6995A70], v0);
      (*((*v9 & *v8) + 0x570))(v6);
    }

    else
    {
      v14 = (*((*v9 & *v8) + 0x630))(v13);
      v15 = (*(*v14 + 184))(v14);

      (*((*v9 & *v15) + 0x408))(0, 0);
    }
  }
}

uint64_t closure #2 in RecentsListViewController.configurationChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecentsListViewController.configurationChanged(), v7, v6);
}

uint64_t closure #2 in RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 16);

  v1(v2);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #3 in RecentsListViewController.configurationChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #3 in RecentsListViewController.configurationChanged(), v7, v6);
}

void RecentsListViewController.didSelect(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_331();
  OUTLINED_FUNCTION_256();
  if ([*(v1 + OBJC_IVAR___FTRecentsListViewController_featureFlags) recentsCallTapTargetsEnabled])
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v3 = OUTLINED_FUNCTION_205();
    v5 = [v3 v4];

    if (!v5)
    {
      v5 = v0;
    }

    v6 = OUTLINED_FUNCTION_316();
    RecentsListViewController.showDetailsAtIndexPath(_:from:)(v6);
  }

  else
  {
    RecentsListViewController.joinCall(at:)();
  }

  [v0 deselectItemAtIndexPath:IndexPath._bridgeToObjectiveC()().super.isa animated:1];
  OUTLINED_FUNCTION_9_17();
}

void RecentsListViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_256();
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x5F8))() & 1) == 0)
  {
    if ([v0 isEditing])
    {
      v2 = RecentsListViewController.deleteButtonItem.getter();
      outlined bridged method (pb) of @objc UICollectionView.indexPathsForSelectedItems.getter(v0);
      OUTLINED_FUNCTION_270();
      [v2 setEnabled_];
    }

    else
    {
      OUTLINED_FUNCTION_44_0();

      RecentsListViewController.didSelect(_:didSelectItemAt:)();
    }
  }
}

void RecentsListViewController.collectionView(_:didDeselectItemAt:)(void *a1)
{
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x5F8))() & 1) == 0 && [a1 isEditing])
  {
    v3 = RecentsListViewController.deleteButtonItem.getter();
    outlined bridged method (pb) of @objc UICollectionView.indexPathsForSelectedItems.getter(a1);
    OUTLINED_FUNCTION_270();
    [v3 setEnabled_];
  }
}

void RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v66 = type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v68 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v69 = v10;
  v11 = OUTLINED_FUNCTION_4_24();
  v70 = type metadata accessor for RecentsCallItem(v11);
  OUTLINED_FUNCTION_1();
  v64 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v65 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_1();
  v16 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v73 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v72 = v19;
  v78 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_223();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v76 = v23;
  v77 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_149();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32();
  v29 = v28;
  v30 = RecentsListViewController.conversationLink(at:)();
  if (v30)
  {
    v31 = v30;
    v74 = v16;
    v75 = v4;
    v67 = v0;
    v32 = [v30 URL];
    if (v32)
    {
      v33 = v32;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v76;
      v35 = *(v76 + 32);
      v69 = v76 + 32;
      v70 = v35;
      v36 = v29;
      v63 = v29;
      v35(v29, v1, v77);
      v38 = v73;
      v37 = v74;
      v66 = *(v73 + 16);
      v66(v2, v75, v74);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
      v42 = v67;
      OUTLINED_FUNCTION_30_2();
      outlined assign with take of RecentsCallItem?();
      swift_endAccess();
      v68 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
      v43 = v34;
      OUTLINED_FUNCTION_284();
      v44 = v71;
      v45 = v36;
      v46 = v77;
      v47(v71, v45, v77);
      v66(v78, v75, v37);
      v48 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v49 = (v25 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
      v51 = (*(v38 + 80) + v50 + 8) & ~*(v38 + 80);
      v52 = swift_allocObject();
      v70(v52 + v48, v44, v46);
      *(v52 + v49) = v42;
      *(v52 + v50) = v31;
      (*(v38 + 32))(v52 + v51, v78, v74);
      v53 = v42;
      type metadata completion function for SyncedScreeningAlphaGradientView();
      UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
      (*(v76 + 8))(v63, v46);
      goto LABEL_10;
    }

    v0 = v67;
  }

  OUTLINED_FUNCTION_287();
  if (v54)
  {
    v55 = v69;
    v56 = v0;
    RecentsListViewController.recentsCallItem(at:)();
    v57 = v70;
    OUTLINED_FUNCTION_115(v55, 1, v70);
    if (v54)
    {
      outlined destroy of CallControlsService?(v55, &_s15ConversationKit15RecentsCallItemVSgMd);
    }

    else
    {
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      type metadata accessor for SpamFlowController();
      v58 = OUTLINED_FUNCTION_328();
      v80 = v57;
      v81 = &protocol witness table for RecentsCallItem;
      __swift_allocate_boxed_opaque_existential_1(&v79);
      OUTLINED_FUNCTION_1_72();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      outlined init with take of TapInteractionHandler(&v79, v58 + 16);
      OUTLINED_FUNCTION_6_47();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4 && ((1 << EnumCaseMultiPayload) & 0x19) != 0)
      {
        OUTLINED_FUNCTION_4_47();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
        OUTLINED_FUNCTION_1_72();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v60 = (v65 + ((*(v64 + 80) + 24) & ~*(v64 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        *(v61 + 16) = v56;
        OUTLINED_FUNCTION_3_66();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
        *(v61 + v60) = v58;
        v62 = v56;
        type metadata completion function for SyncedScreeningAlphaGradientView();
        UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
        OUTLINED_FUNCTION_0_74();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      }

      else
      {
        OUTLINED_FUNCTION_0_74();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();

        OUTLINED_FUNCTION_4_47();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

Class closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v52 = a3;
  v53 = a4;
  v54 = a2;
  v58 = type metadata accessor for IndexPath();
  v56 = *(v58 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v9 = @nonobjc UIImage.__allocating_init(systemName:)();
  v60 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v10 = objc_opt_self();
  v11 = [v10 conversationKit];
  v62._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4FC5B0;
  v13._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v62);

  (*(v7 + 16))(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v54 = v9;
  v51 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17 = @nonobjc UIImage.__allocating_init(systemName:)();
  v18 = [v10 conversationKit];
  v63._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x80000001BC4FC5F0;
  v20.value._countAndFlagsBits = 0x61737265766E6F43;
  v20.value._object = 0xEF74694B6E6F6974;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v63);

  v22 = swift_allocObject();
  v23 = v52;
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = v53;
  *(v24 + 16) = v53;
  *(v24 + 24) = v22;
  v50 = v17;
  v26 = v25;
  v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27 = @nonobjc UIImage.__allocating_init(systemName:)();
  v28 = [v10 conversationKit];
  v64._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x80000001BC4FC610;
  v30.value._countAndFlagsBits = 0x61737265766E6F43;
  v30.value._object = 0xEF74694B6E6F6974;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v64);

  v33 = v55;
  v32 = v56;
  v34 = v58;
  (*(v56 + 16))(v55, v59, v58);
  v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v23;
  (*(v32 + 32))(v36 + v35, v33, v34);
  v37 = v27;
  v38 = v23;
  v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BC4BC370;
  v41 = v51;
  v42 = v53;
  *(v40 + 32) = v51;
  *(v40 + 40) = v42;
  *(v40 + 48) = v39;
  v43 = v41;
  v44 = v42;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v61.value.super.isa = 0;
  v61.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v61, 1, 0xFFFFFFFFFFFFFFFFLL, v40, v48).super.super.isa;

  return isa;
}

void closure #1 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v2 = [objc_opt_self() generalPasteboard];
  v0 = URL.absoluteString.getter();
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(v0, v1, v2, &selRef_setString_);
}

void closure #2 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUStringShareItem);
  v4 = [objc_opt_self() conversationKit];
  v22._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._object = 0x80000001BC4F97A0;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v22);

  v8 = TUStringShareItem.__allocating_init(message:)();
  type metadata accessor for LinkShareActivityViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BAA20;
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULinkShareItem);
  *(v9 + 32) = v2;
  *(v9 + 88) = v3;
  *(v9 + 56) = v10;
  *(v9 + 64) = v8;
  v11 = v2;
  v12 = v8;
  v13 = LinkShareActivityViewController.__allocating_init(activityItems:applicationActivities:)(v9, 0);
  [v13 setOverrideUserInterfaceStyle_];
  [v13 setAllowsCustomPresentationStyle_];
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = [Strong traitCollection];

      v19 = [v18 horizontalSizeClass];
      if (v19 == 2)
      {
        [v13 setModalPresentationStyle_];
      }
    }
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v20 presentViewController:v13 animated:1 completion:0];
  }
}

uint64_t closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x630))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  (*(v6 + 16))(v8 + v7, a3, v5);
  (*(*v4 + 296))(v8);

  swift_allocObject();
  swift_unknownObjectUnownedInit();

  RecentsListViewController.removeRecentCallsAndReportIfNeeded(_:shouldDeleteAllItemsForContact:preparationHandler:)();
}

void closure #1 in closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(char a1)
{
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong setEditing_];
  }
}

void UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)()
{
  OUTLINED_FUNCTION_321();
  v18 = v4;
  v19 = v5;
  OUTLINED_FUNCTION_244();
  v7 = v6;
  OUTLINED_FUNCTION_256();
  if (!v8)
  {
    v9 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v16 = v1;
  v17 = v7;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_301();
  v14 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v15 = &block_descriptor_389;
  v9 = _Block_copy(v13);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = v3;
  v17 = v2;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_301();
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v15 = &block_descriptor_386;
  v10 = _Block_copy(v13);

LABEL_6:
  [swift_getObjCClassFromMetadata() configurationWithIdentifier:v0 previewProvider:v9 actionProvider:v10];
  v11 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
  v12 = OUTLINED_FUNCTION_4_31();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v12);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  OUTLINED_FUNCTION_273();
}

Class closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for RecentsCallItem(0) - 8;
  MEMORY[0x1EEE9AC00](v34);
  v29 = v3;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v4 = @nonobjc UIImage.__allocating_init(systemName:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v31 = objc_opt_self();
  v5 = [v31 conversationKit];
  v37._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC4FC610;
  v7._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v37);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  *(swift_allocObject() + 16) = v9;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v33 = v4;
  v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = SpamFlowController.determineFlow()();
  v11 = @nonobjc UIImage.__allocating_init(systemName:)();
  v12 = [v31 conversationKit];
  v38._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0x5045525F4D415053;
  v13._object = 0xEB0000000054524FLL;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v38);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v16;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v18 = v11;
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BAC30;
  *(v20 + 32) = v32;
  v35 = v20;
  v21 = *(a3 + *(v34 + 68));
  v22 = v32;
  if (v21 == 1)
  {

    v20 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  if (v10 != ConversationKit_SpamFlowController_Flow_groupIntiatorReport && v10 != ConversationKit_SpamFlowController_Flow_knownContact)
  {
    v24 = v19;
    MEMORY[0x1BFB20CC0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v35;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v36, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v28).super.super.isa;

  return isa;
}

uint64_t closure #1 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd);
    type metadata accessor for RecentsCallItem(0);
    *(swift_allocObject() + 16) = xmmword_1BC4BA940;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)();
  }

  return result;
}

void closure #2 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, unsigned __int8 a2)
{
  if (one-time initialization token for spam != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.spam);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a2;
    _os_log_impl(&dword_1BBC58000, v4, v5, "spamFlowController: %ld", v6, 0xCu);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  switch(a2)
  {
    case 1u:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        RecentsListViewController.presentBlockUnknownAction(of:)();
        goto LABEL_14;
      }

      break;
    case 2u:
    case 5u:
      return;
    case 3u:
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v8 = v11;
        RecentsListViewController.presentGroupReportAndBlockAction(of:)();
        goto LABEL_14;
      }

      break;
    case 4u:
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v8 = v10;
        RecentsListViewController.presentReportAndBlockAction(of:)();
        goto LABEL_14;
      }

      break;
    default:
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        RecentsListViewController.presentBlockAllAction(of:)();
LABEL_14:
      }

      break;
  }
}

UITargetedPreview_optional __swiftcall RecentsListViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_115(v8, 1, v9);
  if (v11)
  {
    outlined destroy of CallControlsService?(v8, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_4_31();
    v13(v12);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v3 cellForItemAtIndexPath_];

    if (v15)
    {
      v16 = OUTLINED_FUNCTION_84_1();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
      OUTLINED_FUNCTION_30_2();
      outlined assign with take of RecentsCallItem?();
      swift_endAccess();
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
      v20 = [objc_opt_self() clearColor];
      [v19 setBackgroundColor_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedPreview);
      v21 = OUTLINED_FUNCTION_208();
      UITargetedPreview.__allocating_init(view:parameters:)(v21, v22);
    }

    v23 = OUTLINED_FUNCTION_45_1();
    v24(v23);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
  result.value.super.isa = v25;
  result.is_nil = v26;
  return result;
}

Swift::Void __swiftcall RecentsListViewController.showLinkDetailViewController(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_55();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_34_15();
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  if (RecentsListViewController.viewDidFinishInitialLoad.getter())
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x630))();
    OUTLINED_FUNCTION_27_15();
    v11 = (*(v10 + 184))();

    v12 = OUTLINED_FUNCTION_45_1();
    v13(v12);

    v14 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_115(v14, v15, v8);
    if (v16)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit15RecentsCallItemVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v17 = OUTLINED_FUNCTION_13_12();
      *(v17 + 16) = xmmword_1BC4BA940;

      v18 = MEMORY[0x1E69E6158];
      v19 = String.init<A>(reflecting:)();
      v21 = v20;
      *(v17 + 56) = v18;
      *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      OUTLINED_FUNCTION_3_66();
      OUTLINED_FUNCTION_32_2();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      RecentsListViewController.showLinkDetailViewController(for:)();
      OUTLINED_FUNCTION_0_74();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v22 = (v2 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation);
    *v22 = v3;
    v22[1] = v1;

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t RecentsListViewController.handleDeferredLinkDetailPresentation()()
{
  v1 = (v0 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation);
  v2 = *(v0 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation + 8);
  if (v2)
  {
    v3 = *v1;

    v4._countAndFlagsBits = v3;
    v4._object = v2;
    RecentsListViewController.showLinkDetailViewController(for:)(v4);

    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

void RecentsListViewController.showVideoPlayerForMessage(targetItem:bypassSafety:)(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v49 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v3 isViewLoaded])
  {
LABEL_9:
    if ([v3 isViewLoaded] && (v26 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x630))(), v27 = (*(*v26 + 168))(v26), , (v27 & 1) != 0))
    {
      if (one-time initialization token for videoMessaging != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, &static Logger.videoMessaging);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BBC58000, v29, v30, "Not showing video message: Video message missing media url.", v31, 2u);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for videoMessaging != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, &static Logger.videoMessaging);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1BBC58000, v33, v34, "Not showing Video message: view is not loaded or in background.", v35, 2u);
        MEMORY[0x1BFB23DF0](v35, -1, -1);
      }

      v36 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (v36)
      {
        v37 = v36;
        v38 = [v36 messageUUID];

        if (v38)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v41 = type metadata accessor for UUID();
        __swift_storeEnumTagSinglePayload(v8, v39, 1, v41);
        outlined init with take of URL?();
      }

      else
      {
        v40 = type metadata accessor for UUID();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v40);
      }

      swift_beginAccess();
      outlined assign with take of RecentsCallItem?();
      swift_endAccess();
    }

    return;
  }

  v50 = v18;
  v21 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (!v21)
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
LABEL_8:
    outlined destroy of CallControlsService?(v16, &_s10Foundation3URLVSgMd);
    goto LABEL_9;
  }

  v22 = v21;
  v49[1] = a2;
  v23 = [v21 mediaURL];

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v50;
  __swift_storeEnumTagSinglePayload(v14, v24, 1, v17);
  outlined init with take of URL?();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  v42 = (*(v25 + 32))(v20, v16, v17);
  v43 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x630))(v42);
  v44 = (*(*v43 + 168))(v43);

  if ((v44 & 1) == 0)
  {
    (*(v25 + 8))(v20, v17);
    goto LABEL_9;
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, &static Logger.videoMessaging);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1BBC58000, v46, v47, "Presenting video message player", v48, 2u);
    MEMORY[0x1BFB23DF0](v48, -1, -1);
  }

  RecentsListViewController.presentVideoMessagePlayer(url:and:bypassSafety:)();
  (*(v50 + 8))(v20, v17);
}

void closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];
    if (v6)
    {
      v7 = v6;
    }

    v8 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    type metadata accessor for MainActor();
    v9 = v5;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:), v7, v6);
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd);
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for RecentsCallItem(v1);
  OUTLINED_FUNCTION_9_0(v2);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:);

  return RecentsListViewController.deleteVideoMessageCallItems(_:)(v3);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:);
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v2 = *(v0 + 72);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, static Logger.conversationKit);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 72);
  if (v7)
  {
    OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_268();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    outlined destroy of CallControlsService?(v9, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = v4;
  OUTLINED_FUNCTION_20_2();
  v10 = OUTLINED_FUNCTION_17_1();
  v11 = type metadata accessor for RecentsCallItem(v10);
  v12 = OUTLINED_FUNCTION_9_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v17);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.lvmEverywhereEnabled.getter() & 1) == 0 || *(v4 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) != 1)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_176();
  (*(v18 + 2288))(&v37);
  if (!v38)
  {
    outlined destroy of CallControlsService?(&v37, &_s15ConversationKit25RecentsListViewControllerC23VoicemailDetailBuilding_pSgMd);
LABEL_12:
    RecentsListViewController.presentVoicemail(message:)();
    return;
  }

  outlined init with take of TapInteractionHandler(&v37, v39);
  v35 = v40;
  v33 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  OUTLINED_FUNCTION_20();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_24();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v3;
  OUTLINED_FUNCTION_20();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v19 = ((*(v14 + 80) + 24) & ~*(v14 + 80)) + v16;
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v23 = (v22 + v21);
  *v23 = v8;
  v23[1] = v7;
  v23[2] = v6;
  v23[3] = v5;
  *(v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v29 = *(v33 + 8);
  v24 = a3;

  v25 = v3;

  v26 = v29(v25, partial apply for closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v34, partial apply for closure #2 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v31, partial apply for closure #3 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v22, v35, v33);

  if (!v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    goto LABEL_12;
  }

  v27 = [v9 navigationController];
  if (v27)
  {
    v28 = v27;
    [v27 pushViewController:v26 animated:1];
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
}

void closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong navigationController];
    if (v8)
    {
      v9 = v8;
    }

    v10 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v7;
    v12 = a2;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v14[5] = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v8, v7);
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_24_0();
  dispatch thunk of Message.recordUUID.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:);
  v2 = *(v0 + 56);

  return RecentsListViewController.deleteFTMSMessage(uuid:)(v2);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  v5 = v2[5];
  *v4 = *v1;
  v3[12] = v0;

  v3[13] = *(v5 + 8);
  v3[14] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  v8 = v2[10];
  v9 = v2[9];
  if (v0)
  {
    v10 = closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:);
  }

  else
  {
    v10 = closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.conversationKit);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v18 = v0[12];
    v7 = OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_23();
    *v7 = 136315138;
    dispatch thunk of Message.recordUUID.getter();
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v8, v9);
    dispatch thunk of CustomStringConvertible.description.getter();
    v10 = OUTLINED_FUNCTION_77();
    v6(v10);
    v11 = OUTLINED_FUNCTION_252();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to delete orphan voicemail with uuid: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_2();
    v15 = v18;
  }

  else
  {
    v15 = v0[12];
  }

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t RecentsListViewController.deleteFTMSMessage(uuid:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](RecentsListViewController.deleteFTMSMessage(uuid:), v4, v3);
}

uint64_t RecentsListViewController.deleteFTMSMessage(uuid:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  type metadata accessor for MessageStoreController();
  v0[9] = static MessageStoreController.shared.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_64_4();
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_1BC4BA940;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5 + v1, v4, v2);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_277(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_130(v8);

  return MEMORY[0x1EEE03C10](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = RecentsListViewController.deleteFTMSMessage(uuid:);
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = RecentsListViewController.deleteFTMSMessage(uuid:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  v3 = OUTLINED_FUNCTION_15_14();
  v1(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_23();
    *v6 = 136446210;
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v7, v8);
    OUTLINED_FUNCTION_278_0();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_243_0();
    v9 = OUTLINED_FUNCTION_148();
    v10(v9);
    v11 = OUTLINED_FUNCTION_77();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v6 + 4) = v14;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v15, v16, "Deleted video message with UUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v17 = OUTLINED_FUNCTION_148();
    v18(v17);
  }

  OUTLINED_FUNCTION_13();

  return v19();
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

void *closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result navigationController];
    if (v2)
    {
      v3 = v2;
    }

    OUTLINED_FUNCTION_176();
    (*(v4 + 704))(v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = OUTLINED_FUNCTION_29_6();
    v6(v5);

    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

void closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_20_2();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_173();
    v6 = OUTLINED_FUNCTION_18_1();
    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(v7, a3, v6, v8, v9, v10);
  }
}

void RecentsListViewController.presentVoicemail(message:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_224();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  dispatch thunk of Message.recordUUID.getter();
  v4 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 phoneAppVoicemailURLForMessageUUID_];

  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = OUTLINED_FUNCTION_308();
    v8(v7);
    URL._bridgeToObjectiveC()(v9);
    OUTLINED_FUNCTION_271();

    v10 = OUTLINED_FUNCTION_309();
    v11(v10);
  }

  v12 = OUTLINED_FUNCTION_206();
  v13(v12);
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.presentVideoMessagePlayerForOrphaned(message:and:bypassSafety:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_241();
  v61 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v57 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v56 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v55 = v15;
  OUTLINED_FUNCTION_4_24();
  v54 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore10TranscriptVSgMd);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34_15();
  v21 = type metadata accessor for Summary();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore7SummaryVSgMd);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_146();
  v27 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v28.super.isa = v27;
  v62 = OUTLINED_FUNCTION_17_0(0xD000000000000015, 0x80000001BC4FB490, v29, v30, v28);

  dispatch thunk of Message.summary.getter();
  if (__swift_getEnumTagSinglePayload(v3, 1, v21))
  {
    outlined destroy of CallControlsService?(v3, &_s20FaceTimeMessageStore7SummaryVSgMd);
  }

  else
  {
    (*(v23 + 16))(v6, v3, v21);
    outlined destroy of CallControlsService?(v3, &_s20FaceTimeMessageStore7SummaryVSgMd);
    v35 = Summary.text.getter();
    (*(v23 + 8))(v6, v21);
    OUTLINED_FUNCTION_38_2();
    if (String.count.getter() >= 1)
    {
      goto LABEL_9;
    }
  }

  dispatch thunk of Message.transcript.getter();
  v31 = type metadata accessor for Transcript();
  v32 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v32, v33, v31);
  if (!v34)
  {
    v35 = Transcript.text.getter();
    (*(*(v31 - 8) + 8))(v5, v31);
    OUTLINED_FUNCTION_38_2();
    if (String.count.getter() < 1)
    {

      goto LABEL_10;
    }

LABEL_9:

    v62 = v35;
    goto LABEL_10;
  }

  outlined destroy of CallControlsService?(v5, &_s20FaceTimeMessageStore10TranscriptVSgMd);
LABEL_10:
  dispatch thunk of Message.duration.getter();
  v37 = v36;
  dispatch thunk of Message.recordUUID.getter();
  v53 = UUID.uuidString.getter();
  v39 = v38;
  v41 = *(v17 + 8);
  v40 = (v17 + 8);
  v41(v4, v54);
  dispatch thunk of Message.messageFile.getter();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v61);
  dispatch thunk of Message.messageThumbnail.getter();
  v45 = dispatch thunk of Message.isRead.getter();
  v46 = dispatch thunk of Message.isSensitive.getter();
  v47 = objc_opt_self();
  v48 = dispatch thunk of Message.from.getter();
  MEMORY[0x1BFB209B0](v48);
  OUTLINED_FUNCTION_242();

  v49 = [v47 normalizedHandleWithDestinationID_];

  v50 = objc_allocWithZone(MEMORY[0x1E69D89D8]);
  LOBYTE(v53) = 1;
  v51 = @nonobjc TPMessageIndicatorViewModel.init(duration:identifier:mediaURL:thumbnailURL:transcriptSummary:isRead:isSensitive:isVideo:from:)(v37, v53, v39, v55, v56, v62, v49, v45 & 1, v46 & 1, 1, v49);
  dispatch thunk of Message.messageFile.getter();
  RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(a2, v57, v51, a3 & 1);

  return (*(v60 + 8))(v57, v61);
}

void RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v130 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_174();
  v129 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v133 = v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_159();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_223();
  if ((v6 & 1) == 0 && [objc_opt_self() isCommunicationSafetyEnabled] && objc_msgSend(v8, sel_isSensitive))
  {
    v23 = [v8 messageUUID];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = type metadata accessor for UUID();
      v26 = 0;
    }

    else
    {
      v25 = type metadata accessor for UUID();
      v26 = 1;
    }

    __swift_storeEnumTagSinglePayload(v3, v26, 1, v25);
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
    RecentsListViewController.showSafetyIntervention()();
  }

  else
  {
    v132 = v8;
    v27 = type metadata accessor for TaskPriority();
    v28 = v17;
    OUTLINED_FUNCTION_168(v1, v29, v30, v27);
    OUTLINED_FUNCTION_1_72();
    LODWORD(v126) = v6;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    type metadata accessor for MainActor();
    v31 = v4;
    v32 = static MainActor.shared.getter();
    v33 = v11;
    v34 = *(v15 + 80);
    v128 = v28;
    v135 = v34;
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v32;
    v35[3] = v36;
    v131 = v31;
    v35[4] = v31;
    OUTLINED_FUNCTION_3_66();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    type metadata completion function for SyncedScreeningAlphaGradientView();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();

    v37 = type metadata accessor for URL();
    OUTLINED_FUNCTION_7_0();
    (*(v38 + 16))(v2, v130, v37);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
    LOBYTE(v137) = 1;
    v42 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel(0));
    VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
    v44 = v43;
    v45 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v46.super.isa = v45;
    OUTLINED_FUNCTION_17_0(0xD000000000000018, 0x80000001BC4FB4B0, v47, v48, v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v49 = OUTLINED_FUNCTION_13_12();
    *(v49 + 16) = xmmword_1BC4BA940;
    v50 = v33;
    v51 = (v33 + *(v129 + 20));
    v52 = *v51;
    v53 = v51[1];
    *(v49 + 56) = MEMORY[0x1E69E6158];
    *(v49 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v122 = v52;
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *(v49 + 32) = v54;
    *(v49 + 40) = v55;
    v127 = v53;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_211();
    String.init(format:_:)();

    OUTLINED_FUNCTION_13_2();
    v56 = MEMORY[0x1E69E7D40];
    v57 = OUTLINED_FUNCTION_1_5();
    v58(v57);
    if (v126)
    {
      v59 = [objc_opt_self() isCommunicationSafetyEnabled];
      v60 = v132;
      v61 = &selRef_fillRule;
      if (v59)
      {
        OUTLINED_FUNCTION_142_2();
        (*(v62 + 680))(1);
      }

      v63 = v135;
    }

    else
    {
      v61 = &selRef_fillRule;
      v60 = v132;
      [v132 isSensitive];
      v63 = v135;
    }

    OUTLINED_FUNCTION_142_2();
    (*(v64 + 632))();
    if ([v60 v61[247]] && objc_msgSend(objc_opt_self(), sel_isCommunicationSafetyEnabled))
    {
      OUTLINED_FUNCTION_142_2();
      (*(v65 + 536))(0);
    }

    OUTLINED_FUNCTION_20();
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = v56;
    v134 = v50;
    v68 = v44;
    v125 = type metadata accessor for RecentsCallItem;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v123 = ~v63;
    v69 = (v63 + 24) & ~v63;
    v70 = v128;
    v71 = swift_allocObject();
    *(v71 + 16) = v66;
    OUTLINED_FUNCTION_111_0();
    v121[1] = v69;
    v124 = v72;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    v130 = ((*v67 & *v68) + 448);
    v73 = *v130;

    v74 = OUTLINED_FUNCTION_197();
    v75 = v73(v74);
    *(v76 + 80) = partial apply for closure #2 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v76 + 88) = v71;

    v77 = OUTLINED_FUNCTION_196();
    v75(v77);

    OUTLINED_FUNCTION_286();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v78 = ((v135 + 16) & v123) + v70;
    v79 = swift_allocObject();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    v80 = OUTLINED_FUNCTION_197();
    v126 = v73;
    v81 = v73(v80);
    *(v82 + 96) = partial apply for closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v82 + 104) = v79;

    v83 = OUTLINED_FUNCTION_196();
    v81(v83);
    OUTLINED_FUNCTION_20();
    v84 = swift_allocObject();
    v85 = v131;
    swift_unknownObjectWeakInit();

    v86 = OUTLINED_FUNCTION_197();
    v87 = v73(v86);
    *v88 = partial apply for closure #4 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    v88[1] = v84;

    v89 = OUTLINED_FUNCTION_196();
    v87(v89);

    OUTLINED_FUNCTION_286();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v90 = swift_allocObject();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    *(v90 + ((v78 + 7) & 0xFFFFFFFFFFFFFFF8)) = v85;
    v91 = *((*MEMORY[0x1E69E7D40] & *v68) + 0x1F0);
    v92 = v85;
    v93 = OUTLINED_FUNCTION_197();
    v94 = v91(v93);
    *v95 = partial apply for closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    v95[1] = v90;

    v96 = OUTLINED_FUNCTION_196();
    v94(v96);
    OUTLINED_FUNCTION_20();
    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v98 = OUTLINED_FUNCTION_197();
    v99 = v91(v98);
    *(v100 + 16) = partial apply for closure #6 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v100 + 24) = v97;

    v101 = OUTLINED_FUNCTION_196();
    v99(v101);

    OUTLINED_FUNCTION_24();
    v102 = swift_allocObject();
    v103 = v132;
    *(v102 + 16) = v132;
    *(v102 + 24) = v92;
    v104 = v92;
    v105 = v103;
    v106 = OUTLINED_FUNCTION_197();
    v107 = v126(v106);
    *(v108 + 48) = partial apply for closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v108 + 56) = v102;

    v109 = OUTLINED_FUNCTION_196();
    v107(v109);
    OUTLINED_FUNCTION_20();
    v110 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v111 = v127;
    if (v127)
    {
      OUTLINED_FUNCTION_1_72();
      v112 = v134;
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      v113 = swift_allocObject();
      *(v113 + 16) = v110;
      OUTLINED_FUNCTION_3_66();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      v114 = *(v112 + *(v129 + 48));

      RecentsCallItem.atLeastOneUnknownCaller.getter();
      *&v137 = v122;
      *(&v137 + 1) = v111;
      BYTE8(v138) = v115 & 1;
      v116 = partial apply for closure #1 in closure #8 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    }

    else
    {

      v114 = 0;
      v116 = 0;
      v113 = 0;
      *(&v138 + 1) = 0;
      v137 = 0uLL;
    }

    *&v138 = v114;
    v139 = 0;
    v140 = 0;
    *&v141 = v116;
    *(&v141 + 1) = v113;
    v136[0] = v137;
    v136[1] = v138;
    v136[2] = 0u;
    v136[3] = v141;
    objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewController());
    v117 = v68;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v118 = VideoMessagePlayerViewController.init(viewModel:participantInfo:)(v117, v136);
    if (static Platform.current.getter() == 1)
    {
      [v118 setModalPresentationStyle_];
      OUTLINED_FUNCTION_259(v104, sel_presentViewController_animated_completion_, v118);
    }

    else
    {
      v119 = [v104 navigationController];
      if (v119)
      {
        v120 = v119;
        [v119 pushViewController:v118 animated:1];
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      SafetyCheckManager.fetchSharing()();
    }

    outlined destroy of CallControlsService?(&v137, &_s15ConversationKit21PlayerParticipantInfoVSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsListViewController.showSafetyIntervention()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69CA8E8]);
  v3 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v5 = @nonobjc SCUIInterventionViewController.init(workflow:contextDictionary:)(v3, v4);
  [v5 setInterventionDelegate_];
  v6 = v5;
  [v6 setModalInPresentation_];
  [v6 setModalPresentationStyle_];

  OUTLINED_FUNCTION_259(v1, sel_presentViewController_animated_completion_, v6);
}

uint64_t closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:), v7, v6);
}

uint64_t closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd);
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for RecentsCallItem(v1);
  OUTLINED_FUNCTION_9_0(v2);
  OUTLINED_FUNCTION_64_4();
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  *(v3 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  OUTLINED_FUNCTION_72_3();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_130(v5);
  v6 = OUTLINED_FUNCTION_312();

  return v8(v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = RecentsListViewController.deleteVideoMessageCallItems(_:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_13();

  return v1();
}

void *closure #2 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result dismissViewControllerAnimated:1 completion:0];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))(v8, v5);
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v7 + 64))(a2, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

void closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v66 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v58 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecentsCallItem.tuHandles.getter();
  v17 = specialized Collection.first.getter(v16);

  if (v17)
  {
    v58 = v10;
    v60 = v13;
    v61 = v12;
    URLComponents.init()();
    URLComponents.scheme.setter();
    MEMORY[0x1BFB19BE0](1852141679, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
    type metadata accessor for URLQueryItem();
    v18 = swift_allocObject();
    v62 = xmmword_1BC4BA940;
    *(v18 + 16) = xmmword_1BC4BA940;
    v59 = v17;
    v19 = [v17 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      outlined destroy of CallControlsService?(v8, &_s10Foundation3URLVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = v62;
      v22 = v60;
      v21 = v61;
      (*(v60 + 16))(v2, v15, v61);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v21);
      specialized >> prefix<A>(_:)(v2, v23, v24, v25, v26, v27, v28, v29, v58, v59, v60, v61, v62, *(&v62 + 1), v63, v64, v65, v66);
      v31 = v30;
      v33 = v32;
      outlined destroy of CallControlsService?(v2, &_s10Foundation13URLComponentsVSgMd);
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = v31;
      *(v20 + 40) = v33;
      os_log(_:dso:log:type:_:)();

      (*(v22 + 8))(v15, v21);
    }

    else
    {
      v34 = v58;
      v35 = v64;
      (*(v58 + 32))(v64, v8, v9);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v36 = swift_allocObject();
      *(v36 + 16) = v62;
      (*(v34 + 16))(v6, v35, v9);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
      specialized >> prefix<A>(_:)(v6, v37, v38, v39, v40, v41, v42, v43, v58, v59, v60, v61, v62, *(&v62 + 1), v63, v64, v65, v66);
      v45 = v44;
      v47 = v46;
      outlined destroy of CallControlsService?(v6, &_s10Foundation3URLVSgMd);
      *(v36 + 56) = MEMORY[0x1E69E6158];
      v48 = lazy protocol witness table accessor for type String and conformance String();
      *(v36 + 64) = v48;
      *(v36 + 32) = v45;
      *(v36 + 40) = v47;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      URL._bridgeToObjectiveC()(v49);
      v51 = v50;
      v65 = 0;
      LODWORD(v36) = TUOpenURLWithError();

      v52 = v65;
      if (v36)
      {
        v53 = v65;

        (*(v34 + 8))(v35, v9);
        (*(v60 + 8))(v15, v61);
      }

      else
      {
        v54 = swift_allocObject();
        *(v54 + 16) = v62;
        if (v52)
        {
          v65 = v52;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSError);
          v55 = v52;
          v56 = String.init<A>(reflecting:)();
        }

        else
        {
          v57 = 0xE300000000000000;
          v56 = 7104878;
        }

        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = v48;
        *(v54 + 32) = v56;
        *(v54 + 40) = v57;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        (*(v34 + 8))(v64, v9);
        (*(v60 + 8))(v15, v61);
      }
    }
  }
}

void closure #4 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, UIViewController_optional *a2)
{
  v3 = RecentsCallItem.contact.getter();
  if (v3)
  {
    v4 = v3;
    CNContact.block()();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9CNContactCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = RecentsCallItem.contact.getter();
  SafetyCheckManager.present(for:on:)(inited, a2);
  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

Swift::Void __swiftcall CNContact.block()()
{
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = v0;
  v0 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v45 = v4;
  if (os_log_type_enabled(v0, v5))
  {
    v6 = OUTLINED_FUNCTION_30_1();
    v49 = swift_slowAlloc();
    *v6 = 136315394;
    v2 = 0x1FA9B0000uLL;
    v7 = [v4 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
    OUTLINED_FUNCTION_246_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14CNLabeledValueCGMd);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v49);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = [v4 0x1FA9B0D78];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = v45;
    v12 = String.init<A>(reflecting:)();
    v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v49);

    *(v6 + 14) = v1;
    _os_log_impl(&dword_1BBC58000, v0, v5, "Block: blocking phoneNumbers %s \n\n emailAddreses: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_26();
  }

  v14 = [v4 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
  OUTLINED_FUNCTION_235();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  specialized Array.count.getter(v15);
  OUTLINED_FUNCTION_145();
  v46 = v16;
  v47 = v17;
  while (v1 != v4)
  {
    if (v47)
    {
      v34 = OUTLINED_FUNCTION_281();
      v18 = MEMORY[0x1BFB22010](v34);
    }

    else
    {
      if (v4 >= *(v46 + 16))
      {
        goto LABEL_38;
      }

      v18 = *(v15 + 8 * v4 + 32);
    }

    v19 = v18;
    v20 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = [v18 value];
    v22 = [v21 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_250();

    v23 = TUHomeCountryCode();
    if (v23)
    {
      v24 = v23;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v2 = 0;
      v26 = 0;
    }

    v27 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
    v28 = OUTLINED_FUNCTION_152();
    v0 = v29;
    v32 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v28, v30, v31, v26);

    ++v4;
    if (v32)
    {
      MEMORY[0x1BFB20CC0]();
      v33 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v33);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v0 = &v49;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v48 = v49;
      v4 = v20;
    }
  }

  v35 = v48;
  v0 = specialized Array.count.getter(v48);
  for (i = 0; v0 != i; i = (i + 1))
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1BFB22010](i, v48);
    }

    else
    {
      if (i >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v37 = *(v48 + 8 * i + 32);
    }

    v1 = v37;
    if (__OFADD__(i, 1))
    {
      goto LABEL_39;
    }

    v38 = [objc_opt_self() sharedPrivacyManager];
    if (!v38)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v35 = v38;
    [v38 setBlockIncomingCommunication:1 forPhoneNumber:v1];
  }

  v0 = [v45 emailAddresses];
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.count.getter(v39);
  OUTLINED_FUNCTION_251();
  while (v0 != v35)
  {
    if (0x1E69D8000uLL)
    {
      v44 = OUTLINED_FUNCTION_45_1();
      v40 = MEMORY[0x1BFB22010](v44);
    }

    else
    {
      if (v35 >= *(v2 + 16))
      {
        goto LABEL_42;
      }

      v40 = *(v39 + 8 * v35 + 32);
    }

    v41 = v40;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_41;
    }

    v42 = [objc_opt_self() sharedPrivacyManager];
    if (!v42)
    {
      goto LABEL_45;
    }

    v43 = v42;
    v1 = [v41 value];
    [v43 &selRef_cornerRadius + 2];

    ++v35;
  }
}

void closure #6 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RecentsListViewController.showGetMoreHelp()();
  }
}

uint64_t RecentsListViewController.showGetMoreHelp()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for URLRequest();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  v8 = [objc_opt_self() nonPersistentDataStore];
  [v7 setWebsiteDataStore_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v7 configuration:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_opt_self() waysToGetHelpURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;

  v12 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  [v12 setView_];
  v13 = [v12 navigationItem];
  v22[3] = type metadata accessor for RecentsListViewController(0);
  v22[0] = v1;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v14 = v1;
  @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
  v16 = v15;
  [v13 setRightBarButtonItem_];

  v17 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v17 setModalPresentationStyle_];
  v18 = [v14 presentedViewController];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  type metadata accessor for VideoMessagePlayerViewController();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_4:
    v20 = v14;
  }

  [v20 presentViewController:v17 animated:1 completion:0];

  return (*(v4 + 8))(v6, v3);
}

void closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = [a1 messageUUID];
  if (v14)
  {
    v15 = v14;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    static TaskPriority.userInitiated.getter();
    v16 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v16);
    (*(v8 + 16))(v11, v13, v7);
    type metadata accessor for MainActor();
    v17 = a2;
    v18 = static MainActor.shared.getter();
    v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 2) = v18;
    *(v20 + 3) = v21;
    *(v20 + 4) = v17;
    (*(v8 + 32))(&v20[v19], v11, v7);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (*(v8 + 8))(v13, v7);
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, &static Logger.videoMessaging);
    v23 = a1;
    v30 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&dword_1BBC58000, v30, v24, "Failed to save video message with indicator model %@ because no UUID was found", v25, 0xCu);
      outlined destroy of CallControlsService?(v26, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

    v28 = v30;
  }
}

uint64_t closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v8;
  v5[16] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:), v8, v7);
}

uint64_t closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = *(v2 + 72);
  (*((*MEMORY[0x1E69E7D40] & **(v2 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v2 + 136) = v7;
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = *(v4 + 16);
  *(v2 + 144) = v8;
  *(v2 + 152) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7 + v6, v5, v3);
  OUTLINED_FUNCTION_72_3();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v2 + 160) = v10;
  *v10 = v2;
  OUTLINED_FUNCTION_130(v10);

  return v12(v7, v0, v1);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v7 = v3[15];
    v8 = v3[16];
    v9 = closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
  }

  else
  {

    v7 = v3[15];
    v8 = v3[16];
    v9 = closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  v3 = OUTLINED_FUNCTION_15_14();
  v1(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_23();
    *v6 = 136446210;
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v7, v8);
    OUTLINED_FUNCTION_278_0();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_243_0();
    v9 = OUTLINED_FUNCTION_148();
    v10(v9);
    v11 = OUTLINED_FUNCTION_77();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v6 + 4) = v14;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v15, v16, "Saved video message with UUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v17 = OUTLINED_FUNCTION_148();
    v18(v17);
  }

  OUTLINED_FUNCTION_13();

  return v19();
}

{
  v26 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[9];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.videoMessaging);
  v5 = OUTLINED_FUNCTION_209();
  v2(v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  if (v9)
  {
    OUTLINED_FUNCTION_30_1();
    v23 = OUTLINED_FUNCTION_268();
    v24 = OUTLINED_FUNCTION_23();
    v25 = v24;
    *v3 = 136446466;
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v14, v15);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);
    OUTLINED_FUNCTION_34_2();

    *(v3 + 4) = v11;
    *(v3 + 12) = 2114;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v20;
    *v23 = v20;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Failed to save video message with UUID %{public}s: %{public}@", v3, 0x16u);
    outlined destroy of CallControlsService?(v23, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  OUTLINED_FUNCTION_13();

  return v21();
}

void closure #1 in closure #8 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = 0.0;
    v7 = MEMORY[0x1E69E7D40];
    if (v5)
    {
      v8 = v5;
      v9 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x500))();

      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      if (v9)
      {
        UIView.windowRect.getter(v16);
        v6 = *v16;
        v10 = *&v16[1];
        v11 = *&v16[2];
        v12 = *&v16[3];

        if (v17)
        {
          v6 = 0.0;
          v10 = 0.0;
          v11 = 0.0;
          v12 = 0.0;
        }
      }
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = (*((*v7 & *v13) + 0x500))();
    }

    else
    {
      v15 = 0;
    }

    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(a2, v15, v6, v10, v11, v12);
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.handleDeferredVideoMessagePresentation()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v20)
  {
    v21 = v20;
    v33 = v4;
    v22 = a2;
    v23 = [v20 messageUUID];

    if (v23)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v17, v24, 1, v3);
    outlined init with take of URL?();
    a2 = v22;
    v4 = v33;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v3);
  }

  (*(v4 + 16))(v14, a2, v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v25 = *(v6 + 48);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    v27 = v35;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v3) != 1)
    {
      v28 = &v8[v25];
      v29 = v34;
      (*(v4 + 32))(v34, v28, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v4 + 8);
      v30(v29, v3);
      outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v19, &_s10Foundation4UUIDVSgMd);
      v30(v35, v3);
      outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd);
      return v26 & 1;
    }

    outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CallControlsService?(v19, &_s10Foundation4UUIDVSgMd);
    (*(v4 + 8))(v27, v3);
    goto LABEL_12;
  }

  outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v19, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v3) != 1)
  {
LABEL_12:
    outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSg_ADtMd);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd);
  v26 = 1;
  return v26 & 1;
}

void closure #2 in RecentsListViewController.handleDeferredVideoMessagePresentation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.videoMessaging);
    v15 = *(v9 + 16);
    v15(v11, a3, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = a1;
      v19 = v18;
      v34 = swift_slowAlloc();
      v36[0] = v34;
      *v19 = 136315138;
      v15(v7, v11, v8);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      specialized >> prefix<A>(_:)(v7, v20, v21, v22, v23, v24, v25, v26, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7]);
      v28 = v27;
      v30 = v29;
      outlined destroy of CallControlsService?(v7, &_s10Foundation4UUIDVSgMd);
      (*(v9 + 8))(v11, v8);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v36);

      *(v19 + 4) = v31;
      _os_log_impl(&dword_1BBC58000, v16, v17, "Video message loaded. uuid %s", v19, 0xCu);
      v32 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v32, -1, -1);
      v33 = v19;
      a1 = v35;
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    RecentsListViewController.clearDeferredVideoMessagePresetation()();
    RecentsListViewController.showVideoPlayerForMessage(targetItem:bypassSafety:)(a1, 0);
  }
}

void RecentsListViewController.didConfirm(forInterventionViewController:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_7();
  if (v1)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      OUTLINED_FUNCTION_257(v10, sel_dismissViewControllerAnimated_completion_);
    }
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v11 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v11, v12, v2);
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_40_2();
    v15(v14);
    RecentsListViewController.showVideoPlayerForMessage(withUUID:bypassSafety:)(v6, 1);
    v16 = OUTLINED_FUNCTION_309();
    v17(v16);
  }

  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of RecentsCallItem?();
  swift_endAccess();
  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.didReject(forInterventionViewController:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  if (a1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_108_0();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      OUTLINED_FUNCTION_257(v5, sel_dismissViewControllerAnimated_completion_);
    }
  }

  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_168(v1, v7, v8, v6);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_295();
  outlined assign with take of RecentsCallItem?();
  return swift_endAccess();
}

void @objc RecentsListViewController.didConfirm(forInterventionViewController:)()
{
  OUTLINED_FUNCTION_238();
  v3 = v2;
  swift_unknownObjectRetain();
  v4 = v3;
  v0(v1);
  swift_unknownObjectRelease();
}

void RecentsListViewController.dismissMoreHelp()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for VideoMessagePlayerViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v3 = v0;
LABEL_5:
  v4 = v3;
  [v3 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall RecentsListViewController.configureNewDeleteAndMarkAsReadButtons()()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v148 = type metadata accessor for UITraitOverrides();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_4_24();
  v7 = type metadata accessor for AttributeContainer();
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v151 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v152 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_149();
  v19 = RecentsListViewController.gridLayoutInset()();
  v20 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton;
  v21 = &off_1E7FE9000;
  v147 = ObjectType;
  if (!*&v0[OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton])
  {
    v149 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton;
    MEMORY[0x1BFB21AA0]();
    v22 = v13;
    v23 = objc_opt_self();
    v24 = [v23 systemRedColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v25 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v26.super.isa = v25;
    OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC4FB4D0, v27, v28, v26);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    type metadata accessor for AttributedString();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    UIButton.Configuration.attributedTitle.setter();
    OUTLINED_FUNCTION_33_15();
    UIConfigurationTextAttributesTransformer.init(_:)();
    type metadata accessor for UIConfigurationTextAttributesTransformer();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v37 = [v23 whiteColor];
    UIButton.Configuration.baseForegroundColor.setter();
    OUTLINED_FUNCTION_188_0();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
    v146 = v22;
    OUTLINED_FUNCTION_284();
    v38 = OUTLINED_FUNCTION_1_5();
    v39(v38);
    v40 = UIButton.init(configuration:primaryAction:)();
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x61436574656C6544, 0xEB00000000736C6CLL, v40);
    v41 = *MEMORY[0x1E69DDC38];
    v42 = v40;
    [v42 setMaximumContentSizeCategory_];
    [v42 addTarget:v2 action:sel_deleteButtonAction_ forControlEvents:64];
    OUTLINED_FUNCTION_11_23();
    v44 = (*((*MEMORY[0x1E69E7D40] & v43) + 0x678))();
    v45 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v44 edge:4 style:1];

    [v42 addInteraction_];
    [v42 setTranslatesAutoresizingMaskIntoConstraints_];
    v46 = [v42 titleLabel];
    if (v46)
    {
      v47 = v46;
      UIView.traitOverrides.getter();
      UIMutableTraits._userInterfaceRenderingMode.setter();
      UIView.traitOverrides.setter();
    }

    v48 = [v42 imageView];
    if (v48)
    {
      v49 = v48;
      UIView.traitOverrides.getter();
      UIMutableTraits._userInterfaceRenderingMode.setter();
      UIView.traitOverrides.setter();
    }

    v50 = [v2 view];
    if (!v50)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v51 = v50;
    [v50 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    OUTLINED_FUNCTION_37_0();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1BC4BAC30;
    v53 = [v42 bottomAnchor];

    v54 = [v2 view];
    if (!v54)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v55 = v54;
    v56 = [v54 safeAreaLayoutGuide];

    v57 = [v56 bottomAnchor];
    v58 = [objc_opt_self() currentDevice];
    v59 = [v58 userInterfaceIdiom];

    if (v59 == 1)
    {
      v60 = -16.0;
    }

    else
    {
      v60 = 0.0;
    }

    v61 = objc_opt_self();
    v62 = [v53 constraintEqualToAnchor:v57 constant:v60];

    *(v52 + 32) = v62;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    OUTLINED_FUNCTION_170();
    Array._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_212();

    [v61 activateConstraints_];

    (*(v146 + 8))(v1, v11);
    v20 = v149;
    v63 = *&v2[v149];
    *&v2[v149] = v42;
    v13 = v146;

    v21 = 0x1FC567000;
  }

  v64 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton;
  if (!*&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton])
  {
    v150 = v20;
    MEMORY[0x1BFB21AA0]();
    v65 = objc_opt_self();
    v66 = [v65 systemLightGrayTintColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v67 = [objc_opt_self() v21 + 1416];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_180_0();
    OUTLINED_FUNCTION_5_5();
    v68.super.isa = v67;
    OUTLINED_FUNCTION_17_0(v69, v70, v71, v72, v68);
    OUTLINED_FUNCTION_213();

    AttributeContainer.init()();
    OUTLINED_FUNCTION_40_2();
    AttributedString.init(_:attributes:)();
    type metadata accessor for AttributedString();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    UIButton.Configuration.attributedTitle.setter();
    OUTLINED_FUNCTION_33_15();
    UIConfigurationTextAttributesTransformer.init(_:)();
    type metadata accessor for UIConfigurationTextAttributesTransformer();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v81 = [v65 whiteColor];
    UIButton.Configuration.baseForegroundColor.setter();
    OUTLINED_FUNCTION_188_0();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
    (*(v13 + 16))(v152, v151, v11);
    v82 = UIButton.init(configuration:primaryAction:)();
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x655273416B72614DLL, 0xEF736C6C61436461, v82);
    v83 = *MEMORY[0x1E69DDC38];
    v84 = v82;
    [v84 setMaximumContentSizeCategory_];
    [v84 addTarget:v2 action:sel_markAsReadButtonAction_ forControlEvents:64];
    if (_UISolariumEnabled())
    {
      OUTLINED_FUNCTION_293();
      v86 = (*(v85 + 1656))();
      v87 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v86 edge:4 style:1];

      v88 = OUTLINED_FUNCTION_16_0();
      [v88 v89];
    }

    [v84 setTranslatesAutoresizingMaskIntoConstraints_];

    v90 = [v2 view];
    if (v90)
    {
      v91 = v90;
      [v90 addSubview_];

      (*(v13 + 8))(v151, v11);
      v92 = *&v2[v64];
      *&v2[v64] = v84;

      v20 = v150;
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_17:
  v93 = *&v2[v20];
  if (v93)
  {
    v94 = *&v2[v64];
    if (v94)
    {
      v95 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints;
      if (!*&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints])
      {
        type metadata accessor for RecentsListViewController(0);
        v96 = v94;
        v97 = v93;
        static RecentsListViewController.gridLayoutItemSize()();
        v99 = v98 * 0.8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        OUTLINED_FUNCTION_109();
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1BC4BA930;
        v101 = v97;
        v102 = [v101 widthAnchor];
        v103 = [v102 constraintEqualToConstant_];

        *(v100 + 32) = v103;
        v104 = v96;
        v105 = [v104 widthAnchor];
        v106 = [v105 constraintEqualToConstant_];

        *(v100 + 40) = v106;
        v107 = objc_opt_self();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v107 activateConstraints_];

        *&v2[v95] = v100;

        v109 = OUTLINED_FUNCTION_328();
        *(v109 + 16) = xmmword_1BC4BC370;
        v110 = [v101 leadingAnchor];
        v111 = [v2 view];
        if (v111)
        {
          v112 = v111;
          v113 = [v111 centerXAnchor];

          v114 = [v110 constraintEqualToAnchor:v113 constant:v19 * 0.5];
          *(v109 + 32) = v114;
          v115 = [v104 bottomAnchor];
          v116 = [v2 view];
          if (v116)
          {
            v117 = v116;
            v118 = [v116 safeAreaLayoutGuide];

            v119 = [v118 bottomAnchor];
            v120 = [objc_opt_self() currentDevice];
            v121 = [v120 userInterfaceIdiom];

            v122 = 0.0;
            if (v121 == 1)
            {
              v122 = -16.0;
            }

            v123 = [v115 constraintEqualToAnchor:v119 constant:v122];

            *(v109 + 40) = v123;
            v124 = [v104 trailingAnchor];
            v125 = [v2 view];
            if (v125)
            {
              v126 = v125;
              v127 = [v125 centerXAnchor];

              v128 = [v124 constraintEqualToAnchor:v127 constant:v19 * -0.5];
              *(v109 + 48) = v128;
              *&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonStandardConstraints] = v109;

              v129 = OUTLINED_FUNCTION_328();
              *(v129 + 16) = xmmword_1BC4BC370;
              v130 = [v101 centerXAnchor];
              v131 = [v2 view];
              if (v131)
              {
                v132 = v131;
                v133 = [v131 centerXAnchor];

                v134 = [v130 constraintEqualToAnchor_];
                *(v129 + 32) = v134;
                v135 = [v104 bottomAnchor];
                v136 = [v101 topAnchor];

                v137 = [v135 constraintEqualToAnchor:v136 constant:-v19];
                *(v129 + 40) = v137;
                v138 = [v104 centerXAnchor];

                v139 = [v2 view];
                if (v139)
                {
                  v140 = v139;

                  v141 = [v140 centerXAnchor];

                  v142 = [v138 constraintEqualToAnchor_];
                  *(v129 + 48) = v142;
                  *&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonAXConstraints] = v129;

                  RecentsListViewController.updateEditModeButtonConstraints()();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
                  OUTLINED_FUNCTION_109();
                  v143 = swift_allocObject();
                  *(v143 + 16) = xmmword_1BC4BA940;
                  v144 = type metadata accessor for UITraitPreferredContentSizeCategory();
                  v145 = MEMORY[0x1E69DC2B0];
                  *(v143 + 32) = v144;
                  *(v143 + 40) = v145;
                  OUTLINED_FUNCTION_20();
                  *(swift_allocObject() + 16) = v147;
                  OUTLINED_FUNCTION_16_0();
                  UIViewController.registerForTraitChanges<A>(_:handler:)();
                  swift_unknownObjectRelease();

                  return;
                }

LABEL_36:
                __break(1u);
                return;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }
  }
}

void RecentsListViewController.updateEditModeButtonConstraints()()
{
  v1 = *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints);
  if (v1 && *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonStandardConstraints) && *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonAXConstraints))
  {
    type metadata accessor for RecentsCollectionViewGridCell();

    static RecentsCollectionViewGridCell.needsAXLayout.getter();
    v2 = objc_opt_self();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 deactivateConstraints_];

    v4 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints_];

    type metadata accessor for RecentsListViewController(0);
    static RecentsListViewController.gridLayoutItemSize()();
    v6 = v5;
    v7 = specialized Array.count.getter(v1);
    if (v7)
    {
      v8 = v7;
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      v9 = 0;
      v10 = v6 * 0.8;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB22010](v9, v1);
        }

        else
        {
          v11 = *(v1 + 8 * v9 + 32);
        }

        v12 = v11;
        ++v9;
        [v11 setConstant_];
      }

      while (v8 != v9);
    }
  }
}

void closure #1 in RecentsListViewController.configureNewDeleteAndMarkAsReadButtons()(uint64_t a1, uint64_t a2)
{
  if (_s15ConversationKit29RecentsCollectionViewGridCellC22didChangeNeedsAXLayout013previousTraitD04selfSbSo07UITraitD0C_So0O11Environment_ptFZTf4nen_nAA0c4ListE10ControllerC_Tt1g5(a2, a1))
  {
    RecentsListViewController.updateEditModeButtonConstraints()();
  }
}

uint64_t closure #1 in RecentsListViewController.textCenteringTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_msgSend(objc_allocWithZone(MEMORY[0x1E69DB7C8]) init)];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
  return AttributeContainer.subscript.setter();
}

void WeakBox<>.acceptedIntroductionsDidChange()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isViewLoaded])
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();
      OUTLINED_FUNCTION_11_23();
      v3 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & v4) + 0x630))();
      OUTLINED_FUNCTION_27_15();
      (*(v5 + 184))();
      OUTLINED_FUNCTION_173();

      OUTLINED_FUNCTION_283();
      (*((*v3 & v6) + 0x408))(0, 1);

      v2 = v0;
    }
  }
}

uint64_t key path getter for AvatarViewControllerDelegateWrapper.hostingViewController : AvatarViewControllerDelegateWrapper@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AvatarViewControllerDelegateWrapper.hostingViewController : AvatarViewControllerDelegateWrapper(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

void AvatarViewControllerDelegateWrapper.hostingViewController.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
}

void (*AvatarViewControllerDelegateWrapper.hostingViewController.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit35AvatarViewControllerDelegateWrapper_hostingViewController;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_30_2();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return AvatarViewControllerDelegateWrapper.hostingViewController.modify;
}

void AvatarViewControllerDelegateWrapper.hostingViewController.modify()
{
  OUTLINED_FUNCTION_297();
  swift_unknownObjectWeakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

id AvatarViewControllerDelegateWrapper.init(hostingViewController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AvatarViewControllerDelegateWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t AvatarViewControllerDelegateWrapper.hostingViewController(for:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  if (!result)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_1_20();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_25(v4))
    {
      v5 = OUTLINED_FUNCTION_42();
      v6 = OUTLINED_FUNCTION_23();
      v7[0] = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001BC4FB5A0, v7);
      _os_log_impl(&dword_1BBC58000, v3, v0, "AvatarViewControllerDelegateWrapper %{public}s: hostingViewController is unexpectedly nil, this is a fatal error.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_18();
    }

    else
    {
    }

    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(105);
    MEMORY[0x1BFB20B10](0xD000000000000024, 0x80000001BC4FB570);
    MEMORY[0x1BFB20B10](0xD00000000000001BLL, 0x80000001BC4FB5A0);
    MEMORY[0x1BFB20B10](0xD000000000000043, 0x80000001BC4FB5C0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id AvatarViewControllerDelegateWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RecentsListViewController.peoplePickerInvited(_:withVideo:button:callerID:messagesGroup:)()
{
  OUTLINED_FUNCTION_331();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  OUTLINED_FUNCTION_27_15();
  (*(v9 + 128))(v8, v6, v4, 0, v2);

  v10 = [v0 presentedViewController];
  if (v10)
  {
    OUTLINED_FUNCTION_257(v10, sel_dismissViewControllerAnimated_completion_);
    OUTLINED_FUNCTION_9_17();
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
  }
}

Swift::Void __swiftcall RecentsListViewController.peoplePickerCancelled()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_257(v1, sel_dismissViewControllerAnimated_completion_);
  }

  RecentsListViewController.fadeInNavigationController()();
}

void RecentsListViewController.fadeInNavigationController()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      [v3 alpha];
      v5 = v4;

      if (v5 == 0.0)
      {
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        *(v7 + 16) = v0;
        v10[4] = partial apply for closure #1 in RecentsListViewController.fadeInNavigationController();
        v10[5] = v7;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 1107296256;
        v10[2] = thunk for @escaping @callee_guaranteed () -> ();
        v10[3] = &block_descriptor_353;
        v8 = _Block_copy(v10);
        v9 = v0;

        [v6 animateWithDuration:v8 animations:0.3];
        _Block_release(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void RecentsListViewController.peoplePickerRequestedDialCall(using:video:contact:handle:senderIdentity:ttyType:)()
{
  OUTLINED_FUNCTION_272();
  v4 = v3;
  OUTLINED_FUNCTION_244();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  OUTLINED_FUNCTION_27_15();
  (*(v11 + 136))(v10, v8, v6, v2, v1, v4, 1);

  v12 = [v0 presentedViewController];
  if (v12)
  {
    OUTLINED_FUNCTION_257(v12, sel_dismissViewControllerAnimated_completion_);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void RecentsListViewController.peoplePickerSentInvitation(with:facetimeUnavailablePeople:facetimeAvailablePeople:shouldAddOtherInvitedToRemoteMembers:)()
{
  OUTLINED_FUNCTION_331();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  OUTLINED_FUNCTION_27_15();
  v1 = OUTLINED_FUNCTION_7_8();
  v2(v1);

  v3 = [v0 presentedViewController];
  if (v3)
  {
    OUTLINED_FUNCTION_257(v3, sel_dismissViewControllerAnimated_completion_);
    OUTLINED_FUNCTION_9_17();
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
  }
}

uint64_t RecentsListViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_55();
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A8))();
  if (result)
  {
    OUTLINED_FUNCTION_213();
    swift_getObjectType();
    OUTLINED_FUNCTION_15_14();
    v2 = OUTLINED_FUNCTION_18_1();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in RecentsListViewController.fadeInNavigationController()(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      [v3 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void RecentsListViewController.contactStoreDidChange(_:)()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "ContactStoreDidChange. Reload data.", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    v6 = [*(static ParticipantContactDetailsCache.faceTime + 3) removeAllObjects];
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))(v6);
    oslog = (*(*v8 + 184))(v8);

    (*((*v7 & oslog->isa) + 0x408))(1, 0);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v10, "ContactStoreDidChange. Skip reload data before view is loaded.", v11, 2u);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }
}

uint64_t @objc RecentsListViewController.deleteAllRecents(_:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  v9 = OUTLINED_FUNCTION_182();
  a4(v9);

  v10 = OUTLINED_FUNCTION_33_0();
  return v11(v10);
}

void closure #1 in RecentsListViewController.showMakoUserAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v7 = 0;
    if (__swift_getEnumTagSinglePayload(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v6);
      v7 = v8;
      (*(*(v5 - 8) + 8))(v2, v5);
    }

    [v4 openSensitiveURL:v7 withOptions:0];
  }
}

uint64_t RecentsListViewController.coordinatorFinished(_:completed:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  v2 = os_log(_:dso:log:type:_:)();
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v2);
}

uint64_t RecentsListViewController.coordinatorFailed(_:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  v2 = os_log(_:dso:log:type:_:)();
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v2);
}

void WeakBox<>.recentsHeaderButtonsView(_:didTapAction:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = OUTLINED_FUNCTION_13_12();
    *(v11 + 16) = xmmword_1BC4BA940;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_243_0();
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v1;
    *(v11 + 40) = v2;
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)();

    if (v4)
    {
      v13 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))(v12);
      v14 = OUTLINED_FUNCTION_205();
      [v14 v15];
    }

    else
    {
      v16 = type metadata accessor for Tips.InvalidationReason();
      OUTLINED_FUNCTION_168(v0, v17, v18, v16);
      RecentsListViewController.tipKitDismissTip(_:)(v0);
      outlined destroy of CallControlsService?(v0, &_s6TipKit4TipsO18InvalidationReasonOSgMd);
      [v10 didTapNewCallButton];
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.didJoinCall(from:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_44_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_34_15();
  v6 = type metadata accessor for RecentsCallItem(v5);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  (*(*a1 + 432))();
  type metadata accessor for IndexPath();
  v8 = OUTLINED_FUNCTION_84_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_7_8();
  RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();
  v12 = OUTLINED_FUNCTION_249();
  outlined destroy of CallControlsService?(v12, v13);
  OUTLINED_FUNCTION_0_74();
  return _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
}

Swift::Void __swiftcall RecentsListViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_1();
  v59.receiver = v2;
  v59.super_class = type metadata accessor for RecentsListViewController(0);
  objc_msgSendSuper2(&v59, sel_setEditing_animated_, v7 & 1, v5 & 1);
  v16 = MEMORY[0x1E69E7D40];
  if (*(v2 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) == 1)
  {
    OUTLINED_FUNCTION_137();
    v58 = *(v17 + 1656);
    v18 = v58();
    v19 = [v18 indexPathsForVisibleItems];

    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = *(v20 + 16);
    v23 = v2;
    if (v7)
    {
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_198(v21);
        v26 = v24 + v25;
        OUTLINED_FUNCTION_285();
        do
        {
          v27 = OUTLINED_FUNCTION_157();
          v28 = v57(v27);
          v29 = (v58)(v28);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v10)(v3, v8);
          v31 = [v29 cellForItemAtIndexPath_];

          if (v31)
          {
            type metadata accessor for RecentsCollectionViewGridCell();
            v32 = swift_dynamicCastClass();
            if (v32)
            {
              (*((*MEMORY[0x1E69E7D40] & *v32) + 0x198))();
            }
          }

          v26 += v56;
          --v22;
          v2 = v23;
        }

        while (v22);

        v7 = v55;
      }

      else
      {
      }

      v16 = MEMORY[0x1E69E7D40];
      RecentsListViewController.configureNewDeleteAndMarkAsReadButtons()();
      v48 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton);
      if (v48)
      {
        [v48 setAlpha_];
      }

      v49 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton);
      if (v49)
      {
        [v49 setAlpha_];
      }

      v50 = [objc_opt_self() currentDevice];
      v51 = [v50 userInterfaceIdiom];

      if (!v51)
      {
        v47 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeButton);
        if (v47)
        {
          v47 = [v47 setAlpha_];
        }
      }
    }

    else
    {
      if (v22)
      {
        v38 = OUTLINED_FUNCTION_198(v21);
        v40 = v38 + v39;
        OUTLINED_FUNCTION_285();
        do
        {
          v41 = OUTLINED_FUNCTION_43_0();
          v42 = v57(v41);
          v43 = (v58)(v42);
          v44 = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v10)(v14, v8);
          v45 = [v43 cellForItemAtIndexPath_];

          if (v45)
          {
            type metadata accessor for RecentsCollectionViewGridCell();
            v46 = swift_dynamicCastClass();
            if (v46)
            {
              (*((*MEMORY[0x1E69E7D40] & *v46) + 0x1A0))();
            }
          }

          v40 += v56;
          --v22;
          v2 = v23;
        }

        while (v22);

        v7 = v55;
      }

      else
      {
      }

      v16 = MEMORY[0x1E69E7D40];
      RecentsListViewController.configureNewFaceTimeButton()();
      v52 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton);
      if (v52)
      {
        [v52 setAlpha_];
      }

      v53 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton);
      if (v53)
      {
        [v53 setAlpha_];
      }

      v47 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeButton);
      if (v47)
      {
        v47 = [v47 setAlpha_];
      }
    }
  }

  else
  {
    v33 = [v2 navigationController];
    if (v33)
    {
      v5 = v33;
      [v33 setToolbarHidden:(v7 & 1) == 0 animated:1];
    }

    v34 = RecentsListViewController.deleteButtonItem.getter();
    if (v7)
    {
      OUTLINED_FUNCTION_137();
      v36 = (*(v35 + 1656))();
      outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v36);
      OUTLINED_FUNCTION_270();
      v37 = v5 != 0;
    }

    else
    {
      v37 = 0;
    }

    [v34 setEnabled_];
  }

  v54 = (*((*v16 & *v2) + 0x678))(v47);
  [v54 setEditing_];

  OUTLINED_FUNCTION_30_0();
}

void RecentsListViewController.deleteButtonAction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x678))();
  v5 = outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v4);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 16))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
      v7 = objc_opt_self();
      v8 = [v7 conversationKit];
      v24._object = 0xE000000000000000;
      v9.value._countAndFlagsBits = 0x61737265766E6F43;
      v10._object = 0x80000001BC4FC410;
      v10._countAndFlagsBits = 0xD00000000000001DLL;
      v9.value._object = 0xEF74694B6E6F6974;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v24._countAndFlagsBits = 0;
      v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v24);

      v22 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v12._countAndFlagsBits, v12._object, 0, 0, 0);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
      v13 = [v7 conversationKit];
      v25._object = 0xE000000000000000;
      v14._countAndFlagsBits = 0x415F4554454C4544;
      v14._object = 0xEA00000000004C4CLL;
      v15.value._countAndFlagsBits = 0x61737265766E6F43;
      v15.value._object = 0xEF74694B6E6F6974;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v25);

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v6;
      v19 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
      [v22 addAction_];

      v20 = [v22 popoverPresentationController];
      if (v20)
      {
        v21 = v20;
        [v20 setSourceView_];
      }

      [v2 presentViewController:v22 animated:1 completion:0];
    }

    else
    {
    }
  }
}

void *closure #1 in RecentsListViewController.deleteButtonAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(*((*MEMORY[0x1E69E7D40] & *result) + 0x630))();
    (*(v6 + 296))(a3);

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    RecentsListViewController.removeRecentCallsAndReportIfNeeded(_:shouldDeleteAllItemsForContact:preparationHandler:)();
  }

  return result;
}

void closure #1 in closure #1 in RecentsListViewController.deleteButtonAction(_:)(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong endEditing];
    }
  }
}

id RecentsListViewController.markAsReadButtonAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x678))(v2);
  v7 = outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v6);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16))
    {
      v9 = *(*((*v5 & *v0) + 0x630))();
      v10 = (*(v9 + 296))(v8);

      v11 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = v0;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v12;
      v14[5] = v10;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      return [v12 endEditing];
    }
  }

  return [v0 endEditing];
}

uint64_t closure #1 in RecentsListViewController.markAsReadButtonAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.markAsReadButtonAction(_:), v7, v6);
}

uint64_t closure #1 in RecentsListViewController.markAsReadButtonAction(_:)()
{
  OUTLINED_FUNCTION_44();
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  OUTLINED_FUNCTION_72_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_277(v1);
  *v2 = v3;
  v2[1] = closure #1 in RecentsListViewController.markAsReadButtonAction(_:);
  v4 = OUTLINED_FUNCTION_87_3(*(v0 + 72));

  return v5(v4);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = closure #1 in RecentsListViewController.markAsReadButtonAction(_:);
  }

  else
  {
    v7 = closure #1 in RecentsListViewController.markAsReadButtonAction(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();

  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  if (one-time initialization token for recents != -1)
  {
    OUTLINED_FUNCTION_44_9();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.recents);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v5);
    _os_log_impl(&dword_1BBC58000, v3, v4, "Successfully marked call items as read", v0, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (one-time initialization token for recents != -1)
  {
    OUTLINED_FUNCTION_44_9();
  }

  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.recents);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_268();
    *v1 = 138543362;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    outlined destroy of CallControlsService?(v9, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void *RecentsListViewController.presentingViewController(for:sourceView:sourceRect:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x500))();
  }

  v3 = v2;
  return v2;
}

Swift::Void __swiftcall CNContact.unblock()()
{
  OUTLINED_FUNCTION_321();
  v41 = v0;
  v4 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
  OUTLINED_FUNCTION_235();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  specialized Array.count.getter(v5);
  OUTLINED_FUNCTION_145();
  v42 = v6;
  v43 = v7;
  while (v1 != v2)
  {
    if (v43)
    {
      v24 = OUTLINED_FUNCTION_281();
      v8 = MEMORY[0x1BFB22010](v24);
    }

    else
    {
      if (v2 >= *(v42 + 16))
      {
        goto LABEL_37;
      }

      v8 = *(v5 + 8 * v2 + 32);
    }

    v9 = v8;
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
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
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v11 = [v8 value];
    v12 = [v11 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_250();

    v13 = TUHomeCountryCode();
    if (v13)
    {
      v14 = v13;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v3 = 0;
      v16 = 0;
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
    v18 = OUTLINED_FUNCTION_152();
    v21 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v18, v19, v20, v16);

    ++v2;
    if (v21)
    {
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_280();
      if (v23)
      {
        OUTLINED_FUNCTION_59_3(v22);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_304();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v45;
      v2 = v10;
    }
  }

  v25 = specialized Array.count.getter(v44);
  v26 = 0;
  v27 = v44 & 0xC000000000000001;
  while (v25 != v26)
  {
    if (v27)
    {
      v28 = MEMORY[0x1BFB22010](v26, v44);
    }

    else
    {
      if (v26 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v28 = *(v44 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_38;
    }

    v30 = [objc_opt_self() sharedPrivacyManager];
    if (!v30)
    {
      goto LABEL_42;
    }

    v31 = v30;
    [v30 setBlockIncomingCommunication:0 forPhoneNumber:v29];

    ++v26;
  }

  v32 = [v41 emailAddresses];
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.count.getter(v33);
  OUTLINED_FUNCTION_251();
  while (v32 != v27)
  {
    if (0x1E69D8000uLL)
    {
      v39 = OUTLINED_FUNCTION_45_1();
      v34 = MEMORY[0x1BFB22010](v39);
    }

    else
    {
      if (v27 >= *(v3 + 16))
      {
        goto LABEL_41;
      }

      v34 = *(v33 + 8 * v27 + 32);
    }

    v35 = v34;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_40;
    }

    v36 = [objc_opt_self() sharedPrivacyManager];
    if (!v36)
    {
      goto LABEL_43;
    }

    v37 = v36;
    v38 = [v35 value];
    [v37 &selRef_cornerRadius + 2];

    ++v27;
  }

  OUTLINED_FUNCTION_273();
}

Swift::Bool __swiftcall CNContact.isBlocked()()
{
  OUTLINED_FUNCTION_321();
  v37 = v0;
  v3 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
  OUTLINED_FUNCTION_235();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  specialized Array.count.getter(v4);
  OUTLINED_FUNCTION_145();
  v38 = v6;
  v39 = v7;
  while (v1 != v2)
  {
    if (v39)
    {
      v23 = OUTLINED_FUNCTION_281();
      v5 = MEMORY[0x1BFB22010](v23);
    }

    else
    {
      if (v2 >= *(v38 + 16))
      {
        goto LABEL_35;
      }

      v5 = *(v4 + 8 * v2 + 32);
    }

    v8 = v5;
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
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
      return v5;
    }

    v10 = [v5 value];
    v11 = [v10 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_250();

    v12 = TUHomeCountryCode();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
    v17 = OUTLINED_FUNCTION_152();
    v20 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v17, v18, v19, v15);

    ++v2;
    if (v20)
    {
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_280();
      if (v22)
      {
        OUTLINED_FUNCTION_59_3(v21);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_304();
      LOBYTE(v5) = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v40 = v41;
      v2 = v9;
    }
  }

  v5 = specialized Array.count.getter(v40);
  v24 = v5;
  for (i = 0; v24 != i; ++i)
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](i, v40);
    }

    else
    {
      if (i >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v5 = *(v40 + 8 * i + 32);
    }

    v26 = v5;
    if (__OFADD__(i, 1))
    {
      goto LABEL_36;
    }

    v5 = [objc_opt_self() sharedPrivacyManager];
    if (!v5)
    {
      goto LABEL_40;
    }

    v27 = v5;
    [v5 isIncomingCommunicationBlockedForPhoneNumber_];
  }

  v28 = [v37 emailAddresses];
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter(v29);
  v30 = v5;
  for (j = 0; v30 != j; ++j)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v35 = OUTLINED_FUNCTION_45_1();
      v5 = MEMORY[0x1BFB22010](v35);
    }

    else
    {
      if (j >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v5 = *(v29 + 8 * j + 32);
    }

    v32 = v5;
    if (__OFADD__(j, 1))
    {
      goto LABEL_38;
    }

    v5 = [objc_opt_self() sharedPrivacyManager];
    if (!v5)
    {
      goto LABEL_41;
    }

    v33 = v5;
    v34 = [v32 value];
    [v33 isIncomingCommunicationBlockedForEmailAddress_];
  }

  OUTLINED_FUNCTION_273();
  return v5;
}

void @objc TUHandle.unblock()(void *a1)
{
  v1 = a1;
  TUHandle.unblock()();
}

void TUHandle.unblock()(char a1)
{
  v4 = [v1 type];
  if (v4 == 1)
  {
    return;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_1_20();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.conversationKit);
      v13 = v1;
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = OUTLINED_FUNCTION_42();
        v16 = OUTLINED_FUNCTION_23();
        v28 = v16;
        *v15 = 136315138;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        v17 = v13;
        v18 = String.init<A>(reflecting:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v28);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1BBC58000, oslog, v14, "Unknown handle type: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_27();

        return;
      }

      goto LABEL_16;
    }

    oslog = [objc_opt_self() sharedPrivacyManager];
    if (oslog)
    {
      v5 = [v1 value];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      outlined bridged method (mnbnn) of @objc TUPrivacyManager.setBlockIncomingCommunication(_:forEmailAddress:)(a1 & 1, v6, v8, oslog);
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = TUHomeCountryCode();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_213();
  }

  else
  {
    v9 = 0;
    v2 = 0;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
  v22 = OUTLINED_FUNCTION_15_14();
  v24 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v22, v23, v9, v2);
  if (v24)
  {
    v25 = v24;
    v26 = [objc_opt_self() sharedPrivacyManager];
    if (v26)
    {
      oslog = v26;
      [v26 setBlockIncomingCommunication:a1 & 1 forPhoneNumber:v25];

      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }
}

void @objc TUHandle.block()(void *a1)
{
  v1 = a1;
  TUHandle.block()();
}

Swift::Bool __swiftcall TUHandle.isBlocked()()
{
  OUTLINED_FUNCTION_272();
  v64 = v2;
  v65 = v3;
  v4 = v0;
  v5 = [v0 type];
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v13 = [v0 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = TUHomeCountryCode();
      if (v14)
      {
        v15 = v14;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_213();
      }

      else
      {
        v13 = 0;
        v1 = 0;
      }

      v31 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
      v32 = OUTLINED_FUNCTION_15_14();
      v34 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v32, v33, v13, v1);
      if (!v34)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v46, static Logger.conversationKit);
        v47 = v0;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = OUTLINED_FUNCTION_42();
          v51 = OUTLINED_FUNCTION_23();
          v63[0] = v51;
          *v50 = 136315138;
          v52 = [v47 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = OUTLINED_FUNCTION_43_0();
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v55);

          *(v50 + 4) = v56;
          OUTLINED_FUNCTION_132();
          _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_26();
        }

        goto LABEL_29;
      }

      v35 = v34;
      v6 = [objc_opt_self() sharedPrivacyManager];
      if (v6)
      {
        v36 = v6;
        v12 = [v6 isIncomingCommunicationBlockedForPhoneNumber_];

LABEL_19:
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v37, static Logger.conversationKit);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_163(v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109120;
          v40[1] = v12;
          OUTLINED_FUNCTION_219();
          _os_log_impl(v41, v42, v43, v44, v45, 8u);
          OUTLINED_FUNCTION_18();
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (v5 != 3)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v16, static Logger.conversationKit);
        v17 = v0;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = OUTLINED_FUNCTION_42();
          v21 = OUTLINED_FUNCTION_23();
          v63[0] = v21;
          *v20 = 136315138;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
          v22 = v17;
          v23 = String.init<A>(reflecting:)();
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v63);

          *(v20 + 4) = v25;
          OUTLINED_FUNCTION_132();
          _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_26();
        }

        v12 = 0;
        goto LABEL_19;
      }

      v6 = [objc_opt_self() sharedPrivacyManager];
      if (v6)
      {
        v7 = v6;
        v8 = [v4 value];
        if (!v8)
        {
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = MEMORY[0x1BFB209B0](v9);
        }

        v10 = OUTLINED_FUNCTION_2_52();
        v12 = [v10 v11];

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    return v6;
  }

LABEL_29:
  OUTLINED_FUNCTION_194_0();
  return v6;
}

uint64_t specialized IndexPathMappable.prefetchIndexPathsFor(_:amount:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v84 = &v67 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v83 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v67 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v68 = &v67 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v76 = &v67 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v74 = &v67 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v67 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v73 = &v67 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v67 - v30;
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v32 = RecentsCollectionViewDataSource.mapping()();
  v70 = a1;
  v71 = v5;
  v34 = *(v5 + 16);
  v33 = v5 + 16;
  v77 = v34;
  v34(v31, a1, v4);
  v88 = 1;
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v4);
  if (a2 > 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = a2;
  }

  if (a2 <= 0)
  {
    v36 = -1;
  }

  else
  {
    v36 = a2;
  }

  v80 = v36;
  v87 = (v33 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  v78 = v33;
  v79 = v27;
  v85 = (v33 - 8);
  v37 = 1;
  v81 = 1;
  v86 = 1;
  v38 = &_s10Foundation9IndexPathVSgMR;
  v75 = v13;
  v39 = v76;
  v82 = v32;
  while (v35 < 0 && (v86 & 1) != 0)
  {
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(v27, 1, v4) == 1)
    {
      v77(v13, v70, v4);
      if (__swift_getEnumTagSinglePayload(v27, 1, v4) != 1)
      {
        outlined destroy of CallControlsService?(v27, &_s10Foundation9IndexPathVSgMd);
      }
    }

    else
    {
      (*v87)(v13, v27, v4);
    }

    Dictionary<>.previousIndexPath(from:)(v13, v32);
    (*v85)(v13, v4);
    outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd);
    outlined init with take of URL?();
    v42 = v74;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v41 = 1;
    v43 = v38;
    v44 = __swift_getEnumTagSinglePayload(v42, 1, v4) != 1;
    outlined destroy of CallControlsService?(v42, &_s10Foundation9IndexPathVSgMd);
    v86 = v44;
    v45 = v44;
    v38 = v43;
    if ((v37 & 1) == 0)
    {
      if ((v45 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_39;
    }

LABEL_45:
    v88 = v45;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    result = __swift_getEnumTagSinglePayload(v39, 1, v4);
    if (result == 1)
    {
      v32 = v82;
    }

    else
    {
      v57 = *v87;
      v58 = v83;
      (*v87)(v83, v39, v4);
      v77(v84, v58, v4);
      v59 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v82;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v65;
      }

      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      v89 = v59;
      if (v62 >= v61 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v89 = v66;
      }

      v63 = v71;
      (*(v71 + 8))(v83, v4);
      v64 = v89;
      *(v89 + 16) = v62 + 1;
      result = (v57)(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v84, v4);
      v13 = v75;
      v39 = v76;
    }

    if (v35 == v80)
    {
      outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd);

      return v89;
    }

    v37 = v41;
    v50 = __OFADD__(v35++, 1);
    v27 = v79;
    if (v50)
    {
      goto LABEL_61;
    }
  }

  if ((v81 & 1) == 0)
  {
    if ((v37 & 1) == 0)
    {
      if ((v88 & 1) == 0)
      {
LABEL_58:

        outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd);
        return v89;
      }

      v41 = 0;
      v81 = 0;
      goto LABEL_42;
    }

    v81 = 0;
    v41 = 1;
    goto LABEL_44;
  }

  v40 = v69;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v40, 1, v4) == 1)
  {
    v77(v72, v70, v4);
    if (__swift_getEnumTagSinglePayload(v40, 1, v4) != 1)
    {
      outlined destroy of CallControlsService?(v40, &_s10Foundation9IndexPathVSgMd);
    }
  }

  else
  {
    (*v87)(v72, v40, v4);
  }

  v46 = IndexPath.item.getter();
  result = IndexPath.section.getter();
  v48 = result;
  v49 = *(v32 + 16);
  if (result >= v49)
  {
LABEL_34:
    if (v48 >= v49)
    {
LABEL_36:
      v53 = 1;
      v52 = v68;
    }

    else
    {
      v52 = v68;
      MEMORY[0x1BFB1A660](v46, v48);
      v53 = 0;
    }

    v54 = v72;
    v41 = 1;
    __swift_storeEnumTagSinglePayload(v52, v53, 1, v4);
    (*v85)(v54, v4);
    outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd);
    outlined init with take of URL?();
    v55 = v67;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v4);
    outlined destroy of CallControlsService?(v55, &_s10Foundation9IndexPathVSgMd);
    v13 = v75;
    if (EnumTagSinglePayload == 1)
    {
      v81 = 0;
      v39 = v76;
      if ((v88 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_39:
      v41 = 0;
LABEL_42:
      v45 = 1;
      goto LABEL_45;
    }

    v81 = 1;
    v39 = v76;
LABEL_44:
    v45 = v88;
    goto LABEL_45;
  }

  while (1)
  {
    v50 = __OFADD__(v46++, 1);
    if (v50)
    {
      break;
    }

    if (v49 && (result = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v51 & 1) != 0))
    {
      if (v46 < *(*(v32 + 56) + 8 * result))
      {
        goto LABEL_34;
      }
    }

    else if (v46 < 0)
    {
      goto LABEL_34;
    }

    ++v48;
    v46 = -1;
    if (v48 >= v49)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

id @nonobjc SCUIInterventionViewController.init(workflow:contextDictionary:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = OUTLINED_FUNCTION_253();
  v5 = [v3 v4];

  return v5;
}

id @nonobjc TUPhoneNumber.init(digits:countryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1BFB209B0]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = MEMORY[0x1BFB209B0](a3, a4);

LABEL_6:
  v9 = [v4 initWithDigits:v7 countryCode:v8];

  return v9;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69695A8]) & 1;
}

{
  v2 = static ConversationControlsType.== infix(_:_:)(a1, a2);
  return OUTLINED_FUNCTION_94_1(v2);
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E6995C98]) & 1;
}

{
  v2 = static HUDActivityManager.BannerUpdate.== infix(_:_:)(a1, a2);
  return OUTLINED_FUNCTION_94_1(v2);
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(unint64_t a1, unint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v5 = a1;
      v6 = a2;
      OUTLINED_FUNCTION_308();
      v7 = static NSObject.== infix(_:_:)();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_91_2();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v3, v4);
  OUTLINED_FUNCTION_157();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AH0K9CandidateVtG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_15i5Kit14kl7O_AI0J9M5VtTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiAJ_ALtIsgnndzo_Tf1nc_n04_s15i77Kit25RecentsListViewControllerC11viewDidLoadyyFySo7CGPointVcfU0_SbSi3key_AA14kl7O_AA0L9M17Vt5valuet_tXEfU2_Tf1nnc_n(unint64_t *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);

    return v6;
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)()
{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_238();
  v4 = v3;
  v6 = v5;
  v7 = *v1;
  v8 = *(type metadata accessor for Participant(0) - 8);
  v9 = *(v8 + 72);
  v10 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = v11 + v9 * v6;
  OUTLINED_FUNCTION_208();
  swift_arrayDestroy();
  v13 = v2 - v10;
  if (__OFSUB__(v2, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v12 + v9 * v2;
  if (v13)
  {
    v15 = *(v7 + 16);
    if (!__OFSUB__(v15, v4))
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11 + v9 * v4, v15 - v4, v12 + v9 * v2);
      v16 = *(v7 + 16);
      v17 = __OFADD__(v16, v13);
      v18 = v16 + v13;
      if (!v17)
      {
        *(v7 + 16) = v18;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (v2 < 1 || v9 * v2 < 1)
  {
LABEL_14:
    outlined destroy of CallControlsService?(v0, &_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v20 = 0;
  while ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_46();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v12 += v9;
    v20 = 1;
    if (v12 >= v14)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

{
  OUTLINED_FUNCTION_29();
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v8;
  v12 = OUTLINED_FUNCTION_184();
  type metadata accessor for NSObject(v12, v13);
  OUTLINED_FUNCTION_40_2();
  swift_arrayDestroy();
  v14 = __OFSUB__(v0, v11);
  v11 = v0 - v11;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v15 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_16:
  v15 = __CocoaSet.count.getter();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(v6 + 8 * v4, v15 - v4, v3 + 8 * v0);
  if (v7)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v1 + 16);
  }

  if (__OFADD__(v16, v11))
  {
    goto LABEL_18;
  }

  *(v1 + 16) = v16 + v11;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_30_0();
    return;
  }

LABEL_19:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = *v0;
  v12 = (v11 + 32 + 16 * v1);
  OUTLINED_FUNCTION_62_0();
  swift_arrayDestroy();
  v13 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, v10))
  {
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v11 + 32 + 16 * v10), v14 - v10, &v12[2 * v9]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (v9 < 1)
  {
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    *v12 = v8;
    v12[1] = v7;
    if (v12 + 2 < &v12[2 * v9])
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_30_0();
  }
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

{
  OUTLINED_FUNCTION_29();
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v8;
  v12 = OUTLINED_FUNCTION_184();
  v13(v12);
  OUTLINED_FUNCTION_40_2();
  swift_arrayDestroy();
  v14 = __OFSUB__(v0, v11);
  v11 = v0 - v11;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v15 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_16:
  v15 = __CocoaSet.count.getter();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(v6 + 8 * v4, v15 - v4, v3 + 8 * v0);
  if (v7)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v1 + 16);
  }

  if (__OFADD__(v16, v11))
  {
    goto LABEL_18;
  }

  *(v1 + 16) = v16 + v11;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_30_0();
    return;
  }

LABEL_19:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_238();
  v7 = v6;
  v8 = *v1;
  v9 = *v1 + 32;
  v11 = v9 + 40 * v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
  OUTLINED_FUNCTION_208();
  swift_arrayDestroy();
  v12 = v2 - v5;
  if (__OFSUB__(v2, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v11 + 40 * v2;
  if (!v12)
  {
LABEL_7:
    if (v2 < 1)
    {
LABEL_11:
      outlined destroy of CallControlsService?(v0, &_ss15CollectionOfOneVy15ConversationKit07RecentsA15ViewSectionable_pGMd);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v18 = 0;
    while ((v18 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_46();
      outlined init with copy of IDSLookupManager(v19, v20);
      v11 += 40;
      v18 = 1;
      if (v11 >= v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_15;
  }

  v14 = *(v8 + 16);
  if (__OFSUB__(v14, v7))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9 + 40 * v7, v14 - v7, v11 + 40 * v2);
  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v12);
  v17 = v15 + v12;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for NSAttributedString, -426333520, specialized UnsafeMutablePointer.moveInitialize(from:count:), a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for UIView, -425864624, specialized UnsafeMutablePointer.moveInitialize(from:count:), a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = &result[v10];
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v10 + a2), v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_0();
  v35 = v30 - v29;
  if (__OFSUB__(v30, v29))
  {
    __break(1u);
    goto LABEL_19;
  }

  v24 = v34;
  v22 = v31;
  v25 = v30;
  a10 = v32;
  v36 = *v23;
  v26 = *v23 & 0xFFFFFFFFFFFFFF8;
  v27 = v26 + 32;
  v23 = (v26 + 32 + 8 * v29);
  type metadata accessor for NSObject(0, v33);
  OUTLINED_FUNCTION_209();
  swift_arrayDestroy();
  v37 = __OFSUB__(v22, v35);
  v35 = v22 - v35;
  if (v37)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v35)
  {
    goto LABEL_12;
  }

  v28 = v36 >> 62;
  if (!(v36 >> 62))
  {
    v38 = *(v26 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v38 = __CocoaSet.count.getter();
LABEL_6:
  if (__OFSUB__(v38, v25))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v41 = v38;
    __break(1u);
    return;
  }

  v24(v27 + 8 * v25, &v38[-v25], &v23[v22]);
  if (v28)
  {
    v38 = __CocoaSet.count.getter();
  }

  else
  {
    v38 = *(v26 + 16);
  }

  if (__OFADD__(v38, v35))
  {
    goto LABEL_22;
  }

  *(v26 + 16) = &v38[v35];
LABEL_12:
  v38 = a10;
  if (v22 >= 1)
  {
    *v23 = a10;
    if (v22 == 1)
    {
      OUTLINED_FUNCTION_1_3();
      return;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_1_3();
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AH0K9CandidateVtG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_15i5Kit14kl7O_AI0J9M5VtTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiAJ_ALtIsgnndzo_Tf1nc_n04_s15i77Kit25RecentsListViewControllerC11viewDidLoadyyFySo7CGPointVcfU0_SbSi3key_AA14kl7O_AA0L9M17Vt5valuet_tXEfU2_Tf1nnc_n(v8, v4, v2);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  v6 = specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v27 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  v31 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v25 - v7;
  v28 = 0;
  v8 = 0;
  v33 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v29;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v34 = (v14 - 1) & v14;
LABEL_11:
    v20 = *(v33[6] + 8 * (v17 | (v8 << 6)));
    v21 = v30;
    v22 = v17 | (v8 << 6);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    *v16 = v20;
    v23 = *(v32 + 48);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    LODWORD(v23) = *(v16 + v23);
    outlined destroy of CallControlsService?(v16, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
    result = outlined destroy of CallControlsService?(v21, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
    v14 = v34;
    if (v23 == 1)
    {
      *(v27 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v33);
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v33);
    }

    v19 = v10[v8];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v34 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

uint64_t outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(void *a1)
{
  v2 = [a1 indexPathsForSelectedItems];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for IndexPath();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_OWORD *outlined init with take of RecentCallProviding & RecentsControllable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t outlined bridged method (pb) of @objc UICollectionView.indexPathsForSelectedItems.getter(void *a1)
{
  v1 = [a1 indexPathsForSelectedItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for IndexPath();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mnbnn) of @objc TUPrivacyManager.setBlockIncomingCommunication(_:forEmailAddress:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a2, a3);

  [a4 setBlockIncomingCommunication:a1 & 1 forEmailAddress:v6];
}

void *outlined copy of ConversationLink?(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16), MEMORY[0x1E6995AA8]) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16), MEMORY[0x1E6969C28]) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

uint64_t partial apply for closure #3 in RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #3 in RecentsListViewController.configurationChanged()(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_75Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #2 in RecentsListViewController.configurationChanged()(v3, v4, v5, v6, v7);
}

Class partial apply for closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for RecentsCallItem(v2);
  OUTLINED_FUNCTION_9_0(v3);
  OUTLINED_FUNCTION_11_7();
  v5 = *(v1 + 16);

  return closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v0, v5, v1 + v4);
}

Class partial apply for closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_9_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = v1 + ((v7 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v0, (v1 + v4), v10, v11, v12);
}

void *partial apply for closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_298();
  return closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)();
}

uint64_t objectdestroy_10Tm()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v6 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v6))
      {
        OUTLINED_FUNCTION_16_3();
        v7 = OUTLINED_FUNCTION_53_0();
        v8(v7);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v9 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v9))
      {
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_53_0();
        v11(v10);
      }

      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v13 = OUTLINED_FUNCTION_53_0();
        v14(v13);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v15 + 8))(v1);
      type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v16)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v17 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v17))
  {
    OUTLINED_FUNCTION_71();
    v18 = OUTLINED_FUNCTION_177();
    v19(v18);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();

  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

void partial apply for closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(*(v0 + 16), v0 + v3, *(v0 + ((v2 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  OUTLINED_FUNCTION_44();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for RecentsCallItem(v0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v5 = OUTLINED_FUNCTION_13_35();

  return closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(v5, v6, v7, v8, v9);
}

void partial apply for closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v0);

  closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)();
}

uint64_t partial apply for closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v4 = *(v0 + v3);

  return closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(v0 + v2, v4);
}

uint64_t partial apply for closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v1);
  v2 = OUTLINED_FUNCTION_298();

  return a1(v2);
}

uint64_t type metadata completion function for RecentItemContactsViewControllerDelegate()
{
  result = type metadata accessor for RecentsCallItem(319);
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

uint64_t partial apply for closure #1 in RecentsListViewController.markAsReadButtonAction(_:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #1 in RecentsListViewController.markAsReadButtonAction(_:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in RecentsListViewController.handleDeferredVideoMessagePresentation()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v4);

  return closure #1 in RecentsListViewController.handleDeferredVideoMessagePresentation()(a1, a2);
}

uint64_t partial apply for closure #2 in RecentsListViewController.handleDeferredVideoMessagePresentation()()
{
  return partial apply for closure #2 in RecentsListViewController.handleDeferredVideoMessagePresentation()();
}

{
  v0 = OUTLINED_FUNCTION_17_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_203();

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v0 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_144();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_13_35();

  return closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_328Tm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_17_1();
  v0 = type metadata accessor for URL();
  OUTLINED_FUNCTION_22(v0);

  closure #1 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)();
}

uint64_t objectdestroy_29Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  return partial apply for closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)();
}

{
  v0 = OUTLINED_FUNCTION_17_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_203();

  return v4(v3);
}

void partial apply for closure #2 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for RecentsCallItem(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_40_3();
  v4 = *(v1 + 16);

  closure #2 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v0, v4);
}

uint64_t partial apply for closure #1 in closure #2 in RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_77_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_318Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #3 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)(v4, v5, v6, v0);
}