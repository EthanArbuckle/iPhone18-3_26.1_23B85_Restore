unint64_t OUTLINED_FUNCTION_161_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_161_2()
{
}

void OUTLINED_FUNCTION_205_3()
{

  Participant.screenInfo.getter();
}

uint64_t *OUTLINED_FUNCTION_205_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 128));
}

BOOL OUTLINED_FUNCTION_418()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t outlined init with take of Collaboration()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t OUTLINED_FUNCTION_196_4(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 320));
}

uint64_t OUTLINED_FUNCTION_96_4()
{
}

void OUTLINED_FUNCTION_302(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96_7()
{

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TranscriptionViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x1E69E8020], v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v1);
  if (v8)
  {
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t RecentsCollectionViewCollator.hasFinishedFirstLoad.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t objectdestroy_31Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm_0()
{

  return swift_deallocObject();
}

uint64_t RecentsListViewController.tipKitStopObservation()()
{
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_1BBC8D928()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

Swift::Void __swiftcall RecentsListViewController.updateLeftBarButton()()
{
  OUTLINED_FUNCTION_331();
  if ([v0 isEditing])
  {
    RecentsListViewController.doneEditingBarButtonItem.getter();
  }

  else
  {
    isa = RecentsListViewController.editBarButtonItem.getter().super.super.isa;
  }

  v21 = isa;
  v2 = [*&v0[OBJC_IVAR___FTRecentsListViewController_featureFlags] junkFilteringEnabled];
  v3 = [v0 navigationItem];
  v4 = v3;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    OUTLINED_FUNCTION_37_0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAC30;
    *(v5 + 32) = v21;
    v6 = v21;
    v7 = OUTLINED_FUNCTION_309();
    outlined bridged method (mbnn) of @objc UINavigationItem.leftBarButtonItems.setter(v7, v8, v9);

    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v4 = [v0 navigationItem];
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_109();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA930;
      *(v12 + 32) = RecentsListViewController.newCallBarButtonItem.getter();
      *(v12 + 40) = RecentsListViewController.filterBarButtonItem.getter();
      v13 = OUTLINED_FUNCTION_45_1();
      outlined bridged method (mbnn) of @objc UINavigationItem.leftBarButtonItems.setter(v13, v14, v15);
    }

    else
    {
      v16 = RecentsListViewController.filterBarButtonItem.getter();
      v17 = OUTLINED_FUNCTION_205();
      [v17 v18];

      v4 = v16;
    }
  }

  else
  {
    [(objc_class *)v3 setLeftBarButtonItem:v21];
  }

  OUTLINED_FUNCTION_9_17();
}

UIBarButtonItem RecentsListViewController.editBarButtonItem.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  preferredElementSize = RecentsListViewController.editMenuItems.getter();
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v11, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v9).super.super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v2 = [objc_opt_self() conversationKit];
  swift__string._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 1953064005;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, swift__string);

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  v12.value.super.super.isa = isa;
  return UIBarButtonItem.init(title:image:primaryAction:menu:)(v6, v10, v12, v13);
}

Class RecentsListViewController.filterBarButtonItem.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v3 = @nonobjc UIImage.__allocating_init(systemName:)();
  v8.value.super.super.isa = RecentsListViewController.generateFilterMenu()().super.super.isa;
  v7.value.super.isa = v3;
  v7.is_nil = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v7, v8, v9).super.super.isa;
  RecentsListViewController.getFilterMenuBadge()(v2);
  UIBarButtonItem.badge.setter();
  return isa;
}

UIMenu __swiftcall RecentsListViewController.generateFilterMenu()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for FilterMenuViewModel.OccurrenceValue();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v135 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v113 = v14;
  OUTLINED_FUNCTION_4_24();
  v15 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v121 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v120 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v136 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v106 - v28;
  v30 = type metadata accessor for FilterMenuViewModel.Style();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v34 = type metadata accessor for FilterMenuViewModel();
  v35 = *(v32 + 104);
  v108 = *MEMORY[0x1E6995A58];
  v109 = v32 + 104;
  v107 = v35;
  v35();
  v122 = v0;
  [*(v0 + OBJC_IVAR___FTRecentsListViewController_featureFlags) junkFilteringEnabled];
  [objc_opt_self() isFilterAsNewCallersEnabledForFaceTime];
  v111 = v34;
  v36 = static FilterMenuViewModel.recommendedActions(for:junkFilteringEnabled:voicemailEnabled:requestsEnabled:)();
  v37 = *(v32 + 8);
  v112 = v1;
  v110 = v30;
  v38 = v30;
  v39 = v36;
  v37(v1, v38);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8]);
  v40 = Dictionary.init(dictionaryLiteral:)();
  v134 = *(v39 + 16);
  if (!v134)
  {
LABEL_49:
    (v107)(v112, v108, v110);
    v99 = v122;
    OUTLINED_FUNCTION_11_23();
    (*((*MEMORY[0x1E69E7D40] & v100) + 0x568))();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = objc_allocWithZone(v111);
    v102 = FilterMenuViewModel.init(style:actions:selectedAction:actionsToCount:didSelectAction:)();
    v103 = *(v99 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel);
    *(v99 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel) = v102;
    v104 = v102;

    type metadata accessor for FilterMenu();
    OUTLINED_FUNCTION_28_0();
    static FilterMenu.menu(with:)();

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
    return result;
  }

  v41 = 0;
  OUTLINED_FUNCTION_40_3();
  v133 = v39 + v42;
  v139 = v17 + 2;
  v132 = v17 + 11;
  v131 = *MEMORY[0x1E6995AA0];
  v118 = *MEMORY[0x1E6995A98];
  HIDWORD(v115) = *MEMORY[0x1E6995A90];
  v130 = *MEMORY[0x1E6995A40];
  v129 = v4 + 104;
  v138 = (v4 + 32);
  v125 = (v17 + 1);
  v117 = v4 + 40;
  v127 = v4;
  v128 = v2;
  v123 = v39;
  v124 = v17;
  v43 = v120;
  v126 = v29;
  while (v41 < *(v39 + 16))
  {
    v137 = v17[9];
    v44 = v17[2];
    (v44)(v29, v133 + v137 * v41, v15);
    OUTLINED_FUNCTION_136();
    v44();
    v45 = OUTLINED_FUNCTION_209();
    v47 = v46(v45);
    if (v47 == v131)
    {
      OUTLINED_FUNCTION_136();
      v44();
      OUTLINED_FUNCTION_13_2();
      (*((*MEMORY[0x1E69E7D40] & v48) + 0x630))();
      OUTLINED_FUNCTION_27_15();
      (*(v49 + 184))();
      OUTLINED_FUNCTION_242();

      CurrentValueSubject.value.getter();

      v50 = v119;
      *v119 = v141;
      v51 = OUTLINED_FUNCTION_42_13();
      v52(v51);
      v53 = *v138;
      (*v138)(v135, v50, v2);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_323_0();
      OUTLINED_FUNCTION_65_4();
      if (v54)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_29_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd);
      if (OUTLINED_FUNCTION_187_0())
      {
        v50 = v140;
        specialized __RawDictionaryStorage.find<A>(_:)();
        OUTLINED_FUNCTION_13_33();
        v29 = v126;
        if (!v55)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v29 = v126;
      }

      v40 = v140;
      if (v2)
      {
        OUTLINED_FUNCTION_28_20();
        OUTLINED_FUNCTION_138();
        v70();
        OUTLINED_FUNCTION_202();
        v71 = v43;
LABEL_37:
        v50(v71, v15);
        goto LABEL_38;
      }

      v72 = OUTLINED_FUNCTION_22_21();
      (v44)(v72, v43, v15);
      v73 = OUTLINED_FUNCTION_28_20();
      (v53)(v73, v135, v2);
      OUTLINED_FUNCTION_202();
      v74 = OUTLINED_FUNCTION_316();
      (v50)(v74);
      v75 = OUTLINED_FUNCTION_158_1();
      (v50)(v75);
      OUTLINED_FUNCTION_291();
      if (v54)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v47 == v118)
      {
        OUTLINED_FUNCTION_136();
        v44();
        OUTLINED_FUNCTION_13_2();
        (*((*MEMORY[0x1E69E7D40] & v56) + 0x630))();
        OUTLINED_FUNCTION_27_15();
        (*(v57 + 184))();
        OUTLINED_FUNCTION_242();

        CurrentValueSubject.value.getter();

        v50 = v116;
        *v116 = v141;
        v58 = OUTLINED_FUNCTION_42_13();
        v59(v58);
        v60 = *v138;
        v61 = OUTLINED_FUNCTION_220();
        (v60)(v61);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_323_0();
        OUTLINED_FUNCTION_65_4();
        if (v54)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_29_13();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd);
        if (OUTLINED_FUNCTION_187_0())
        {
          v50 = v140;
          specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_13_33();
          v43 = v120;
          v29 = v126;
          if (!v55)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v43 = v120;
          v29 = v126;
        }

        v40 = v140;
        if ((v2 & 1) == 0)
        {
          v89 = OUTLINED_FUNCTION_22_21();
          (v44)(v89, v121, v15);
          OUTLINED_FUNCTION_28_20();
          OUTLINED_FUNCTION_217();
          v60();
          OUTLINED_FUNCTION_202();
          v90 = OUTLINED_FUNCTION_316();
          (v50)(v90);
          v91 = OUTLINED_FUNCTION_158_1();
          (v50)(v91);
          OUTLINED_FUNCTION_291();
          if (v54)
          {
            goto LABEL_56;
          }

          *(v40 + 16) = v92;
LABEL_47:
          v17 = v124;
          v43 = v120;
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_28_20();
        OUTLINED_FUNCTION_138();
        v87();
        OUTLINED_FUNCTION_202();
        v71 = v121;
        goto LABEL_37;
      }

      if (v47 != HIDWORD(v115))
      {
        OUTLINED_FUNCTION_136();
        v44();
        *v114 = 0;
        v77 = OUTLINED_FUNCTION_42_13();
        v78(v77);
        v79 = *v138;
        v80 = OUTLINED_FUNCTION_220();
        (v79)(v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = v40;
        specialized __RawDictionaryStorage.find<A>(_:)();
        OUTLINED_FUNCTION_65_4();
        if (v54)
        {
          goto LABEL_54;
        }

        OUTLINED_FUNCTION_29_13();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40))
        {
          OUTLINED_FUNCTION_286();
          specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_13_33();
          if (!v55)
          {
            goto LABEL_59;
          }
        }

        v40 = v141;
        v82 = v125;
        if (v2)
        {
          OUTLINED_FUNCTION_28_20();
          OUTLINED_FUNCTION_138();
          v83();
          v84 = *v82;
          v85 = OUTLINED_FUNCTION_286();
          (v84)(v85, v15);
          v29 = v126;
          v86 = OUTLINED_FUNCTION_158_1();
          v84(v86);
          (v84)(v136, v15);
        }

        else
        {
          OUTLINED_FUNCTION_22_21();
          OUTLINED_FUNCTION_136();
          v44();
          OUTLINED_FUNCTION_28_20();
          OUTLINED_FUNCTION_217();
          v79();
          v95 = *v82;
          v96 = OUTLINED_FUNCTION_158_1();
          v95(v96);
          v29 = v126;
          v97 = OUTLINED_FUNCTION_158_1();
          v95(v97);
          OUTLINED_FUNCTION_291();
          if (v54)
          {
            goto LABEL_57;
          }

          *(v40 + 16) = v98;
          (v95)(v136, v15);
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_136();
      v44();
      OUTLINED_FUNCTION_13_2();
      (*((*MEMORY[0x1E69E7D40] & v62) + 0x630))();
      OUTLINED_FUNCTION_27_15();
      (*(v63 + 184))();
      OUTLINED_FUNCTION_242();

      CurrentValueSubject.value.getter();

      *v113 = v141;
      v64 = OUTLINED_FUNCTION_42_13();
      v65(v64);
      v66 = *v138;
      v67 = OUTLINED_FUNCTION_220();
      (v66)(v67);
      swift_isUniquelyReferenced_nonNull_native();
      v140 = v40;
      OUTLINED_FUNCTION_28_11();
      v50 = v40;
      specialized __RawDictionaryStorage.find<A>(_:)();
      OUTLINED_FUNCTION_65_4();
      if (v54)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_29_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd);
      if (OUTLINED_FUNCTION_187_0())
      {
        v50 = v140;
        OUTLINED_FUNCTION_28_11();
        specialized __RawDictionaryStorage.find<A>(_:)();
        OUTLINED_FUNCTION_13_33();
        if (!v55)
        {
          goto LABEL_59;
        }
      }

      v40 = v140;
      if (v2)
      {
        OUTLINED_FUNCTION_28_20();
        OUTLINED_FUNCTION_138();
        v68();
        OUTLINED_FUNCTION_202();
        v69 = OUTLINED_FUNCTION_28_11();
        v50(v69, v15);
        v29 = v126;
LABEL_38:
        v88 = OUTLINED_FUNCTION_158_1();
        (v50)(v88);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_136();
      v44();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_217();
      v66();
      OUTLINED_FUNCTION_202();
      v93 = OUTLINED_FUNCTION_158_1();
      (v50)(v93);
      v29 = v126;
      v94 = OUTLINED_FUNCTION_158_1();
      (v50)(v94);
      OUTLINED_FUNCTION_291();
      if (v54)
      {
        goto LABEL_58;
      }
    }

    *(v40 + 16) = v76;
LABEL_39:
    v17 = v124;
LABEL_48:
    v39 = v123;
    if (v134 == ++v41)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result.super.super.isa = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [SGURL]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for FilterMenuViewModel.Action();
  v0 = MEMORY[0x1E6995AA8];
  lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8]);
  OUTLINED_FUNCTION_4_19();
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4, v0, v5);
}

{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for UUID();
  v0 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_4_19();
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4, v0, v5);
}

{
  v1 = OUTLINED_FUNCTION_1_39();
  v2 = AnyHashable._rawHashValue(seed:)(v1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v2);
}

{
  v0 = OUTLINED_FUNCTION_1_39();
  NSObject._rawHashValue(seed:)(v0);
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3);
}

{
  OUTLINED_FUNCTION_3_29();
  v1 = MessageType.rawValue.getter();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v2);
}

{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for IndexPath();
  v0 = MEMORY[0x1E6969C28];
  lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
  OUTLINED_FUNCTION_4_19();
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4, v0, v5);
}

{
  OUTLINED_FUNCTION_3_29();
  Hasher._combine(_:)(v0 & 1);
  v1 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
}

{
  v0 = OUTLINED_FUNCTION_1_39();
  NSObject._rawHashValue(seed:)(v0);
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3);
}

{
  v0 = OUTLINED_FUNCTION_1_39();
  NSObject._rawHashValue(seed:)(v0);
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3);
}

{
  OUTLINED_FUNCTION_3_29();
  Hasher._combine(_:)(v0);
  v1 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
}

{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for Handle();
  v0 = MEMORY[0x1E696EDC8];
  lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
  OUTLINED_FUNCTION_4_19();
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4, v0, v5);
}

uint64_t lazy protocol witness table accessor for type Handle and conformance Handle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v16 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v21 = v6 + 64;
  v17 = v6;
  v12 = ~(-1 << *(v6 + 32));
  for (i = a2 & v12; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v9 + 16))(v11, *(v17 + 48) + *(v9 + 72) * i, v8);
    lazy protocol witness table accessor for type Handle and conformance Handle(v18, v19);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v11, v8);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t closure #2 in RecentsLinkController.refreshSuggestionsURLs()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v8 = RecentsLinkController.modelLocked.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a4;
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in closure #2 in RecentsLinkController.refreshSuggestionsURLs();
    *(v10 + 24) = v9;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[3] = &block_descriptor_159;
    v11 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v8 performWhileLocked_];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_198(uint64_t result)
{
  *(v3 - 152) = result;
  *(v3 - 144) = v2;
  *(v3 - 132) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_198_0(unint64_t *a1)
{

  return lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(a1, v1);
}

id OUTLINED_FUNCTION_198_3()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_198_5(uint64_t a1)
{
  v2[8] = a1;
  v2[4] = v1;
  v2[5] = v3;

  return outlined init with copy of CallCenterProvider(v4 - 120, v4 - 160);
}

void RecentsListViewController.currentFilterMode.getter()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 1584))();
  OUTLINED_FUNCTION_27_15();
  v3 = (*(v2 + 184))();

  (*((*v0 & *v3) + 0x210))();
}

uint64_t closure #1 in closure #2 in RecentsLinkController.refreshSuggestionsURLs()(uint64_t a1, unint64_t a2, void *a3)
{
  v36 = a3;
  v35 = type metadata accessor for URL();
  v5 = *(v35 - 8);
  v6 = MEMORY[0x1EEE9AC00](v35);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a1 + 256);
  v34 = a1;
  v10 = v9(v6);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo5SGURLC_Tt1g5(v10, a2);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v13 = *(*v34 + 264);

    v13(v14);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BA940;
    aBlock[0] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5SGURLCGMd);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    result = specialized Array.count.getter(a2);
    if (result)
    {
      v20 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v21 = 0;
      v22 = (v5 + 8);
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB22010](v21, a2);
        }

        else
        {
          v23 = *(a2 + 8 * v21 + 32);
        }

        v24 = v23;
        ++v21;
        v25 = [v23 url];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = URL.absoluteString.getter();
        v28 = v27;
        (*v22)(v8, v35);
        v29 = MEMORY[0x1BFB209B0](v26, v28);

        aBlock[4] = TPNumberPadCharacter.rawValue.getter;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_162;
        v30 = _Block_copy(aBlock);
        [v36 registerURLFeedback:2 absoluteURL:v29 withCompletion:v30];
        _Block_release(v30);
      }

      while (v20 != v21);
    }
  }

  v32 = (*(*v34 + 200))(aBlock);
  if ((*v31 & 2) != 0)
  {
    *v31 &= ~2uLL;
  }

  v32(aBlock, 0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  return os_log(_:dso:log:type:_:)();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7UIColorC_Tt1g5Tm(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v7 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_60_0();
    if (!v11)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v10;
    }

    if (v8 == v9)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for NSObject(0, a3);
    v23 = v5;
    v12 = v5 & 0xC000000000000001;
    v5 = a2;
    v13 = a2 & 0xC000000000000001;
    v14 = 4;
    a2 = i;
    while (1)
    {
      v15 = v14 - 4;
      v16 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        break;
      }

      if (v12)
      {
        v17 = MEMORY[0x1BFB22010](v14 - 4, v23);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_29;
        }

        v17 = *(v23 + 8 * v14);
      }

      a3 = v17;
      if (v13)
      {
        v18 = MEMORY[0x1BFB22010](v14 - 4, v5);
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_30;
        }

        v18 = *(v5 + 8 * v14);
      }

      v19 = v18;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        ++v14;
        if (v16 != a2)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

Swift::Void __swiftcall RecentsListViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ((*(v1 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) & 1) == 0)
  {
    v3 = [v1 navigationItem];
    v7 = [v3 titleView];

    if (v7)
    {
      type metadata accessor for RecentsNavigationBarTitleView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        [(UIScrollView *)a1 contentOffset];
        (*((*MEMORY[0x1E69E7D40] & *v5) + 0x50))(v6 >= 16.0);
      }
    }
  }
}

Swift::Void __swiftcall RecentsListViewController.viewWillLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for RecentsListViewController(0);
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  RecentsListViewController.tipKitInvalidateLayout()();
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void closure #1 in RecentsListViewController.collectionViewLayout()(uint64_t a1)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x630))();

  (*(*v8 + 264))(&v61 + 2, a1);

  if (BYTE2(v61))
  {
    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = (*((*v7 & *v9) + 0x630))();

    (*(*v10 + 264))(&v61 + 1, a1);

    if (BYTE1(v61) == 1)
    {
      v11 = objc_opt_self();
      v12 = [v11 fractionalWidthDimension_];
      v13 = [v11 estimatedDimension_];
      v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

      v15 = swift_unknownObjectUnownedLoadStrong();
      v16 = v14;
      isa = RecentsListViewController.updateHeaderForTip(_:)(v16).super.isa;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
      v18 = isa;
      v19 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v18, 0xD00000000000001CLL, 0x80000001BC4FB430, 1);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
      v20 = swift_unknownObjectUnownedLoadStrong();
      RecentsListViewController.collectionLayoutConfiguration.getter();

      v21 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      (*(v3 + 8))(v5, v2);
      [v21 contentInsets];
      [v21 setContentInsets_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BC4BAC30;
      *(v22 + 32) = v19;
      v23 = v19;
      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v21 setBoundarySupplementaryItems_];
    }

    else
    {
      v25 = swift_unknownObjectUnownedLoadStrong();
      v26 = (*((*v7 & *v25) + 0x630))();

      (*(*v26 + 264))(&v61, a1);

      if (v61 == 2)
      {
        v27 = objc_opt_self();
        v28 = [v27 fractionalWidthDimension_];
        v29 = [v27 estimatedDimension_];
        v30 = [objc_opt_self() sizeWithWidthDimension:v28 heightDimension:v29];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
        v31 = v30;
        v32 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v31, 0xD000000000000021, 0x80000001BC4FC480, 1);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
        v33 = swift_unknownObjectUnownedLoadStrong();
        RecentsListViewController.collectionLayoutConfiguration.getter();

        v34 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
        (*(v3 + 8))(v5, v2);
        [v34 contentInsets];
        [v34 setContentInsets_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1BC4BAC30;
        *(v35 + 32) = v32;
        v36 = v32;
        v37 = Array._bridgeToObjectiveC()().super.isa;

        [v34 setBoundarySupplementaryItems_];
      }

      else
      {
        v38 = swift_unknownObjectUnownedLoadStrong();
        v39 = (*((*v7 & *v38) + 0x5F8))();

        if (v39)
        {
          v40 = swift_unknownObjectUnownedLoadStrong();
          RecentsListViewController.createGridLayoutSection()();
        }

        else
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
          v41 = swift_unknownObjectUnownedLoadStrong();
          RecentsListViewController.collectionLayoutConfiguration.getter();

          v42 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
          (*(v3 + 8))(v5, v2);
          v43 = [v42 boundarySupplementaryItems];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v45 = specialized Array.count.getter(v44);
          for (i = 0; ; ++i)
          {
            if (v45 == i)
            {

              [v42 contentInsets];
              [v42 setContentInsets_];
              return;
            }

            if ((v44 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x1BFB22010](i, v44);
            }

            else
            {
              if (i >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v47 = *(v44 + 8 * i + 32);
            }

            v48 = v47;
            if (__OFADD__(i, 1))
            {
              break;
            }

            [v47 setPinToVisibleBounds_];
          }

          __break(1u);
LABEL_19:
          __break(1u);
        }
      }
    }
  }

  else
  {
    v49 = objc_opt_self();
    v50 = [v49 fractionalWidthDimension_];
    v51 = [v49 estimatedDimension_];
    v52 = [objc_opt_self() sizeWithWidthDimension:v50 heightDimension:v51];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
    v53 = v52;
    v54 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v53, 0xD000000000000021, 0x80000001BC4FC450, 1);
    [v54 setPinToVisibleBounds_];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
    v55 = swift_unknownObjectUnownedLoadStrong();
    RecentsListViewController.collectionLayoutConfiguration.getter();

    v56 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1BC4BAC30;
    *(v57 + 32) = v54;
    v58 = v54;
    v59 = Array._bridgeToObjectiveC()().super.isa;

    [v56 setBoundarySupplementaryItems_];

    [v56 setContentInsetsReference_];
  }
}

ConversationKit::RecentsCollectionViewSection_optional __swiftcall RecentsCollectionViewDataSource.section(for:)(Swift::Int a1)
{
  OUTLINED_FUNCTION_0_1();
  v3 = (*(v1 + 240))();
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsCollectionViewSection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1BBC906D4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

id @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1BFB209B0](a2, a3);

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

void RecentsListViewController.collectionLayoutConfiguration.getter()
{
  OUTLINED_FUNCTION_29();
  swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35UICollectionLayoutListConfigurationVSgMd);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v3 = type metadata accessor for UICollectionLayoutListConfiguration();
  v4 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v4, v5, v3);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_43_0();
    outlined destroy of CallControlsService?(v7, v8);
    v9 = OUTLINED_FUNCTION_208();
    closure #1 in RecentsListViewController.collectionLayoutConfiguration.getter(v9);
    OUTLINED_FUNCTION_16_3();
    v10 = OUTLINED_FUNCTION_45_1();
    v11(v10);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_16_3();
    v15 = OUTLINED_FUNCTION_246_0();
    v16(v15);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsListViewController.collectionLayoutConfiguration.getter(void *a1)
{
  v2 = type metadata accessor for FilterMenuViewModel.Action();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v23 - v12;
  v14 = [a1 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  v16 = MEMORY[0x1E69DC258];
  if (v15 != 5)
  {
    v16 = MEMORY[0x1E69DC248];
  }

  (*(v7 + 104))(v13, *v16, v6);
  (*(v7 + 16))(v9, v13, v6);
  v17 = UICollectionLayoutListConfiguration.init(appearance:)();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x568))(v17);
  static RecentsListViewController.recommendedHeaderMode(for:)();
  (*(v23 + 8))(v4, v24);
  UICollectionLayoutListConfiguration.headerMode.setter();
  v18 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  v19 = [objc_opt_self() effectWithStyle_];
  v20 = [objc_opt_self() effectForBlurEffect:v19 style:7];

  v21 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.visualEffect.setter();
  v21(v25, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  (*(v7 + 8))(v13, v6);
}

void static RecentsListViewController.recommendedHeaderMode(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v3 = OUTLINED_FUNCTION_62_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_4_31();
  v7 = v6(v5);
  v8 = *MEMORY[0x1E6995A90];
  v9 = *MEMORY[0x1E6995A68];
  type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  OUTLINED_FUNCTION_7_0();
  v11 = *(v10 + 104);
  if (v7 == v8 || v7 == v9)
  {
    v11(v1, *MEMORY[0x1E69DC290]);
  }

  else
  {
    v11(v1, *MEMORY[0x1E69DC280]);
    v13 = OUTLINED_FUNCTION_4_31();
    v14(v13);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.shouldUseGridLayoutCells.getter()
{
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_287();
  if (!v5)
  {
    return *(v0 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled);
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x568))();
  v2 = OUTLINED_FUNCTION_45_1();
  v4 = v3(v2);
  v5 = v4 == *MEMORY[0x1E6995A90] || v4 == *MEMORY[0x1E6995A68];
  if (v5)
  {
    return 0;
  }

  v6 = *(v0 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled);
  v7 = OUTLINED_FUNCTION_45_1();
  v8(v7);
  return v6;
}

NSCollectionLayoutSection __swiftcall RecentsListViewController.createGridLayoutSection()()
{
  type metadata accessor for RecentsCollectionViewGridCell();
  v0 = static RecentsCollectionViewGridCell.needsAXLayout.getter();
  v1 = RecentsListViewController.gridLayoutInset()();
  v2 = RecentsListViewController.gridLayoutInset()();
  if (static RecentsCollectionViewGridCell.needsAXLayout.getter())
  {
    static RecentsCollectionViewGridCell.effectiveScreenWidth.getter();
    if (v3 > 402.0)
    {
      v1 = 24.0;
    }
  }

  else
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5)
    {
      v2 = 20.0;
      v1 = 16.0;
    }
  }

  if (v0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = [v7 fractionalHeightDimension_];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v7 fractionalWidthDimension_];
  type metadata accessor for RecentsListViewController(0);
  static RecentsListViewController.gridLayoutItemSize()();
  v14 = [v7 absoluteDimension_];
  v15 = OUTLINED_FUNCTION_79();
  v17 = [v15 v16];

  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  OUTLINED_FUNCTION_37_0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BAC30;
  *(v19 + 32) = v11;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v20 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v18 horizontalGroupWithLayoutSize:v17 subitems:isa];

  v23 = [objc_opt_self() fixedSpacing_];
  [v22 setInterItemSpacing_];

  [v22 setContentInsets_];
  v24 = [objc_opt_self() sectionWithGroup_];
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  v27 = v1 + -7.5;
  if (v1 + -7.5 <= 0.0)
  {
    v27 = 0.0;
  }

  if (v26)
  {
    v27 = 0.0;
  }

  [v24 setContentInsets_];

  return v24;
}

id closure #1 in RecentsListViewController.cellProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = a3;
  v173 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v158 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v163 = &v143 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGMd);
  v159 = *(v165 - 8);
  v8 = MEMORY[0x1EEE9AC00](v165);
  v151 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v157 = &v143 - v10;
  v168 = type metadata accessor for FilterMenuViewModel.Action();
  v176 = *(v168 - 8);
  v11 = MEMORY[0x1EEE9AC00](v168);
  v175 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v174 = &v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v161 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v160 = &v143 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v156 = &v143 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v143 - v21;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGMd);
  v164 = *(v170 - 8);
  v22 = MEMORY[0x1EEE9AC00](v170);
  v155 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v154 = &v143 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v150 = &v143 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v143 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v172 = &v143 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v143 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v167 = &v143 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v152 = &v143 - v40;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGMd);
  v166 = *(v171 - 8);
  v41 = MEMORY[0x1EEE9AC00](v171);
  v43 = &v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v143 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v162 = &v143 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v148 = &v143 - v49;
  v50 = type metadata accessor for RecentCallRecentItemMetadata(0);
  MEMORY[0x1EEE9AC00](v50);
  v169 = &v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RecentsCallItemType(0);
  v53 = MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v53);
  v177 = (&v143 - v54);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v56 = Strong;
  v146 = v43;
  v145 = a2;
  v57 = MEMORY[0x1E69E7D40];
  v58 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x630))();

  swift_beginAccess();
  v59 = swift_unknownObjectWeakLoadStrong();
  if (!v59)
  {
    goto LABEL_55;
  }

  v60 = v59;
  v147 = v58;
  v61 = (*((*v57 & *v59) + 0x630))();

  v62 = (*(*v61 + 184))();

  swift_beginAccess();
  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {

    return 0;
  }

  v143 = v62;
  v64 = v63;
  v65 = (*((*v57 & *v63) + 0x5F8))();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v67 = v146;
  v144 = v64;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if (v65)
      {
        swift_beginAccess();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v100 = v171;
        if (__swift_getEnumTagSinglePayload(v37, 1, v171) == 1)
        {
          outlined destroy of CallControlsService?(v37, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          __swift_project_value_buffer(v101, static Logger.conversationKit);
          v74 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v74, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            v104 = "cellRegistrationForGridRecentsCallItemOngoingCalls was unexpectedly nil";
LABEL_63:
            _os_log_impl(&dword_1BBC58000, v74, v102, v104, v103, 2u);
            MEMORY[0x1BFB23DF0](v103, -1, -1);
            goto LABEL_88;
          }

          goto LABEL_88;
        }

        v125 = v166;
        (*(v166 + 32))(v46, v37, v100);
        v126 = v172;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v127 = type metadata accessor for RecentsCallItem(0);
        v128 = v100;
        __swift_storeEnumTagSinglePayload(v126, 0, 1, v127);
        type metadata accessor for RecentsCollectionViewGridCell();
        v129 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
        outlined destroy of CallControlsService?(v126, &_s15ConversationKit15RecentsCallItemVSgMd);
        (*(v125 + 8))(v46, v128);
      }

      else
      {
        swift_beginAccess();
        v113 = v160;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v114 = v170;
        if (__swift_getEnumTagSinglePayload(v113, 1, v170) == 1)
        {
          outlined destroy of CallControlsService?(v113, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v115 = type metadata accessor for Logger();
          __swift_project_value_buffer(v115, static Logger.conversationKit);
          v74 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v74, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            v104 = "cellRegistrationForRecentsCallItemOngoingCalls was unexpectedly nil";
            goto LABEL_63;
          }

          goto LABEL_88;
        }

        v130 = v164;
        v131 = v154;
        (*(v164 + 32))(v154, v113, v114);
        v132 = v172;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v133 = type metadata accessor for RecentsCallItem(0);
        __swift_storeEnumTagSinglePayload(v132, 0, 1, v133);
        type metadata accessor for RecentsCollectionViewCell();
        v129 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
        outlined destroy of CallControlsService?(v132, &_s15ConversationKit15RecentsCallItemVSgMd);
        (*(v130 + 8))(v131, v114);
      }

      v111 = v129;
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      goto LABEL_78;
    case 2:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      if (v65)
      {
        swift_beginAccess();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v82 = v171;
        if (__swift_getEnumTagSinglePayload(v34, 1, v171) != 1)
        {
          v105 = v166;
          (*(v166 + 32))(v67, v34, v82);
          goto LABEL_74;
        }

        outlined destroy of CallControlsService?(v34, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Logger.conversationKit);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          v87 = "cellRegistrationForGridRecentsCallItemLinks was unexpectedly nil";
          goto LABEL_53;
        }
      }

      else
      {
        swift_beginAccess();
        v109 = v161;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v82 = v170;
        if (__swift_getEnumTagSinglePayload(v109, 1, v170) != 1)
        {
          v105 = v164;
          v67 = v155;
          (*(v164 + 32))(v155, v109, v82);
          v116 = v172;
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          v121 = type metadata accessor for RecentsCallItem(0);
          __swift_storeEnumTagSinglePayload(v116, 0, 1, v121);
          type metadata accessor for RecentsCollectionViewCell();
          goto LABEL_76;
        }

        outlined destroy of CallControlsService?(v109, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        __swift_project_value_buffer(v110, static Logger.conversationKit);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          v87 = "cellRegistrationForRecentsCallItemLinks was unexpectedly nil";
          goto LABEL_53;
        }
      }

      goto LABEL_54;
    default:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v78 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        v70 = v176;
        goto LABEL_17;
      }

      v68 = v169;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      v69 = *&v68[*(v50 + 52)];
      v70 = v176;
      if (!v69 || ![v69 isSensitive])
      {
        v78 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_17:
        v79 = v174;
        v80 = v175;
        if (v65)
        {
          swift_beginAccess();
          v81 = v167;
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          v82 = v171;
          if (__swift_getEnumTagSinglePayload(v81, 1, v171) == 1)
          {
            outlined destroy of CallControlsService?(v81, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v83 = type metadata accessor for Logger();
            __swift_project_value_buffer(v83, static Logger.conversationKit);
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              v87 = "cellRegistrationForGridRecentsCallItemCalls was unexpectedly nil";
LABEL_53:
              _os_log_impl(&dword_1BBC58000, v84, v85, v87, v86, 2u);
              MEMORY[0x1BFB23DF0](v86, -1, -1);

LABEL_55:

              return 0;
            }

LABEL_54:

            goto LABEL_55;
          }

          v105 = v166;
          v67 = v162;
          (*(v166 + 32))(v162, v81, v82);
LABEL_74:
          v116 = v172;
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          v120 = type metadata accessor for RecentsCallItem(0);
          __swift_storeEnumTagSinglePayload(v116, 0, 1, v120);
          type metadata accessor for RecentsCollectionViewGridCell();
LABEL_76:
          v122 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
          outlined destroy of CallControlsService?(v116, &_s15ConversationKit15RecentsCallItemVSgMd);
          (*(v105 + 8))(v67, v82);
          goto LABEL_77;
        }

        v177 = *((*MEMORY[0x1E69E7D40] & *v144) + 0x568);
        v177(v78);
        v88 = v79;
        v89 = *(v70 + 104);
        v90 = v168;
        v89(v80, *MEMORY[0x1E6995A68], v168);
        v91 = specialized == infix<A>(_:_:)(v79, v80);
        v92 = *(v70 + 8);
        v92(v80, v90);
        v93 = (v92)(v88, v90);
        if (v91)
        {
          swift_beginAccess();
          v94 = v163;
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          v82 = v165;
          if (__swift_getEnumTagSinglePayload(v94, 1, v165) != 1)
          {
            v105 = v159;
            v67 = v157;
            (*(v159 + 32))(v157, v94, v82);
            v116 = v172;
            _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
            v117 = type metadata accessor for RecentsCallItem(0);
            __swift_storeEnumTagSinglePayload(v116, 0, 1, v117);
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
            goto LABEL_76;
          }

          outlined destroy of CallControlsService?(v94, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          __swift_project_value_buffer(v95, static Logger.conversationKit);
          v84 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v84, v96))
          {
            goto LABEL_54;
          }

          v97 = swift_slowAlloc();
          *v97 = 0;
          v98 = "cellRegistrationForJunk was unexpectedly nil";
        }

        else
        {
          v177(v93);
          v89(v80, *MEMORY[0x1E6995A90], v90);
          v106 = specialized == infix<A>(_:_:)(v88, v80);
          v92(v80, v90);
          v92(v88, v90);
          if (v106)
          {
            swift_beginAccess();
            v107 = v158;
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v82 = v165;
            if (__swift_getEnumTagSinglePayload(v107, 1, v165) != 1)
            {
              v105 = v159;
              v67 = v151;
              (*(v159 + 32))(v151, v107, v82);
              v116 = v172;
              _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
              v136 = type metadata accessor for RecentsCallItem(0);
              __swift_storeEnumTagSinglePayload(v116, 0, 1, v136);
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
              goto LABEL_76;
            }

            outlined destroy of CallControlsService?(v107, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMd);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v108 = type metadata accessor for Logger();
            __swift_project_value_buffer(v108, static Logger.conversationKit);
            v84 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v84, v96))
            {
              goto LABEL_54;
            }

            v97 = swift_slowAlloc();
            *v97 = 0;
            v98 = "cellRegistrationForRequests was unexpectedly nil";
          }

          else
          {
            swift_beginAccess();
            v118 = v156;
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v82 = v170;
            if (__swift_getEnumTagSinglePayload(v118, 1, v170) != 1)
            {
              v105 = v164;
              v67 = v150;
              (*(v164 + 32))(v150, v118, v82);
              v116 = v172;
              _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
              v137 = type metadata accessor for RecentsCallItem(0);
              __swift_storeEnumTagSinglePayload(v116, 0, 1, v137);
              type metadata accessor for RecentsCollectionViewCell();
              goto LABEL_76;
            }

            outlined destroy of CallControlsService?(v118, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v119 = type metadata accessor for Logger();
            __swift_project_value_buffer(v119, static Logger.conversationKit);
            v84 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v84, v96))
            {
              goto LABEL_54;
            }

            v97 = swift_slowAlloc();
            *v97 = 0;
            v98 = "cellRegistrationForRecentsCallItemCalls was unexpectedly nil";
          }
        }

        _os_log_impl(&dword_1BBC58000, v84, v96, v98, v97, 2u);
        MEMORY[0x1BFB23DF0](v97, -1, -1);
        goto LABEL_54;
      }

      if (v65)
      {
        swift_beginAccess();
        v71 = v152;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v72 = v171;
        if (__swift_getEnumTagSinglePayload(v71, 1, v171) == 1)
        {
          outlined destroy of CallControlsService?(v71, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          __swift_project_value_buffer(v73, static Logger.conversationKit);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v74, v75))
          {
            goto LABEL_88;
          }

          v76 = swift_slowAlloc();
          *v76 = 0;
          v77 = "cellRegistrationForGridRecentsSensitveCallItemCalls was unexpectedly nil";
LABEL_87:
          _os_log_impl(&dword_1BBC58000, v74, v75, v77, v76, 2u);
          MEMORY[0x1BFB23DF0](v76, -1, -1);
LABEL_88:

          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          return 0;
        }

        v138 = v166;
        v139 = v148;
        (*(v166 + 32))(v148, v71, v72);
        v140 = v172;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v141 = type metadata accessor for RecentsCallItem(0);
        __swift_storeEnumTagSinglePayload(v140, 0, 1, v141);
        type metadata accessor for RecentsCollectionViewGridCell();
      }

      else
      {
        swift_beginAccess();
        v134 = v153;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v72 = v170;
        if (__swift_getEnumTagSinglePayload(v134, 1, v170) == 1)
        {
          outlined destroy of CallControlsService?(v134, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v135 = type metadata accessor for Logger();
          __swift_project_value_buffer(v135, static Logger.conversationKit);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v74, v75))
          {
            goto LABEL_88;
          }

          v76 = swift_slowAlloc();
          *v76 = 0;
          v77 = "cellRegistrationForRecentsSensitveCallItemCalls was unexpectedly nil";
          goto LABEL_87;
        }

        v138 = v164;
        v139 = v149;
        (*(v164 + 32))(v149, v134, v72);
        v140 = v172;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v142 = type metadata accessor for RecentsCallItem(0);
        __swift_storeEnumTagSinglePayload(v140, 0, 1, v142);
        type metadata accessor for RecentsCollectionViewCell();
      }

      v122 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      outlined destroy of CallControlsService?(v140, &_s15ConversationKit15RecentsCallItemVSgMd);
      (*(v138 + 8))(v139, v72);
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_77:
      v111 = v122;
LABEL_78:
      v180 = 0;
      v181 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v180 = 0xD00000000000001CLL;
      v181 = 0x80000001BC4FC430;
      v179 = IndexPath.section.getter();
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v123);

      MEMORY[0x1BFB20B10](2003784238, 0xE400000000000000);
      v179 = IndexPath.row.getter();
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v124);

      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v180, v181, v111);

      return v111;
  }
}

id RecentsCollectionViewGridCell.init(frame:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_20_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_1();
  v77 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_4_24();
  v18 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v22 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell__playing;
  type metadata accessor for RecentsCollectionViewGridCell.PlayBinding(0);
  v23 = OUTLINED_FUNCTION_84();
  RecentsCollectionViewGridCell.PlayBinding.init()();
  *(v2 + v22) = v23;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldIgnoreSelection) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldShowSelectionView) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v76 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel;
  *v1 = static Color.clear.getter();
  (*(v20 + 104))(v1, *MEMORY[0x1E6995B40], v18);
  v24 = type metadata accessor for SystemImage();
  v25 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = *(v9 + 104);
  v29 = OUTLINED_FUNCTION_107_0();
  v28(v29);
  OUTLINED_FUNCTION_13_36();
  ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
  v30 = type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v24);
  v37 = OUTLINED_FUNCTION_107_0();
  v28(v37);
  OUTLINED_FUNCTION_13_36();
  ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v30);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v30);
  v44 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v24);
  v47 = OUTLINED_FUNCTION_107_0();
  v28(v47);
  OUTLINED_FUNCTION_13_36();
  ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_134_0(v48, v49, v50, v30);
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  v51 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_134_0(v51, v52, v53, v54);
  type metadata accessor for ContactPosterOrAvatarTileState();
  OUTLINED_FUNCTION_84();
  ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  type metadata accessor for RecentsCallItem(0);
  v55 = OUTLINED_FUNCTION_33_16();
  v59 = OUTLINED_FUNCTION_134_0(v55, v56, v57, v58);
  type metadata accessor for ContactAvatarTileViewModel(v59);
  v60 = OUTLINED_FUNCTION_84();
  v75 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_28_21();
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v61, v62, v63, v64, v65, v66, v67, v68, 0, 0, v77, v75);
  *(v2 + v76) = v60;
  v69 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutline;
  type metadata accessor for CircleCheckmarkView();
  v70 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v70 setTranslatesAutoresizingMaskIntoConstraints_];
  (*((*MEMORY[0x1E69E7D40] & *v70) + 0xC0))(0);
  *(v2 + v69) = v70;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTopConstraint) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTrailingConstraint) = 0;
  type metadata accessor for RecentsCollectionViewGridCell();
  OUTLINED_FUNCTION_18_30();
  v73 = objc_msgSendSuper2(v71, v72);
  RecentsCollectionViewGridCell.commonInit()();

  return v73;
}

id CircleCheckmarkView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_fillColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 systemWhiteColor];
  v3 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_borderColor;
  *(v0 + v3) = [v2 systemWhiteColor];
  v4 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkColor;
  *(v0 + v4) = [v2 systemGrayColor];
  *(v0 + OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkSize) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_isChecked) = 0;
  v9 = type metadata accessor for CircleCheckmarkView();
  OUTLINED_FUNCTION_18_30();
  v7 = objc_msgSendSuper2(v5, v6, v0, v9);
  CircleCheckmarkView.setup()();

  return v7;
}

id CircleCheckmarkView.setup()()
{
  [v0 setUserInteractionEnabled_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = [v0 layer];
  [v0 frame];
  [v2 setCornerRadius_];

  v4 = [v0 layer];
  v5 = [*&v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_borderColor] CGColor];
  [v4 setBorderColor_];

  v6 = [v0 layer];
  [v6 setBorderWidth_];

  return [v0 setClipsToBounds_];
}

Swift::Void __swiftcall CircleCheckmarkView.setChecked(_:)(Swift::Bool a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_isChecked) != a1)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))();
  }
}

void closure #1 in RecentsListViewController.createCellRegistrationForGridRecentsCallItemCalls()(void *a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    if (swift_getEnumCaseMultiPayload() - 1 > 1)
    {
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      v8 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 isSensitive];
      }

      else
      {
        v10 = 0;
      }

      v11 = MEMORY[0x1E69E7D40];
      v12 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))(v10);
      v13 = (*((*v11 & *v7) + 0x8D8))(v12);
      v14 = *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell__playing);
      v21[3] = type metadata accessor for RecentsCollectionViewGridCell.PlayBinding(0);
      v21[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding, type metadata accessor for RecentsCollectionViewGridCell.PlayBinding);
      v21[0] = v14;

      v15 = RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(a3, v13, a1, v21);

      outlined destroy of CallControlsService?(v21, &_s16CommunicationsUI8Playable_pSgMd);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [v7 accessibilityCustomActionsForIndexPath_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      (*(*v15 + 472))(v18);
      (*((*v11 & *a1) + 0x190))(v15);
      v19 = *((*v11 & *a1) + 0xF8);
      v20 = v7;
      v19(v7, &protocol witness table for RecentsListViewController);
      if (a3[*(type metadata accessor for RecentsCallItem(0) + 60)] == 1)
      {
        (*((*v11 & *a1) + 0xC8))(1);
      }
    }

    else
    {

      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    }
  }
}

void *RecentsListViewController.contactStore.getter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_contactStore;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RecentsCallItem.mediaType.getter()
{
  v0 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentsCallItemType(v1);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  switch(OUTLINED_FUNCTION_215_1())
  {
    case 1u:
    case 2u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v3 = 0;
      break;
    case 3u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v3 = 2;
      break;
    case 4u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v3 = 1;
      break;
    default:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_45_1();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v4 = OUTLINED_FUNCTION_217_2();
      if (v4)
      {
        v3 = [v4 mediaType];
      }

      else
      {
        v3 = 0;
      }

      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_197_1(uint64_t result)
{
  *(v1 + *(result + 20)) = v3;
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_3()
{

  return swift_unknownObjectWeakInit();
}

BOOL RecentsCallItem.isMissedCallItem.getter()
{
  v0 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentsCallItemType(v1);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (OUTLINED_FUNCTION_215_1())
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_132();
    OUTLINED_FUNCTION_45_1();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v4 = OUTLINED_FUNCTION_217_2();
    if (v4)
    {
      v5 = [v4 callStatus];
      v3 = v5 == *MEMORY[0x1E69935C8];
    }

    else
    {
      v3 = 0;
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return v3;
}

uint64_t static Date.faceTimeDateString(from:showToday:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1();
  v40 = v19;
  v41 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_8_18();
  static Calendar.current.getter();
  if (Calendar.isDateInToday(_:)())
  {
    if (a2)
    {
      v20 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_9_11();
      OUTLINED_FUNCTION_5_5();
      v24 = 0xE500000000000000;
LABEL_6:
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v26 = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, *&v22, v20, v25, *(&v37 - 1))._countAndFlagsBits;
LABEL_18:
      v35 = countAndFlagsBits;

      goto LABEL_19;
    }

    if (one-time initialization token for faceTimeTodayFormatter != -1)
    {
      OUTLINED_FUNCTION_2_25();
    }

    v28 = static Date.faceTimeTodayFormatter;
    v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v30 = [v28 stringFromDate_];
LABEL_17:
    v20 = v30;

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_18;
  }

  if (Calendar.isDateInYesterday(_:)())
  {
    v20 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_5();
    v24 = 0xE900000000000079;
    goto LABEL_6;
  }

  Date.init()();
  v39 = *(v6 + 104);
  v39(v10, *MEMORY[0x1E6969A10], v4);
  v31 = Calendar.isDate(_:equalTo:toGranularity:)();
  v38 = *(v6 + 8);
  v38(v10, v4);
  (*(v13 + 8))(v17, v11);
  if ((v31 & 1) == 0)
  {
    if (one-time initialization token for faceTimeOlderFormatter == -1)
    {
LABEL_16:
      v36 = static Date.faceTimeOlderFormatter;
      v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v30 = [v36 stringFromDate_];
      goto LABEL_17;
    }

LABEL_21:
    OUTLINED_FUNCTION_1_31();
    goto LABEL_16;
  }

  v39(v10, *MEMORY[0x1E6969AB0], v4);
  v32 = Calendar.component(_:from:)();
  v38(v10, v4);
  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  result = Calendar.weekdaySymbols.getter();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v33 < *(result + 16))
  {
    v35 = *(result + 16 * v33 + 32);

LABEL_19:
    (*(v40 + 8))(v2, v41);
    return v35;
  }

  __break(1u);
  return result;
}

id one-time initialization function for faceTimeOlderFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  static Date.faceTimeOlderFormatter = v0;
  return result;
}

uint64_t RecentsCallItem.messageIndicatorViewModel.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentCallRecentItemMetadata(v4);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_0_169();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_246_0();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_200_0();
  if (v8)
  {
    if ((v7 - 3) >= 2)
    {
      OUTLINED_FUNCTION_44_0();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v10 = *(v1 + *(v0 + 52));
    }

    else
    {
      OUTLINED_FUNCTION_29_6();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v9 = *(v2 + *(v0 + 52));
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return OUTLINED_FUNCTION_230_2();
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return static NSObject.== infix(_:_:)();
}

void OUTLINED_FUNCTION_92_2(uint64_t a1)
{

  outlined consume of GameControllerContext?(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return specialized Collection.firstIndex(where:)(v0, v1, v2);
}

unint64_t OUTLINED_FUNCTION_92_8(float a1)
{
  *v2 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v1, (v4 - 224));
}

id RecentsCallItem.contact.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentsCallItem(0) + 48));
  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1BFB22010](0, v1);
  }

  else
  {
    return *(v1 + 32);
  }
}

id OUTLINED_FUNCTION_74_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(a1 + 16) = a15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v16;
  *(a1 + 48) = v15;

  return v15;
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t a1)
{
  *(a1 + 160) = *(v1 + 96);
  v3 = *(v1 + 72);

  return ControlsButtonProvider.init(context:shape:)(v3, 2);
}

uint64_t OUTLINED_FUNCTION_74_7()
{

  return swift_getObjectType();
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id OUTLINED_FUNCTION_91_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 8 * v9);

  return v11;
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_91_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return String.init<A>(reflecting:)();
}

uint64_t OUTLINED_FUNCTION_91_8()
{

  return static _SetStorage.copy(original:)();
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return type metadata accessor for HUDActivityManager.BannerUpdate(0);
}

void OUTLINED_FUNCTION_53_6()
{
  *(v3 - 120) = v0;
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
}

void OUTLINED_FUNCTION_53_7()
{
  v0[12] = v4;
  v0[13] = v2;
  v0[9] = v1;
  v0[10] = v3;
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return String.init<A>(reflecting:)();
}

double OUTLINED_FUNCTION_53_9@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *v2 = a1;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_53_15()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_53_20()
{
}

uint64_t OUTLINED_FUNCTION_95_0()
{
}

void OUTLINED_FUNCTION_95_2()
{

  JUMPOUT(0x1BFB22010);
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_getObjectType();
}

int *OUTLINED_FUNCTION_95_5(int *result)
{
  *(v1 + result[6]) = 0;
  v2 = (v1 + result[11]);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *(v1 + result[13]) = 0;
  *(v1 + result[14]) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_6()
{
}

void OUTLINED_FUNCTION_95_7()
{
  v2 = *(v0 - 480);
}

void RecentsCallItem.isIncomingCall.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = OUTLINED_FUNCTION_129();
  v2 = type metadata accessor for RecentsCallItem(v1);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_124();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, static ReportSpamManager.logger);
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_29_6();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_23();
    v13 = v8;
    *v7 = 136315138;
    v9 = RecentsCallItem.callStatus.getter();
    if ((v9 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_5_116();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      UInt32.stringValue.getter(v9);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
      OUTLINED_FUNCTION_5_116();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v13);
    OUTLINED_FUNCTION_212();

    *(v7 + 4) = v0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Callstatus: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_5_116();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  RecentsCallItem.callStatus.getter();
  OUTLINED_FUNCTION_49();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static ReportSpamManager.logger);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  v1 = __swift_project_value_buffer(v0, logger);
  if (one-time initialization token for answeringMachine != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.answeringMachine);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  v1 = __swift_project_value_buffer(v0, logger);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.conversationKit);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  v1 = __swift_project_value_buffer(v0, logger);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.conversationKit);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t RecentsCallItem.callStatus.getter()
{
  v2 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentCallRecentItemMetadata(v3);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_309();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_76();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_200_0();
  if (!v5)
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_5:
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 32);
  }

  OUTLINED_FUNCTION_44_0();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v6 = *(v1 + *(v0 + 24));
  v7 = v6;
  OUTLINED_FUNCTION_1_137();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = [v7 callStatus];

  v9 = 0;
  v10 = v8;
  return v10 | (v9 << 32);
}

uint64_t UInt32.stringValue.getter(int a1)
{
  if (*MEMORY[0x1E69935D0] == a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (*MEMORY[0x1E69935B0] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935B8] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935A0] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935C8] == a1)
  {
    return 0x64657373696DLL;
  }

  if (*MEMORY[0x1E69935A8] == a1)
  {
    return 0x656C6C65636E6163;
  }

  return 0;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void RecentsCallItem.hasVideoMessage.getter()
{
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_117_0();
  type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_57();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_308();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_43_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
      OUTLINED_FUNCTION_3_129();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
    case 3u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
    default:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_170_0();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v9 = *(v1 + *(v2 + 52));
      if (v9)
      {
        v10 = [v9 messageUUID];
        if (v10)
        {
          v11 = v10;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v16 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_189_0(v16);
        OUTLINED_FUNCTION_45_1();
        outlined init with take of CaptionSectioner.SpeakerSection?();
        v17 = OUTLINED_FUNCTION_18_12();
        OUTLINED_FUNCTION_115(v17, v18, v3);
      }

      else
      {
        type metadata accessor for UUID();
        v12 = OUTLINED_FUNCTION_2_10();
        __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
  }

  OUTLINED_FUNCTION_49();
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_113_3()
{

  return swift_slowAlloc();
}

void RecentsCallItem.hasAudioMessage.getter()
{
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_117_0();
  type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_57();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_308();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_43_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (EnumCaseMultiPayload)
    {
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    else
    {
      OUTLINED_FUNCTION_170_0();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v10 = *(v1 + *(v2 + 52));
      if (v10)
      {
        v11 = [v10 messageUUID];
        if (v11)
        {
          v12 = v11;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v17 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_189_0(v17);
        OUTLINED_FUNCTION_45_1();
        outlined init with take of CaptionSectioner.SpeakerSection?();
        v18 = OUTLINED_FUNCTION_18_12();
        OUTLINED_FUNCTION_115(v18, v19, v3);
      }

      else
      {
        type metadata accessor for UUID();
        v13 = OUTLINED_FUNCTION_2_10();
        __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  OUTLINED_FUNCTION_49();
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_55_6()
{

  return SystemImage.init(systemName:)();
}

uint64_t OUTLINED_FUNCTION_55_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_55_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *OUTLINED_FUNCTION_55_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static Layout.LocalParticipantViewCameraControls.iOS.getter(&a9);
}

id OUTLINED_FUNCTION_55_21()
{

  return [v0 (v1 + 2040)];
}

uint64_t OUTLINED_FUNCTION_55_23()
{
}

uint64_t OUTLINED_FUNCTION_73_4()
{

  return outlined destroy of SymbolImageDescription(v0 + 240);
}

uint64_t OUTLINED_FUNCTION_73_6(uint64_t result)
{
  v4 = (v3 + *(result + 36));
  *v4 = v2;
  v4[1] = v1;
  return result;
}

__n128 OUTLINED_FUNCTION_73_12@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20)
{
  a1[6] = a8;
  a1[7] = a9;
  a1[8] = a10;
  a1[9] = a11;
  a1[10] = a12;
  a1[11] = a13;
  a1[12] = a14;
  a1[13] = a15;
  a1[14] = a16;
  a1[15] = a17;
  return a20;
}

Swift::Int OUTLINED_FUNCTION_89_0()
{
  v2 = *(v0 + 40);

  return NSObject._rawHashValue(seed:)(v2);
}

uint64_t OUTLINED_FUNCTION_89_2()
{

  return outlined init with copy of SymbolImageDescription(v0 + 240, v0 + 104);
}

uint64_t OUTLINED_FUNCTION_89_5()
{
  *(v2 + 14) = v1;
  *(v2 + 22) = v3;

  return outlined init with copy of ConversationControlsType(v0 + 8, v4 - 168);
}

unint64_t lazy protocol witness table accessor for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis()
{
  result = lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis;
  if (!lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis);
  }

  return result;
}

void RecentsCallItem.tuHandles.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_57();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_0_169();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_153_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_71();
      OUTLINED_FUNCTION_91_2();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();

      OUTLINED_FUNCTION_8_84();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
    case 2u:
      v19 = *v0;
      v20 = [*v0 invitedMemberHandles];
      if (v20)
      {
        v21 = v20;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
        OUTLINED_FUNCTION_258_0();
        static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
      }

      break;
    default:
      OUTLINED_FUNCTION_308();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v22[1] = MEMORY[0x1E69E7CD0];
      v6 = *(v2 + *(v1 + 32));

      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      if (v6)
      {
        v7 = 0;
        OUTLINED_FUNCTION_33_2();
        v10 = v9 & v8;
        v12 = (v11 + 63) >> 6;
        while (v10)
        {
LABEL_9:
          OUTLINED_FUNCTION_227_2();
          v15 = *(*(v6 + 48) + 24 * (v14 | (v7 << 6)) + 16);
          if (v15)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);

            v16 = OUTLINED_FUNCTION_7_8();
            v18 = TUHandle.__allocating_init(type:value:)(v16, v17, v15);
            if (v18)
            {
              specialized Set._Variant.insert(_:)(v22, v18);
            }
          }
        }

        while (1)
        {
          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
            JUMPOUT(0x1BBC964B4);
          }

          if (v13 >= v12)
          {
            break;
          }

          v10 = *(v6 + 56 + 8 * v13);
          ++v7;
          if (v10)
          {
            v7 = v13;
            goto LABEL_9;
          }
        }
      }

      break;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t OUTLINED_FUNCTION_210_1()
{

  return _s15ConversationKit11ParticipantV5StateOWOcTm_0();
}

void OUTLINED_FUNCTION_232()
{
  v3 = *(v0 + *(v1 + 52));
}

id OUTLINED_FUNCTION_232_2()
{
  v3 = *(v1 + *(v0 + 48));

  return v3;
}

uint64_t OUTLINED_FUNCTION_232_3()
{

  return String.init<A>(reflecting:)();
}

id TUHandle.__allocating_init(type:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1BFB209B0](a2, a3);

  v8 = [v6 initWithType:a1 value:v7];

  return v8;
}

uint64_t OUTLINED_FUNCTION_79_4()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(v4 - 116) = a3;
  *(v4 - 112) = a2;
  *(v4 - 104) = a4;
  *(v4 - 160) = a1;

  return type metadata accessor for EnvironmentValues();
}

unint64_t OUTLINED_FUNCTION_79_10(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, a3);
}

id OUTLINED_FUNCTION_79_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, *(v5 - 144));
  __swift_getEnumTagSinglePayload(v3, 1, v4);
  v6 = *(v5 - 168);

  return outlined copy of Participant.RemoteIdentifiers?(v6);
}

void specialized _NativeSet.copyAndResize(capacity:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_168_0(v4, v5);
  OUTLINED_FUNCTION_4_31();
  v6 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v1 + 16))
  {
    v20 = v0;
    OUTLINED_FUNCTION_87_7();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_22_17();
LABEL_9:
        v12 = v6[5];
        v13 = *(*(v1 + 48) + 8 * (v7 | (v2 << 6)));
        NSObject._rawHashValue(seed:)(v12);
        OUTLINED_FUNCTION_15_16();
        if (v14)
        {
          break;
        }

        OUTLINED_FUNCTION_4_12();
LABEL_16:
        OUTLINED_FUNCTION_60_11(v15);
        *(v6[6] + 8 * v19) = v13;
        ++v6[2];
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_3_21();
      while (v16 + 1 != v18 || (v17 & 1) == 0)
      {
        OUTLINED_FUNCTION_40_11();
        if (!v14)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v2;
      while (1)
      {
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v2 >= v3)
        {

          v0 = v20;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_237_2();
        if (v9)
        {
          OUTLINED_FUNCTION_7_1();
          v0 = (v11 & v10);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v0 = v6;
    OUTLINED_FUNCTION_1_3();
  }
}

{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  OUTLINED_FUNCTION_24_1();
  v30 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_5();
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_91_2();
  v7 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v6 + 16))
  {
    v8 = 0;
    v9 = v6 + 56;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v29 = v4;
    v28 = (v4 + 32);
    if (v12)
    {
      while (1)
      {
        OUTLINED_FUNCTION_227_2();
LABEL_12:
        v19 = *(v29 + 72);
        (*(v29 + 16))(v1, *(v14 + 48) + v19 * (v15 | (v8 << 6)), v30);
        OUTLINED_FUNCTION_4_121();
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, v20);
        OUTLINED_FUNCTION_112_6();
        v21 = dispatch thunk of Hashable._rawHashValue(seed:)() & ~(-1 << *(v7 + 32));
        if (((-1 << v21) & ~*(v7 + 56 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_4_12();
LABEL_19:
        OUTLINED_FUNCTION_60_11(v22);
        (*v28)(*(v7 + 48) + v27 * v19, v1, v30);
        ++*(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_3_21();
      while (v23 + 1 != v25 || (v24 & 1) == 0)
      {
        OUTLINED_FUNCTION_40_11();
        if (!v26)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v2 = v0;
          goto LABEL_23;
        }

        ++v16;
        if (*(v9 + 8 * v8))
        {
          OUTLINED_FUNCTION_7_1();
          v12 = v18 & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v2 = v7;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_168_0(v4, v5);
  OUTLINED_FUNCTION_4_31();
  v6 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v1 + 16))
  {
    v19 = v0;
    OUTLINED_FUNCTION_87_7();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_22_17();
LABEL_9:
        v12 = *(*(v1 + 48) + 8 * (v7 | (v2 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v12);
        Hasher._finalize()();
        OUTLINED_FUNCTION_15_16();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_4_12();
LABEL_16:
        OUTLINED_FUNCTION_60_11(v14);
        *(*(v6 + 48) + 8 * v18) = v12;
        ++*(v6 + 16);
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_3_21();
      while (v15 + 1 != v17 || (v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_40_11();
        if (!v13)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v2;
      while (1)
      {
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v2 >= v3)
        {

          v0 = v19;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_237_2();
        if (v9)
        {
          OUTLINED_FUNCTION_7_1();
          v0 = (v11 & v10);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v0 = v6;
    OUTLINED_FUNCTION_43_6();
  }
}

void *OUTLINED_FUNCTION_181_0()
{
  v2 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_1((v0 - 128), v2);
}

void OUTLINED_FUNCTION_181_1()
{
  *(v3 - 72) = v2;
  *(v3 - 64) = v0;
  *(v3 - 56) = v1;
}

void *OUTLINED_FUNCTION_178_1(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xE8uLL);
}

uint64_t specialized Set.count.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t specialized Set.startIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

void specialized Set.subscript.getter(uint64_t a1, int a2, char a3, uint64_t a4)
{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUHandle);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationMember);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUScreenSharingRequest);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationParticipant);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for SGURL);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for CHHandle);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversation);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationLink);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for UIScene);
}

void specialized Set.subscript.getter(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  v5 = a5;
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v8 = OUTLINED_FUNCTION_4_31();
      MEMORY[0x1BFB21EB0](v8);
      type metadata accessor for NSObject(0, v5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for NSObject(0, a5);
    OUTLINED_FUNCTION_4_31();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_4_31();
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v5 = v15;
      v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v7 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v11 = *(*(a4 + 48) + 8 * v7);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = v7 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v13 = *(*(a4 + 48) + 8 * v7);

  v14 = v13;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5()
{
  OUTLINED_FUNCTION_42_4();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd), v2 = OUTLINED_FUNCTION_38_8(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_16_7();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      OUTLINED_FUNCTION_52_2();
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v20;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_43_6();
  }
}

uint64_t outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id RecentsCollectionViewGridCell.isSelected.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsCollectionViewGridCell();
  return objc_msgSendSuper2(&v2, sel_isSelected);
}

uint64_t RecentsCollectionViewGridCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_delegate;
  OUTLINED_FUNCTION_3_5();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void RecentsListViewController.collectionView(_:willDisplay:forItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_101();
  if (![*&v0[OBJC_IVAR___FTRecentsListViewController_featureFlags] increaseCallHistoryEnabled])
  {
LABEL_24:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v12 = IndexPath.section.getter();
  if (v12 < 0)
  {
    goto LABEL_26;
  }

  v13 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(0, v12);
  v14 = v13[2];
  if (v14)
  {
    v52 = v5;
    v53 = v7;
    v54 = v0;
    v55[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = 4;
    v16 = v55[0];
    do
    {
      v17 = [v9 numberOfItemsInSection_];
      v55[0] = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v18);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = v55[0];
      }

      *(v16 + 16) = v19 + 1;
      *(v16 + 8 * v19 + 32) = v17;
      ++v15;
      --v14;
    }

    while (v14);

    v7 = v53;
    v3 = v54;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v16 + 16);
  if (v20)
  {
    v2 = 0;
    v21 = (v16 + 32);
    while (1)
    {
      v22 = *v21++;
      v23 = __OFADD__(v2, v22);
      v2 += v22;
      if (v23)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_17;
  }

  v2 = 0;
LABEL_16:

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_27;
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v24 = OUTLINED_FUNCTION_13_12();
  *(v24 + 16) = xmmword_1BC4BA940;
  v25 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_7_0();
  v26 = OUTLINED_FUNCTION_33_0();
  v27(v26);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v25);
  specialized >> prefix<A>(_:)(v1, v31, v32, v33, v34, v35, v36, v37, v51, v52, v53, v54, v55[0], v55[1], v55[2], v56, v57, v58);
  v39 = v38;
  v41 = v40;
  outlined destroy of CallControlsService?(v1, &_s10Foundation9IndexPathVSgMd);
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v39;
  *(v24 + 40) = v41;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();

  OUTLINED_FUNCTION_11_23();
  v42 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v43) + 0x2C0))(v55);
  v44 = v56;
  v45 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v46 = IndexPath.item.getter();
  v23 = __OFADD__(v46, v2);
  v47 = v46 + v2;
  if (!v23)
  {
    (*(v45 + 136))(v47, v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v55);
    if (*(v3 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) == 1)
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      OUTLINED_FUNCTION_108_0();
      v48 = swift_dynamicCastClass();
      if (v48)
      {
        v49 = v48;
        v50 = v7;
        if ([v3 isEditing])
        {
          (*((*v42 & *v49) + 0x198))();
        }

        else
        {
          (*((*v42 & *v49) + 0x1A0))();
        }
      }
    }

    goto LABEL_24;
  }

  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v3 = OUTLINED_FUNCTION_49_24();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_23_58();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5();
      if (specialized Sequence._copySequenceContents(initializing:)(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return type metadata accessor for Participant(0);
}

uint64_t OUTLINED_FUNCTION_50_8()
{

  return Set.Iterator.init(_cocoa:)();
}

uint64_t OUTLINED_FUNCTION_50_11()
{
  result = v1;
  *(v0 + 72) = *(*(v0 + 24) + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_14()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0);
}

uint64_t OUTLINED_FUNCTION_50_20()
{
  *(v0 - 200) = 0;

  return Published.init(initialValue:)();
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized >> prefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR, MEMORY[0x1E6969C28], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, MEMORY[0x1E69695A8], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, MEMORY[0x1E6969530], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_50_2();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = v21(0);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &a9 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &a9 - v37;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v25, v29, v23);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, v23);
  }

  else
  {
    (*(v32 + 32))(v38, v29, v30);
    (*(v32 + 16))(v36, v38, v30);
    OUTLINED_FUNCTION_312();
    String.init<A>(reflecting:)();
    (*(v32 + 8))(v38, v30);
  }

  OUTLINED_FUNCTION_49();
}

{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR, MEMORY[0x1E6969770], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s14GameController19GCButtonElementNameVSgMd, &_s14GameController19GCButtonElementNameVSgMR, MEMORY[0x1E696B170], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMd, &_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMR, MEMORY[0x1E6995AA8], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMd, &_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMR, MEMORY[0x1E69DC3E0], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, MEMORY[0x1E6968FB0], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR, MEMORY[0x1E69681B8], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR, MEMORY[0x1E6968160], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s16ScreenSharingKit25ControlMessageReliabilityOSgMd, &_s16ScreenSharingKit25ControlMessageReliabilityOSgMR, MEMORY[0x1E69C9DA0], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR, MEMORY[0x1E696B330], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s16ScreenSharingKit16InteractionStateOSgMd, &_s16ScreenSharingKit16InteractionStateOSgMR, MEMORY[0x1E69C9D58], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s20LiveCommunicationKit6HandleVSgMd, &_s20LiveCommunicationKit6HandleVSgMR, MEMORY[0x1E696EDC8], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  specialized >> prefix<A>(_:)(a1, &_s22FaceTimeFeatureControl16EnablementStatusOSgMd, &_s22FaceTimeFeatureControl16EnablementStatusOSgMR, MEMORY[0x1E699BEE8], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

Swift::Void __swiftcall RecentsCollectionViewGridCell.removeSelectionView()()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_104_1();
  v3 = (*(v2 + 224))(0);
  v4 = (*((*v1 & *v0) + 0x138))(v3);
  [v4 setAlpha_];
}

id RecentsCollectionViewGridCell.circleOutline.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutline;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t closure #1 in closure #1 in RecentsListViewController.supplementaryViewProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a1;
  v62 = a5;
  v60 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB8ListCellCGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v52 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB8ListCellCGMd);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_6TipKit0faB4CellCGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v52 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_6TipKit0faB4CellCGMd);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit020RecentsHeaderButtonsB0CGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit020RecentsHeaderButtonsB0CGMd);
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB4CellCGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB4CellCGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  v27 = a2 == 0xD000000000000021 && 0x80000001BC4FC450 == a3;
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v36 = a2 == 0xD00000000000001CLL && 0x80000001BC4FB430 == a3;
    if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      swift_beginAccess();
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();

      if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
      {
        v39 = v59;
        (*(v59 + 32))(v19, v16, v17);
        type metadata accessor for RecentsHeaderButtonsView();
        v34 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
        (*(v39 + 8))(v19, v17);
        return v34;
      }

      outlined destroy of CallControlsService?(v16, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit020RecentsHeaderButtonsB0CGSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.conversationKit);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_12;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "headerButtonsViewRegistration was unexpectedly nil";
    }

    else
    {
      v40 = a2 == 0xD000000000000021 && 0x80000001BC4FC480 == a3;
      if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v41 = swift_unknownObjectUnownedLoadStrong();
        swift_beginAccess();
        v42 = v57;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();

        v43 = v58;
        if (__swift_getEnumTagSinglePayload(v42, 1, v58) != 1)
        {
          v45 = v56;
          (*(v56 + 32))(v13, v42, v43);
          type metadata accessor for TipUICollectionViewCell();
          v34 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
          (*(v45 + 8))(v13, v43);
          return v34;
        }

        outlined destroy of CallControlsService?(v42, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_6TipKit0faB4CellCGSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.conversationKit);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_12;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "headerCallFilteringTipRegistration was unexpectedly nil";
      }

      else
      {
        v46 = swift_unknownObjectUnownedLoadStrong();
        swift_beginAccess();
        v47 = v54;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();

        v48 = v55;
        if (__swift_getEnumTagSinglePayload(v47, 1, v55) != 1)
        {
          v51 = v52;
          v50 = v53;
          (*(v53 + 32))(v52, v47, v48);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewListCell);
          v34 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
          (*(v50 + 8))(v51, v48);
          return v34;
        }

        outlined destroy of CallControlsService?(v47, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB8ListCellCGSgMd);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.conversationKit);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_12;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "sectionHeaderViewRegistrationForSupplementalView was unexpectedly nil";
      }
    }

    goto LABEL_11;
  }

  v28 = swift_unknownObjectUnownedLoadStrong();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();

  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    (*(v24 + 32))(v26, v22, v23);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
    v34 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    (*(v24 + 8))(v26, v23);
    return v34;
  }

  outlined destroy of CallControlsService?(v22, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB4CellCGSgMd);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.conversationKit);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "sensitiveContentRegistration was unexpectedly nil";
LABEL_11:
    _os_log_impl(&dword_1BBC58000, v30, v31, v33, v32, 2u);
    MEMORY[0x1BFB23DF0](v32, -1, -1);
  }

LABEL_12:

  return 0;
}

void closure #1 in RecentsListViewController.createSensitiveContentRegistration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVy15ConversationKit30SensitiveContentRecentsTipViewVAA05EmptyK0VGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (RecentsListViewController.sensitiveContentTipViewModel.getter())
    {
      lazy protocol witness table accessor for type SensitiveContentRecentsTipView and conformance SensitiveContentRecentsTipView();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.vertical.getter();
      v6[3] = v0;
      v6[4] = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type UIHostingConfiguration<SensitiveContentRecentsTipView, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVy15ConversationKit30SensitiveContentRecentsTipViewVAA05EmptyK0VGMd);
      __swift_allocate_boxed_opaque_existential_1(v6);
      UIHostingConfiguration.margins(_:_:)();
      (*(v1 + 8))(v3, v0);
      MEMORY[0x1BFB216E0](v6);
    }

    else
    {
    }
  }
}

unint64_t lazy protocol witness table accessor for type SensitiveContentRecentsTipView and conformance SensitiveContentRecentsTipView()
{
  result = lazy protocol witness table cache variable for type SensitiveContentRecentsTipView and conformance SensitiveContentRecentsTipView;
  if (!lazy protocol witness table cache variable for type SensitiveContentRecentsTipView and conformance SensitiveContentRecentsTipView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensitiveContentRecentsTipView and conformance SensitiveContentRecentsTipView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SensitiveContentRecentsTipView.body.getter(uint64_t a1)
{
  v2 = SensitiveContentRecentsTipViewModel.participants.getter();

  return MEMORY[0x1EEE33CA0](v2, partial apply for closure #1 in SensitiveContentRecentsTipView.body.getter, a1);
}

uint64_t SensitiveContentRecentsTipViewModel.participants.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_98();
  lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v0, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1BBC988DC@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentRecentsTipViewModel.participants.getter();
  *a1 = result;
  return result;
}

void @objc RecentsListViewController.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_244();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v5;
  v13 = v0;
  v14 = v7;
  v3();

  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_30_0();
}

void OUTLINED_FUNCTION_172()
{
  v1 = 10322146;
  v2 = 0xA300000000000000;

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v1);
}

void *OUTLINED_FUNCTION_172_2(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void RecentsListViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = v5 == 0xD00000000000001CLL && 0x80000001BC4FB430 == v3;
  if (v7 || (OUTLINED_FUNCTION_7_8(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_1_20();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.conversationKit);
    v9 = OUTLINED_FUNCTION_91_2();
    v10(v9);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v29 = v0;
      v13 = OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      *v13 = 136315394;
      v14 = OUTLINED_FUNCTION_7_8();
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v16);
      *(v13 + 12) = 2080;
      OUTLINED_FUNCTION_32_10();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v17, v18);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = OUTLINED_FUNCTION_1_5();
      v21(v20);
      v22 = OUTLINED_FUNCTION_209();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);
      OUTLINED_FUNCTION_182();

      *(v13 + 14) = v19;
      OUTLINED_FUNCTION_324(&dword_1BBC58000, v25, v26, "Started displaying SupplementalView of kind %s at index %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      v1 = v29;
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v27 = OUTLINED_FUNCTION_1_5();
      v28(v27);
    }

    *(v1 + OBJC_IVAR___FTRecentsListViewController_headerViewIsPresented) = 1;
  }

  OUTLINED_FUNCTION_30_0();
}

void RecentsListViewController.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)()
{
  OUTLINED_FUNCTION_29();
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_83_1();
  v11 = v5 == 0xD00000000000001CLL && 0x80000001BC4FB430 == v3;
  if (v11 || (OUTLINED_FUNCTION_7_8(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = type metadata completion function for SyncedScreeningAlphaGradientView();
    MEMORY[0x1BFB1A640](v12);
    v13 = static IndexPath.== infix(_:_:)();
    v14 = *(v8 + 8);
    v14(v1, v6);
    if (v13)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_1_20();
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.conversationKit);
      v16 = OUTLINED_FUNCTION_91_2();
      v17(v16);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_30_1();
        swift_slowAlloc();
        *v20 = 136315394;
        v21 = OUTLINED_FUNCTION_7_8();
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v23);
        *(v20 + 12) = 2080;
        OUTLINED_FUNCTION_32_10();
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v24, v25);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = OUTLINED_FUNCTION_1_5();
        (v14)(v27);
        v28 = OUTLINED_FUNCTION_209();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v30);
        OUTLINED_FUNCTION_182();

        *(v20 + 14) = v26;
        OUTLINED_FUNCTION_324(&dword_1BBC58000, v31, v32, "Ending Displaying SupplementalView of kind %s at index %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v33 = OUTLINED_FUNCTION_1_5();
        (v14)(v33);
      }

      *(v34 + OBJC_IVAR___FTRecentsListViewController_headerViewIsPresented) = 0;
      RecentsListViewController.tipKitStopObservation()();
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsCollectionViewGridCell.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v50.receiver = v0;
  v50.super_class = type metadata accessor for RecentsCollectionViewGridCell();
  objc_msgSendSuper2(&v50, sel_layoutSubviews);
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v0 setBackgroundColor_];

  v4 = [v0 backgroundView];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 clearColor];
    [v5 setBackgroundColor_];
  }

  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x138);
  v9 = v8();
  v10 = [v9 superview];

  if (v10)
  {
  }

  else
  {
    v49 = ObjectType;
    v11 = v8();
    [v0 addSubview_];

    v12 = v8();
    v13 = *((*v7 & *v0) + 0xD8);
    v14 = v13();
    v15 = 0.0;
    if (v14)
    {
      v15 = 1.0;
    }

    [v12 setAlpha_];

    if (v13())
    {
      v16 = v8();
      [v0 bringSubviewToFront_];
    }

    v17 = v8();
    v18 = [v17 topAnchor];

    v19 = [v0 topAnchor];
    v20 = RecentsCollectionViewGridCell.needsAXLayout.getter();
    v21 = 10.0;
    if (v20)
    {
      v21 = 30.0;
    }

    v22 = [v18 constraintEqualToAnchor:v19 constant:v21];

    v23 = v8();
    v24 = [v23 trailingAnchor];

    v25 = [v0 trailingAnchor];
    v26 = RecentsCollectionViewGridCell.needsAXLayout.getter();
    v27 = -10.0;
    if (v26)
    {
      v27 = -30.0;
    }

    v28 = [v24 constraintEqualToAnchor:v25 constant:v27];

    v29 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTopConstraint);
    *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTopConstraint) = v22;
    v30 = v22;

    v31 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTrailingConstraint);
    *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTrailingConstraint) = v28;
    v32 = v28;

    v33 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BC4BA7F0;
    v35 = v8();
    v36 = [v35 widthAnchor];

    v37 = [v36 constraintEqualToConstant_];
    *(v34 + 32) = v37;
    v38 = v8();
    v39 = [v38 heightAnchor];

    v40 = v8();
    v41 = [v40 widthAnchor];

    v42 = [v39 constraintEqualToAnchor_];
    *(v34 + 40) = v42;
    *(v34 + 48) = v30;
    *(v34 + 56) = v32;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v43 = v30;
    v44 = v32;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 activateConstraints_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BC4BA940;
    v47 = type metadata accessor for UITraitPreferredContentSizeCategory();
    v48 = MEMORY[0x1E69DC2B0];
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    *(swift_allocObject() + 16) = v49;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CircleCheckmarkView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CircleCheckmarkView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 frame];
  [v1 setCornerRadius_];

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel];
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_149_0();
    MidX = CGRectGetMidX(v7);
    OUTLINED_FUNCTION_149_0();
    [v4 setCenter_];
  }
}

void WeakBox<>.recentCallsDidChange()()
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
      (*((*v3 & v6) + 0x408))(0, 0);

      RecentsListViewController.reloadEditMenu()();
    }
  }
}

uint64_t RecentsCallItem.dataSourceId.getter()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_145_3();
  return OUTLINED_FUNCTION_46();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

Swift::Void __swiftcall SensitiveContentRecentsTipViewModel.update(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SensitiveContentAnalysis11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v164 = &v138 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v138 - v10;
  v166 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v156 = &v138 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v138 - v19;
  v140 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySS24SensitiveContentAnalysis11ParticipantV_GMd);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v144 = *(with._rawValue + 2);
  if (v144)
  {
    v24 = 0;
    v143 = with._rawValue + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v142 = *(v21 + 72);
    v154 = (v13 + 16);
    v151 = (v13 + 8);
    v145 = (v13 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    v141 = v13 + 40;
    v150 = xmmword_1BC4BA940;
    v163 = v11;
    v157 = v13;
    v26 = v152;
    v155 = v6;
    while (1)
    {
      v153 = v24;
      outlined init with copy of RecentsCallItem(&v143[v142 * v24], v26);
      RecentsCallItem.tuHandles.getter();
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = __CocoaSet.count.getter();
      }

      else
      {
        v28 = *(v27 + 16);
      }

      if (v28 < 1)
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v29 = v140;
        if (specialized Array.count.getter(*(v26 + *(v140 + 48))) == 1)
        {
          v30 = (v26 + *(v29 + 20));
          v31 = v30[1];
          v162 = *v30;
        }

        else
        {
          v162 = 0;
          v31 = 0;
        }

        RecentsCallItem.tuHandles.getter();
        v148 = v25;
        v147 = v33;
        if ((v33 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for TUHandle();
          lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
          Set.Iterator.init(_cocoa:)();
          v35 = v170;
          v34 = v171;
          v36 = v172;
          v37 = v173;
          v25 = v174;
        }

        else
        {
          v38 = -1 << *(v33 + 32);
          v34 = v33 + 56;
          v36 = ~v38;
          v39 = -v38;
          if (v39 < 64)
          {
            v40 = ~(-1 << v39);
          }

          else
          {
            v40 = -1;
          }

          v25 = v40 & *(v33 + 56);
          v37 = 0;
        }

        v146 = v36;
        v41 = (v36 + 64) >> 6;
        v149 = MEMORY[0x1E69E7CC0];
        v161 = v31;
        v160 = v34;
        v159 = v35;
        v158 = v41;
        while (1)
        {
          v42 = v37;
          if ((v35 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            v47 = __CocoaSet.Iterator.next()();
            if (!v47)
            {
              goto LABEL_68;
            }

            v168 = v47;
            type metadata accessor for TUHandle();
            swift_dynamicCast();
            v46 = v169;
            v37 = v42;
            v45 = v25;
            if (!v169)
            {
              goto LABEL_68;
            }

LABEL_27:
            v48 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v46);
            v167 = v46;
            if (v49)
            {
              v50 = v48;
              v25 = v49;
            }

            else
            {
              v51 = [v46 value];
              v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v52;
            }

            v53 = v166;
            if (!v31)
            {
              v54 = v2;
              v55 = v167;
              outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v167);
              if (!v56)
              {
                outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v55);
                if (!v57)
                {
                  v115 = [v55 value];
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v53 = v166;
                }
              }

              v2 = v54;
              v6 = v155;
            }

            v165 = v45;
            swift_beginAccess();
            if (*(*(v2 + 24) + 16))
            {

              OUTLINED_FUNCTION_4_64();
              if (v58)
              {
                OUTLINED_FUNCTION_3_81();
                v63 = v164;
                (*(v62 + 16))(v164, v60 + v61 * v59, v53);
                v64 = v63;
                v65 = 0;
              }

              else
              {
                v63 = v164;
                v64 = v164;
                v65 = 1;
              }

              __swift_storeEnumTagSinglePayload(v64, v65, 1, v53);
            }

            else
            {
              v63 = v164;
              __swift_storeEnumTagSinglePayload(v164, 1, 1, v53);
            }

            swift_endAccess();
            outlined init with copy of Participant?(v63, v6);
            v66 = v53;
            if (__swift_getEnumTagSinglePayload(v6, 1, v53) == 1)
            {
              outlined destroy of Participant?(v6);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
              inited = swift_initStackObject();
              *(inited + 16) = v150;
              *(inited + 32) = v50;
              *(inited + 40) = v25;

              _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
              v68 = v163;
              Participant.init(displayName:handles:)();
              OUTLINED_FUNCTION_30_2();
              (*v154)(v156, v68, v66);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v168 = *(v2 + 24);
              v70 = v168;
              v71 = v2;
              *(v2 + 24) = 0x8000000000000000;
              v72 = OUTLINED_FUNCTION_4_64();
              v74 = *(v70 + 16);
              v75 = (v73 & 1) == 0;
              v76 = v74 + v75;
              if (__OFADD__(v74, v75))
              {
                goto LABEL_90;
              }

              v77 = v72;
              v78 = v73;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS24SensitiveContentAnalysis11ParticipantVGMd);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v76))
              {
                v79 = OUTLINED_FUNCTION_4_64();
                if ((v78 & 1) != (v80 & 1))
                {
                  goto LABEL_99;
                }

                v77 = v79;
              }

              v81 = v168;
              if (v78)
              {
                OUTLINED_FUNCTION_3_81();
                (*(v84 + 40))(v82 + v83 * v77, v156, v166);
              }

              else
              {
                OUTLINED_FUNCTION_5_60(v168 + 8 * (v77 >> 6));
                v89 = (v88 + 16 * v77);
                *v89 = v50;
                v89[1] = v25;
                OUTLINED_FUNCTION_3_81();
                (*(v92 + 32))(v90 + v91 * v77, v156, v166);
                v93 = *(v81 + 16);
                v94 = __OFADD__(v93, 1);
                v95 = v93 + 1;
                if (v94)
                {
                  goto LABEL_94;
                }

                *(v81 + 16) = v95;
              }

              *(v71 + 24) = v81;

              swift_endAccess();
              OUTLINED_FUNCTION_30_2();
              v96 = v167;
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v168 = *(v71 + 32);
              v98 = v168;
              *(v71 + 32) = 0x8000000000000000;
              v99 = OUTLINED_FUNCTION_4_64();
              v101 = *(v98 + 16);
              v102 = (v100 & 1) == 0;
              v103 = v101 + v102;
              if (__OFADD__(v101, v102))
              {
                goto LABEL_91;
              }

              v104 = v99;
              v105 = v100;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8TUHandleCGMd);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v97, v103))
              {
                v106 = OUTLINED_FUNCTION_4_64();
                if ((v105 & 1) != (v107 & 1))
                {
LABEL_99:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return;
                }

                v104 = v106;
              }

              v108 = v168;
              if (v105)
              {
                v109 = *(v168 + 56);
                v110 = *(v109 + 8 * v104);
                *(v109 + 8 * v104) = v96;
              }

              else
              {
                OUTLINED_FUNCTION_5_60(v168 + 8 * (v104 >> 6));
                v112 = (v111 + 16 * v104);
                *v112 = v50;
                v112[1] = v25;
                *(*(v108 + 56) + 8 * v104) = v96;
                v113 = *(v108 + 16);
                v94 = __OFADD__(v113, 1);
                v114 = v113 + 1;
                if (v94)
                {
                  goto LABEL_95;
                }

                *(v108 + 16) = v114;
              }

              v2 = v71;
              *(v71 + 32) = v108;

              swift_endAccess();
              v86 = 0;
              v6 = v155;
              v87 = v163;
              v85 = v164;
              v66 = v166;
            }

            else
            {
              v85 = v63;
              Participant.displayName.getter();
              (*v151)(v6, v53);

              v86 = 1;
              v87 = v163;
            }

            v34 = v160;
            v35 = v159;
            outlined destroy of Participant?(v85);
            __swift_storeEnumTagSinglePayload(v87, v86, 1, v66);

            if (__swift_getEnumTagSinglePayload(v87, 1, v66) != 1)
            {
              break;
            }

            outlined destroy of Participant?(v87);
            v42 = v37;
            v25 = v165;
            v31 = v161;
            v41 = v158;
            if ((v35 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }
          }

          v116 = *v145;
          v117 = v138;
          v118 = v87;
          v119 = v166;
          (*v145)(v138, v118, v166);
          v116(v139, v117, v119);
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v31 = v161;
          if ((v120 & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v149 = v123;
          }

          v121 = *(v149 + 16);
          v41 = v158;
          if (v121 >= *(v149 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v149 = v124;
          }

          v122 = v149;
          *(v149 + 16) = v121 + 1;
          v116((v122 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v121), v139, v166);
          v25 = v165;
        }

LABEL_19:
        v43 = v42;
        v44 = v25;
        v37 = v42;
        if (v25)
        {
LABEL_23:
          v45 = (v44 - 1) & v44;
          v46 = *(*(v35 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v44)))));
          if (!v46)
          {
            goto LABEL_68;
          }

          goto LABEL_27;
        }

        while (1)
        {
          v37 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            OUTLINED_FUNCTION_2_9();
LABEL_85:
            v134 = type metadata accessor for Logger();
            __swift_project_value_buffer(v134, static Logger.conversationKit);

            v135 = Logger.logObject.getter();
            v136 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v135, v136))
            {
              v137 = swift_slowAlloc();
              *v137 = 134217984;
              *(v137 + 4) = *(v25 + 16);

              _os_log_impl(&dword_1BBC58000, v135, v136, "Update sensitive content participants %ld", v137, 0xCu);
              MEMORY[0x1BFB23DF0](v137, -1, -1);
            }

            else
            {
            }

            SensitiveContentRecentsTipViewModel.participants.setter(v25);
            return;
          }

          if (v37 >= v41)
          {
            break;
          }

          v44 = *(v34 + 8 * v37);
          ++v43;
          if (v44)
          {
            goto LABEL_23;
          }
        }

LABEL_68:

        outlined consume of Set<TUHandle>.Iterator._Variant();

        v25 = v148;
        v26 = v152;
        v32 = v149;
      }

      outlined destroy of RecentsCallItem(v26);
      v125 = v32;
      v126 = *(v32 + 16);
      v127 = *(v25 + 16);
      if (__OFADD__(v127, v126))
      {
        goto LABEL_92;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v127 + v126 > *(v25 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v128;
      }

      v26 = v152;
      if (*(v125 + 16))
      {
        if ((*(v25 + 24) >> 1) - *(v25 + 16) < v126)
        {
          goto LABEL_96;
        }

        swift_arrayInitWithCopy();

        v129 = v153;
        if (v126)
        {
          v130 = *(v25 + 16);
          v94 = __OFADD__(v130, v126);
          v131 = v130 + v126;
          if (v94)
          {
            goto LABEL_97;
          }

          *(v25 + 16) = v131;
        }
      }

      else
      {

        v129 = v153;
        if (v126)
        {
          goto LABEL_93;
        }
      }

      v24 = v129 + 1;
      if (v24 == v144)
      {
        goto LABEL_82;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_82:
  SensitiveContentRecentsTipViewModel.participants.getter();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ24SensitiveContentAnalysis11ParticipantV_Tt1g5();
  v133 = v132;

  if ((v133 & 1) == 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_85;
  }
}

uint64_t outlined init with copy of RecentsCallItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(void *a1)
{
  v1 = [a1 normalizedValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of Participant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SensitiveContentAnalysis11ParticipantVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Participant?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SensitiveContentAnalysis11ParticipantVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_15();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t outlined destroy of RecentsCallItem(uint64_t a1)
{
  v2 = type metadata accessor for RecentsCallItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5Tm()
{
  OUTLINED_FUNCTION_29();
  v30 = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_39_3();
  v16 = *(v6 + 16);
  if (v16 == *(v4 + 16) && v16 && v6 != v4)
  {
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = v6 + v17;
    v19 = v4 + v17;
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v22 = (v20 - 8);
    v27 = *(v20 + 56);
    v28 = v21;
    while (1)
    {
      v28(v0, v18, v8);
      if (!v16)
      {
        break;
      }

      v23 = v20;
      v28(v14, v19, v8);
      lazy protocol witness table accessor for type UUID and conformance UUID(v29, v30);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v22;
      (*v22)(v14, v8);
      v25(v0, v8);
      if (v24)
      {
        v19 += v27;
        v18 += v27;
        v26 = v16-- == 1;
        v20 = v23;
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t SensitiveContentRecentsTipViewModel.participants.setter(uint64_t a1)
{
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ24SensitiveContentAnalysis11ParticipantV_Tt1g5();
  v4 = v3;

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized SensitiveContentRecentsTipViewModel.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t closure #1 in SensitiveContentRecentsTipViewModel.participants.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_0(v1);

  return closure #1 in CallRecordingService.stopRecording(call:completion:)(v3, v4, v5, v6, v7, v8, v9);
}

Swift::Void __swiftcall RecentsListViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for RecentsListViewController(0);
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, static Logger.conversationKit);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v6))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_18();
  }

  RecentsListViewController.handleDeferredLaunchPresentationIfNecessary()();
}

uint64_t RecentsListViewController.handleDeferredLaunchPresentationIfNecessary()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  if (*(v0 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation + 8))
  {

    return RecentsListViewController.handleDeferredLinkDetailPresentation()();
  }

  else
  {
    swift_beginAccess();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v5 = type metadata accessor for UUID();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v5);
    result = outlined destroy of CallControlsService?(v3, &_s10Foundation4UUIDVSgMd);
    if (EnumTagSinglePayload != 1)
    {
      return RecentsListViewController.handleDeferredVideoMessagePresentation()();
    }
  }

  return result;
}

uint64_t closure #1 in VideoMessageInboxController.getAllMessages()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  if (v14[27])
  {
    OUTLINED_FUNCTION_34_10();
    OUTLINED_FUNCTION_20();
    v20 = swift_allocObject();
    *(v20 + 16) = &outlined read-only object #2 of closure #1 in VideoMessageInboxController.getAllMessages();
    *v13 = v20;
    v18(v13, *MEMORY[0x1E699BFF8], v15);
    OUTLINED_FUNCTION_15_14();
    static MessageStoreQuery.&& infix(_:_:)();
    v16(v13, v15);
    v16(v12, v15);
    v21 = OUTLINED_FUNCTION_42_10();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_16_26();
  v24(v23);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore0C3KeyO3key_AA0C9SortOrderO5ordertMd) + 48);
  v26 = *MEMORY[0x1E699BF50];
  type metadata accessor for MessageKey();
  OUTLINED_FUNCTION_20_3();
  (*(v27 + 104))(v15, v26);
  v28 = *MEMORY[0x1E699BF60];
  type metadata accessor for MessageSortOrder();
  OUTLINED_FUNCTION_20_3();
  (*(v29 + 104))(v15 + v25, v28);
  (*(v19 + 104))(v15, *MEMORY[0x1E699BFB8], v17);
  v14[2] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_10_20();
  lazy protocol witness table accessor for type MessageFetchOptions and conformance MessageFetchOptions(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  lazy protocol witness table accessor for type [MessageFetchOptions] and conformance [A]();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_22_15();
  v14[34] = VideoMessageInboxController.messageStoreController.getter();
  v32 = swift_task_alloc();
  v14[35] = v32;
  *v32 = v14;
  OUTLINED_FUNCTION_6_31(v32);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE03BF8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  if (v14[33])
  {
    OUTLINED_FUNCTION_34_10();
    OUTLINED_FUNCTION_20();
    v20 = swift_allocObject();
    *(v20 + 16) = &outlined read-only object #3 of closure #1 in VideoMessageInboxController.getAllMessages();
    *v13 = v20;
    v18(v13, *MEMORY[0x1E699BFF8], v15);
    OUTLINED_FUNCTION_15_14();
    static MessageStoreQuery.&& infix(_:_:)();
    v16(v13, v15);
    v16(v12, v15);
    v21 = OUTLINED_FUNCTION_42_10();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_16_26();
  v24(v23);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore0C3KeyO3key_AA0C9SortOrderO5ordertMd) + 48);
  v26 = *MEMORY[0x1E699BF50];
  type metadata accessor for MessageKey();
  OUTLINED_FUNCTION_20_3();
  (*(v27 + 104))(v15, v26);
  v28 = *MEMORY[0x1E699BF60];
  type metadata accessor for MessageSortOrder();
  OUTLINED_FUNCTION_20_3();
  (*(v29 + 104))(v15 + v25, v28);
  (*(v19 + 104))(v15, *MEMORY[0x1E699BFB8], v17);
  v14[2] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_10_20();
  lazy protocol witness table accessor for type MessageFetchOptions and conformance MessageFetchOptions(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  lazy protocol witness table accessor for type [MessageFetchOptions] and conformance [A]();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_22_15();
  v14[34] = VideoMessageInboxController.messageStoreController.getter();
  v32 = swift_task_alloc();
  v14[35] = v32;
  *v32 = v14;
  OUTLINED_FUNCTION_6_31(v32);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE03BF8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  v13 = v12[20];
  v14 = v12[17];
  v15 = v12[13];
  (*(v12[11] + 8))(v12[12], v12[10]);
  v13(v14, v15);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t lazy protocol witness table accessor for type MessageFetchOptions and conformance MessageFetchOptions(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [MessageFetchOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MessageFetchOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MessageFetchOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MessageFetchOptions] and conformance [A]);
  }

  return result;
}

uint64_t VideoMessageInboxController.messageStoreController.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    v1 = type metadata accessor for MessageStoreController();
    static MessageStoreController.shared.getter();
    OUTLINED_FUNCTION_28_0();
    MessageStoreController.addDelegate(_:)();
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC20FaceTimeMessageStore0F4TypeO_SayAG0F0CGTt1g5026_s15ConversationKit27Videof74InboxControllerC14getAllMessages33_7171B8C8E05400027B1F97FF317BCE39LLSay08de10D5Store0D4H100O_SayAF0D0CGtGyYaKFALScgyALs5Error_pGzYaKXEfU_AhJcfu_33_4f2858f3ae3b94387fca285a635b3911AjHTf3nnpk_nTf1nc_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v22 = MEMORY[0x1E69E7CC8];
  v3 = specialized Array.count.getter(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = dispatch thunk of Message.messageType.getter();
    v9 = specialized __RawDictionaryStorage.find<A>(_:)();
    v10 = v2[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_22;
    }

    v13 = v8;
    if (v2[3] < v12)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, 1);
      v2 = v22;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v9 = v14;
    }

    if (v13)
    {
      v16 = (v2[7] + 8 * v9);
      MEMORY[0x1BFB20CC0]();
      if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BAC30;
      *(v17 + 32) = v6;
      v2[(v9 >> 6) + 8] |= 1 << v9;
      *(v2[6] + 2 * v9) = v7;
      *(v2[7] + 8 * v9) = v17;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_23;
      }

      v2[2] = v20;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #1 in VideoMessageInboxController.updateCallItems()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);

  specialized closure #1 in closure #1 in VideoMessageInboxController.updateCallItems()(v1, v0 + 64);
  if (v2)
  {
  }

  else
  {

    swift_weakDestroy();
    v3 = OUTLINED_FUNCTION_18_3();

    MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }
}

uint64_t specialized closure #1 in closure #1 in VideoMessageInboxController.updateCallItems()(uint64_t a1, uint64_t a2)
{
  v39[0] = a2;
  v3 = type metadata accessor for RecentsCallItem(0);
  v46 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = v39 - v6;
  v7 = 0;
  v40 = a1 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v41 = *(a1 + 16);
LABEL_2:
  if (v7 != v41)
  {
    v43 = v8;
    v9 = (v40 + 16 * v7);
    v47 = *v9;
    v10 = *(v9 + 1);
    v42 = v7 + 1;
    v11 = specialized Array.count.getter(v10);
    v50 = v10;
    v51 = v11;
    v48 = v10 & 0xFFFFFFFFFFFFFF8;
    v49 = v10 & 0xC000000000000001;

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v51 == v12)
      {
        v58[0] = v13;
        specialized Array.append<A>(contentsOf:)(v43);

        v8 = v58[0];
        v7 = v42;
        goto LABEL_2;
      }

      if (v49)
      {
        v14 = MEMORY[0x1BFB22010](v12, v50);
      }

      else
      {
        if (v12 >= *(v48 + 16))
        {
          goto LABEL_28;
        }

        v14 = *(v50 + 8 * v12 + 32);
      }

      v15 = v14;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
      }

      v16 = dispatch thunk of Message.from.getter();
      v18 = v17;
      v19 = objc_opt_self();
      v20 = MEMORY[0x1BFB209B0](v16, v18);

      v21 = [v19 normalizedHandleWithDestinationID_];

      v57 = v13;
      if (!v21)
      {
        goto LABEL_15;
      }

      if (one-time initialization token for faceTime != -1)
      {
        swift_once();
      }

      ParticipantContactDetails.init(from:cache:)(v21, v58);
      v22 = v59;
      if (v59)
      {
        v23 = v58[0];
        v24 = v58[1];
        v55 = v61;
        v56 = v60;
        v53 = v63;
        v54 = v62;
        if (v58[0])
        {

          v25 = v23;
          v52 = v22;
          v26 = v24;
          goto LABEL_17;
        }

        v52 = v22;
        v26 = v24;
      }

      else
      {
LABEL_15:
        v26 = dispatch thunk of Message.from.getter();
        v52 = v27;
        v53 = 0;
        v24 = 0;
        v22 = 0;
        v55 = 0;
        v56 = 0;
        v54 = 0;
      }

      type metadata accessor for TUHandle();
      v28 = dispatch thunk of Message.from.getter();
      v30 = TUHandle.__allocating_init(type:value:)(1, v28, v29);
      v25 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

      v23 = 0;
LABEL_17:
      v31 = v25;
      v32 = v45;
      RecentsCallItem.init(message:title:contact:messageType:)(v15, v26, v52, v25, v47, v45);
      outlined consume of ParticipantContactDetails?(v23, v24, v22);

      v33 = v44;
      outlined init with take of RecentCallRecentItemMetadata(v32, v44, type metadata accessor for RecentsCallItem);
      v13 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v35;
      }

      v34 = *(v13 + 16);
      if (v34 >= *(v13 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v36;
      }

      *(v13 + 16) = v34 + 1;
      outlined init with take of RecentCallRecentItemMetadata(v33, v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34, type metadata accessor for RecentsCallItem);
      ++v12;
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  (*(*Strong + 104))(Strong);

  v64 = v8;
  CurrentValueSubject.send(_:)();
}

uint64_t Features.callManagerEnabled.getter()
{
  v0 = MEMORY[0x1BFB209B0](0xD000000000000012, 0x80000001BC506360);
  v1 = MEMORY[0x1BFB209B0](0xD000000000000017, 0x80000001BC506380);
  v2 = CFPreferencesCopyValue(v0, v1, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  if (SBUIIsSystemApertureEnabled())
  {
    if (!v3)
    {
      return 1;
    }

    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(void *a1, uint64_t a2, void *a3, char a4, int a5, void *a6, uint64_t a7)
{
  v437 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v436 = v429 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v429 - v16;
  v444 = MEMORY[0x1E69E7CC0];
  v443 = 0;
  v18 = [a1 provider];
  v19 = 0;
  if (([v18 isTelephonyProvider] & 1) == 0)
  {
    v19 = TUCall.cnk_isAudio.getter() & (a2 == 1);
  }

  v20 = [a1 status];
  if (TUCallScreeningEnabled())
  {
    v21 = _s15ConversationKit30CallParticipantLabelDescriptorC013callScreeningeF03for0G5Count12featureFlagsACSgSo6TUCallC_SiSo09TUFeatureL0_ptFZTf4nnen_nSoAKC_Tt2g5(a1, a2, a6);
    if (v21)
    {
      v22 = v21;
      goto LABEL_137;
    }
  }

  v435 = a7;
  if ([a1 canDisplayAlertUI_])
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_307;
  }

  if (([a1 canDisplayRedirectingUI] & 1) == 0)
  {
    v429[0] = a2;
    v431 = a5;
    v433 = v18;
    v434 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v432 = static OS_os_log.conversationKit;
    v429[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = swift_allocObject();
    _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v31, 5);
    v33 = v32;
    LODWORD(v438) = v20;
    type metadata accessor for TUCallStatus(0);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    v37 = MEMORY[0x1E69E6158];
    v33[3] = MEMORY[0x1E69E6158];
    v38 = lazy protocol witness table accessor for type String and conformance String();
    v33[4] = v38;
    *v33 = v34;
    v33[1] = v36;
    v39 = v434;
    LOBYTE(v438) = [v434 isEmergency];
    v40 = String.init<A>(reflecting:)();
    v33[8] = v37;
    v33[9] = v38;
    v33[5] = v40;
    v33[6] = v41;
    LOBYTE(v438) = [v39 isFailureExpected];
    v42 = String.init<A>(reflecting:)();
    v33[13] = v37;
    v33[14] = v38;
    v33[10] = v42;
    v33[11] = v43;
    LOBYTE(v438) = a4 & 1;
    v44 = String.init<A>(reflecting:)();
    v33[18] = v37;
    v33[19] = v38;
    v33[15] = v44;
    v33[16] = v45;
    LOBYTE(v438) = [v39 hasBeenRedirected];
    v46 = String.init<A>(reflecting:)();
    v33[23] = v37;
    v33[24] = v38;
    v430 = v38;
    v33[20] = v46;
    v33[21] = v47;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v48 = &selRef_isRecordingAllowed;
    switch(v20)
    {
      case 1u:
        v49 = v434;
        if (v19)
        {
          if (([v434 isOutgoing] & 1) == 0 && !objc_msgSend(v49, sel_isConnected))
          {
            v18 = v433;
            v50 = &selRef_initWithSuggestion_selectedActivity_type_;
            if ([v433 isFaceTimeProvider])
            {
              v52 = String.localizedCallStatus.getter();
              goto LABEL_22;
            }

            [v49 isThirdPartyVideo];
            goto LABEL_201;
          }

          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          v51 = [v49 wantsHoldMusic];
          v18 = v433;
          if (v51)
          {
LABEL_21:
            v52 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
LABEL_22:
            v54 = v52;
            v437 = v53;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = v49;
            v59 = 0;
            goto LABEL_260;
          }

          if ([v433 isFaceTimeProvider])
          {
            if (v431)
            {
              String.localizedCallStatus.getter();
              v109 = swift_allocObject();
              v110 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v109, 1);
              v112 = v111;
              v113 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
              v114 = v430;
              v112[3] = MEMORY[0x1E69E6158];
              v112[4] = v114;
              *v112 = v113;
              v112[1] = v115;
              TPNumberPadCharacter.rawValue.getter(v110);
              v54 = String.init(format:_:)();
              v117 = v116;
            }

            else
            {
              v54 = String.localizedCallStatus.getter();
              v117 = v241;
            }

            v242 = [v49 displayContext];
            v437 = v117;
            if (v242)
            {
              v243 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v242);
              if (v244)
              {
                v245 = v243;
                v246 = v244;
                v247 = [v49 displayContext];
                if (v247)
                {
                  v436 = v54;
                  v248 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v247, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                  if (v249)
                  {
                    v250 = v248;
                    v251 = v249;
                    String.localizedCallStatus.getter();
                    v252 = swift_allocObject();
                    v253 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v252, 2);
                    v254 = MEMORY[0x1E69E6158];
                    v255 = v430;
                    v256[3] = MEMORY[0x1E69E6158];
                    v256[4] = v255;
                    *v256 = v250;
                    v256[1] = v251;
                    v256[8] = v254;
                    v256[9] = v255;
                    v256[5] = v245;
                    v256[6] = v246;
                    TPNumberPadCharacter.rawValue.getter(v253);
                    v57 = String.init(format:_:)();
                    v59 = v257;

                    v56 = 1;
                    v55 = 1;
                  }

                  else
                  {

                    v55 = 0;
                    v56 = 0;
                    v57 = 0;
                    v59 = 0;
                  }

                  v58 = v434;
                  v48 = &selRef_isRecordingAllowed;
                  v50 = &selRef_initWithSuggestion_selectedActivity_type_;
LABEL_306:
                  v54 = v436;
                  goto LABEL_260;
                }
              }
            }

            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = v49;
            goto LABEL_257;
          }

          if ([v49 isThirdPartyVideo])
          {
            if (v431)
            {
              String.localizedCallStatus.getter();
              v151 = swift_allocObject();
              v152 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v151, 2);
              v154 = v153;
              v155 = [v18 localizedName];
              v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v158 = v157;

              v159 = MEMORY[0x1E69E6158];
              v160 = v430;
              v154[3] = MEMORY[0x1E69E6158];
              v154[4] = v160;
              *v154 = v156;
              v154[1] = v158;
              v58 = v434;
              v161 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v434, &v443);
              v154[8] = v159;
              v154[9] = v160;
              v154[5] = v161;
              v154[6] = v162;
              TPNumberPadCharacter.rawValue.getter(v152);
              v54 = String.init(format:_:)();
              v437 = v163;

              v55 = 0;
              v56 = 0;
              v57 = 0;
LABEL_257:
              v59 = 0;
              goto LABEL_258;
            }

LABEL_201:
            String.localizedCallStatus.getter();
            v297 = swift_allocObject();
            v298 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v297, 1);
            v300 = v299;
            v301 = [v18 localizedName];
            v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v304 = v303;

            v305 = v430;
            v300[3] = MEMORY[0x1E69E6158];
            v300[4] = v305;
            *v300 = v302;
            v300[1] = v304;
            TPNumberPadCharacter.rawValue.getter(v298);
            v54 = String.init(format:_:)();
            v437 = v306;

            v55 = 0;
            v56 = 0;
            v57 = 0;
            v59 = 0;
            v58 = v434;
LABEL_258:
            v48 = &selRef_isRecordingAllowed;
            goto LABEL_259;
          }

          if (v431)
          {
            String.localizedCallStatus.getter();
            v258 = swift_allocObject();
            v259 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v258, 2);
            v261 = v260;
            v262 = [v18 localizedName];
            v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v265 = v264;

            v266 = MEMORY[0x1E69E6158];
            v267 = v430;
            v261[3] = MEMORY[0x1E69E6158];
            v261[4] = v267;
            *v261 = v263;
            v261[1] = v265;
            v268 = v434;
            v269 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v434, &v443);
            v261[8] = v266;
            v261[9] = v267;
            v261[5] = v269;
            v261[6] = v270;
            TPNumberPadCharacter.rawValue.getter(v259);
            v54 = String.init(format:_:)();
            v272 = v271;
          }

          else
          {
            String.localizedCallStatus.getter();
            v307 = swift_allocObject();
            v308 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v307, 1);
            v310 = v309;
            v311 = [v18 localizedName];
            v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v314 = v313;

            v315 = v430;
            v310[3] = MEMORY[0x1E69E6158];
            v310[4] = v315;
            *v310 = v312;
            v310[1] = v314;
            TPNumberPadCharacter.rawValue.getter(v308);
            v54 = String.init(format:_:)();
            v272 = v316;
            v268 = v434;
          }

          v317 = [v268 displayContext];
          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          v437 = v272;
          if (v317)
          {
            v318 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v317);
            if (v319)
            {
              v320 = v318;
              v321 = v319;
              v322 = [v268 displayContext];
              if (v322)
              {
                v436 = v54;
                v323 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v322, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                if (v324)
                {
                  v325 = v323;
                  v326 = v324;
                  String.localizedCallStatus.getter();
                  v327 = swift_allocObject();
                  v328 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v327, 2);
                  v329 = MEMORY[0x1E69E6158];
                  v330 = v430;
                  v331[3] = MEMORY[0x1E69E6158];
                  v331[4] = v330;
                  *v331 = v325;
                  v331[1] = v326;
                  v331[8] = v329;
                  v331[9] = v330;
                  v331[5] = v320;
                  v331[6] = v321;
                  TPNumberPadCharacter.rawValue.getter(v328);
                  v50 = &selRef_initWithSuggestion_selectedActivity_type_;
                  v57 = String.init(format:_:)();
                  v59 = v332;

                  v55 = 0;
                  v56 = 1;
                }

                else
                {

                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v59 = 0;
                }

                v58 = v434;
                v48 = &selRef_isRecordingAllowed;
                goto LABEL_306;
              }
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v268;
          v59 = 0;
          v48 = &selRef_isRecordingAllowed;
LABEL_260:
          if ([v58 v48[364]] && objc_msgSend(v434, v50[393]))
          {
            String.localizedCallStatus.getter();
            v374 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v374, 1);
            v375 = v430;
            v376[3] = MEMORY[0x1E69E6158];
            v376[4] = v375;
            v377 = v437;
            *v376 = v54;
            v376[1] = v377;
            v54 = String.init(format:_:)();
            v379 = v378;

            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v381 = v380;
            v382 = *(v380 + 16);
            v383 = v382 + 1;
            if (v382 < *(v380 + 24) >> 1)
            {
              goto LABEL_265;
            }
          }

          else
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v381 = v385;
            v382 = *(v385 + 16);
            v383 = v382 + 1;
            v379 = v437;
            if (v382 < *(v385 + 24) >> 1)
            {
LABEL_265:
              *(v381 + 16) = v383;
              v386 = v381 + 16 * v382;
              *(v386 + 32) = v54;
              *(v386 + 40) = v379;
              v444 = v381;
              if ((v431 & 1) == 0)
              {
                goto LABEL_292;
              }

              outlined bridged method (pb) of @objc TUCall.callDurationString.getter(v434);
              if (!v387)
              {
                goto LABEL_292;
              }

              swift_beginAccess();
              v68 = 0;
              v69 = 0;
              v443 = 1;
              goto LABEL_136;
            }
          }

          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v381 = v384;
          goto LABEL_265;
        }

        if (([v433 isFaceTimeProvider] & 1) != 0 && objc_msgSend(v49, sel_isVideo))
        {
          if ([v49 &selRef:v429[0] setLocalBackLayerHost:?])
          {
            String.localizedCallStatus.getter();
            v87 = swift_allocObject();
            v88 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v87, 1);
            v90 = v89;
            v91 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
            v92 = v430;
            v90[3] = MEMORY[0x1E69E6158];
            v90[4] = v92;
            *v90 = v91;
            v90[1] = v93;
            TPNumberPadCharacter.rawValue.getter(v88);
          }

          else
          {
            String.localizedCallStatus.getter();
          }

          v54 = String.init(format:_:)();
          v437 = v94;

          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v49;
          v59 = 0;
          v18 = v433;
          v48 = &selRef_isRecordingAllowed;
          goto LABEL_259;
        }

        if (([v49 isOutgoing] & 1) == 0 && !objc_msgSend(v49, sel_isConnected) && (objc_msgSend(v49, sel_isHostedOnCurrentDevice) & 1) == 0)
        {
          v54 = String.localizedCallStatus.getter();
          v437 = v240;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v49;
          v59 = 0;
          v18 = v433;
          goto LABEL_259;
        }

        v95 = [v49 isEmergency];
        v18 = v433;
        if (v95)
        {
          String.localizedCallStatus.getter();
          v96 = swift_allocObject();
          v97 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v96, 1);
          v99 = v98;
          v100 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
          v101 = v430;
          v99[3] = MEMORY[0x1E69E6158];
          v99[4] = v101;
          *v99 = v100;
          v99[1] = v102;
          TPNumberPadCharacter.rawValue.getter(v97);
          v48 = &selRef_isRecordingAllowed;
          v54 = String.init(format:_:)();
          v437 = v103;

LABEL_64:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v49;
          v59 = 0;
LABEL_259:
          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          goto LABEL_260;
        }

        v118 = [v49 displayContext];
        if (!v118)
        {
          goto LABEL_183;
        }

        v119 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v118);
        v437 = v120;
        if (!v120)
        {
          goto LABEL_183;
        }

        v121 = v119;
        v122 = [v49 displayContext];
        if (v122 && (outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v122, &selRef_callDirectoryLocalizedExtensionContainingAppName), v123))
        {

          if ([v49 isOutgoing])
          {

            v54 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
            v437 = v124;
            goto LABEL_64;
          }

          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (v429[0] == 1)
          {
            v57 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
            v58 = v49;
            v59 = v389;
            v56 = 0;
            v55 = 1;
            v54 = v121;
            goto LABEL_260;
          }
        }

        else
        {

LABEL_183:
          if ((v431 & 1) == 0)
          {
            v55 = 0;
            v56 = 0;
            v54 = 0;
            v57 = 0;
            v58 = v49;
            v59 = 0;
            v437 = 0xE000000000000000;
            goto LABEL_259;
          }

          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if (Features.isHeroImageEnabled.getter())
          {
            v273 = [v49 imageURL];
            if (v273)
            {
              v274 = v273;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v275 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v17, 0, 1, v275);
              outlined destroy of URL?(v17);
              v276 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v49);
              v48 = &selRef_isRecordingAllowed;
              if (v277)
              {
                if (v429[0] == 1)
                {
                  v54 = v276;
                  v437 = v277;
                  v278 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v49);
                  v59 = v279;
                  if (v279)
                  {
                    v57 = v278;
                    v55 = 0;
                    v56 = 1;
                  }

                  else
                  {
                    v55 = 0;
                    v56 = 0;
                    v57 = 0;
                  }

                  v58 = v434;
                  goto LABEL_260;
                }
              }
            }

            else
            {
              v388 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v17, 1, 1, v388);
              outlined destroy of URL?(v17);
            }
          }

          if (!Features.isHeroImageEnabled.getter())
          {
            goto LABEL_21;
          }

          v402 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v49);
          if (!v403)
          {
            goto LABEL_21;
          }

          if (v429[0] == 1)
          {
            v404 = HIBYTE(v403) & 0xF;
            if ((v403 & 0x2000000000000000) == 0)
            {
              v404 = v402 & 0xFFFFFFFFFFFFLL;
            }

            if (v404)
            {
              v438 = v402;
              v439 = v403;
              MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
              v405 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v443);
              MEMORY[0x1BFB20B10](v405);
              v48 = &selRef_isRecordingAllowed;

              v52 = MEMORY[0x1BFB20AB0](v438, v439);
              goto LABEL_22;
            }
          }
        }

        goto LABEL_21;
      case 2u:
        if (([v437 isAmbiguous] & 1) == 0)
        {
          goto LABEL_129;
        }

        v70 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v434, &v443);
        goto LABEL_130;
      case 3u:
        v62 = v434;
        if ([v434 wasPulledToCurrentDevice])
        {
          goto LABEL_129;
        }

        if (v19)
        {
          v73 = [v62 isConnecting];
          v74 = v433;
          v75 = [v433 &selRef_path + 7];
          if (v73)
          {
            if (v75)
            {
              goto LABEL_129;
            }
          }

          else if (v75)
          {
            goto LABEL_129;
          }

          [v62 isThirdPartyVideo];
          String.localizedCallStatus.getter();
          v282 = swift_allocObject();
          v283 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v282, 1);
          v285 = v284;
          v286 = [v74 localizedName];
          v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v289 = v288;

          v290 = v430;
          v285[3] = MEMORY[0x1E69E6158];
          v285[4] = v290;
          *v285 = v287;
          v285[1] = v289;
          TPNumberPadCharacter.rawValue.getter(v283);
          v291 = String.init(format:_:)();
          v293 = v292;

          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v195 = v294;
          v295 = *(v294 + 16);
          if (v295 >= *(v294 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v195 = v413;
          }

          v55 = 0;
          v56 = 0;
          v68 = 0;
          v69 = 0;
          v57 = 0;
          v59 = 0;
          *(v195 + 16) = v295 + 1;
          v296 = v195 + 16 * v295;
          *(v296 + 32) = v291;
          *(v296 + 40) = v293;
LABEL_134:
          v444 = v195;
LABEL_135:
          v18 = v433;
LABEL_136:
          v198 = v444;
          v199 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
          v22 = CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v198, v57, v59, 0, 0, 0, 0, v56);
          swift_beginAccess();
          v200 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v22) + 0x110))(v443);
          (*((*v200 & *v22) + 0xC8))(v68, v69);
          (*((*v200 & *v22) + 0x128))(v55);
          goto LABEL_137;
        }

        if (([v433 &selRef_path + 7] & 1) != 0 && objc_msgSend(v62, &selRef_currentlyPlayingSoundType + 5))
        {
          [v62 isConnecting];
          goto LABEL_129;
        }

        if ([v62 isEmergency])
        {
          goto LABEL_129;
        }

        if ([v62 wasDialAssisted])
        {
          v144 = String.localizedCallStatus.getter();
          v146 = v145;
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v148 = v147;
          v149 = *(v147 + 16);
          if (v149 >= *(v147 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v148 = v416;
          }

          *(v148 + 16) = v149 + 1;
          v150 = v148 + 16 * v149;
          *(v150 + 32) = v144;
          *(v150 + 40) = v146;
        }

        else
        {
          v148 = MEMORY[0x1E69E7CC0];
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if (Features.isOutgoingCallCallerIDEnabled.getter())
        {
          v203 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v62);
          if (!v203 || (v204 = specialized Array._getCount()(v203), , !v204) || (v205 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v62), !v206))
          {
LABEL_160:
            v212 = String.localizedCallStatus.getter();
            v214 = v213;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v148 = v417;
            }

            v215 = *(v148 + 16);
            if (v215 >= *(v148 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v148 = v418;
            }

            *(v148 + 16) = v215 + 1;
            v216 = v148 + 16 * v215;
            *(v216 + 32) = v212;
            *(v216 + 40) = v214;
            v444 = v148;
            v217 = [v62 &selRef_dismissConfirmLeavePTTChannelAlert + 4];
            if (v217)
            {
              outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v217);
              if (v218)
              {

                v219 = [v62 &selRef_dismissConfirmLeavePTTChannelAlert + 4];
                if (v219)
                {
                  v220 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v219, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                  if (v221)
                  {
                    v222 = v220;
                    v223 = v221;
                    String.localizedCallStatus.getter();
                    v224 = swift_allocObject();
                    v225 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v224, 1);
                    v226 = v430;
                    v227[3] = MEMORY[0x1E69E6158];
                    v227[4] = v226;
                    *v227 = v222;
                    v227[1] = v223;
                    TPNumberPadCharacter.rawValue.getter(v225);
                    v57 = String.init(format:_:)();
                    v59 = v228;

                    v55 = 0;
                    v68 = 0;
                    v69 = 0;
                    goto LABEL_169;
                  }
                }
              }
            }

            v280 = (*(v435 + 352))(v62, v429[0]);
            v59 = v281;
            v18 = v433;
            if (v281)
            {
LABEL_194:
              v57 = v280;
LABEL_231:
              v55 = 0;
              v68 = 0;
              v69 = 0;
              v56 = 1;
              goto LABEL_136;
            }

LABEL_239:
            v55 = 0;
            v56 = 0;
            v68 = 0;
            v69 = 0;
            v57 = 0;
            goto LABEL_136;
          }

          v207 = v205;
          v208 = v206;
          v209 = HIBYTE(v206) & 0xF;
          if ((v206 & 0x2000000000000000) == 0)
          {
            v209 = v205 & 0xFFFFFFFFFFFFLL;
          }

          if (!v209)
          {
LABEL_159:

            goto LABEL_160;
          }

          v210 = [v62 &selRef_dismissConfirmLeavePTTChannelAlert + 4];
          if (v210)
          {
            outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v210, &selRef_location);
            if (v211)
            {

              goto LABEL_159;
            }
          }

          String.localizedCallStatus.getter();
          v406 = swift_allocObject();
          v407 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v406, 1);
          v408 = v430;
          v409[3] = MEMORY[0x1E69E6158];
          v409[4] = v408;
          *v409 = v207;
          v409[1] = v208;
          TPNumberPadCharacter.rawValue.getter(v407);
          v437 = String.init(format:_:)();
          v239 = v410;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_303;
          }

          goto LABEL_282;
        }

        v229 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v62);
        if (!v230)
        {
          goto LABEL_280;
        }

        v231 = v229;
        v232 = v230;
        if (String.count.getter() <= 0)
        {

LABEL_280:
          v237 = String.localizedCallStatus.getter();
          v239 = v397;
        }

        else
        {
          String.localizedCallStatus.getter();
          v233 = swift_allocObject();
          v234 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v233, 1);
          v235 = v430;
          v236[3] = MEMORY[0x1E69E6158];
          v236[4] = v235;
          *v236 = v231;
          v236[1] = v232;
          TPNumberPadCharacter.rawValue.getter(v234);
          v237 = String.init(format:_:)();
          v239 = v238;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v437 = v237;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_303:
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v148 = v411;
        }

LABEL_282:
        v399 = *(v148 + 16);
        if (v399 >= *(v148 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v148 = v415;
        }

        v55 = 0;
        v56 = 0;
        v68 = 0;
        v69 = 0;
        v57 = 0;
        v59 = 0;
        *(v148 + 16) = v399 + 1;
        v400 = v148 + 16 * v399;
        *(v400 + 32) = v437;
        *(v400 + 40) = v239;
        v444 = v148;
        goto LABEL_135;
      case 4u:
        v63 = v434;
        if (v19)
        {
          v64 = v433;
          static CallParticipantLabelDescriptor.ringingStateAudioCallLabels(_:callProvider:)(v433, v434, &v438);
          v65 = v439;
          v59 = v440;
          v66 = v441;
          v67 = v442;
          specialized Array.append<A>(contentsOf:)(v438);
          v55 = 0;
          v68 = 0;
          v69 = 0;
          if (v59)
          {
            v57 = v65;
          }

          else
          {
            v57 = 0;
          }

          v353 = v67 == 0;
          v18 = v64;
          if (v353)
          {
            v56 = v66;
          }

          else
          {
            v56 = 0;
          }

          goto LABEL_136;
        }

        if ([v434 &selRef_currentlyPlayingSoundType + 5])
        {
          if ([v63 0x1FBE104C8])
          {
            if ([v63 &selRef_setLocalBackLayerHost_])
            {
              v76 = outlined bridged method (pb) of @objc TUCall.callDurationString.getter(v63);
              if (v77)
              {
                v78 = v76;
                v79 = v77;
                String.localizedCallStatus.getter();
                v80 = swift_allocObject();
                v81 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v80, 1);
                v82 = v430;
                v83[3] = MEMORY[0x1E69E6158];
                v83[4] = v82;
                *v83 = v78;
                v83[1] = v79;
                TPNumberPadCharacter.rawValue.getter(v81);
                v84 = String.init(format:_:)();
                v86 = v85;
                goto LABEL_126;
              }
            }
          }

          else
          {
            [v63 isConnecting];
          }

          goto LABEL_129;
        }

        v104 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v63);
        if (v104)
        {
          v105 = specialized Array._getCount()(v104);

          if (v105)
          {
            static CallParticipantLabelDescriptor.ringingStateUnknownContactLabels(_:)(v63, &v438);
            v106 = v439;
            v59 = v440;
            v107 = v441;
            v108 = v442;
            specialized Array.append<A>(contentsOf:)(v438);
            v55 = 0;
            v68 = 0;
            v69 = 0;
            if (v59)
            {
              v57 = v106;
            }

            else
            {
              v57 = 0;
            }

            if (v108)
            {
              v56 = 0;
            }

            else
            {
              v56 = v107;
            }

            goto LABEL_135;
          }
        }

        v125 = [v63 isInternational];
        v126 = v435;
        if (v125)
        {
          String.localizedCallStatus.getter();
          v127 = String.init(format:_:)();
          v129 = v128;

          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v131 = v130;
          v132 = *(v130 + 16);
          v18 = v433;
          if (v132 >= *(v130 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v131 = v414;
          }

          *(v131 + 16) = v132 + 1;
          v133 = v131 + 16 * v132;
          *(v133 + 32) = v127;
          *(v133 + 40) = v129;
          v444 = v131;
          v134 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v63);
          if (v135)
          {
            v136 = v134;
            v137 = v135;
            v138 = HIBYTE(v135) & 0xF;
            if ((v135 & 0x2000000000000000) == 0)
            {
              v138 = v134 & 0xFFFFFFFFFFFFLL;
            }

            if (v138)
            {
              String.localizedCallStatus.getter();
              v139 = swift_allocObject();
              v140 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v139, 1);
              v141 = v430;
              v142[3] = MEMORY[0x1E69E6158];
              v142[4] = v141;
              *v142 = v136;
              v142[1] = v137;
              TPNumberPadCharacter.rawValue.getter(v140);
              v57 = String.init(format:_:)();
              v59 = v143;

LABEL_246:
              v55 = 0;
              v68 = 0;
              v69 = 0;
              v371 = HIBYTE(v59) & 0xF;
              if ((v59 & 0x2000000000000000) == 0)
              {
                v371 = v57 & 0xFFFFFFFFFFFFLL;
              }

              v56 = v371 != 0;
              goto LABEL_136;
            }
          }

          v366 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
          v57 = v367;
          if (!v367)
          {
            v55 = 0;
            v56 = 0;
            v68 = 0;
            v69 = 0;
            goto LABEL_251;
          }

          v368 = v366;

          v369 = HIBYTE(v57) & 0xF;
          if ((v57 & 0x2000000000000000) == 0)
          {
            v369 = v368 & 0xFFFFFFFFFFFFLL;
          }

          if (v369)
          {
            v57 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
            v59 = v370;
            if (!v370)
            {
              v55 = 0;
              v56 = 0;
LABEL_292:
              v68 = 0;
              v69 = 0;
              goto LABEL_136;
            }

            goto LABEL_246;
          }

LABEL_249:
          v55 = 0;
          v56 = 0;
          v68 = 0;
          v69 = 0;
          v57 = 0;
LABEL_251:
          v59 = 0;
          goto LABEL_136;
        }

        v164 = [v63 &selRef_dismissConfirmLeavePTTChannelAlert + 4];
        if (v164)
        {
          v165 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v164);
          if (v166)
          {
            v167 = v165;
            v168 = v166;
            v169 = [v63 &selRef_dismissConfirmLeavePTTChannelAlert + 4];
            if (v169)
            {
              v170 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v169, &selRef_callDirectoryLocalizedExtensionContainingAppName);
              if (v171)
              {
                v172 = v170;
                v173 = v171;
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v175 = v174;
                v176 = *(v174 + 16);
                if (v176 >= *(v174 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v175 = v428;
                }

                *(v175 + 16) = v176 + 1;
                v177 = v175 + 16 * v176;
                *(v177 + 32) = v167;
                *(v177 + 40) = v168;
                v444 = v175;
                String.localizedCallStatus.getter();
                v178 = swift_allocObject();
                v55 = 1;
                v179 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v178, 1);
                v180 = v430;
                v181[3] = MEMORY[0x1E69E6158];
                v181[4] = v180;
                *v181 = v172;
                v181[1] = v173;
                TPNumberPadCharacter.rawValue.getter(v179);
                v68 = String.init(format:_:)();
                v69 = v182;

                v57 = 0;
                v59 = 0;
LABEL_169:
                v56 = 3;
                goto LABEL_135;
              }
            }
          }
        }

        v333 = outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(v63);
        if (v334)
        {
          v335 = v333;
          v336 = v334;
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v338 = v337;
          v339 = *(v337 + 16);
          if (v339 >= *(v337 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v338 = v419;
          }

          *(v338 + 16) = v339 + 1;
          v340 = v338 + 16 * v339;
          *(v340 + 32) = v335;
          *(v340 + 40) = v336;
          v444 = v338;
          v126 = v435;
        }

        else
        {
          v338 = MEMORY[0x1E69E7CC0];
        }

        v341 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v63);
        if (v342)
        {
          v343 = v341;
          v344 = v342;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v338 = v420;
          }

          v345 = *(v338 + 16);
          if (v345 >= *(v338 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v338 = v421;
          }

          *(v338 + 16) = v345 + 1;
          v346 = v338 + 16 * v345;
          *(v346 + 32) = v343;
          *(v346 + 40) = v344;
          v444 = v338;
          v126 = v435;
        }

        if ([v63 isJunk])
        {
          v347 = String.localizedCallStatus.getter();
          v349 = v348;
          v57 = (*(v126 + 360))(v63);
          v59 = v350;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v338 = v422;
          }

          v351 = *(v338 + 16);
          if (v351 >= *(v338 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v338 = v423;
          }

          *(v338 + 16) = v351 + 1;
          v352 = v338 + 16 * v351;
          *(v352 + 32) = v347;
          *(v352 + 40) = v349;
          v444 = v338;
          v353 = v347 == v57 && v349 == v59;
          if (!v353)
          {
            v354 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 = v433;
            if ((v354 & 1) == 0)
            {
              goto LABEL_231;
            }

            goto LABEL_249;
          }
        }

        else
        {
          v355 = [v63 imageURL];
          if (v355)
          {
            v356 = v355;
            v357 = v436;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v358 = type metadata accessor for URL();
            __swift_storeEnumTagSinglePayload(v357, 0, 1, v358);
            outlined destroy of URL?(v357);
            v359 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
            if (v360)
            {
              v361 = v359;
              v362 = v360;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v338 = v424;
              }

              v18 = v433;
              v363 = *(v338 + 16);
              if (v363 >= *(v338 + 24) >> 1)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v338 = v425;
              }

              *(v338 + 16) = v363 + 1;
              v364 = v338 + 16 * v363;
              *(v364 + 32) = v361;
              *(v364 + 40) = v362;
              v444 = v338;
              v280 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v63);
              v59 = v365;
              if (v365)
              {
                goto LABEL_194;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v390 = type metadata accessor for URL();
            v391 = v436;
            __swift_storeEnumTagSinglePayload(v436, 1, 1, v390);
            outlined destroy of URL?(v391);
          }

          v392 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
          if (v393)
          {
            v394 = v393;
            v437 = v392;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v338 = v426;
            }

            v395 = *(v338 + 16);
            if (v395 >= *(v338 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v338 = v427;
            }

            v55 = 0;
            v56 = 0;
            v68 = 0;
            v69 = 0;
            v57 = 0;
            v59 = 0;
            *(v338 + 16) = v395 + 1;
            v396 = v338 + 16 * v395;
            *(v396 + 32) = v437;
            *(v396 + 40) = v394;
            v444 = v338;
            goto LABEL_135;
          }
        }

LABEL_278:
        v55 = 0;
        v56 = 0;
        v68 = 0;
        v69 = 0;
        v57 = 0;
        v59 = 0;
        goto LABEL_135;
      case 5u:
        v60 = v434;
        if ([v434 wasDeclined])
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_129;
          }

          v61 = v433;
          if ([v433 &selRef_path + 7])
          {
            goto LABEL_129;
          }
        }

        else
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_129;
          }

          v61 = v433;
          if ([v433 &selRef_path + 7])
          {
            goto LABEL_129;
          }
        }

        [v60 isThirdPartyVideo];
        goto LABEL_124;
      case 6u:
        v72 = v434;
        if ([v434 disconnectedReason] == 15 || objc_msgSend(v72, sel_disconnectedReason) == 7 || (objc_msgSend(v72, sel_disconnectedReasonRequiresCallFailureUI) & 1) != 0)
        {
          goto LABEL_129;
        }

        if ([v72 disconnectedReasonRequiresCallBackUI])
        {
          v18 = v433;
          if ((v19 & 1) == 0)
          {
            goto LABEL_249;
          }

          if ([v433 &selRef_path + 7])
          {
LABEL_129:
            v70 = String.localizedCallStatus.getter();
LABEL_130:
            v84 = v70;
            v86 = v71;
LABEL_131:
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v195 = v194;
            v196 = *(v194 + 16);
            if (v196 >= *(v194 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v195 = v412;
            }

            v55 = 0;
            v56 = 0;
            v68 = 0;
            v69 = 0;
            v57 = 0;
            v59 = 0;
            *(v195 + 16) = v196 + 1;
            v197 = v195 + 16 * v196;
            *(v197 + 32) = v84;
            *(v197 + 40) = v86;
            goto LABEL_134;
          }

          [v72 isThirdPartyVideo];
          String.localizedCallStatus.getter();
          v372 = swift_allocObject();
          v184 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v372, 1);
          v186 = v373;
          v187 = [v18 localizedName];
        }

        else
        {
          v202 = [v72 wasDeclined];
          v61 = v433;
          if (v202)
          {
            if ((v19 & 1) == 0 || [v433 &selRef_path + 7])
            {
              goto LABEL_129;
            }
          }

          else if ((v19 & 1) == 0 || [v433 &selRef_path + 7])
          {
            goto LABEL_129;
          }

          [v72 isThirdPartyVideo];
LABEL_124:
          String.localizedCallStatus.getter();
          v183 = swift_allocObject();
          v184 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v183, 1);
          v186 = v185;
          v187 = [v61 localizedName];
        }

        v188 = v187;
        v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v191 = v190;

        v192 = v430;
        v186[3] = MEMORY[0x1E69E6158];
        v186[4] = v192;
        *v186 = v189;
        v186[1] = v191;
        TPNumberPadCharacter.rawValue.getter(v184);
        v84 = String.init(format:_:)();
        v86 = v193;
LABEL_126:

        goto LABEL_131;
      default:
        goto LABEL_278;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_307:
    swift_once();
  }

LABEL_11:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v23 = String.localizedAlerts.getter();
  v25 = v24;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28 >= *(v26 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v27 = v401;
  }

  *(v27 + 16) = v28 + 1;
  v29 = v27 + 16 * v28;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  v30 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
  v22 = CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v27, 0, 0, 0, 0, 0, 0, 0);
  (*((*MEMORY[0x1E69E7D40] & *v22) + 0x110))(0);
LABEL_137:

  return v22;
}

{
  v402 = a3;
  v403 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v401 = &v394 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v394 - v16;
  v410 = MEMORY[0x1E69E7CC0];
  v409 = 0;
  v18 = [a1 provider];
  v19 = 0;
  if (([v18 isTelephonyProvider] & 1) == 0)
  {
    v19 = TUCall.cnk_isAudio.getter() & (v403 == 1);
  }

  v20 = [a1 status];
  if (TUCallScreeningEnabled())
  {
    v21 = specialized static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(a1, v403, a6);
    if (v21)
    {
      v22 = v21;
      goto LABEL_163;
    }
  }

  v400 = a7;
  if ([a1 canDisplayAlertUI_])
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_304;
  }

  if (![a1 canDisplayRedirectingUI])
  {
    v396 = a5;
    v398 = v18;
    v399 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v397 = static OS_os_log.conversationKit;
    v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = swift_allocObject();
    _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v31, 5);
    v33 = v32;
    LODWORD(v404) = v20;
    type metadata accessor for TUCallStatus(0);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    v37 = MEMORY[0x1E69E6158];
    v33[3] = MEMORY[0x1E69E6158];
    v38 = lazy protocol witness table accessor for type String and conformance String();
    v33[4] = v38;
    *v33 = v34;
    v33[1] = v36;
    v39 = v399;
    LOBYTE(v404) = [v399 isEmergency];
    v40 = String.init<A>(reflecting:)();
    v33[8] = v37;
    v33[9] = v38;
    v33[5] = v40;
    v33[6] = v41;
    LOBYTE(v404) = [v39 isFailureExpected];
    v42 = String.init<A>(reflecting:)();
    v33[13] = v37;
    v33[14] = v38;
    v33[10] = v42;
    v33[11] = v43;
    LOBYTE(v404) = a4 & 1;
    v44 = String.init<A>(reflecting:)();
    v33[18] = v37;
    v33[19] = v38;
    v33[15] = v44;
    v33[16] = v45;
    LOBYTE(v404) = [v39 hasBeenRedirected];
    v46 = String.init<A>(reflecting:)();
    v33[23] = v37;
    v33[24] = v38;
    v395 = v38;
    v33[20] = v46;
    v33[21] = v47;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v48 = &selRef_isRecordingAllowed;
    switch(v20)
    {
      case 1u:
        v49 = v399;
        if (v19)
        {
          if (([v399 isOutgoing] & 1) == 0 && !objc_msgSend(v49, sel_isConnected))
          {
            v18 = v398;
            v50 = &selRef_initWithSuggestion_selectedActivity_type_;
            if ([v398 isFaceTimeProvider])
            {
              v52 = String.localizedCallStatus.getter();
              goto LABEL_22;
            }

            [v49 isThirdPartyVideo];
            String.localizedCallStatus.getter();
            v261 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v261, 1);
            v263 = v262;
            v264 = [v18 localizedName];
            v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v267 = v266;

            v268 = v395;
            v263[3] = MEMORY[0x1E69E6158];
            v263[4] = v268;
            *v263 = v265;
            v263[1] = v267;
            v18 = v398;
            v269 = String.init(format:_:)();
            v402 = v270;

            v55 = 0;
            v56 = 0;
            v57 = 0;
            v59 = 0;
            v58 = v399;
            v48 = &selRef_isRecordingAllowed;
            v54 = v269;
            goto LABEL_272;
          }

          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          v51 = [v49 wantsHoldMusic];
          v18 = v398;
          if (v51)
          {
LABEL_21:
            v52 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
LABEL_22:
            v54 = v52;
            v402 = v53;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = v49;
            v59 = 0;
            goto LABEL_273;
          }

          if ([v398 isFaceTimeProvider])
          {
            if (v396)
            {
              String.localizedCallStatus.getter();
              v102 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v102, 1);
              v104 = v103;
              v105 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
              v106 = v395;
              v104[3] = MEMORY[0x1E69E6158];
              v104[4] = v106;
              *v104 = v105;
              v104[1] = v107;
              v54 = String.init(format:_:)();
              v402 = v108;
            }

            else
            {
              v54 = String.localizedCallStatus.getter();
              v402 = v213;
            }

            v214 = [v49 displayContext];
            if (v214)
            {
              v215 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v214);
              if (v216)
              {
                v217 = v215;
                v218 = v216;
                v219 = [v49 displayContext];
                if (v219)
                {
                  v220 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v219, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                  if (v221)
                  {
                    v222 = v220;
                    v223 = v221;
                    String.localizedCallStatus.getter();
                    v224 = swift_allocObject();
                    v225 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v224, 2);
                    v226 = MEMORY[0x1E69E6158];
                    v227 = v395;
                    v228[3] = MEMORY[0x1E69E6158];
                    v228[4] = v227;
                    *v228 = v222;
                    v228[1] = v223;
                    v228[8] = v226;
                    v228[9] = v227;
                    v228[5] = v217;
                    v228[6] = v218;
                    TPNumberPadCharacter.rawValue.getter(v225);
                    v57 = String.init(format:_:)();
                    v59 = v229;
                    v18 = v398;

                    v56 = 1;
                    v55 = 1;
                  }

                  else
                  {

                    v55 = 0;
                    v56 = 0;
                    v57 = 0;
                    v59 = 0;
                  }

                  v58 = v399;
                  goto LABEL_271;
                }
              }
            }

            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = v49;
            v59 = 0;
LABEL_271:
            v48 = &selRef_isRecordingAllowed;
            goto LABEL_272;
          }

          if ([v49 isThirdPartyVideo])
          {
            if (v396)
            {
              String.localizedCallStatus.getter();
              v167 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v167, 2);
              v169 = v168;
              v170 = [v18 localizedName];
              v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v173 = v172;

              v174 = MEMORY[0x1E69E6158];
              v175 = v395;
              v169[3] = MEMORY[0x1E69E6158];
              v169[4] = v175;
              *v169 = v171;
              v169[1] = v173;
              v18 = v398;
              v176 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
              v169[8] = v174;
              v169[9] = v175;
              v169[5] = v176;
              v169[6] = v177;
            }

            else
            {
              String.localizedCallStatus.getter();
              v271 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v271, 1);
              v273 = v272;
              v274 = [v18 localizedName];
              v275 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v277 = v276;

              v278 = v395;
              v273[3] = MEMORY[0x1E69E6158];
              v273[4] = v278;
              *v273 = v275;
              v273[1] = v277;
              v18 = v398;
            }

            v54 = String.init(format:_:)();
            v402 = v178;

            v56 = 0;
            v57 = 0;
            v58 = v49;
            v59 = 0;
            v48 = &selRef_isRecordingAllowed;
            v55 = 0;
            goto LABEL_272;
          }

          if (v396)
          {
            String.localizedCallStatus.getter();
            v230 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v230, 2);
            v232 = v231;
            v233 = [v18 localizedName];
            v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v236 = v235;

            v237 = MEMORY[0x1E69E6158];
            v238 = v395;
            v232[3] = MEMORY[0x1E69E6158];
            v232[4] = v238;
            *v232 = v234;
            v232[1] = v236;
            v239 = v399;
            v240 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v399, &v409);
            v232[8] = v237;
            v232[9] = v238;
            v232[5] = v240;
            v232[6] = v241;
            v54 = String.init(format:_:)();
            v402 = v242;
          }

          else
          {
            String.localizedCallStatus.getter();
            v279 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v279, 1);
            v281 = v280;
            v282 = [v18 localizedName];
            v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v285 = v284;

            v286 = v395;
            v281[3] = MEMORY[0x1E69E6158];
            v281[4] = v286;
            *v281 = v283;
            v281[1] = v285;
            v54 = String.init(format:_:)();
            v402 = v287;
            v239 = v399;
          }

          v288 = [v239 displayContext];
          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (v288)
          {
            v289 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v288);
            if (v290)
            {
              v291 = v289;
              v292 = v290;
              v293 = [v239 displayContext];
              if (v293)
              {
                v294 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v293, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                if (v295)
                {
                  v296 = v294;
                  v297 = v295;
                  String.localizedCallStatus.getter();
                  v298 = swift_allocObject();
                  v299 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v298, 2);
                  v300 = MEMORY[0x1E69E6158];
                  v301 = v395;
                  v302[3] = MEMORY[0x1E69E6158];
                  v302[4] = v301;
                  *v302 = v296;
                  v302[1] = v297;
                  v302[8] = v300;
                  v302[9] = v301;
                  v302[5] = v291;
                  v302[6] = v292;
                  TPNumberPadCharacter.rawValue.getter(v299);
                  v50 = &selRef_initWithSuggestion_selectedActivity_type_;
                  v57 = String.init(format:_:)();
                  v59 = v303;
                  v18 = v398;

                  v55 = 0;
                  v56 = 1;
                }

                else
                {

                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v59 = 0;
                }

                v58 = v399;
                goto LABEL_303;
              }
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v239;
          v59 = 0;
LABEL_303:
          v48 = &selRef_isRecordingAllowed;
          goto LABEL_273;
        }

        if (([v398 isFaceTimeProvider] & 1) != 0 && objc_msgSend(v49, sel_isVideo))
        {
          if ([v49 &selRef_setLocalBackLayerHost_])
          {
            String.localizedCallStatus.getter();
            v81 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v81, 1);
            v83 = v82;
            v84 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
            v85 = v395;
            v83[3] = MEMORY[0x1E69E6158];
            v83[4] = v85;
            *v83 = v84;
            v83[1] = v86;
          }

          else
          {
            String.localizedCallStatus.getter();
          }

          v54 = String.init(format:_:)();
          v402 = v87;

          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v49;
          v59 = 0;
          v18 = v398;
          v48 = &selRef_isRecordingAllowed;
          goto LABEL_272;
        }

        if (([v49 isOutgoing] & 1) == 0 && !objc_msgSend(v49, sel_isConnected) && (objc_msgSend(v49, sel_isHostedOnCurrentDevice) & 1) == 0)
        {
          v54 = String.localizedCallStatus.getter();
          v402 = v212;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v49;
          v59 = 0;
          v18 = v398;
          goto LABEL_272;
        }

        v89 = [v49 isEmergency];
        v18 = v398;
        if (v89)
        {
          String.localizedCallStatus.getter();
          v90 = swift_allocObject();
          _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v90, 1);
          v92 = v91;
          v93 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
          v94 = v395;
          v92[3] = MEMORY[0x1E69E6158];
          v92[4] = v94;
          *v92 = v93;
          v92[1] = v95;
          v48 = &selRef_isRecordingAllowed;
          v54 = String.init(format:_:)();
          v402 = v96;

LABEL_65:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = v49;
          v59 = 0;
LABEL_272:
          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          goto LABEL_273;
        }

        v109 = [v49 displayContext];
        if (!v109)
        {
          goto LABEL_185;
        }

        v110 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v109);
        v402 = v111;
        if (!v111)
        {
          goto LABEL_185;
        }

        v54 = v110;
        v112 = [v49 displayContext];
        if (v112 && (outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v112, &selRef_callDirectoryLocalizedExtensionContainingAppName), v113))
        {

          if ([v49 isOutgoing])
          {

            v54 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
            v402 = v114;
            goto LABEL_65;
          }

          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (v403 == 1)
          {
            v57 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
            v58 = v49;
            v59 = v345;
            v56 = 0;
            v55 = 1;
            goto LABEL_273;
          }
        }

        else
        {

LABEL_185:
          if ((v396 & 1) == 0)
          {
            v55 = 0;
            v56 = 0;
            v54 = 0;
            v57 = 0;
            v58 = v49;
            v59 = 0;
            v402 = 0xE000000000000000;
            goto LABEL_272;
          }

          v50 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if (Features.isHeroImageEnabled.getter())
          {
            v243 = [v49 imageURL];
            if (v243)
            {
              v244 = v243;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v245 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v17, 0, 1, v245);
              outlined destroy of URL?(v17);
              v246 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v49);
              v48 = &selRef_isRecordingAllowed;
              v402 = v247;
              if (v247)
              {
                if (v403 == 1)
                {
                  v54 = v246;
                  v248 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v49);
                  v59 = v249;
                  if (v249)
                  {
                    v57 = v248;
                    v55 = 0;
                    v56 = 1;
                  }

                  else
                  {
                    v55 = 0;
                    v56 = 0;
                    v57 = 0;
                  }

                  v58 = v399;
LABEL_273:
                  if ([v58 v48[364]] && objc_msgSend(v399, v50[393]))
                  {
                    String.localizedCallStatus.getter();
                    v349 = swift_allocObject();
                    _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v349, 1);
                    v350 = v395;
                    v351[3] = MEMORY[0x1E69E6158];
                    v351[4] = v350;
                    v352 = v402;
                    *v351 = v54;
                    v351[1] = v352;
                    v54 = String.init(format:_:)();
                    v354 = v353;

                    v355 = v410;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v355 = v377;
                    }

                    v356 = *(v355 + 16);
                    v357 = v356 + 1;
                    if (v356 < *(v355 + 24) >> 1)
                    {
                      goto LABEL_282;
                    }
                  }

                  else
                  {
                    v355 = v410;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v355 = v376;
                    }

                    v356 = *(v355 + 16);
                    v357 = v356 + 1;
                    v354 = v402;
                    if (v356 < *(v355 + 24) >> 1)
                    {
                      goto LABEL_282;
                    }
                  }

                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v355 = v358;
LABEL_282:
                  *(v355 + 16) = v357;
                  v359 = v355 + 16 * v356;
                  *(v359 + 32) = v54;
                  *(v359 + 40) = v354;
                  v410 = v355;
                  if ((v396 & 1) == 0)
                  {
                    goto LABEL_291;
                  }

                  outlined bridged method (pb) of @objc TUCall.callDurationString.getter(v399);
                  if (!v360)
                  {
                    goto LABEL_291;
                  }

                  swift_beginAccess();
                  v67 = 0;
                  v68 = 0;
                  v409 = 1;
                  goto LABEL_162;
                }
              }
            }

            else
            {
              v344 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v17, 1, 1, v344);
              outlined destroy of URL?(v17);
            }
          }

          if (!Features.isHeroImageEnabled.getter())
          {
            goto LABEL_21;
          }

          v361 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v49);
          if (!v362)
          {
            goto LABEL_21;
          }

          if (v403 == 1)
          {
            v363 = HIBYTE(v362) & 0xF;
            if ((v362 & 0x2000000000000000) == 0)
            {
              v363 = v361 & 0xFFFFFFFFFFFFLL;
            }

            if (v363)
            {
              v404 = v361;
              v405 = v362;
              MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
              v364 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v49, &v409);
              MEMORY[0x1BFB20B10](v364);
              v48 = &selRef_isRecordingAllowed;

              v52 = MEMORY[0x1BFB20AB0](v404, v405);
              goto LABEL_22;
            }
          }
        }

        goto LABEL_21;
      case 2u:
        if (([v402 isAmbiguous] & 1) == 0)
        {
          goto LABEL_154;
        }

        v69 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v399, &v409);
        goto LABEL_155;
      case 3u:
        v62 = v399;
        if ([v399 wasPulledToCurrentDevice])
        {
          goto LABEL_154;
        }

        if (v19)
        {
          v72 = [v62 0x1FB729D78];
          v61 = v398;
          v73 = [v398 &selRef_path + 7];
          if (v72)
          {
            if (v73)
            {
              goto LABEL_154;
            }
          }

          else if (v73)
          {
            goto LABEL_154;
          }

          [v62 isThirdPartyVideo];
LABEL_196:
          String.localizedCallStatus.getter();
          v252 = swift_allocObject();
          _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v252, 1);
          v254 = v253;
          v255 = [v61 localizedName];
          v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v258 = v257;

          v259 = v395;
          v254[3] = MEMORY[0x1E69E6158];
          v254[4] = v259;
          *v254 = v256;
          v254[1] = v258;
LABEL_197:
          v197 = String.init(format:_:)();
          v198 = v260;

          goto LABEL_156;
        }

        if (([v398 &selRef_path + 7] & 1) != 0 && objc_msgSend(v62, &selRef_currentlyPlayingSoundType + 5))
        {
          [v62 0x1FB729D78];
          goto LABEL_154;
        }

        if ([v62 isEmergency])
        {
          goto LABEL_154;
        }

        v133 = [v62 wasDialAssisted];
        v18 = v398;
        if (v133)
        {
          v134 = String.localizedCallStatus.getter();
          v136 = v135;
          v137 = v410;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v137 = v380;
          }

          v138 = *(v137 + 16);
          if (v138 >= *(v137 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v137 = v381;
          }

          *(v137 + 16) = v138 + 1;
          v139 = v137 + 16 * v138;
          *(v139 + 32) = v134;
          *(v139 + 40) = v136;
          v410 = v137;
          v18 = v398;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if (Features.isOutgoingCallCallerIDEnabled.getter())
        {
          v140 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v62);
          if (!v140)
          {
            goto LABEL_132;
          }

          v141 = specialized Array._getCount()(v140);

          if (!v141)
          {
            goto LABEL_132;
          }

          v142 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v62);
          if (!v143)
          {
            goto LABEL_132;
          }

          v144 = v142;
          v145 = v143;
          v146 = HIBYTE(v143) & 0xF;
          if ((v143 & 0x2000000000000000) == 0)
          {
            v146 = v142 & 0xFFFFFFFFFFFFLL;
          }

          if (!v146)
          {
LABEL_131:

LABEL_132:
            v149 = String.localizedCallStatus.getter();
            v151 = v150;
            v152 = v410;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v152 = v382;
            }

            v153 = *(v152 + 16);
            if (v153 >= *(v152 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v152 = v383;
            }

            *(v152 + 16) = v153 + 1;
            v154 = v152 + 16 * v153;
            *(v154 + 32) = v149;
            *(v154 + 40) = v151;
            v410 = v152;
            v155 = [v62 0x1FB41CFDCLL];
            if (v155)
            {
              outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v155);
              if (v156)
              {

                v157 = [v62 0x1FB41CFDCLL];
                if (v157)
                {
                  v158 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v157, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                  if (v159)
                  {
                    v160 = v158;
                    v161 = v159;
                    String.localizedCallStatus.getter();
                    v162 = swift_allocObject();
                    v163 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v162, 1);
                    v164 = v395;
                    v165[3] = MEMORY[0x1E69E6158];
                    v165[4] = v164;
                    *v165 = v160;
                    v165[1] = v161;
                    TPNumberPadCharacter.rawValue.getter(v163);
                    v57 = String.init(format:_:)();
                    v59 = v166;

                    v55 = 0;
                    v67 = 0;
                    v68 = 0;
                    v56 = 3;
                    goto LABEL_162;
                  }
                }
              }
            }

            v250 = (*(v400 + 352))(v62, v403);
LABEL_240:
            v59 = v251;
            if (v251)
            {
              v57 = v250;
LABEL_242:
              v55 = 0;
              v67 = 0;
              v68 = 0;
              v56 = 1;
            }

            else
            {
              v55 = 0;
              v56 = 0;
              v67 = 0;
              v68 = 0;
              v57 = 0;
            }

            goto LABEL_162;
          }

          v147 = [v62 0x1FB41CFDCLL];
          if (v147)
          {
            outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v147, &selRef_location);
            if (v148)
            {

              goto LABEL_131;
            }
          }

LABEL_174:
          String.localizedCallStatus.getter();
          v208 = swift_allocObject();
          v209 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v208, 1);
          v210 = v395;
          v211[3] = MEMORY[0x1E69E6158];
          v211[4] = v210;
          *v211 = v144;
          v211[1] = v145;
          TPNumberPadCharacter.rawValue.getter(v209);
          goto LABEL_197;
        }

        v206 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v62);
        if (!v207)
        {
          goto LABEL_154;
        }

        v144 = v206;
        v145 = v207;
        if (String.count.getter() > 0)
        {
          goto LABEL_174;
        }

        goto LABEL_154;
      case 4u:
        v63 = v399;
        if (v19)
        {
          v18 = v398;
          static CallParticipantLabelDescriptor.ringingStateAudioCallLabels(_:callProvider:)(v398, v399, &v404);
          v64 = v405;
          v59 = v406;
          v65 = v407;
          v66 = v408;
          specialized Array.append<A>(contentsOf:)(v404);
          v55 = 0;
          v67 = 0;
          v68 = 0;
          if (v59)
          {
            v57 = v64;
          }

          else
          {
            v57 = 0;
          }

          if (v66)
          {
            v56 = 0;
          }

          else
          {
            v56 = v65;
          }

          goto LABEL_162;
        }

        if ([v399 &selRef_currentlyPlayingSoundType + 5])
        {
          if ([v63 0x1FBE104C8])
          {
            if ([v63 &selRef_setLocalBackLayerHost_])
            {
              v74 = outlined bridged method (pb) of @objc TUCall.callDurationString.getter(v63);
              if (v75)
              {
                v76 = v74;
                v77 = v75;
                String.localizedCallStatus.getter();
                v78 = swift_allocObject();
                _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v78, 1);
                v79 = v395;
                v80[3] = MEMORY[0x1E69E6158];
                v80[4] = v79;
                *v80 = v76;
                v80[1] = v77;
                goto LABEL_197;
              }
            }
          }

          else
          {
            [v63 0x1FB729D78];
          }

LABEL_154:
          v69 = String.localizedCallStatus.getter();
LABEL_155:
          v197 = v69;
          v198 = v70;
LABEL_156:
          v199 = v410;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v199 = v375;
          }

          v200 = *(v199 + 16);
          if (v200 >= *(v199 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v199 = v374;
          }

          v56 = 0;
          v67 = 0;
          v68 = 0;
          v57 = 0;
          v59 = 0;
          *(v199 + 16) = v200 + 1;
          v55 = 0;
          v201 = v199 + 16 * v200;
          *(v201 + 32) = v197;
          *(v201 + 40) = v198;
          v410 = v199;
LABEL_161:
          v18 = v398;
LABEL_162:
          v202 = v410;
          v203 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
          v22 = CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v202, v57, v59, 0, 0, 0, 0, v56);
          swift_beginAccess();
          v204 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v22) + 0x110))(v409);
          (*((*v204 & *v22) + 0xC8))(v67, v68);
          (*((*v204 & *v22) + 0x128))(v55);
          goto LABEL_163;
        }

        v97 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v63);
        if (v97)
        {
          v98 = specialized Array._getCount()(v97);

          if (v98)
          {
            static CallParticipantLabelDescriptor.ringingStateUnknownContactLabels(_:)(v63, &v404);
            v99 = v405;
            v59 = v406;
            v100 = v407;
            v101 = v408;
            specialized Array.append<A>(contentsOf:)(v404);
            v55 = 0;
            v67 = 0;
            v68 = 0;
            if (v59)
            {
              v57 = v99;
            }

            else
            {
              v57 = 0;
            }

            if (v101)
            {
              v56 = 0;
            }

            else
            {
              v56 = v100;
            }

            goto LABEL_161;
          }
        }

        v115 = [v63 isInternational];
        v18 = v398;
        v116 = v400;
        if (v115)
        {
          String.localizedCallStatus.getter();
          v117 = String.init(format:_:)();
          v119 = v118;

          v120 = v410;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v120 = v378;
          }

          v121 = *(v120 + 16);
          if (v121 >= *(v120 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v120 = v379;
          }

          *(v120 + 16) = v121 + 1;
          v122 = v120 + 16 * v121;
          *(v122 + 32) = v117;
          *(v122 + 40) = v119;
          v410 = v120;
          v123 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v63);
          if (v124)
          {
            v125 = v123;
            v126 = v124;
            v127 = HIBYTE(v124) & 0xF;
            if ((v124 & 0x2000000000000000) == 0)
            {
              v127 = v123 & 0xFFFFFFFFFFFFLL;
            }

            if (v127)
            {
              String.localizedCallStatus.getter();
              v128 = swift_allocObject();
              v129 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v128, 1);
              v130 = v395;
              v131[3] = MEMORY[0x1E69E6158];
              v131[4] = v130;
              *v131 = v125;
              v131[1] = v126;
              TPNumberPadCharacter.rawValue.getter(v129);
              v57 = String.init(format:_:)();
              v59 = v132;

              goto LABEL_250;
            }
          }

          v338 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
          v57 = v339;
          if (!v339)
          {
            v55 = 0;
            v56 = 0;
            v67 = 0;
            v68 = 0;
            goto LABEL_266;
          }

          v340 = v338;

          v341 = HIBYTE(v57) & 0xF;
          if ((v57 & 0x2000000000000000) == 0)
          {
            v341 = v340 & 0xFFFFFFFFFFFFLL;
          }

          if (v341)
          {
            v57 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
            v59 = v342;
            if (!v342)
            {
              v55 = 0;
              v56 = 0;
LABEL_291:
              v67 = 0;
              v68 = 0;
              goto LABEL_162;
            }

LABEL_250:
            v55 = 0;
            v67 = 0;
            v68 = 0;
            v343 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v343 = v57 & 0xFFFFFFFFFFFFLL;
            }

            v56 = v343 != 0;
            goto LABEL_162;
          }
        }

        else
        {
          v179 = [v63 0x1FB41CFDCLL];
          if (v179)
          {
            v180 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v179);
            if (v181)
            {
              v182 = v180;
              v183 = v181;
              v184 = [v63 0x1FB41CFDCLL];
              if (v184)
              {
                v185 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v184, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                if (v186)
                {
                  v187 = v185;
                  v188 = v186;
                  v189 = v410;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v189 = v392;
                  }

                  v190 = *(v189 + 16);
                  if (v190 >= *(v189 + 24) >> 1)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v189 = v393;
                  }

                  *(v189 + 16) = v190 + 1;
                  v191 = v189 + 16 * v190;
                  *(v191 + 32) = v182;
                  *(v191 + 40) = v183;
                  v410 = v189;
                  String.localizedCallStatus.getter();
                  v192 = swift_allocObject();
                  v55 = 1;
                  v193 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v192, 1);
                  v194 = v395;
                  v195[3] = MEMORY[0x1E69E6158];
                  v195[4] = v194;
                  *v195 = v187;
                  v195[1] = v188;
                  TPNumberPadCharacter.rawValue.getter(v193);
                  v67 = String.init(format:_:)();
                  v68 = v196;

                  v57 = 0;
                  v59 = 0;
                  v56 = 3;
                  goto LABEL_161;
                }
              }
            }
          }

          v304 = outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(v63);
          if (v305)
          {
            v306 = v304;
            v307 = v305;
            v308 = v410;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v308 = v384;
            }

            v309 = *(v308 + 16);
            if (v309 >= *(v308 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v308 = v385;
            }

            *(v308 + 16) = v309 + 1;
            v310 = v308 + 16 * v309;
            *(v310 + 32) = v306;
            *(v310 + 40) = v307;
            v410 = v308;
            v116 = v400;
          }

          v311 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v63);
          if (v312)
          {
            v313 = v311;
            v314 = v312;
            v315 = v410;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v315 = v386;
            }

            v316 = *(v315 + 16);
            if (v316 >= *(v315 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v315 = v387;
            }

            *(v315 + 16) = v316 + 1;
            v317 = v315 + 16 * v316;
            *(v317 + 32) = v313;
            *(v317 + 40) = v314;
            v410 = v315;
            v116 = v400;
          }

          if ([v63 isJunk])
          {
            v318 = String.localizedCallStatus.getter();
            v320 = v319;
            v57 = (*(v116 + 360))(v63);
            v59 = v321;
            v322 = v410;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v322 = v388;
            }

            v323 = *(v322 + 16);
            if (v323 >= *(v322 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v322 = v389;
            }

            *(v322 + 16) = v323 + 1;
            v324 = v322 + 16 * v323;
            *(v324 + 32) = v318;
            *(v324 + 40) = v320;
            v410 = v322;
            if (v318 == v57 && v320 == v59)
            {
            }

            else
            {
              v326 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v326 & 1) == 0)
              {
                goto LABEL_242;
              }
            }
          }

          else
          {
            v327 = [v63 imageURL];
            if (v327)
            {
              v328 = v327;
              v329 = v401;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v330 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v329, 0, 1, v330);
              outlined destroy of URL?(v329);
              v331 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
              if (v332)
              {
                v333 = v331;
                v334 = v332;
                v335 = v410;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v335 = v390;
                }

                v336 = *(v335 + 16);
                if (v336 >= *(v335 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v335 = v391;
                }

                *(v335 + 16) = v336 + 1;
                v337 = v335 + 16 * v336;
                *(v337 + 32) = v333;
                *(v337 + 40) = v334;
                v410 = v335;
                v250 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v63);
                goto LABEL_240;
              }
            }

            else
            {
              v346 = type metadata accessor for URL();
              v347 = v401;
              __swift_storeEnumTagSinglePayload(v401, 1, 1, v346);
              outlined destroy of URL?(v347);
            }

            v69 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v63);
            if (v70)
            {
              goto LABEL_155;
            }
          }
        }

LABEL_265:
        v55 = 0;
        v56 = 0;
        v67 = 0;
        v68 = 0;
        v57 = 0;
LABEL_266:
        v59 = 0;
        goto LABEL_162;
      case 5u:
        v60 = v399;
        if ([v399 wasDeclined])
        {
          v61 = v398;
          if (v19 & 1) == 0 || ([v398 &selRef_path + 7])
          {
            goto LABEL_154;
          }
        }

        else
        {
          v61 = v398;
          if (v19 & 1) == 0 || ([v398 &selRef_path + 7])
          {
            goto LABEL_154;
          }
        }

        [v60 isThirdPartyVideo];
        goto LABEL_196;
      case 6u:
        v71 = v399;
        if ([v399 disconnectedReason] == 15)
        {
          goto LABEL_154;
        }

        v88 = [v71 disconnectedReason];
        v18 = v398;
        if (v88 == 7 || [v71 disconnectedReasonRequiresCallFailureUI])
        {
          goto LABEL_154;
        }

        if ([v71 disconnectedReasonRequiresCallBackUI])
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_265;
          }

          if ([v18 &selRef_path + 7])
          {
            goto LABEL_154;
          }
        }

        else if ([v71 wasDeclined])
        {
          if (v19 & 1) == 0 || ([v18 &selRef_path + 7])
          {
            goto LABEL_154;
          }
        }

        else if (v19 & 1) == 0 || ([v18 &selRef_path + 7])
        {
          goto LABEL_154;
        }

        [v71 isThirdPartyVideo];
        String.localizedCallStatus.getter();
        v365 = swift_allocObject();
        v366 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v365, 1);
        v368 = v367;
        v369 = [v18 localizedName];
        v370 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v372 = v371;

        v373 = v395;
        v368[3] = MEMORY[0x1E69E6158];
        v368[4] = v373;
        *v368 = v370;
        v368[1] = v372;
        TPNumberPadCharacter.rawValue.getter(v366);
        goto LABEL_197;
      default:
        v55 = 0;
        v56 = 0;
        v67 = 0;
        v68 = 0;
        v57 = 0;
        v59 = 0;
        goto LABEL_161;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_304:
    swift_once();
  }

LABEL_11:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v23 = String.localizedAlerts.getter();
  v25 = v24;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28 >= *(v26 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v27 = v348;
  }

  *(v27 + 16) = v28 + 1;
  v29 = v27 + 16 * v28;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  v30 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
  v22 = CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v27, 0, 0, 0, 0, 0, 0, 0);
  (*((*MEMORY[0x1E69E7D40] & *v22) + 0x110))(0);
LABEL_163:

  return v22;
}