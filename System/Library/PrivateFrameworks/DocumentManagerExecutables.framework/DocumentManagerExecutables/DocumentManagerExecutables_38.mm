uint64_t closure #1 in DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v11 - v4;

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, 0, 1, v6);
  UIButton.Configuration.attributedTitle.setter();
  v8 = UIButton.Configuration.attributedTitle.modify();
  if (!(*(v7 + 48))(v9, 1, v6))
  {
    v11[1] = [objc_opt_self() preferredFontForTextStyle_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  return v8(v12, 0);
}

void closure #4 in DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x128))();
  }
}

Swift::Void __swiftcall DOCGoToSuggestionsViewController.clearButtonPressed()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  if (v3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(v0, ObjectType, v5);
    v3 = swift_unknownObjectRelease();
  }

  v7 = (*((*v2 & *v0) + 0xB0))(v3);
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v7 + 32;
    v12 = MEMORY[0x277D84F90];
    while (v10 < *(v8 + 16))
    {
      outlined init with copy of DOCSidebarItemIconProvider(v11, &v29);
      v13 = v30;
      v14 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, v30);
      (*(v14 + 40))(v26, v13, v14);
      if (LOBYTE(v26[0]) == 2 || (v26[0] & 1) != 0)
      {
        outlined init with take of DOCGoToFolderCandidate(&v29, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
          v12 = v32;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        }

        v18 = v27;
        v19 = v28;
        v20 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
        v21 = MEMORY[0x28223BE20](v20, v20);
        v23 = &v26[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23, v21);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v17, v23, &v32, v18, v19);
        __swift_destroy_boxed_opaque_existential_0(v26);
        v12 = v32;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v29);
      }

      ++v10;
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_16:

    (*((*MEMORY[0x277D85000] & *v1) + 0xB8))(v12);
  }
}

id DOCGoToSuggestionsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t DOCGoToSuggestionsViewController.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 96);

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate);
}

id DOCGoToSuggestionsCollectionView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id DOCGoToSuggestionsViewController.focusableCollectionView.getter()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id DOCGoToSuggestionsViewController.keyCommands.getter()
{
  v1 = v0;
  v9 = MEMORY[0x277D84F90];
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = (*(result + 9))(sel_performKeyCommand_, 1, ObjectType, result);

  specialized Array.append<A>(contentsOf:)(v5);
  result = [v1 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = (*(result + 10))(sel_performKeyCommand_, 1, v7, result);

    specialized Array.append<A>(contentsOf:)(v8);
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCGoToSuggestionsViewController.performKeyCommand(_:)(UIKeyCommand *a1)
{
  v3 = [v1 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v5 + 104))(a1, ObjectType, v5);
}

uint64_t DOCGoToSuggestionsViewController.collectionView(_:indexPathForInitiallyFocusedItemFor:ignoringPreviouslyFocusedItem:)@<X0>(id a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a2 == 2)
  {
    if ([a1 numberOfSections] >= 1 && objc_msgSend(a1, sel_numberOfItemsInSection_, 0) >= 1)
    {
      result = 0;
      v9 = 0;
      goto LABEL_11;
    }

LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  if (a2 != 1 || [a1 numberOfSections] < 1)
  {
    goto LABEL_12;
  }

  result = [a1 numberOfSections];
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = [a1 numberOfItemsInSection_];
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (v8)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    goto LABEL_12;
  }

  v9 = v6;
LABEL_11:
  MEMORY[0x24C1F8100](result, v9);
  v10 = 0;
LABEL_13:
  v11 = type metadata accessor for IndexPath();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, v10, 1, v11);
}

char *DOCGoToSuggestionsViewController.collectionView(_:indexPathForFocusedItemNextTo:direction:includingItem:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = IndexPath.section.getter();
  if (v6 >= [a1 numberOfSections])
  {
    goto LABEL_24;
  }

  v7 = [a1 numberOfItemsInSection_];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (IndexPath.item.getter())
      {
        v7 = IndexPath.item.getter();
        a1 = v7 - 1;
        if (!__OFSUB__(v7, 1))
        {
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_8;
      }

      if (IndexPath.section.getter() >= 1)
      {
        result = IndexPath.section.getter();
        if (__OFSUB__(result, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        result = [a1 numberOfItemsInSection_];
        a1 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_33:
          __break(1u);
          return result;
        }

        v14 = IndexPath.section.getter();
        v11 = v14 - 1;
        if (!__OFSUB__(v14, 1))
        {
          goto LABEL_16;
        }

        __break(1u);
      }
    }

LABEL_24:
    v13 = 1;
    goto LABEL_25;
  }

LABEL_8:
  v8 = v7;
  result = IndexPath.item.getter();
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (result != v8 - 1)
  {
    result = IndexPath.item.getter();
    a1 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_15:
      v11 = IndexPath.section.getter();
LABEL_16:
      v12 = a1;
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  v10 = IndexPath.section.getter();
  result = [a1 numberOfSections];
  if (__OFSUB__(result, 1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10 >= (result - 1))
  {
    goto LABEL_24;
  }

  result = IndexPath.section.getter();
  v11 = (result + 1);
  if (__OFADD__(result, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = 0;
LABEL_17:
  MEMORY[0x24C1F8100](v12, v11);
  v13 = 0;
LABEL_25:
  v15 = type metadata accessor for IndexPath();
  v16 = *(*(v15 - 8) + 56);

  return v16(a3, v13, 1, v15);
}

uint64_t DOCGoToSuggestionsViewController.collectionView(_:indexPathsForSelectedItemsFrom:to:)(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return 0;
}

double DOCGoToSuggestionsViewController.collectionView(_:edgeAdjustmentsForFocusedItemAt:)()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x24C1F80E0](0, 0, v3);
  v6 = static IndexPath.== infix(_:_:)();
  (*(v1 + 8))(v5, v0);
  if (v6)
  {
    return -100.0;
  }

  else
  {
    return *MEMORY[0x277D768C8];
  }
}

uint64_t DOCGoToSuggestionsViewController.collectionView(_:indexPathsForSelectedItemsFrom:toBoundaryIn:)(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return 0;
}

uint64_t protocol witness for DOCFocusableCollectionViewDelegate.collectionView(_:indexPathsForSelectedItemsFrom:to:) in conformance DOCGoToSuggestionsViewController(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return 0;
}

double protocol witness for DOCFocusableCollectionViewDelegate.collectionView(_:edgeAdjustmentsForFocusedItemAt:) in conformance DOCGoToSuggestionsViewController()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x24C1F80E0](0, 0, v3);
  v6 = static IndexPath.== infix(_:_:)();
  (*(v1 + 8))(v5, v0);
  if (v6)
  {
    return -100.0;
  }

  else
  {
    return *MEMORY[0x277D768C8];
  }
}

uint64_t specialized DOCGoToSuggestionsViewController.collectionView(_:numberOfItemsInSection:)(unint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  if (result)
  {
    v5 = *((*((*v3 & *v1) + 0xB0))() + 16);

    return v5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections);
    if (*(v6 + 16) > a1)
    {
      return *(*(v6 + 16 * a1 + 40) + 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of UIBackgroundConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized DOCGoToSuggestionsViewController.collectionView(_:didSelectItemAt:)()
{
  DOCGoToSuggestionsViewController.suggestion(at:)(&v6);
  if (!v7)
  {
    return outlined destroy of CharacterSet?(&v6, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }

  v1 = outlined init with take of DOCGoToFolderCandidate(&v6, v8);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x98))(v1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(v0, v8, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t specialized DOCGoToSuggestionsViewController.collectionView(_:didFocusItemAt:byUserInteraction:)()
{
  DOCGoToSuggestionsViewController.suggestion(at:)(&v6);
  if (!v7)
  {
    return outlined destroy of CharacterSet?(&v6, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }

  v1 = outlined init with take of DOCGoToFolderCandidate(&v6, v8);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x98))(v1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, v8, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

unint64_t lazy protocol witness table accessor for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements()
{
  result = lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements;
  if (!lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements)
  {
    type metadata accessor for UICollectionLayoutListConfiguration.ContentHuggingElements();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UICollectionLayoutListConfiguration.ContentHuggingElements] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UICollectionLayoutListConfiguration.ContentHuggingElements] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UICollectionLayoutListConfiguration.ContentHuggingElements] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay5UIKit35UICollectionLayoutListConfigurationV22ContentHuggingElementsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UICollectionLayoutListConfiguration.ContentHuggingElements] and conformance [A]);
  }

  return result;
}

id DOCGetInfoErrorPresentingViewController.__allocating_init(errorViewController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCSidebarViewController.contextMenuForItems(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v274 - v7;
  if (MEMORY[0x24C1F8130](v6) < 1)
  {
    return 0;
  }

  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(a1, 1, &v318);
  if (v321 == 255)
  {
    return 0;
  }

  v9 = v318;
  v322 = v318;
  v287 = v319;
  *v323 = v319;
  *&v323[8] = v320;
  v323[24] = v321;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  v12 = DOCSidebarViewController.sidebarItemCell(at:)(v8);
  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
  v307 = v12;
  if (!v12)
  {
    outlined destroy of CharacterSet?(&v318, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    return 0;
  }

  v301 = v9;
  v13 = *(v2 + OBJC_IVAR___DOCSidebarViewController_actionManager);
  v14 = [v13 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [v13 associatedActionManagers];
  type metadata accessor for DOCActionManager(0);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = specialized Sequence.flatMap<A>(_:)(v17);

  aBlock[0] = v15;
  specialized Array.append<A>(contentsOf:)(v18);
  v19 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    goto LABEL_189;
  }

  v20 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v309 = v2;
  if (v20)
  {
    v21 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_188;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v311 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_187;
      }

      v24 = [v311 identifier];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_24;
      }

      ++v21;
      v2 = v309;
      if (v23 == v20)
      {
        goto LABEL_22;
      }
    }

LABEL_24:

    v2 = v309;
  }

  else
  {
LABEL_22:

    v311 = 0;
  }

  v32 = MEMORY[0x277D84F90];
  v317 = MEMORY[0x277D84F90];
  v19 = &v322;
  v33 = DOCSidebarItem.contextMenuDescriptor()();
  v295 = v33[2];
  if (v295)
  {
    v34 = 0;
    v308 = OBJC_IVAR___DOCSidebarViewController_configuration;
    v305 = OBJC_IVAR___DOCSidebarViewController_sourceVisibilityController;
    v306 = *MEMORY[0x277D05DD0];
    v279 = 0x8000000249BD4180;
    v278 = *MEMORY[0x277D05DC0];
    v310 = *MEMORY[0x277CC6040];
    v277 = 0x8000000249BE39E0;
    v284 = "ame) from the sidebar";
    v283 = 0x8000000249BE3A60;
    v298 = 0x8000000249BE3AC0;
    v297 = "e) from the sidebar";
    v296 = 0x8000000249BE3B40;
    v282 = 0x8000000249BD4100;
    v281 = "ve in the sidebar";
    v280 = 0x8000000249BD40B0;
    v275 = *MEMORY[0x277D060F0];
    v289 = 0x8000000249BE3BA0;
    v286 = "ew window from the sidebar";
    v285 = 0x8000000249BD4050;
    v304 = "idebar in compact width layouts";
    v303 = 0x8000000249BE3C20;
    v291 = "@UIViewController8@?0";
    v293 = xmmword_249BA0290;
    v300 = xmmword_249B9A480;
    v276 = xmmword_249BA08C0;
    v290 = 0x8000000249BD3FE0;
    v294 = v33 + 4;
    v292 = v315;
    v288 = v33;
    do
    {
      if (v34 >= v33[2])
      {
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v20 = __CocoaSet.count.getter();
        goto LABEL_6;
      }

      v39 = v294[v34];
      v40 = *(v39 + 16);
      if (!v40)
      {
        goto LABEL_30;
      }

      v299 = v34;
      v19 = MEMORY[0x277D84F90];
      v316 = MEMORY[0x277D84F90];
      v41 = v39 + 32;

      v42 = 0;
      v43 = v19;
      v312 = v39 + 32;
      do
      {
        if (v42 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_186;
        }

        v44 = *(v41 + v42);
        if (v44 <= 3)
        {
          if (*(v41 + v42) <= 1u)
          {
            if (*(v41 + v42))
            {
              result = _DocumentManagerBundle();
              if (!result)
              {
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
                return result;
              }

              v80 = result;
              v328._object = v303;
              v81._countAndFlagsBits = 0xD000000000000018;
              v81._object = (v304 | 0x8000000000000000);
              v82._countAndFlagsBits = 0xD000000000000018;
              v82._object = (v304 | 0x8000000000000000);
              v328._countAndFlagsBits = 0xD000000000000048;
              v83.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v83.value._object = 0xEB00000000656C62;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v81, v83, v80, v82, v328);

              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
              v84 = MEMORY[0x24C1FAD20](0x70752E776F727261, 0xEF7265646C6F662ELL);
              v85 = [objc_opt_self() systemImageNamed_];

              v86 = swift_allocObject();
              v87 = *v323;
              *(v86 + 16) = v322;
              *(v86 + 32) = v87;
              *(v86 + 41) = *&v323[9];
              *(v86 + 64) = v2;
              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              v88 = v2;
              v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
              goto LABEL_178;
            }

            if (!v311)
            {
              goto LABEL_36;
            }

            if (v323[24] > 3u)
            {
              if (v323[24] - 4 < 2)
              {
                goto LABEL_36;
              }
            }

            else if (v323[24] - 2 >= 2 && v323[24])
            {
              v19 = v322;
              type metadata accessor for DOCFileProviderSource();
              v54 = swift_dynamicCastClass();
              if (!v54)
              {
                goto LABEL_36;
              }

              v55 = *(v54 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
              if (!v55)
              {
                goto LABEL_35;
              }

              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              v56 = one-time initialization token for disableWorkaroundFor84499894_and_84500099;
              v19 = v311;
              v57 = v55;
              if (v56 != -1)
              {
                swift_once();
              }

              v58 = disableWorkaroundFor84499894_and_84500099;
              v59 = [v57 identifier];
              v60 = DOCProviderDomainIDIsSharedServerDomainID();

              outlined destroy of CharacterSet?(&v318, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
              if (v60 && !v58)
              {

                goto LABEL_35;
              }

              goto LABEL_113;
            }

            v141 = v311;
LABEL_113:
            result = _DocumentManagerBundle();
            if (!result)
            {
              goto LABEL_193;
            }

            v142 = result;
            v331._object = v290;
            v143._object = (v291 | 0x8000000000000000);
            v144._object = (v291 | 0x8000000000000000);
            v331._countAndFlagsBits = 0xD00000000000004ALL;
            v143._countAndFlagsBits = 0xD000000000000012;
            v145.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v145.value._object = 0xEB00000000656C62;
            v144._countAndFlagsBits = 0xD000000000000012;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v143, v145, v142, v144, v331);

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
            v146 = MEMORY[0x24C1FAD20](0x7571732E73756C70, 0xEB00000000657261);
            [objc_opt_self() systemImageNamed_];

            v147 = swift_allocObject();
            v148 = *v323;
            *(v147 + 16) = v322;
            *(v147 + 32) = v148;
            *(v147 + 41) = *&v323[9];
            v149 = v311;
            *(v147 + 64) = v2;
            *(v147 + 72) = v149;
            outlined init with copy of DOCSidebarItem?(&v318, aBlock);
            v150 = v2;
            goto LABEL_176;
          }

          if (v44 != 2)
          {
            v19 = v322;
            v89 = v323[24];
            if (v323[24] > 1u)
            {
              if (v323[24] == 2)
              {
                goto LABEL_166;
              }

              if (v323[24] != 3)
              {
                goto LABEL_35;
              }

              v114 = [objc_opt_self() defaultManager];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v115 = swift_allocObject();
              *(v115 + 16) = v293;
              *(v115 + 32) = v19;
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
              v116 = v19;
              isa = Array._bridgeToObjectiveC()().super.isa;

              v118 = [v114 eligibleActionsForItems_];

              type metadata accessor for FPAction(0);
              v19 = v119;
              lazy protocol witness table accessor for type FPAction and conformance FPAction();
              v120 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

              if (!*(v120 + 16))
              {
LABEL_137:

                goto LABEL_35;
              }

              countAndFlagsBits = v43;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              Hasher.init(_seed:)();
              String.hash(into:)();
              v19 = Hasher._finalize()();

              v121 = -1 << *(v120 + 32);
              v122 = v19 & ~v121;
              if (((*(v120 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
              {
LABEL_135:

                v2 = v309;
LABEL_136:
                v41 = v312;
LABEL_142:
                v43 = countAndFlagsBits;
                goto LABEL_36;
              }

              v123 = ~v121;
              while (1)
              {
                v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v126 = v125;
                v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v129 = v124;
                v19 = v127;
                if (v129 == v128 && v126 == v127)
                {
                  break;
                }

                v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v131)
                {
                  goto LABEL_164;
                }

                v122 = (v122 + 1) & v123;
                if (((*(v120 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
                {
                  goto LABEL_135;
                }
              }
            }

            else
            {
              if (v323[24])
              {
                if (v323[24] != 1)
                {
                  goto LABEL_35;
                }

                type metadata accessor for DOCFileProviderSource();
                v90 = swift_dynamicCastClass();
                if (!v90)
                {
                  goto LABEL_35;
                }

                v91 = *((*MEMORY[0x277D85000] & *v90) + 0x128);
                v92 = outlined init with copy of DOCSidebarItem?(&v318, aBlock);
                v19 = v91(v92);
                outlined destroy of CharacterSet?(&v318, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_35;
                }

LABEL_165:
                v89 = v323[24];
LABEL_166:
                v243 = [*(v2 + v308) isPickerUI];
                v19 = v322;
                if (v243 && v89 == 1)
                {
                  type metadata accessor for DOCExternalDeviceSource();
                  v244 = swift_dynamicCastClass();
                  v41 = v312;
                  if (v244)
                  {
                    goto LABEL_36;
                  }

                  v19 = v301;
LABEL_171:
                  v245 = [v19 displayName];
                  v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v248 = v247;

                  result = _DocumentManagerBundle();
                  if (!result)
                  {
                    goto LABEL_196;
                  }

                  v249 = result;
                  v333._object = v283;
                  v250._countAndFlagsBits = 0x1000000000000016;
                  v250._object = (v284 | 0x8000000000000000);
                  v333._countAndFlagsBits = 0xD000000000000052;
                  v251.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v251.value._object = 0xEB00000000656C62;
                  v252._countAndFlagsBits = 0xE220656D616E6552;
                  v252._object = 0xAF9D80E240259C80;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v250, v251, v249, v252, v333);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                  v253 = swift_allocObject();
                  *(v253 + 16) = v300;
                  *(v253 + 56) = MEMORY[0x277D837D0];
                  *(v253 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v253 + 32) = v246;
                  *(v253 + 40) = v248;
                  String.init(format:_:)();
                }

                else
                {
                  if (v89 < 4)
                  {
                    goto LABEL_171;
                  }

                  result = _DocumentManagerBundle();
                  if (!result)
                  {
                    goto LABEL_200;
                  }

                  v254 = result;
                  v334._object = v277;
                  v334._countAndFlagsBits = 0xD000000000000055;
                  v255._countAndFlagsBits = 0x5B20656D616E6552;
                  v255._object = 0xED00005D6D657449;
                  v256.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v256.value._object = 0xEB00000000656C62;
                  v257._countAndFlagsBits = 0x656D616E6552;
                  v257._object = 0xE600000000000000;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v255, v256, v254, v257, v334);
                }

                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
                v258 = MEMORY[0x24C1FAD20](0x6C69636E6570, 0xE600000000000000);
                v259 = [objc_opt_self() systemImageNamed_];

                v260 = swift_allocObject();
                v261 = *v323;
                *(v260 + 16) = v322;
                *(v260 + 32) = v261;
                *(v260 + 41) = *&v323[9];
                v262 = v309;
                v263 = v307;
                *(v260 + 64) = v309;
                *(v260 + 72) = v263;
                outlined init with copy of DOCSidebarItem?(&v318, aBlock);
                v264 = v262;
                v265 = v263;
                v2 = v262;
                goto LABEL_176;
              }

              v180 = [objc_opt_self() defaultManager];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v181 = swift_allocObject();
              *(v181 + 16) = v293;
              *(v181 + 32) = v19;
              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
              v182 = Array._bridgeToObjectiveC()().super.isa;

              v183 = [v180 eligibleActionsForItems_];

              type metadata accessor for FPAction(0);
              v19 = v184;
              lazy protocol witness table accessor for type FPAction and conformance FPAction();
              v185 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

              if (!*(v185 + 16))
              {
                goto LABEL_137;
              }

              countAndFlagsBits = v43;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              Hasher.init(_seed:)();
              String.hash(into:)();
              v19 = Hasher._finalize()();

              v186 = -1 << *(v185 + 32);
              v187 = v19 & ~v186;
              if (((*(v185 + 56 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
              {
                goto LABEL_135;
              }

              v188 = ~v186;
              while (1)
              {
                v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v191 = v190;
                v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v194 = v189;
                v19 = v192;
                if (v194 == v193 && v191 == v192)
                {
                  break;
                }

                v196 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v196)
                {
                  goto LABEL_164;
                }

                v187 = (v187 + 1) & v188;
                if (((*(v185 + 56 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
                {
                  goto LABEL_135;
                }
              }
            }

LABEL_164:

            v2 = v309;
            v43 = countAndFlagsBits;
            goto LABEL_165;
          }

          if (v323[24] == 3)
          {
            outlined init with copy of DOCSidebarItem?(&v318, aBlock);

            goto LABEL_121;
          }

          if (v323[24] != 1)
          {
            if (v323[24])
            {
              goto LABEL_36;
            }

            v61 = outlined init with copy of DOCSidebarItem?(&v318, aBlock);
LABEL_121:
            v19 = v2;
            v163 = (*((*MEMORY[0x277D85000] & *v2) + 0x520))(v61);
            if (!v163)
            {

LABEL_35:
              v41 = v312;
              goto LABEL_36;
            }

            v164 = v163;
            v19 = *(v163 + OBJC_IVAR___DOCSourceOrderObserver_sourceObserver);

            v165 = v301;
            v166 = [v301 providerDomainID];
            v167 = [v19 sourceForIdentifier_];

            if (!v167)
            {
              goto LABEL_35;
            }

            type metadata accessor for DOCFileProviderSource();
            v19 = swift_dynamicCastClass();
            v41 = v312;
            if (!v19)
            {

              goto LABEL_36;
            }

LABEL_124:
            result = _DocumentManagerBundle();
            if (!result)
            {
              goto LABEL_199;
            }

            v168 = result;
            v332._object = v279;
            v332._countAndFlagsBits = 0xD000000000000050;
            v169._countAndFlagsBits = 0x6F666E4920746547;
            v169._object = 0xE800000000000000;
            v170.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v170.value._object = 0xEB00000000656C62;
            v171._countAndFlagsBits = 0;
            v171._object = 0xE000000000000000;
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v169, v170, v168, v171, v332)._countAndFlagsBits;

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
            v172 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
            v173 = [objc_opt_self() systemImageNamed_];

            v174 = swift_allocObject();
            v175 = *v323;
            *(v174 + 16) = v322;
            *(v174 + 32) = v175;
            *(v174 + 41) = *&v323[9];
            v176 = v309;
            v177 = v307;
            *(v174 + 64) = v309;
            *(v174 + 72) = v177;
            *(v174 + 80) = v19;
            outlined init with copy of DOCSidebarItem?(&v318, aBlock);
            v178 = v176;
            v179 = v177;
            v2 = v176;
LABEL_176:
            v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_177:
            v41 = v312;
LABEL_178:
            v19 = &v316;
            MEMORY[0x24C1FB090](v73);
            if (*((v316 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v316 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v41 = v312;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v43 = v316;
            goto LABEL_36;
          }

          countAndFlagsBits = v40;
          v151 = v43;
          v19 = v322;
          v152 = [v322 identifier];
          v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v155 = v154;
          if (v153 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v155 == v156)
          {

LABEL_139:
            v43 = v151;
LABEL_140:
            v40 = countAndFlagsBits;
            goto LABEL_36;
          }

          v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v197)
          {
            goto LABEL_139;
          }

          v19 = [v19 identifier];
          v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v201 = v200;
          v43 = v151;
          if (v199 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v201 == v202)
          {

            goto LABEL_140;
          }

          v266 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v40 = countAndFlagsBits;
          if ((v266 & 1) == 0)
          {
            type metadata accessor for DOCFileProviderSource();
            v267 = swift_dynamicCastClass();
            if (v267)
            {
              v19 = v267;
              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              goto LABEL_124;
            }
          }
        }

        else
        {
          if (*(v41 + v42) <= 5u)
          {
            if (v44 == 4)
            {
              if (v323[24] != 1)
              {
                goto LABEL_36;
              }

              v19 = v322;
              type metadata accessor for DOCFileProviderSource();
              v62 = swift_dynamicCastClass();
              if (!v62 || ([v62 isEjectable] & 1) == 0)
              {
                goto LABEL_36;
              }

              result = _DocumentManagerBundle();
              if (!result)
              {
                goto LABEL_198;
              }

              v63 = result;
              v327._object = v280;
              v327._countAndFlagsBits = 0xD000000000000046;
              v64._countAndFlagsBits = 0x7463656A45;
              v64._object = 0xE500000000000000;
              v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v65.value._object = 0xEB00000000656C62;
              v66._countAndFlagsBits = 0;
              v66._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v327);

              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
              v67 = MEMORY[0x24C1FAD20](0x69632E7463656A65, 0xEC000000656C6372);
              v68 = [objc_opt_self() systemImageNamed_];

              v69 = swift_allocObject();
              v70 = *v323;
              *(v69 + 16) = v322;
              *(v69 + 32) = v70;
              *(v69 + 41) = *&v323[9];
              v71 = v307;
              *(v69 + 64) = v307;
              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              v72 = v71;
              v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_162:
              v2 = v309;
            }

            else
            {
              if ([*(v2 + v308) isPickerUI])
              {
                goto LABEL_36;
              }

              if (v323[24] != 1)
              {
                goto LABEL_36;
              }

              v19 = v322;
              type metadata accessor for DOCFileProviderSource();
              v98 = swift_dynamicCastClass();
              if (!v98)
              {
                goto LABEL_36;
              }

              v99 = *((*MEMORY[0x277D85000] & *v98) + 0x130);
              v100 = outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              v101 = v99(v100);
              v41 = v312;
              v19 = v101;
              outlined destroy of CharacterSet?(&v318, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
              if ((v19 & 1) == 0)
              {
                goto LABEL_36;
              }

              result = _DocumentManagerBundle();
              if (!result)
              {
                goto LABEL_197;
              }

              v102 = result;
              v329._object = v282;
              v329._countAndFlagsBits = 0xD000000000000051;
              v103._countAndFlagsBits = 0x6573617245;
              v103._object = 0xE500000000000000;
              v104.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v104.value._object = 0xEB00000000656C62;
              v105._countAndFlagsBits = 0;
              v105._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v329);

              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
              v106 = MEMORY[0x24C1FAD20](0xD000000000000019, v281 | 0x8000000000000000);
              v107 = [objc_opt_self() systemImageNamed_];

              v108 = swift_allocObject();
              v109 = *v323;
              *(v108 + 16) = v322;
              *(v108 + 32) = v109;
              *(v108 + 41) = *&v323[9];
              v110 = v309;
              v111 = v307;
              *(v108 + 64) = v309;
              *(v108 + 72) = v111;
              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              v112 = v110;
              v113 = v111;
              v2 = v110;
              v73 = [UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)() setAttributes_];
            }

            goto LABEL_177;
          }

          if (v44 == 6)
          {
            if (v323[24] != 1)
            {
              goto LABEL_36;
            }

            v19 = [v322 identifier];
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;
            if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
            {
            }

            else
            {
              v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v79 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            v157 = swift_allocObject();
            v158 = *v323;
            *(v157 + 40) = v322;
            *(v157 + 16) = v2;
            *(v157 + 24) = closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:);
            *(v157 + 32) = 0;
            *(v157 + 56) = v158;
            *(v157 + 65) = *&v323[9];
            v315[2] = partial apply for closure #2 in DOCSidebarItem.deleteAllAction(from:);
            v315[3] = v157;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v315[0] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
            v315[1] = &block_descriptor_16_0;
            v159 = _Block_copy(aBlock);
            v160 = objc_opt_self();
            outlined init with copy of DOCSidebarItem?(&v318, v313);
            v161 = v2;
            v162 = [v160 elementWithProvider_];
            _Block_release(v159);

            goto LABEL_178;
          }

          if (v44 == 7)
          {
            if (v323[24] == 2)
            {
              v45 = [v322 displayName];
              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              result = _DocumentManagerBundle();
              if (!result)
              {
                goto LABEL_192;
              }

              v49 = result;
              v326._object = v296;
              v50._object = (v297 | 0x8000000000000000);
              v51._object = (v297 | 0x8000000000000000);
              v326._countAndFlagsBits = 0xD000000000000050;
              v50._countAndFlagsBits = 0x1000000000000013;
              v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v52.value._object = 0xEB00000000656C62;
              v51._countAndFlagsBits = 0x1000000000000013;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v52, v49, v51, v326);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v53 = swift_allocObject();
              *(v53 + 16) = v300;
              *(v53 + 56) = MEMORY[0x277D837D0];
              *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v53 + 32) = v46;
              *(v53 + 40) = v48;
              String.init(format:_:)();
            }

            else
            {
              result = _DocumentManagerBundle();
              if (!result)
              {
                goto LABEL_191;
              }

              v132 = result;
              v330._object = v298;
              v330._countAndFlagsBits = 0xD000000000000053;
              v133._countAndFlagsBits = 0x54206574656C6544;
              v133._object = 0xEA00000000006761;
              v134.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v134.value._object = 0xEB00000000656C62;
              v135._countAndFlagsBits = 0x54206574656C6544;
              v135._object = 0xEA00000000006761;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v133, v134, v132, v135, v330);
            }

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
            v136 = MEMORY[0x24C1FAD20](0x6B72616D78, 0xE500000000000000);
            v137 = [objc_opt_self() systemImageNamed_];

            v138 = swift_allocObject();
            v139 = *v323;
            *(v138 + 16) = v322;
            *(v138 + 32) = v139;
            *(v138 + 41) = *&v323[9];
            *(v138 + 64) = v2;
            outlined init with copy of DOCSidebarItem?(&v318, aBlock);
            v140 = v2;
            v73 = [UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)() setAttributes_];
            goto LABEL_178;
          }

          v19 = *(v2 + v305);
          if (!v323[24] || v323[24] == 3)
          {
            goto LABEL_156;
          }

          if (v323[24] != 1)
          {
            goto LABEL_36;
          }

          countAndFlagsBits = v43;
          v93 = [v301 identifier];
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;
          if (v94 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v96 == v97)
          {
            goto LABEL_89;
          }

          v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v198)
          {
            goto LABEL_142;
          }

          v93 = [v301 identifier];
          v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v205 = v204;
          if (v203 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v205 == v206)
          {
LABEL_89:

            goto LABEL_142;
          }

          v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v207)
          {
            goto LABEL_142;
          }

          v208 = [v301 status];
          v43 = countAndFlagsBits;
          if (!v208)
          {
            goto LABEL_156;
          }

          if (v208 == 1)
          {
            v209 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
            v274 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v209);

            v210 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
            v211 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v210);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
            v212 = swift_allocObject();
            *(v212 + 16) = v276;
            result = DOCDocumentSourceIdentifierICloud_Current();
            if (!result)
            {
              goto LABEL_201;
            }

            *(v212 + 32) = result;
            v213 = v275;
            v214 = v306;
            *(v212 + 40) = v275;
            *(v212 + 48) = v214;
            v215 = v213;
            v216 = v214;
            v217 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(v212);
            swift_setDeallocating();
            type metadata accessor for DOCDocumentSourceIdentifier(0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            specialized Set.union<A>(_:)(v211, v274);
            specialized Set.union<A>(_:)(v217, v218);
            v220 = v219;
            v221 = v301;
            v222 = [v301 identifier];
            v223 = specialized Set.contains(_:)(v222, v220);

            if (v223)
            {
              goto LABEL_136;
            }

            v224 = [v221 status];
            v43 = countAndFlagsBits;
            if (!v224)
            {
              goto LABEL_35;
            }

            v225 = [v221 status];
            v41 = v312;
            if (v225 != 2)
            {
LABEL_156:
              v226 = [v2 traitCollection];
              v227 = [v226 sourceOutlineStyle];

              result = _DocumentManagerBundle();
              v228 = result;
              if (v227)
              {
                if (!result)
                {
                  goto LABEL_194;
                }

                v272 = v289;
                v229 = 0xD00000000000005FLL;
                v230 = 0x65766F6D6552;
                v231 = 0xE600000000000000;
                v232 = 0x617A696C61636F4CLL;
                v233 = 0xEB00000000656C62;
                v234.super.isa = v228;
                v235 = 0x65766F6D6552;
                v236 = 0xE600000000000000;
              }

              else
              {
                if (!result)
                {
                  goto LABEL_195;
                }

                v272 = v285;
                v230 = 0xD000000000000013;
                v231 = v286 | 0x8000000000000000;
                v235 = 0xD000000000000013;
                v236 = v286 | 0x8000000000000000;
                v229 = 0xD00000000000005FLL;
                v232 = 0x617A696C61636F4CLL;
                v233 = 0xEB00000000656C62;
                v234.super.isa = v228;
              }

              NSLocalizedString(_:tableName:bundle:value:comment:)(*&v230, *&v232, v234, *&v235, *&v229);

              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
              v237 = MEMORY[0x24C1FAD20](0x6B72616D78, 0xE500000000000000);
              v238 = [objc_opt_self() systemImageNamed_];

              v239 = swift_allocObject();
              v240 = *v323;
              *(v239 + 16) = v322;
              *(v239 + 32) = v240;
              *(v239 + 41) = *&v323[9];
              v241 = v307;
              *(v239 + 64) = v307;
              *(v239 + 72) = v19;
              outlined init with copy of DOCSidebarItem?(&v318, aBlock);
              v242 = v241;

              v73 = [UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)() setAttributes_];
              goto LABEL_162;
            }
          }
        }

LABEL_36:
        ++v42;
      }

      while (v42 != v40);

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v324.value.super.isa = 0;
      v324.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, v35, 0, v324, 1, 0xFFFFFFFFFFFFFFFFLL, v43, v273);
      v38 = v37;
      v19 = &v317;
      MEMORY[0x24C1FB090]();
      if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v317 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v32 = v317;
      v33 = v288;
      v34 = v299;
LABEL_30:
      ++v34;
    }

    while (v34 != v295);
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v268._countAndFlagsBits = 0;
  v268._object = 0xE000000000000000;
  v325.value.super.isa = 0;
  v325.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v269, v268, 0, v325, 1, 0xFFFFFFFFFFFFFFFFLL, v32, v273);
  v271 = v270;

  outlined destroy of CharacterSet?(&v318, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  return v271;
}

void *DOCSidebarItem.contextMenuDescriptor()()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    if (v1 - 4 < 2)
    {
      v3 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90];
      v20 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_45;
      }

LABEL_20:

      v21 = MEMORY[0x277D84F90];
      if (*(v6 + 2))
      {
        goto LABEL_48;
      }

      goto LABEL_21;
    }

    if (v1 != 3)
    {
      v6 = MEMORY[0x277D84F90];
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v12 = v38;
      v17 = *(v38 + 2);
      v39 = *(v38 + 3);
      v18 = v17 + 1;
      if (v17 >= v39 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v17 + 1, 1, v38);
        v19 = 0;
        v3 = v12;
      }

      else
      {
        v19 = 0;
        v3 = v38;
      }

      v20 = v6;
      goto LABEL_44;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_25:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v23 = *(v3 + 2);
    v22 = *(v3 + 3);
    v24 = v22 >> 1;
    v25 = v23 + 1;
    if (v22 >> 1 <= v23)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v3);
      v22 = *(v3 + 3);
      v24 = v22 >> 1;
    }

    *(v3 + 2) = v25;
    v3[v23 + 32] = 0;
    v26 = v23 + 2;
    if (v24 < v26)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v26, 1, v3);
    }

    *(v3 + 2) = v26;
    v3[v25 + 32] = 1;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v28 = *(v6 + 2);
    v27 = *(v6 + 3);
    v29 = v27 >> 1;
    v30 = v28 + 1;
    if (v27 >> 1 <= v28)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v6);
      v27 = *(v6 + 3);
      v29 = v27 >> 1;
    }

    *(v6 + 2) = v30;
    v6[v28 + 32] = 2;
    v31 = v28 + 2;
    if (v29 < v31)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v31, 1, v6);
    }

    *(v6 + 2) = v31;
    v6[v30 + 32] = 3;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v12 + 2);
    v13 = *(v12 + 3);
    v18 = v17 + 1;
    if (v17 >= v13 >> 1)
    {
      goto LABEL_17;
    }

LABEL_34:
    v19 = 8;
    v20 = v12;
    goto LABEL_44;
  }

  v2 = MEMORY[0x277D84F90];
  if (!*(v0 + 40))
  {
    goto LABEL_25;
  }

  if (v1 == 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v3[v5 + 32] = 0;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
    v10 = v8 + 1;
    if (v7 >> 1 <= v8)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
      v7 = *(v6 + 3);
      v9 = v7 >> 1;
    }

    *(v6 + 2) = v10;
    v6[v8 + 32] = 3;
    v11 = v8 + 2;
    if (v9 < (v8 + 2))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 2, 1, v6);
      v7 = *(v6 + 3);
      v9 = v7 >> 1;
    }

    *(v6 + 2) = v11;
    v6[v10 + 32] = 5;
    if (v9 < (v8 + 3))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 3, 1, v6);
    }

    *(v6 + 2) = v8 + 3;
    v6[v11 + 32] = 2;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v15 = v13 >> 1;
    v16 = v14 + 1;
    if (v13 >> 1 <= v14)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
      v13 = *(v12 + 3);
      v15 = v13 >> 1;
    }

    *(v12 + 2) = v16;
    v12[v14 + 32] = 4;
    v17 = v14 + 2;
    if (v15 < (v14 + 2))
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 2, 1, v12);
      v13 = *(v12 + 3);
      v15 = v13 >> 1;
    }

    *(v12 + 2) = v17;
    v12[v16 + 32] = 6;
    v18 = v14 + 3;
    if (v15 < (v14 + 3))
    {
LABEL_17:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v18, 1, v12);
      v19 = 8;
      v20 = v12;
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = *(v3 + 2);
  v32 = *(v3 + 3);
  if (v33 >= v32 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v3);
  }

  *(v3 + 2) = v33 + 1;
  v3[v33 + 32] = 0;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v35 = *(v6 + 2);
  v34 = *(v6 + 3);
  if (v35 >= v34 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v6);
  }

  *(v6 + 2) = v35 + 1;
  v6[v35 + 32] = 3;
  v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v36;
  v17 = *(v36 + 2);
  v37 = *(v36 + 3);
  v18 = v17 + 1;
  if (v17 >= v37 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v17 + 1, 1, v36);
    v19 = 7;
    v20 = v12;
  }

  else
  {
    v19 = 7;
    v20 = v36;
  }

LABEL_44:
  *(v12 + 2) = v18;
  v12[v17 + 32] = v19;
  if (!*(v3 + 2))
  {
    goto LABEL_20;
  }

LABEL_45:
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v41 = v21[2];
  v40 = v21[3];
  if (v41 >= v40 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v21);
  }

  v21[2] = v41 + 1;
  v21[v41 + 4] = v3;
  if (*(v6 + 2))
  {
LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v43 = v21[2];
    v42 = v21[3];
    if (v43 >= v42 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v21);
    }

    v21[2] = v43 + 1;
    v21[v43 + 4] = v6;
    if (*(v20 + 2))
    {
      goto LABEL_53;
    }

LABEL_22:

    return v21;
  }

LABEL_21:

  if (!*(v20 + 2))
  {
    goto LABEL_22;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v45 = v21[2];
  v44 = v21[3];
  if (v45 >= v44 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v21);
  }

  v21[2] = v45 + 1;
  v21[v45 + 4] = v20;
  return v21;
}

uint64_t closure #1 in DOCSidebarItem.fetchRootNode(completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a5;

  swift_unknownObjectRetain();
  v11 = a2;
  v12 = a5;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCSidebarItem.fetchRootNode(completionHandler:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a1(a3, a4);
  if (!a3)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = a5;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BE3E10, &v18);
      *(v10 + 12) = 2080;
      v12 = [v8 providerDisplayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_2493AC000, oslog, v9, "%s: can't fetch root node for : %s.", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }
}

id closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:)(void *a1, void *a2, void *a3)
{
  [a1 setModalPresentationStyle_];
  v6 = [a1 popoverPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setSourceView_];
  }

  v8 = [a1 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [a2 bounds];
    [v9 setSourceRect_];
  }

  return [a3 presentViewController:a1 animated:1 completion:0];
}

void DOCSidebarItem.presentInfoErrorViewController(from:for:using:in:)(char *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *&a1[OBJC_IVAR___DOCSidebarViewController_actionManager];
  v70 = *&a1[OBJC_IVAR___DOCSidebarViewController_configuration];
  v8 = v7;
  v9 = [a3 identifier];
  v10 = [a3 displayName];
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x24C1FAD20](v11);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v9 title:v10];

  [v12 setIsFPV2_];
  v13 = [a3 promptText];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  [v12 setPromptText_];

  v15 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a3;
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v12;
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a2;
  v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = 0;
  v16 = a3;
  v17 = v12;
  v18 = a2;
  v71 = a2;
  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

      v29 = 0;
      v27 = v4;
      goto LABEL_14;
    }
  }

  v26 = [v19 code];

  v27 = v4;
  if (v26 == -1000 && (v28 = *&v16[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain]) != 0)
  {
    v29 = [objc_opt_self() authenticationActionForProviderDomain_];
  }

  else
  {
    v29 = 0;
  }

LABEL_14:
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v29;
  v30 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v70, 0, v8);

  v31 = [a1 view];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 window];

    if (v33)
    {
      v34 = [v33 rootViewController];

      if (v34)
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = [v35 effectiveBrowserViewController];

          if (v36)
          {
            v37 = &v30[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
            swift_beginAccess();
            *(v37 + 1) = &protocol witness table for DOCBrowserContainerController;
            swift_unknownObjectWeakAssign();
          }
        }

        else
        {
        }
      }
    }

    v38 = type metadata accessor for DOCGetInfoErrorPresentingViewController();
    v39 = objc_allocWithZone(v38);
    *&v39[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = v30;
    v74.receiver = v39;
    v74.super_class = v38;
    v40 = v30;
    v41 = objc_msgSendSuper2(&v74, sel_init);
    [v41 setModalPresentationStyle_];
    v42 = [v41 popoverPresentationController];
    if (v42)
    {
      v43 = v42;
      [v42 setSourceView_];
    }

    v44 = [v41 popoverPresentationController];

    if (v44)
    {
      [v69 bounds];
      [v44 setSourceRect_];
    }

    v45 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v40 action:sel_doc_dismissViewController];
    v46 = [v40 navigationItem];
    [v46 setRightBarButtonItem_];

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.Sidebar);
    v48 = v71;
    outlined init with copy of DOCSidebarItem(v27, v73);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    outlined destroy of DOCSidebarItem(v27);

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73[0] = v52;
      *v51 = 136315650;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE3E40, v73);
      *(v51 + 4) = v53;
      *(v51 + 12) = 2080;
      v59 = DOCSidebarItem.representedLocation.getter(v53, v54, v55, v56, v57, v58);
      v60 = [v59 displayName];

      if (v60)
      {
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0xE000000000000000;
      }

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v73);

      *(v51 + 14) = v64;
      *(v51 + 22) = 2080;
      swift_getErrorValue();
      v65 = Error.localizedDescription.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v73);

      *(v51 + 24) = v67;
      _os_log_impl(&dword_2493AC000, v49, v50, "%s: Showing error controller for location: %s and error: %s.", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v52, -1, -1);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    [a1 presentViewController:v41 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void DOCSidebarItem.removeFromSidebar(in:sourceVisibilityController:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DOCSidebarItemCell(0);
  v18.receiver = a1;
  v18.super_class = v4;
  v5 = objc_msgSendSuper2(&v18, sel_isSelected);
  v17.receiver = a1;
  v17.super_class = v4;
  objc_msgSendSuper2(&v17, sel_setSelected_, 0);
  v16.receiver = a1;
  v16.super_class = v4;
  if (v5 != objc_msgSendSuper2(&v16, sel_isSelected))
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v6 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v6 == 3)
    {
      v11 = *(v1 + 8);
      v12 = *(v1 + 16);
      if (one-time initialization token for sharedManager != -1)
      {
        v14 = *(v1 + 8);
        v15 = v12;
        swift_once();
        v12 = v15;
        v11 = v14;
      }

      DOCSmartFolderManager.delete(hotFolder:for:)(v3, v11, v12);
    }

    else if (v6 == 1)
    {
      DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
      v8 = v7;
      v9 = [(DOCDocumentSource *)v3 identifier];
      v10 = specialized Set.contains(_:)(v9, v8);

      if ((v10 & 1) == 0 && [(DOCDocumentSource *)v3 status]&& [(DOCDocumentSource *)v3 status]!= 2)
      {
        DOCSourceVisibilityController.addVisitedSource(source:)(v3);
      }

      specialized DOCDocumentSource.setHidden(hidden:completion:)(1, v3);
    }
  }

  else
  {
    v13 = [objc_opt_self() sharedManager];
    [v13 removeFavorite:v3 completion:0];
  }
}

uint64_t closure #1 in DOCSidebarItem.erase(from:in:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCSidebarItem.erase(from:in:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.Rename);
    v8 = a1;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = a1;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v35);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v10, v11, "[Erase] Source: %@ failed with error: %s ", v12, 0x16u);
      outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    v20 = _convertErrorToNSError(_:)();
    DOCPresentAlertForError();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.Rename);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2493AC000, v23, v24, "[Erase] Source: %@ succeeded.", v25, 0xCu);
      outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    v28 = v22;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_2493AC000, v29, v30, "[Erase] Source: %@ finished. Invoking sidebar update block to refresh items.", v31, 0xCu);
      outlined destroy of CharacterSet?(v32, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v32, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    v34 = (*((*MEMORY[0x277D85000] & *a3) + 0x520))();
    [v34 invokeUpdateBlock];
  }
}

void *DOCSidebarItem.rename(from:in:)(void *result, void *a2)
{
  if (*(v2 + 40) <= 3u)
  {
    v4 = result;
    v5 = objc_opt_self();
    [v5 begin];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v9[4] = partial apply for closure #1 in DOCSidebarItem.rename(from:in:);
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_61_0;
    v7 = _Block_copy(v9);
    v8 = a2;

    [v5 setCompletionBlock_];
    _Block_release(v7);
    DOCSidebarViewController.setEditMode(_:animated:)(DocumentManagerExecutables_DOCCollectionViewEditMode_individualRow, 1);
    (*((*MEMORY[0x277D85000] & *v4) + 0x460))(1);
    return [v5 commit];
  }

  return result;
}

id closure #1 in DOCSidebarItem.rename(from:in:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, sel_isSelected))
  {
    v3 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
    swift_beginAccess();
    a1[v3] = 1;
    v9.receiver = a1;
    v9.super_class = ObjectType;
    LODWORD(v3) = objc_msgSendSuper2(&v9, sel_isSelected);
    v8.receiver = a1;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_setSelected_, 0);
    v7.receiver = a1;
    v7.super_class = ObjectType;
    if (v3 != objc_msgSendSuper2(&v7, sel_isSelected))
    {
      [a1 setNeedsUpdateConfiguration];
    }
  }

  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(1);
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v4 = direct field offset for DOCSidebarItemCell._inlineEditingTextField;
  v5 = *&a1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v5)
  {
    [v5 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(1);
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  result = *&a1[v4];
  if (result)
  {
    return [result becomeFirstResponder];
  }

  return result;
}

void closure #1 in DOCSidebarItem.newWindowMenuAction(from:using:)(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v80[0] = v12;
    *v11 = 136315394;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BE3CB0, v80);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v19 = DOCSidebarItem.representedLocation.getter(v13, v14, v15, v16, v17, v18);
    v20 = [v19 displayName];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v80);

    *(v11 + 14) = v30;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Performing context menu action for location: %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);

    a4 = v10;
  }

  else
  {
  }

  v31 = *(a2 + 40);
  if (v31 == 1)
  {
    goto LABEL_15;
  }

  v32 = *a2;
  if (v31 == 2)
  {
    v60 = DOCSidebarItem.representedLocation.getter(v24, v25, v26, v27, v28, v29);
    v61 = [v32 displayName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    *(inited + 32) = 0xD000000000000036;
    *(inited + 40) = 0x8000000249BD4210;
    v66 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    *(inited + 48) = v60;
    *(inited + 72) = v66;
    *(inited + 80) = 0xD000000000000035;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 88) = 0x8000000249BE3C70;
    *(inited + 96) = v62;
    *(inited + 104) = v64;
    v67 = v60;
    v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    v69 = [a3 effectiveAppearance];
    v70 = *&a3[OBJC_IVAR___DOCSidebarViewController_configuration];
    v71 = type metadata accessor for DOCActionContext();
    v72 = objc_allocWithZone(v71);
    swift_unknownObjectWeakInit();
    *&v72[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v72[OBJC_IVAR___DOCActionContext_appearance] = v69;
    *&v72[OBJC_IVAR___DOCActionContext_configuration] = v70;
    *&v72[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v72[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v72[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v72[OBJC_IVAR___DOCActionContext_userInfo] = v68;
    v77.receiver = v72;
    v77.super_class = v71;
    v73 = v69;
    v74 = v70;
    v75 = a3;
    v47 = objc_msgSendSuper2(&v77, sel_init);

    goto LABEL_25;
  }

  if (v31 == 6 && ((v34 = *(a2 + 8), v33 = *(a2 + 16), v35 = *(a2 + 24) | *(a2 + 32), !(v35 | v32 | v33 | v34)) || v32 == 1 && !(v35 | v33 | v34)))
  {
LABEL_15:
    v36 = DOCSidebarItem.representedLocation.getter(v24, v25, v26, v27, v28, v29);
    v37 = [a3 effectiveAppearance];
    v38 = *&a3[OBJC_IVAR___DOCSidebarViewController_configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_249B9A480;
    *(v39 + 32) = 0xD000000000000036;
    *(v39 + 40) = 0x8000000249BD4210;
    *(v39 + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    *(v39 + 48) = v36;
    v40 = v36;
    v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v39);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v39 + 32, &_sSS_yptMd);
    v42 = type metadata accessor for DOCActionContext();
    v43 = objc_allocWithZone(v42);
    swift_unknownObjectWeakInit();
    *&v43[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v43[OBJC_IVAR___DOCActionContext_appearance] = v37;
    *&v43[OBJC_IVAR___DOCActionContext_configuration] = v38;
    *&v43[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v43[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v43[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v43[OBJC_IVAR___DOCActionContext_userInfo] = v41;
    v78.receiver = v43;
    v78.super_class = v42;
    v44 = a3;
    v45 = v37;
    v46 = v38;
    v47 = objc_msgSendSuper2(&v78, sel_init);
  }

  else
  {
    v48 = [a3 effectiveAppearance];
    v49 = *&a3[OBJC_IVAR___DOCSidebarViewController_configuration];
    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v51 = type metadata accessor for DOCActionContext();
    v52 = objc_allocWithZone(v51);
    swift_unknownObjectWeakInit();
    *&v52[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v52[OBJC_IVAR___DOCActionContext_appearance] = v48;
    *&v52[OBJC_IVAR___DOCActionContext_configuration] = v49;
    *&v52[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v52[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v52[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v52[OBJC_IVAR___DOCActionContext_userInfo] = v50;
    v79.receiver = v52;
    v79.super_class = v51;
    v53 = a3;
    v54 = v49;
    v47 = objc_msgSendSuper2(&v79, sel_init);
  }

  v55 = *(a2 + 40);
  if ((v55 - 1) < 2)
  {
    goto LABEL_25;
  }

  v56 = *a2;
  if (!*(a2 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_249BA0290;
    *(v76 + 32) = v56;
    outlined init with copy of DOCSidebarItem(a2, v80);
    v47 = v47;
    specialized DOCActionManager.perform(_:on:actionContext:)(a4, v76, v47);

    goto LABEL_26;
  }

  if (v55 == 6)
  {
    v58 = *(a2 + 8);
    v57 = *(a2 + 16);
    v59 = *(a2 + 24) | *(a2 + 32);
    if (!(v59 | v56 | v57 | v58) || v56 == 1 && !(v59 | v57 | v58))
    {
LABEL_25:
      v47 = v47;
      specialized DOCActionManager.perform(_:on:actionContext:)(a4, MEMORY[0x277D84F90], v47);
LABEL_26:
    }
  }
}

uint64_t closure #1 in DOCSidebarItem.showEnclosingFolderAction(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v30);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BE3CE0, v30);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v16 = DOCSidebarItem.representedLocation.getter(v10, v11, v12, v13, v14, v15);
    v17 = [v16 displayName];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v30);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *a3) + 0x1E8))();
  if (result)
  {
    v28 = result;
    v29 = DOCSidebarItem.representedLocation.getter(result, v23, v24, v25, v26, v27);
    [v28 sidebarViewController:a3 wantsToReveal:v29];

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in DOCSidebarItem.removeFromSidebarMenuAction(from:in:sourceVisibilityController:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v22);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000249BE3D10, v22);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v16 = DOCSidebarItem.representedLocation.getter(v10, v11, v12, v13, v14, v15);
    v17 = [v16 displayName];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v22);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  DOCSidebarItem.removeFromSidebar(in:sourceVisibilityController:)(a3);
}

void closure #1 in DOCSidebarItem.ejectMenuAction(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v25);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BE3D60, v25);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v16 = DOCSidebarItem.representedLocation.getter(v10, v11, v12, v13, v14, v15);
    v17 = [v16 displayName];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v25);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v22 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v23 = *(a3 + v22);
  if (v23)
  {
    v24 = v23;
    DOCEjectionController.eject()();
  }
}

void closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *a2;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, aBlock);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v11, v12))
  {
    v47 = a5;
    v48 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BE3DE0, aBlock);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v21 = DOCSidebarItem.representedLocation.getter(v15, v16, v17, v18, v19, v20);
    v22 = [v21 displayName];

    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s: Performing context menu action for location: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);

    a5 = v47;
    a4 = v48;
  }

  else
  {
  }

  v27 = *(a2 + 40);
  if (v27 == 3)
  {
    v28 = *a2;
    v30 = v9;

    goto LABEL_13;
  }

  if (!*(a2 + 40))
  {
    v28 = *a2;
    v29 = v9;
LABEL_13:
    specialized DOCSidebarItem.presentInfoViewController(from:for:in:)(a3, v28, a4);

    return;
  }

  v31 = swift_allocObject();
  v32 = *(a2 + 16);
  *(v31 + 16) = *a2;
  *(v31 + 32) = v32;
  *(v31 + 41) = *(a2 + 25);
  *(v31 + 64) = a3;
  *(v31 + 72) = a4;
  *(v31 + 80) = a5;
  if (v27 == 1 && (type metadata accessor for DOCFileProviderSource(), (v33 = swift_dynamicCastClass()) != 0) && (v34 = *(v33 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
  {
    v35 = objc_opt_self();
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    v36 = a3;
    v37 = a4;
    v38 = a5;
    v39 = v34;
    v40 = [v35 defaultManager];
    v41 = swift_allocObject();
    v41[2] = partial apply for closure #1 in closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:);
    v41[3] = v31;
    v41[4] = v39;
    aBlock[4] = partial apply for closure #1 in DOCSidebarItem.fetchRootNode(completionHandler:);
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_70_2;
    v42 = _Block_copy(aBlock);
    v43 = v39;

    [v40 doc:v43 fetchRootNodeForProviderDomain:v42 completionHandler:?];
    _Block_release(v42);

    outlined destroy of DOCSidebarItem(a2);
    outlined destroy of DOCSidebarItem(a2);
  }

  else
  {
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    v44 = a3;
    v45 = a4;
    v46 = a5;
  }
}

uint64_t closure #1 in closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:)(uint64_t a1, void *a2, _OWORD *a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = a3[1];
  *(v12 + 24) = *a3;
  *(v12 + 40) = v13;
  *(v12 + 49) = *(a3 + 25);
  *(v12 + 72) = a4;
  *(v12 + 80) = a5;
  *(v12 + 88) = a6;
  *(v12 + 96) = a2;
  swift_unknownObjectRetain();
  outlined init with copy of DOCSidebarItem(a3, &v19);
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a2;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:)(uint64_t a1, int a2, char *a3, void *a4, void *a5, id a6)
{
  if (a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    FPItem = DOCNode.fpfs_syncFetchFPItemResult()();
    if (v10)
    {
      DOCSidebarItem.presentInfoErrorViewController(from:for:using:in:)(a3, FPItem, a5, a4);
    }

    else
    {
      specialized DOCSidebarItem.presentInfoViewController(from:for:in:)(a3, FPItem, a4);
    }

    swift_unknownObjectRelease();

    outlined consume of Result<FPItem, Error>(FPItem);
  }

  else if (a6)
  {
    v12 = a6;
    DOCSidebarItem.presentInfoErrorViewController(from:for:using:in:)(a3, a6, a5, a4);
  }
}

uint64_t closure #2 in DOCSidebarItem.deleteAllAction(from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = a6[1];
  *(v12 + 32) = *a6;
  *(v12 + 48) = v13;
  *(v12 + 57) = *(a6 + 25);
  *(v12 + 80) = a1;
  *(v12 + 88) = a2;
  *(v12 + 96) = a3;

  outlined init with copy of DOCSidebarItem(a6, &v15);

  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nAC_Tt1g5(a3, partial apply for closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:), v12);
}

uint64_t closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:)(unint64_t a1, uint64_t (*a2)(void (*)(uint64_t a1), _OWORD *), uint64_t a3, _OWORD *a4, void (*a5)(uint64_t), uint64_t a6, void *a7)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = swift_allocObject();
    v17 = a4[1];
    v16[1] = *a4;
    v16[2] = v17;
    *(v16 + 41) = *(a4 + 25);
    outlined init with copy of DOCSidebarItem(a4, v21);
    v15 = a2(partial apply for closure #1 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:), v16);

    [v15 setAttributes_];
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = swift_allocObject();
  v13 = a4[1];
  *(v12 + 16) = *a4;
  *(v12 + 32) = v13;
  *(v12 + 41) = *(a4 + 25);
  *(v12 + 64) = a1;
  *(v12 + 72) = a7;
  outlined init with copy of DOCSidebarItem(a4, v21);

  v14 = a7;
  v15 = a2(partial apply for closure #2 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:), v12);

  [v15 setAttributes_];
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249BA0290;
  *(v18 + 32) = v15;
  v19 = v15;
  a5(v18);
}

void closure #1 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315394;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3D80, v20);
    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v14 = DOCSidebarItem.representedLocation.getter(v8, v9, v10, v11, v12, v13);
    v15 = [v14 displayName];

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v20);

    *(v6 + 14) = v19;
    _os_log_impl(&dword_2493AC000, v4, v5, "%s: No items, disabling context menu action for location: %s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }
}

void closure #2 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v24);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315394;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3D80, v24);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v18 = DOCSidebarItem.representedLocation.getter(v12, v13, v14, v15, v16, v17);
    v19 = [v18 displayName];

    if (v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v24);

    *(v10 + 14) = v23;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Performing context menu action for location: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  specialized DOCSidebarItem.deleteAll(items:from:)(a3, a4);
}

void closure #1 in DOCSidebarItem.deleteTagAction(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v31);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3DA0, v31);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v16 = DOCSidebarItem.representedLocation.getter(v10, v11, v12, v13, v14, v15);
    v17 = [v16 displayName];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v31);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v22 = *a2;
  v23 = *(a2 + 40);
  if (v23 == 3)
  {
    v27 = *(a2 + 8);
    v28 = *(a2 + 16);
    if (one-time initialization token for sharedManager != -1)
    {
      v29 = *(a2 + 8);
      v30 = *(a2 + 16);
      swift_once();
      v28 = v30;
      v27 = v29;
    }

    DOCSmartFolderManager.delete(hotFolder:for:)(v22, v27, v28);
  }

  else if (v23 == 2)
  {
    DOCTag.delete(on:completion:)(a3, DOCGridLayout.specIconWidth.modify, 0);
  }

  else if (!*(a2 + 40))
  {
    v24 = [objc_opt_self() sharedManager];
    v25 = swift_allocObject();
    *(v25 + 16) = DOCGridLayout.specIconWidth.modify;
    *(v25 + 24) = 0;
    v31[4] = partial apply for closure #1 in FPItem.delete(on:completion:);
    v31[5] = v25;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 1107296256;
    v31[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v31[3] = &block_descriptor_55_3;
    v26 = _Block_copy(v31);

    [v24 removeFavorite:v22 completion:v26];
    _Block_release(v26);
  }
}

void *closure #1 in DOCSidebarItem.renameAction(from:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v25);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315394;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3DC0, v25);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v18 = DOCSidebarItem.representedLocation.getter(v12, v13, v14, v15, v16, v17);
    v19 = [v18 displayName];

    if (v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v25);

    *(v10 + 14) = v23;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Performing context menu action for location: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return DOCSidebarItem.rename(from:in:)(a3, a4);
}

id DOCGetInfoErrorPresentingViewController.init(errorViewController:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCGetInfoErrorPresentingViewController();
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Void __swiftcall DOCGetInfoErrorPresentingViewController.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCGetInfoErrorPresentingViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController];
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v2 setModalPresentationStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_doc_dismissViewController];
  v4 = [v1 navigationItem];
  [v4 setRightBarButtonItem_];

  [v0 doc:v2 addChildWithEqualAutoresizingFrame:?];
}

id DOCGetInfoErrorPresentingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCGetInfoErrorPresentingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCGetInfoErrorPresentingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized DOCSidebarViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1)
{
  if (([v1 isEditing] & 1) != 0 || objc_msgSend(*&v1[OBJC_IVAR___DOCSidebarViewController_configuration], sel_browserViewContext))
  {
    return 0;
  }

  result = DOCSidebarViewController.contextMenuForItems(at:)(a1);
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = objc_opt_self();
    v9[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:);
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
    v9[3] = &block_descriptor_72;
    v7 = _Block_copy(v9);

    v8 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];

    _Block_release(v7);
    return v8;
  }

  return result;
}

uint64_t outlined init with copy of DOCSidebarItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_9Tm_0()
{
  outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_6Tm_1()
{
  outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void specialized DOCSidebarItem.presentInfoViewController(from:for:in:)(void *a1, void *a2, void *a3)
{
  v6 = *(a1 + OBJC_IVAR___DOCSidebarViewController_configuration);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *a1) + 0x1E8))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = a2;
  v10 = type metadata accessor for DOCServiceInfoViewController();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v6;
  v12 = objc_allocWithZone(DOCItemInfoViewController);
  v13 = a2;
  v14 = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v12 initWithNodes:isa configuration:v14 actionReporting:v8];

  swift_unknownObjectRelease();
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v17;
  [v17 _setBuiltinTransitionStyle_];
  v43.receiver = v11;
  v43.super_class = v10;
  v18 = objc_msgSendSuper2(&v43, sel_init);
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a3;
  v19[4] = a1;
  v20 = one-time initialization token for associatedObjectStorageKey;
  v21 = v18;
  v22 = a1;
  v23 = a3;
  v24 = v21;
  v25 = v23;
  v26 = v22;
  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v7 & *v27) + 0x78))(v42);

  v28 = v7;
  if (v42[0])
  {
  }

  else
  {
    v42[3] = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v29 = static UIViewController.associatedObjectStorageKey;
    v30 = v24;
    v31 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v30, v29);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v33 = swift_allocObject();
    *(v33 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v33 + 32) = MEMORY[0x277D84F90];
    *(v33 + 40) = 0;
    v28 = MEMORY[0x277D85000];
    swift_unknownObjectWeakAssign();
    v42[0] = v33;
    (*((*v28 & *v31) + 0x80))(v42, KeyPath);
  }

  v34 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v28 & *v34) + 0x78))(v42);

  v35 = v42[0];
  if (v42[0])
  {
    if (*(v42[0] + 40) == 2)
    {
      closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:)(v24, v25, v26);
    }

    else
    {
      v36 = swift_allocObject();
      *(v36 + 16) = partial apply for closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:);
      *(v36 + 24) = v19;
      swift_beginAccess();
      v37 = *(v35 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 32) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
        *(v35 + 32) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v41 = &v37[2 * v40];
      v41[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v41[5] = v36;
      *(v35 + 32) = v37;
      swift_endAccess();
      DOCPresentationPreheatController.startIfNecessary()();
    }
  }

  else
  {
    closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:)(v24, v25, v26);

    v25 = v24;
  }
}

void specialized DOCSidebarItem.deleteAll(items:from:)(unint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D05F90];
  v5 = _DocumentManagerBundle();
  if (v5)
  {
    v6 = v5;
    v29._object = 0x8000000249BD4280;
    v7._countAndFlagsBits = 0x41206574656C6544;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v7._object = 0xEA00000000006C6CLL;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v29);

    v11 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v12 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_49_0;
    v13 = _Block_copy(aBlock);
    v14 = [v11 initWithIdentifier:v4 localizedTitle:v12 unresolvedHandler:v13];

    _Block_release(v13);

    v15 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v16 = [objc_opt_self() systemImageNamed_];

    [v14 setImage_];
    [v14 setAvailability_];
    [v14 setNavigationSide_];
    [v14 setMenuSortOrder_];
    [v14 setActionStyle_];
    [v14 setRequiresFullyFormedItems_];
    v17 = [a2 effectiveAppearance];
    v18 = *(a2 + OBJC_IVAR___DOCSidebarViewController_configuration);
    v19 = (*((*MEMORY[0x277D85000] & *a2) + 0x1E8))();
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v21 = type metadata accessor for DOCActionContext();
    v22 = objc_allocWithZone(v21);
    swift_unknownObjectWeakInit();
    *&v22[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v22[OBJC_IVAR___DOCActionContext_appearance] = v17;
    *&v22[OBJC_IVAR___DOCActionContext_configuration] = v18;
    *&v22[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v22[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v22[OBJC_IVAR___DOCActionContext_actionReporting] = v19;
    *&v22[OBJC_IVAR___DOCActionContext_userInfo] = v20;
    v27.receiver = v22;
    v27.super_class = v21;
    v23 = v18;
    v24 = a2;
    v25 = objc_msgSendSuper2(&v27, sel_init);

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v26 = _bridgeCocoaArray<A>(_:)();

      a1 = v26;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    specialized DOCActionManager.perform(_:on:actionContext:)(v14, a1, v25);
  }

  else
  {

    __break(1u);
  }
}

void specialized DOCSidebarItem.erase(from:in:)(void *a1)
{
  v2 = v1;
  if (*(v1 + 40) != 1)
  {
    return;
  }

  v4 = *v2;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Rename);
  outlined init with copy of DOCSidebarItem(v2, v77);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  outlined destroy of DOCSidebarItem(v2);
  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x277D85000];
  v70 = v4;
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v77[0] = v71;
    *v11 = 138412802;
    *(v11 + 4) = v4;
    *v12 = v4;
    *(v11 + 12) = 2080;
    v13 = v4;
    v14 = *((*v10 & *v6) + 0x500);
    v15 = v13;
    v16 = v14();
    if (v16)
    {
      v17 = v16;
      [v16 sourceIdentifier];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v77);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    *&v74[0] = [v15 identifier];
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v77);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_2493AC000, v7, v8, "[Erase] Source: %@ current sidebar selection: %s source location: %s ", v11, 0x20u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v71, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);

    v4 = v70;
    v10 = MEMORY[0x277D85000];
  }

  else
  {
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = v6;
  outlined init with copy of DOCSidebarItem(v2, v77);
  v25 = one-time initialization token for shared;
  v26 = v6;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = (*(*static DOCUSBFormatting.shared + 104))(v4, 0, 0, v26, 0, partial apply for closure #1 in DOCSidebarItem.erase(from:in:), v24, 0, 0);
  v28 = *((*v10 & *v26) + 0x4B8);
  v29 = (v28)(v74, v27);
  if (v76 == 255)
  {
    v37 = 0;
  }

  else
  {
    v77[0] = v74[0];
    v77[1] = v74[1];
    v78 = v75;
    v79 = v76;
    v35 = DOCSidebarItem.representedLocation.getter(v29, v30, v31, v32, v33, v34);
    outlined destroy of CharacterSet?(v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    v36 = [v35 sourceIdentifier];

    v37 = v36;
    v38 = [v4 identifier];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
    {

LABEL_17:
      v44 = v37;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v72 = v44;
        v73[0] = v48;
        *v47 = 136315138;
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v49 = v44;
        v50 = String.init<A>(describing:)();
        v52 = v4;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v73);

        *(v47 + 4) = v53;
        v4 = v52;
        _os_log_impl(&dword_2493AC000, v45, v46, "[Erase] Erase requested when the current sidebar selection is the drive to be erased. Marking for reselection when the drive reappears location: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x24C1FE850](v48, -1, -1);
        MEMORY[0x24C1FE850](v47, -1, -1);
      }

      v54 = [v4 identifier];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58.value._countAndFlagsBits = v55;
      v58.value._object = v57;
      DOCSidebarViewController.deferSelectingNewlyAddedSource(with:)(v58);

      return;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_17;
    }
  }

  outlined init with copy of DOCSidebarItem(v2, v73);
  v59 = v26;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();

  outlined destroy of DOCSidebarItem(v2);
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v72 = v63;
    *v62 = 136315394;
    v28(v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    v64 = String.init<A>(describing:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v72);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    v73[0] = [v70 identifier];
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v67 = String.init<A>(describing:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v72);

    *(v62 + 14) = v69;
    _os_log_impl(&dword_2493AC000, v60, v61, "[Erase] Erase requested when the current sidebar selection is NOT the drive to be erased. Current selection ID: %s Drive to be erased ID: %s ", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v63, -1, -1);
    MEMORY[0x24C1FE850](v62, -1, -1);
  }

  else
  {
  }
}

uint64_t objectdestroy_3Tm_1()
{
  outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t lazy protocol witness table accessor for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction()
{
  result = lazy protocol witness table cache variable for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction;
  if (!lazy protocol witness table cache variable for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction);
  }

  return result;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      outlined init with copy of DOCMultiNodeObserver.Subscriber(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        outlined destroy of DOCMultiNodeObserver.Subscriber(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        outlined init with take of DOCMultiNodeObserver.Subscriber(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        outlined init with take of DOCMultiNodeObserver.Subscriber(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        outlined destroy of DOCMultiNodeObserver.Subscriber(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

id DOCNodeObserver.addDidFinishGatheringSubscriber(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCNodeObserverSubscriber(0);
  v7 = objc_allocWithZone(v6);
  UUID.init()();
  v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v8 = DOCGridLayout.specIconWidth.modify;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14.receiver = v7;
  v14.super_class = v6;

  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v12 = v10;
  MEMORY[0x24C1FB090]();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v12;
}

void DOCNodeObserver.removeSubscriber(_:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_18:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v9 = specialized Array.remove(at:)(v4);
  swift_endAccess();
}

id DOCNodeObserver.addSubscriber(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCNodeObserverSubscriber(0);
  v7 = objc_allocWithZone(v6);
  UUID.init()();
  v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v14.receiver = v7;
  v14.super_class = v6;

  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v12 = v10;
  MEMORY[0x24C1FB090]();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v12;
}

uint64_t DOCMultiNodeObserver.__allocating_init(nodes:coalescingDelay:enableDeepObserving:)(unint64_t a1, char a2, double a3)
{
  v6 = swift_allocObject();
  DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(a1, a2, a3);
  return v6;
}

uint64_t DOCNodeObserverSubscriber.updateBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock);

  return v1;
}

uint64_t DOCNodeObserverSubscriber.didFinishGatheringBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

id DOCNodeObserverSubscriber.__allocating_init(updateBlock:didFinishGatheringBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  UUID.init()();
  v10 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id DOCNodeObserverSubscriber.init(updateBlock:didFinishGatheringBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  UUID.init()();
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DOCNodeObserverSubscriber(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id DOCNodeObserverSubscriber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeObserverSubscriber(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_node] = a1;
  if ((a3 & 1) != 0 && (swift_getObjectType(), DOCNode.nodeType.getter(&v24), v24))
  {
    if ([swift_unknownObjectRetain() isFolder])
    {
      v9 = 1;
    }

    else
    {
      v9 = [a1 isPackage];
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = 0;
  }

  v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_deepObserving] = v9 & 1;
  if (v9)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for DOCNodeCollection();
  swift_beginAccess();
  swift_getObjectType();
  v12 = a2;
  v13 = swift_unknownObjectRetain();
  v23 = (v9 & 1) == 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection] = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v13, 0, a2, v10 | (v23 << 32), v11);
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection;
  v16 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection];
  v17 = MEMORY[0x277D85000];
  v18 = *((*MEMORY[0x277D85000] & *v16) + 0x198);
  v19 = v14;
  v20 = v16;
  v18(v14, &protocol witness table for DOCNodeObserver);

  (*((*v17 & **&v14[v15]) + 0x1D0))();
  swift_unknownObjectRelease();

  return v19;
}

id DOCNodeObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x277D85000] & **&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1C8))();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DOCNodeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id @objc DOCNodeObserver.addSubscriber(_:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

uint64_t DOCNodeObserver.nodeCollectionDidFinishGathering(_:)(void *a1)
{
  v2 = v1;
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x258))();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  result = __CocoaSet.count.getter();
  v7 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v7 >= 1)
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (*&v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock])
      {
        (*&v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock])(v3);
      }
    }
  }

  __break(1u);
  return result;
}

void *DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(unint64_t a1, char a2, double a3)
{
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 24) = a1;
  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  *(v4 + 48) = v5;
  *(v4 + 56) = 0;
  *(v4 + 16) = a1;
  *(v4 + 64) = a3;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:

    v10 = MEMORY[0x277D84F90];
LABEL_16:
    *(v4 + 32) = v10;

    return v4;
  }

  v26 = a1;
  v6 = __CocoaSet.count.getter();
  a1 = v26;
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  v32 = v5;
  v7 = a1;
  swift_bridgeObjectRetain_n();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v32;
    v11 = v7;
    v27 = v7 & 0xC000000000000001;
    v28 = v6;
    v29 = v7;
    do
    {
      if (v27)
      {
        MEMORY[0x24C1FC540](v9, v11);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v12 = objc_allocWithZone(type metadata accessor for DOCNodeObserver());
      v13 = swift_unknownObjectRetain();
      v14 = DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(v13, 0, a2 & 1);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = type metadata accessor for DOCNodeObserverSubscriber(0);
      v17 = objc_allocWithZone(v16);

      UUID.init()();
      v18 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
      *v18 = partial apply for closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:);
      v18[1] = v15;
      v19 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
      *v19 = 0;
      *(v19 + 1) = 0;
      v31.receiver = v17;
      v31.super_class = v16;

      v20 = objc_msgSendSuper2(&v31, sel_init);
      v21 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
      swift_beginAccess();
      v22 = v20;
      MEMORY[0x24C1FB090]();
      if (*((*&v14[v21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v14[v21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      swift_unknownObjectRelease();
      v32 = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v10 = v32;
      }

      ++v9;
      *(v10 + 16) = v24 + 1;
      v25 = v10 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v14;
      v11 = v29;
    }

    while (v28 != v9);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void DOCMultiNodeObserver.deinit()
{
  (*(*v0 + 312))();
  v1 = v0[4];
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *v4;
      v6 = *(v4 - 1);
      v7 = v5;
      DOCNodeObserver.removeSubscriber(_:)();

      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t DOCMultiNodeObserver.__deallocating_deinit()
{
  DOCMultiNodeObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t DOCMultiNodeObserver.addSubscriber(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  UUID.init()();
  v17 = &v16[*(v8 + 28)];
  *v17 = a1;
  *(v17 + 1) = a2;
  outlined init with copy of DOCMultiNodeObserver.Subscriber(v16, v12);
  swift_beginAccess();
  v18 = *(v3 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 48) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(v3 + 48) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  outlined init with take of DOCMultiNodeObserver.Subscriber(v12, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21);
  *(v3 + 48) = v18;
  swift_endAccess();
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 16))(a3, v16, v22);
  return outlined destroy of DOCMultiNodeObserver.Subscriber(v16);
}

uint64_t DOCMultiNodeObserver.removeSubscriber(withUUID:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v6[2] = a1;

  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in DOCMultiNodeObserver.removeSubscriber(withUUID:), v6, v3);
  *(v1 + 48) = v4;
}

BOOL closure #1 in DOCMultiNodeObserver.removeSubscriber(withUUID:)()
{
  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

Swift::Void __swiftcall DOCMultiNodeObserver.startObserving()()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 40);
      v5 = MEMORY[0x277D85000];
      while (v3 < *(v1 + 16))
      {
        v6 = *v4;
        ++v3;
        v7 = *((*v5 & **(*v4 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1D0);
        v8 = *(v4 - 1);
        v9 = v6;
        v7();

        v4 += 2;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

Swift::Void __swiftcall DOCMultiNodeObserver.stopObserving()()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 40);
      v5 = MEMORY[0x277D85000];
      while (v3 < *(v1 + 16))
      {
        v6 = *v4;
        ++v3;
        v7 = *((*v5 & **(*v4 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8);
        v8 = *(v4 - 1);
        v9 = v6;
        v7();

        v4 += 2;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t DOCMultiNodeObserver.scheduleSubscriberCallback()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v16);
  v19 = &v23 - v18;
  if ((*(v0 + 56) & 1) == 0)
  {
    *(v0 + 56) = 1;
    type metadata accessor for OS_dispatch_queue();
    v25 = v6;
    v23 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v24 = *(v11 + 8);
    v24(v15, v10);
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in DOCMultiNodeObserver.scheduleSubscriberCallback();
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_73;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v23;
    MEMORY[0x24C1FB940](v19, v9, v5, v21);
    _Block_release(v21);

    (*(v2 + 8))(v5, v1);
    (*(v26 + 8))(v9, v25);
    return (v24)(v19, v10);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t DOCMultiNodeObserver.performScheduledCallback()()
{
  v1 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56) == 1)
  {
    v7 = *(*(v0 + 32) + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v16 = v2;
      v17 = MEMORY[0x277D84F90];

      specialized ContiguousArray.reserveCapacity(_:)();
      v9 = 40;
      do
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 += 16;
        --v7;
      }

      while (v7);

      v2 = v16;
      v8 = v17;
    }

    (*(*v0 + 144))(v8);
    result = swift_beginAccess();
    v10 = *(v0 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = &v6[*(v1 + 20)];
      v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v14 = *(v2 + 72);

      do
      {
        outlined init with copy of DOCMultiNodeObserver.Subscriber(v13, v6);
        (*v12)(v0);
        outlined destroy of DOCMultiNodeObserver.Subscriber(v6);
        v13 += v14;
        --v11;
      }

      while (v11);
    }

    *(v0 + 56) = 0;
  }

  return result;
}

uint64_t specialized DOCNodeObserver.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_deepObserving) == 1)
  {
    v2 = v1;
    result = (*((*MEMORY[0x277D85000] & *result) + 0x180))();
    if (result)
    {
      v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
      result = swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4 >> 62)
      {
        result = __CocoaSet.count.getter();
        v5 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          return result;
        }
      }

      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {

        swift_beginAccess();
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x24C1FC540](v6, v4);
          }

          else
          {
            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          ++v6;
          v9 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];

          v10 = swift_unknownObjectRetain();
          v9(v10);

          swift_unknownObjectRelease();
        }

        while (v5 != v6);
      }
    }
  }

  return result;
}

uint64_t specialized DOCNodeObserver.nodeCollection(_:didUpdateObservedNode:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_node;
  swift_beginAccess();
  *(v2 + v4) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7 >> 62)
  {
    result = __CocoaSet.count.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {

    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];

      v13 = swift_unknownObjectRetain();
      v12(v13);

      swift_unknownObjectRelease();
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t outlined init with copy of DOCMultiNodeObserver.Subscriber(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DOCMultiNodeObserver.Subscriber(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCMultiNodeObserver.Subscriber(uint64_t a1)
{
  v2 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for DOCNodeObserverSubscriber()
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

unint64_t type metadata completion function for DOCMultiNodeObserver.Subscriber()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

Swift::Void __swiftcall DOCAnalyticsManager.sendConnectToServerShownEvent(_:)(DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  origin = a1->origin;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendItemTaggedEvent(_:)(DocumentManagerExecutables::DOCAnalyticsItemTaggedEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  taggingFlow = a1->taggingFlow;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendActionEvent(_:)(DocumentManagerExecutables::DOCAnalyticsActionEvent *a1)
{
  bundleID = a1->bundleID;
  name = a1->name;
  v4[0] = bundleID;
  *(v4 + 15) = *(&a1->bundleID.value._object + 7);
  specialized DOCAnalyticsManager.sendEvent(_:)(&name, v1);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendAPIAbuseEvent(_:)(DocumentManagerExecutables::DOCAnalyticsAPIAbuseEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  v3[2] = a1->hostIdentifier;
  type = a1->type;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

id static DOCAnalyticsManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DOCAnalyticsManager.shared;

  return v1;
}

id DOCAnalyticsManager.().init()()
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_bundleVersionCache] = MEMORY[0x277D84F98];
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_eventsQueue;
  v9 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v15[0] = "bundleVersionCache";
  v15[1] = v9;
  static DispatchQoS.background.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v17);
  *&v0[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v19, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultCenter];
  [v13 addObserver:v12 selector:sel_tagsDidChangeWithNotification_ name:@"DOCTagEditorTagsDidChangeNotification" object:0];

  return v12;
}

uint64_t closure #1 in DOCAnalyticsManager.sendEvent(_:)(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_eventsQueue];
  outlined init with copy of DOCSidebarItemIconProvider(a2, v21);
  v13 = swift_allocObject();
  outlined init with take of DOCGoToFolderCandidate(v21, v13 + 16);
  *(v13 + 56) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

void closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if (v5)
  {
    v6 = DOCAnalyticsManager.getBundleVersion(for:)(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  outlined init with copy of DOCSidebarItemIconProvider(a1, &aBlock);
  v7 = swift_allocObject();
  outlined init with take of DOCGoToFolderCandidate(&aBlock, v7 + 16);
  *(v7 + 56) = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 8);
  v11 = v6;
  v12 = v10(v8, v9);
  v13 = MEMORY[0x24C1FAD20](v12);

  v34 = partial apply for specialized closure #1 in closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:);
  v35 = v7;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v33 = &block_descriptor_16_1;
  v14 = _Block_copy(&aBlock);

  v15 = AnalyticsSendEventLazy();
  _Block_release(v14);

  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(a1, &aBlock);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315650;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, &v30);
    *(v19 + 12) = 2080;
    v21 = v33;
    v22 = v34;
    __swift_project_boxed_opaque_existential_1(&aBlock, v33);
    v23 = (*(v22 + 1))(v21, v22);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    if (v15)
    {
      v27 = 0x6564656563637573;
    }

    else
    {
      v27 = 0x64656C696166;
    }

    if (v15)
    {
      v28 = 0xE900000000000064;
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v30);

    *(v19 + 24) = v29;
    _os_log_impl(&dword_2493AC000, v17, v18, "%s: Tracking event %s %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }
}

id DOCAnalyticsManager.getBundleVersion(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_eventsQueue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_bundleVersionCache;
  swift_beginAccess();
  v16 = *(v3 + v15);
  if (*(v16 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v18)
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v20 = v19[1];
      if (v20)
      {
        v21 = *v19;
        swift_endAccess();

LABEL_15:
        v27 = MEMORY[0x24C1FAD20](v21, v20);

        return v27;
      }
    }
  }

  swift_endAccess();
  v22 = [objc_opt_self() mainBundle];
  v20 = [v22 infoDictionary];

  if (!v20)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v23 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEF6E6F6973726556), (v25 & 1) == 0))
  {

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v23 + 56) + 32 * v24, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v21 = 0;
    v20 = 0;
    goto LABEL_14;
  }

  v21 = v28[0];
  v20 = v28[1];
LABEL_14:
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v20, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + v15) = v28[0];
  swift_endAccess();
  if (v20)
  {
    goto LABEL_15;
  }

  return [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
}

uint64_t specialized closure #1 in closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = v5();

  if (a2 && v6)
  {
    v7 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0x6556656C646E7562, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  }

  return v6;
}

id DOCAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendSidebarTagSelectedEvent(_:)(DocumentManagerExecutables::DOCAnalyticsSidebarTagSelectedEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  isUserSelection = a1->isUserSelection;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

uint64_t specialized DOCAnalyticsManager.sendEvent(_:)(uint64_t a1, void *a2)
{
  v25[3] = &type metadata for DOCAnalyticsConnectToServerShownEvent;
  v25[4] = &protocol witness table for DOCAnalyticsConnectToServerShownEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  outlined init with copy of DOCAnalyticsConnectToServerShownEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_56_0;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsItemTaggedEvent;
  v25[4] = &protocol witness table for DOCAnalyticsItemTaggedEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  outlined init with copy of DOCAnalyticsItemTaggedEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_46_0;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsActionEvent;
  v25[4] = &protocol witness table for DOCAnalyticsActionEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 47) = *(a1 + 31);
  outlined init with copy of DOCAnalyticsActionEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_36_0;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsAPIAbuseEvent;
  v25[4] = &protocol witness table for DOCAnalyticsAPIAbuseEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  outlined init with copy of DOCAnalyticsAPIAbuseEvent(a1, aBlock);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, aBlock);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v20[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v20);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(aBlock, v22);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v20);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v20, v16 + 24);
  v23 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v24 = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22 = &block_descriptor_26_1;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsSidebarTagSelectedEvent;
  v25[4] = &protocol witness table for DOCAnalyticsSidebarTagSelectedEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  outlined init with copy of DOCAnalyticsSidebarTagSelectedEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = partial apply for closure #1 in DOCAnalyticsManager.sendEvent(_:);
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_74;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t objectdestroy_6Tm_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_3Tm_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t static RevealItemsIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static RevealItemsIntent.attributionBundleIdentifier;

  return v0;
}

uint64_t static RevealItemsIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static RevealItemsIntent.attributionBundleIdentifier = a1;
  off_27EEEC0B0 = a2;
}

uint64_t key path setter for static RevealItemsIntent.attributionBundleIdentifier : RevealItemsIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static RevealItemsIntent.attributionBundleIdentifier = v2;
  off_27EEEC0B0 = v1;
}

uint64_t static RevealItemsIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static RevealItemsIntent.isDiscoverable = a1;
  return result;
}

uint64_t RevealItemsIntent.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

void (*RevealItemsIntent.targets.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static RevealItemsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables17RevealItemsIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables17RevealItemsIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE4180;
  v4._countAndFlagsBits = 0xD000000000000022;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables17RevealItemsIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent()
{
  result = lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent;
  if (!lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent;
  if (!lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent;
  if (!lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent);
  }

  return result;
}

uint64_t RevealItemsIntent.fetchURL(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URL();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](RevealItemsIntent.fetchURL(for:), 0, 0);
}

uint64_t RevealItemsIntent.fetchURL(for:)()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultManager];
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = OpenItemIntent.fetchURL(for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL;
  v0[13] = &block_descriptor_75;
  v0[14] = v4;
  [v3 fetchURLForItem:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t RevealItemsIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for OpenURLIntent();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for FINodeEntity();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](RevealItemsIntent.perform(), 0, 0);
}

uint64_t RevealItemsIntent.perform()()
{
  result = IntentParameter.wrappedValue.getter();
  v2 = v0[2];
  if (*(v2 + 16))
  {
    v3 = v0[20];
    v4 = v0[18];
    v5 = *(v0[19] + 80);
    outlined init with copy of FINodeEntity(v2 + ((v5 + 32) & ~v5), v3);

    v6 = *(v3 + *(v4 + 32));
    v0[21] = v6;
    v7 = v6;
    outlined destroy of FINodeEntity(v3);
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = RevealItemsIntent.perform();
    v9 = v0[17];

    return RevealItemsIntent.fetchURL(for:)(v9, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = RevealItemsIntent.perform();
  }

  else
  {
    v2 = RevealItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[13];
    v7 = v0[14];
    outlined destroy of CharacterSet?(v0[9], &_s10Foundation13URLComponentsVSgMd);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
LABEL_5:

    v19 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[8];
  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  URLComponents.scheme.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v11 = (*(v9 + 48))(v10, 1, v8);
  v12 = v0[21];
  if (v11 == 1)
  {
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    outlined destroy of CharacterSet?(v0[8], &_s10Foundation3URLVSgMd);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v13, v14);
    goto LABEL_5;
  }

  v20 = v0[16];
  v33 = v0[17];
  v21 = v0[14];
  v22 = v0[15];
  v30 = v0[21];
  v23 = v0[13];
  v24 = v0[11];
  v31 = v0[10];
  v32 = v0[12];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[5];
  (*(v21 + 32))(v20);
  (*(v21 + 16))(v22, v20, v23);
  OpenURLIntent.init(_:)();
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type OpenURLIntent and conformance OpenURLIntent, MEMORY[0x277CB9DE0]);
  static IntentResult.result<A>(opensIntent:)();

  (*(v26 + 8))(v25, v27);
  v28 = *(v21 + 8);
  v28(v20, v23);
  (*(v24 + 8))(v32, v31);
  v28(v33, v23);

  v19 = v0[1];
LABEL_7:

  return v19();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance RevealItemsIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static RevealItemsIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance RevealItemsIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return RevealItemsIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance RevealItemsIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RevealItemsIntent.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance RevealItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t specialized RevealItemsIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v35 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v33 = &v30 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v31 = type metadata accessor for LocalizedStringResource();
  v21 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v22);
  v32 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v25(v16, v24, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v16, v24, v12);
  v26 = v33;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v26, 0, 1, v31);
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v35, 1, 1, v27);
  v28(v36, 1, 1, v27);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t specialized RevealItemsIntent.init(targets:)(uint64_t a1)
{
  v40 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v37 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v35 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v33 = v32 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v32[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v32[0] - 8);
  MEMORY[0x28223BE20](v32[0], v23);
  v32[1] = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v14 + 104);
  v26(v17, v25, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v17, v25, v13);
  v27 = v33;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v27, 0, 1, v32[0]);
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v28 = type metadata accessor for IntentDialog();
  v29 = *(*(v28 - 8) + 56);
  v29(v35, 1, 1, v28);
  v29(v36, 1, 1, v28);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  v30 = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v41 = v40;

  IntentParameter.wrappedValue.setter();

  return v30;
}

uint64_t _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DOCAnalyticsSidebarTagSelectedEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getter())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsSidebarTagSelectedEvent(v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getter;
}

unint64_t implicit closure #2 in implicit closure #1 in DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000249BE4420;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  return v1;
}

uint64_t DOCAnalyticsSidebarTagSelectedEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCAnalyticsSidebarTagSelectedEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall DOCAnalyticsSidebarTagSelectedEvent.init(bundleID:isUserSelection:)(DocumentManagerExecutables::DOCAnalyticsSidebarTagSelectedEvent *__return_ptr retstr, Swift::String_optional bundleID, Swift::Bool isUserSelection)
{
  retstr->name._countAndFlagsBits = 0xD000000000000036;
  retstr->name._object = 0x8000000249BE43E0;
  retstr->bundleID = bundleID;
  retstr->isUserSelection = isUserSelection;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsSidebarTagSelectedEvent())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsSidebarTagSelectedEvent(v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getterpartial apply;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsSidebarTagSelectedEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCAnalyticsSidebarTagSelectedEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t outlined destroy of (String, NSObject)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DOCErrorViewController.__allocating_init(configuration:documentManager:actionManager:error:source:location:autoPresentAuthenticationUI:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a5;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = a6;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a4;
  v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = _convertErrorToNSError(_:)();
  v19 = [v18 domain];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

LABEL_11:
      v28 = 0;
      goto LABEL_12;
    }
  }

  v26 = [v18 code];

  if (v26 != -1000)
  {
    goto LABEL_11;
  }

  v27 = *&v16[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_12:
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v28;
  v29 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);

  return v29;
}

void DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = UINavigationItem.doc_allUnderlyingBarButtonItems.getter();
  v8 = v7;
  v46 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalTrailingNavigationBarButtonItems;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems;
  v12 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate];
  swift_beginAccess();
  v44 = v11;
  swift_beginAccess();
  v41 = v12;
  swift_beginAccess();
  if (!v9)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v35 = v6;
  v36 = v3;
  v6 = 0;
  v3 = v8 & 0xC000000000000001;
  v43 = v8 & 0xFFFFFFFFFFFFFF8;
  v37 = v8;
  v42 = v8 + 32;
  v39 = v10;
  v40 = v9;
  v38 = v8 & 0xC000000000000001;
  do
  {
    while (1)
    {
      if (v3)
      {
        v13 = MEMORY[0x24C1FC540](v6, v37);
      }

      else
      {
        if (v6 >= *(v43 + 16))
        {
          goto LABEL_52;
        }

        v13 = *(v42 + 8 * v6);
      }

      v14 = v13;
      v15 = __OFADD__(v6++, 1);
      if (v15)
      {
        goto LABEL_51;
      }

      v45 = *&v2[v10];

      v17 = specialized Array.append<A>(contentsOf:)(v16);
      v8 = &v33;
      v18 = v45;
      v45 = v14;
      MEMORY[0x28223BE20](v17, v19);
      v32[2] = &v45;
      v20 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo15UIBarButtonItemCG_TG5TA_0, v32, v18);

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v6 == v9)
      {
        goto LABEL_34;
      }
    }

    v8 = v41;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v23 = (*(v21 + 56))(ObjectType, v21);
      swift_unknownObjectRelease();
      if (!(v23 >> 62))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_14:
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      }
    }

    v24 = __CocoaSet.count.getter();
    if (v24)
    {
LABEL_15:
      v25 = 0;
      v8 = v23 & 0xFFFFFFFFFFFFFF8;
      v3 = v23 + 32;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C1FC540](v25, v23);
          v15 = __OFADD__(v25++, 1);
          if (v15)
          {
            __break(1u);
            return;
          }

          v34 = v26;
          swift_unknownObjectRelease();
          if (v34 == v14)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            v9 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          if (*(v3 + 8 * v25) == v14)
          {
LABEL_25:

            goto LABEL_31;
          }

          ++v25;
        }
      }

      while (v25 != v24);
    }

LABEL_28:

    type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
    if ([v14 isKindOfClass_])
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

LABEL_31:
    v10 = v39;
    v9 = v40;
    v3 = v38;
  }

  while (v6 != v40);
LABEL_34:
  v27 = v46;
  LODWORD(v3) = v36;
  v6 = v35;
LABEL_36:

  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v28 = __CocoaSet.count.getter();
    if (v28)
    {
LABEL_39:
      v29 = 0;
      v8 = v27 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v30 = MEMORY[0x24C1FC540](v29, v27);
        }

        else
        {
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_50;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v2 = v30;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_49;
        }

        [v30 setEnabled_];

        ++v29;
      }

      while (v31 != v28);
    }
  }

  else
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      goto LABEL_39;
    }
  }
}

id DOCErrorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCErrorViewController.init(configuration:documentManager:actionManager:error:source:location:autoPresentAuthenticationUI:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source) = a5;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location) = a6;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error) = a4;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI) = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = _convertErrorToNSError(_:)();
  v16 = [v15 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {

LABEL_11:
      v25 = 0;
      goto LABEL_12;
    }
  }

  v23 = [v15 code];

  if (v23 != -1000)
  {
    goto LABEL_11;
  }

  v24 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_12:
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction) = v25;
  v26 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);

  return v26;
}

Swift::Void __swiftcall DOCErrorViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 effectiveAppearance];
    if (!v3 || (v4 = v3, v5 = [v3 backgroundColor], v4, !v5))
    {
      v5 = [objc_opt_self() systemBackgroundColor];
    }

    [v2 setBackgroundColor_];

    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:v0 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCErrorViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI;
    v5 = v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI];
    v6 = v3;
    v7 = v6;
    if ((v5 & 1) != 0 || [v6 displayInline])
    {
      v1[v4] = 0;
      v8 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error];
      if ([v7 displayInline])
      {
        embedAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v1, v8, v7);
      }

      else
      {
        presentAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v1, v8, v7);
      }
    }
  }
}

Swift::Void __swiftcall DOCErrorViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  ObjectType = swift_getObjectType();
  if (!toParent)
  {
    DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(1);
  }

  v4.receiver = v1;
  v4.super_class = ObjectType;
  [(UIViewController_optional *)&v4 willMoveToParentViewController:toParent];
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.actionTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.actionTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall DOCErrorViewController.ContentUnavailableInfo.init()(DocumentManagerExecutables::DOCErrorViewController::ContentUnavailableInfo *__return_ptr retstr)
{
  retstr->title._countAndFlagsBits = 0;
  retstr->title._object = 0xE000000000000000;
  retstr->description.value._countAndFlagsBits = 0;
  retstr->description.value._object = 0;
  retstr->actionTitle._countAndFlagsBits = 0;
  retstr->actionTitle._object = 0xE000000000000000;
}

void __swiftcall DOCErrorViewController.ContentUnavailableInfo.init(title:description:actionTitle:)(DocumentManagerExecutables::DOCErrorViewController::ContentUnavailableInfo *__return_ptr retstr, Swift::String title, Swift::String_optional description, Swift::String actionTitle)
{
  retstr->title = title;
  retstr->description = description;
  retstr->actionTitle = actionTitle;
}

uint64_t DOCErrorViewController.contentUnavailableInfoToDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CocoaError.Code();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction);
  if (v9)
  {
    result = [v9 displayInline];
    if (result)
    {
      v11 = 0;
      v12 = 0;
      countAndFlagsBits = 0;
      object = 0;
      v15 = 0uLL;
LABEL_84:
      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v15;
      *(a1 + 32) = countAndFlagsBits;
      *(a1 + 40) = object;
      return result;
    }
  }

  v199 = a1;
  v16 = _convertErrorToNSError(_:)();
  v207 = 0uLL;
  v200 = v16;
  v17 = [v16 domain];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ([v200 code] == -1004)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v24 = result;
      v208._object = 0x8000000249BE44A0;
      v25._object = 0x8000000249BE4480;
      v208._countAndFlagsBits = 0xD000000000000033;
      v25._countAndFlagsBits = 0xD000000000000013;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v208);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_249B9A480;
      v29 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source) displayName];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v28 + 32) = v30;
      *(v28 + 40) = v32;
      v11 = String.init(format:_:)();
      v34 = v33;

      result = _DocumentManagerBundle();
      v35 = v200;
      if (result)
      {
        v36 = result;
        v209._object = 0x8000000249BE4AF0;
        v37._countAndFlagsBits = 0xD00000000000005ALL;
        v37._object = 0x8000000249BE4A90;
        v209._countAndFlagsBits = 0xD00000000000005FLL;
        v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v38.value._object = 0xEB00000000656C62;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v209);

        v207 = v40;
        result = _DocumentManagerBundle();
        if (result)
        {
          v41 = result;
          v210._object = 0x8000000249BE45A0;
          v42._countAndFlagsBits = 0x6961674120797254;
          v210._countAndFlagsBits = 0xD00000000000002ELL;
          v42._object = 0xE90000000000006ELL;
          v43.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v43.value._object = 0xEB00000000656C62;
          v44._countAndFlagsBits = 0;
          v44._object = 0xE000000000000000;
          v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v210);
          countAndFlagsBits = v45._countAndFlagsBits;
          object = v45._object;

LABEL_33:
          a1 = v199;
          v74 = 0x278FB0000;
          v12 = v34;
          goto LABEL_68;
        }

        goto LABEL_94;
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_16:
  v46 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source);
  v47 = *(v46 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v47)
  {
LABEL_28:
    v35 = v200;
    v79 = v200;
    static CocoaError.fileReadNoPermission.getter();
    lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
    v80 = v79;
    LOBYTE(v79) = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v4 + 8))(v8, v3);
    result = _DocumentManagerBundle();
    v81 = result;
    if (v79)
    {
      if (result)
      {
        v213._object = 0x8000000249BE44A0;
        v82._object = 0x8000000249BE4480;
        v213._countAndFlagsBits = 0xD000000000000033;
        v82._countAndFlagsBits = 0xD000000000000013;
        v83.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v83.value._object = 0xEB00000000656C62;
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v213);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_249B9A480;
        v86 = [v46 displayName];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        *(v85 + 56) = MEMORY[0x277D837D0];
        *(v85 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v85 + 32) = v87;
        *(v85 + 40) = v89;
        v11 = String.init(format:_:)();
        v34 = v90;

        result = _DocumentManagerBundle();
        if (result)
        {
          v91 = result;
          v214._object = 0x8000000249BE46C0;
          v92._object = 0x8000000249BE4650;
          v214._countAndFlagsBits = 0xD000000000000063;
          v92._countAndFlagsBits = 0x1000000000000063;
          v93.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v93.value._object = 0xEB00000000656C62;
          v94._countAndFlagsBits = 0;
          v94._object = 0xE000000000000000;
          v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v92, v93, v91, v94, v214);

          v207 = v95;
          result = _DocumentManagerBundle();
          if (result)
          {
            v96 = result;
            v215._object = 0x8000000249BE45A0;
            v97._countAndFlagsBits = 0x6961674120797254;
            v215._countAndFlagsBits = 0xD00000000000002ELL;
            v97._object = 0xE90000000000006ELL;
            v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v98.value._object = 0xEB00000000656C62;
            v99._countAndFlagsBits = 0;
            v99._object = 0xE000000000000000;
            v100 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v96, v99, v215);
            countAndFlagsBits = v100._countAndFlagsBits;
            object = v100._object;

            goto LABEL_33;
          }

          goto LABEL_99;
        }

        goto LABEL_97;
      }

      goto LABEL_95;
    }

    if (!result)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v101.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v216._object = 0x8000000249BE44A0;
    v102._object = 0x8000000249BE4480;
    v216._countAndFlagsBits = 0xD000000000000033;
    v102._countAndFlagsBits = 0xD000000000000013;
    v101.value._object = 0xEB00000000656C62;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v102, v101, v81, v103, v216);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_249B9A480;
    v105 = [v46 displayName];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    *(v104 + 56) = MEMORY[0x277D837D0];
    *(v104 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v104 + 32) = v106;
    *(v104 + 40) = v108;
    v11 = String.init(format:_:)();
    v198 = v109;

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v110 = result;
    v217._object = 0x8000000249BE4530;
    v111._countAndFlagsBits = 0xD000000000000047;
    v111._object = 0x8000000249BE44E0;
    v217._countAndFlagsBits = 0xD000000000000060;
    v74 = 0x617A696C61636F4CLL;
    v112.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v112.value._object = 0xEB00000000656C62;
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    v114 = NSLocalizedString(_:tableName:bundle:value:comment:)(v111, v112, v110, v113, v217);

    v207 = v114;
    if (!DOCIsInternalBuild())
    {
LABEL_60:
      result = _DocumentManagerBundle();
      if (result)
      {
        v140 = result;
        v218._object = 0x8000000249BE45A0;
        v141._countAndFlagsBits = 0x6961674120797254;
        v218._countAndFlagsBits = 0xD00000000000002ELL;
        v141._object = 0xE90000000000006ELL;
        v142.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v142.value._object = 0xEB00000000656C62;
        v143._countAndFlagsBits = 0;
        v143._object = 0xE000000000000000;
        v144 = NSLocalizedString(_:tableName:bundle:value:comment:)(v141, v142, v140, v143, v218);
        countAndFlagsBits = v144._countAndFlagsBits;
        object = v144._object;

        a1 = v199;
        v35 = v200;
        v74 = 0x278FB0000;
LABEL_62:
        v12 = v198;
        goto LABEL_68;
      }

      goto LABEL_100;
    }

    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BE4630);
    v115 = [v80 localizedFailureReason];
    if (v115)
    {
      v116 = v115;
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      *&v205 = 0x3A6572756C696146;
      *(&v205 + 1) = 0xE900000000000020;
      MEMORY[0x24C1FAEA0](v117, v119);
      result = MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
      if (!*(&v207 + 1))
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v120 = v205;

      MEMORY[0x24C1FAEA0](v120, *(&v120 + 1));
    }

    v121 = [v80 localizedDescription];
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    *&v205 = 0;
    *(&v205 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v205, "Description: ");
    HIWORD(v205) = -4864;
    MEMORY[0x24C1FAEA0](v122, v124);
    result = MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
    if (!*(&v207 + 1))
    {
      goto LABEL_102;
    }

    v197 = v124;
    v196 = v11;
    MEMORY[0x24C1FAEA0](v205, *(&v205 + 1));

    if (!*(&v207 + 1))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    MEMORY[0x24C1FAEA0](0x666E492072657355, 0xEB000000000A3A6FLL);
    v125 = [v80 userInfo];
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = 0;
    v127 = 1 << *(v12 + 32);
    v128 = -1;
    if (v127 < 64)
    {
      v128 = ~(-1 << v127);
    }

    v11 = v128 & *(v12 + 64);
    v35 = ((v127 + 63) >> 6);
    if (!v11)
    {
LABEL_46:
      if (v35 <= v126 + 1)
      {
        v130 = (v126 + 1);
      }

      else
      {
        v130 = v35;
      }

      v131 = v130 - 1;
      while (1)
      {
        v129 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v129 >= v35)
        {
          v11 = 0;
          v203 = 0u;
          v204 = 0u;
          v202 = 0u;
          goto LABEL_54;
        }

        v11 = *(v12 + 64 + 8 * v129);
        ++v126;
        if (v11)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

    while (1)
    {
      v129 = v126;
LABEL_53:
      v132 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v133 = v132 | (v129 << 6);
      v134 = (*(v12 + 48) + 16 * v133);
      v136 = *v134;
      v135 = v134[1];
      outlined init with copy of Any(*(v12 + 56) + 32 * v133, v201);
      *&v202 = v136;
      *(&v202 + 1) = v135;
      outlined init with take of Any(v201, &v203);

      v131 = v129;
LABEL_54:
      v205 = v202;
      v206[0] = v203;
      v206[1] = v204;
      v137 = *(&v202 + 1);
      if (!*(&v202 + 1))
      {

        v11 = v196;
        goto LABEL_60;
      }

      v138 = v205;
      outlined init with take of Any(v206, &v202);
      *&v201[0] = 0;
      *(&v201[0] + 1) = 0xE000000000000000;
      MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
      MEMORY[0x24C1FAEA0](v138, v137);
      MEMORY[0x24C1FAEA0](0x27203D2027, 0xE500000000000000);
      _print_unlocked<A, B>(_:_:)();
      result = MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
      if (!*(&v207 + 1))
      {
        break;
      }

      v74 = *(&v201[0] + 1);
      v139 = *&v201[0];

      MEMORY[0x24C1FAEA0](v139, v74);

      __swift_destroy_boxed_opaque_existential_0(&v202);
      v126 = v131;
      if (!v11)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_92;
  }

  v48 = v47;
  v49 = [v200 domain];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  if ([v200 code] != -1000)
  {
    goto LABEL_27;
  }

  v197 = v48;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v55 = result;
  v56.value._object = 0xEB00000000656C62;
  v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v211._object = 0x8000000249BE4750;
  v57._countAndFlagsBits = 0xD000000000000017;
  v57._object = 0x8000000249BE4730;
  v211._countAndFlagsBits = 0xD000000000000061;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v56, v55, v58, v211);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v59 = swift_allocObject();
  v195 = xmmword_249B9A480;
  *(v59 + 16) = xmmword_249B9A480;
  v60 = [v46 displayName];
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = MEMORY[0x277D837D0];
  *(v59 + 56) = MEMORY[0x277D837D0];
  v65 = lazy protocol witness table accessor for type String and conformance String();
  *(v59 + 64) = v65;
  *(v59 + 32) = v61;
  *(v59 + 40) = v63;
  v11 = String.init(format:_:)();
  v198 = v66;

  v67 = v197;
  v68 = [v197 identifier];
  LODWORD(v61) = DOCProviderDomainIDIsExternalDevice();

  v35 = v200;
  if (v61)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v69 = result;
      v212._object = 0x8000000249BE4940;
      v70._countAndFlagsBits = 0xD00000000000003FLL;
      v70._object = 0x8000000249BE4A10;
      v212._countAndFlagsBits = 0xD00000000000008CLL;
      v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v71.value._object = 0xEB00000000656C62;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v212);

      v207 = v73;
      result = _DocumentManagerBundle();
      v74 = 0x278FB0000;
      v12 = v198;
      if (result)
      {
        v75 = result;
        v192 = 0x8000000249BE4A50;
        v76 = 0x6B636F6C6E55;
        v77 = 0xD000000000000036;
        v78 = 0xE600000000000000;
LABEL_67:
        v152.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v152.value._object = 0xEB00000000656C62;
        v153._countAndFlagsBits = 0;
        v153._object = 0xE000000000000000;
        v154 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v76, v152, v75, v153, *&v77);
        countAndFlagsBits = v154._countAndFlagsBits;
        object = v154._object;

        a1 = v199;
        goto LABEL_68;
      }

      goto LABEL_106;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v145 = [objc_opt_self() authenticationActionForProviderDomain_];
  if (v145)
  {

    result = _DocumentManagerBundle();
    v74 = &selRef_setNavigationTitleForTagListInInfoPanel_;
    v12 = v198;
    v146 = 0x617A696C61636F4CLL;
    if (result)
    {
      v147 = result;
      v219._object = 0x8000000249BE4940;
      v148._countAndFlagsBits = 0xD00000000000003BLL;
      v148._object = 0x8000000249BE4900;
      v219._countAndFlagsBits = 0xD00000000000008CLL;
      v149 = 0xEB00000000656C62;
      v150._countAndFlagsBits = 0;
      v150._object = 0xE000000000000000;
      v151 = NSLocalizedString(_:tableName:bundle:value:comment:)(v148, *&v146, v147, v150, v219);

      v207 = v151;
      result = _DocumentManagerBundle();
      if (result)
      {
        v75 = result;
        v192 = 0x8000000249BE49D0;
        v76 = 0x69746E6568747541;
        v78 = 0xEC00000065746163;
        v77 = 0xD00000000000003CLL;
        goto LABEL_67;
      }

      goto LABEL_108;
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  (*((*MEMORY[0x277D85000] & *v46) + 0x138))();
  v74 = 0x278FB0000;
  v12 = v198;
  if (!v169)
  {
LABEL_90:

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    a1 = v199;
LABEL_68:
    v155 = [v35 *(v74 + 2752)];
    v156 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v156 + 16) && (v157 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000249BE45D0), (v158 & 1) != 0))
    {
      outlined init with copy of Any(*(v156 + 56) + 32 * v157, &v205);

      if (swift_dynamicCast())
      {

        v12 = *(&v202 + 1);
        v11 = v202;
      }
    }

    else
    {
    }

    v159 = [v35 *(v74 + 2752)];
    v160 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v160 + 16) && (v161 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x8000000249BE45F0), (v162 & 1) != 0))
    {
      outlined init with copy of Any(*(v160 + 56) + 32 * v161, &v205);

      if (swift_dynamicCast())
      {
        v164 = *(&v202 + 1);
        v163 = v202;

        v207 = __PAIR128__(v164, v163);
        v35 = v200;
      }
    }

    else
    {
    }

    v165 = [v35 *(v74 + 2752)];
    v166 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v166 + 16) && (v167 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x8000000249BE4610), (v168 & 1) != 0))
    {
      outlined init with copy of Any(*(v166 + 56) + 32 * v167, &v205);

      result = swift_dynamicCast();
      if (result)
      {

        object = *(&v202 + 1);
        countAndFlagsBits = v202;
      }
    }

    else
    {
    }

    v15 = v207;
    goto LABEL_84;
  }

  v196 = v11;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v170 = result;
  v220._object = 0x8000000249BE4810;
  v171._countAndFlagsBits = 0xD000000000000049;
  v171._object = 0x8000000249BE47C0;
  v220._countAndFlagsBits = 0xD000000000000095;
  v172.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v172.value._object = 0xEB00000000656C62;
  v173._countAndFlagsBits = 0;
  v173._object = 0xE000000000000000;
  v194 = NSLocalizedString(_:tableName:bundle:value:comment:)(v171, v172, v170, v173, v220)._countAndFlagsBits;

  v174 = swift_allocObject();
  *(v174 + 16) = v195;
  v175 = [v46 displayName];
  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v193 = v177;

  *(v174 + 56) = v64;
  *(v174 + 64) = v65;
  v178 = v193;
  *(v174 + 32) = v176;
  *(v174 + 40) = v178;
  v179 = String.init(format:_:)();
  v181 = v180;

  *&v207 = v179;
  *(&v207 + 1) = v181;
  result = _DocumentManagerBundle();
  if (result)
  {
    v182 = result;
    v221._object = 0x8000000249BE48B0;
    v183._countAndFlagsBits = 0x4025206E65704FLL;
    v221._countAndFlagsBits = 0xD000000000000040;
    v183._object = 0xE700000000000000;
    v184.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v184.value._object = 0xEB00000000656C62;
    v185._countAndFlagsBits = 0;
    v185._object = 0xE000000000000000;
    v194 = NSLocalizedString(_:tableName:bundle:value:comment:)(v183, v184, v182, v185, v221)._countAndFlagsBits;

    v186 = swift_allocObject();
    *(v186 + 16) = v195;
    v187 = [v46 displayName];
    v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v190 = v189;

    *(v186 + 56) = v64;
    *(v186 + 64) = v65;
    *(v186 + 32) = v188;
    *(v186 + 40) = v190;
    countAndFlagsBits = String.init(format:_:)();
    object = v191;

    a1 = v199;
    v74 = 0x278FB0000;
    v11 = v196;
    goto LABEL_62;
  }

LABEL_110:
  __break(1u);
  return result;
}

void closure #1 in DOCErrorViewController.docUpdateContentUnavailableConfiguration(using:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCErrorViewController.performRetryAttempt()();
  }
}

Swift::Void __swiftcall DOCErrorViewController.performRetryAttempt()()
{
  ObjectType = swift_getObjectType();
  v37 = _convertErrorToNSError(_:)();
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v4)
  {
    goto LABEL_6;
  }

  v36 = v4;
  v5 = [v36 identifier];
  v6 = DOCProviderDomainIDIsExternalDevice();

  if (!v6 || (v7 = [objc_opt_self() standardUserDefaults], v8 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BE4B50), v9 = objc_msgSend(v7, sel_BOOLForKey_, v8), v7, v8, !v9))
  {

LABEL_6:
    v11 = [v37 domain];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
LABEL_17:
        v22 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 1);
          v24 = swift_getObjectType();
          v38[3] = ObjectType;
          v38[0] = v0;
          v25 = *(v23 + 8);
          v26 = v0;
          v25(v38, 0, 4, 1, v24, v23);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(v38);
        }

        else
        {
        }

        return;
      }
    }

    if ([v37 code] != -1000)
    {
      goto LABEL_17;
    }

    v18 = *(v2 + v3);
    if (v18)
    {
      v19 = v18;
      v20 = [v19 identifier];
      v21 = DOCProviderDomainIDIsExternalDevice();

      if (v21)
      {
        DOCErrorViewController.displayExternalStorageAuthAlert(for:)(v19);

LABEL_30:
        v10 = v37;
        goto LABEL_31;
      }
    }

    v27 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction];
    if (v27)
    {
      v28 = v27;
      v37 = v37;
      if ([v28 displayInline])
      {
        embedAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v0, v37, v28);
      }

      else
      {
        presentAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v0, v37, v28);
      }
    }

    else
    {
      v29 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        v33 = [objc_opt_self() defaultWorkspace];
        if (!v33)
        {
          __break(1u);
          return;
        }

        v34 = v33;
        v35 = MEMORY[0x24C1FAD20](v31, v32);

        [v34 openApplicationWithBundleID_];
      }
    }

    goto LABEL_30;
  }

  DOCErrorViewController.displayExternalStorageAuthAlert(for:)(v36);

  v10 = v36;
LABEL_31:
}

BOOL DOCErrorViewController.requiresFullBrowserWidth.getter()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v0 code];

  return v9 == -1000;
}

id DOCErrorViewController.displayExternalStorageAuthAlert(for:)(void *a1)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v32._object = 0x8000000249BE4C60;
  v5._object = 0x8000000249BE4C40;
  v32._countAndFlagsBits = 0xD000000000000044;
  v5._countAndFlagsBits = 0xD000000000000015;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v32);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  v33._object = 0x8000000249BE4CE0;
  v10._object = 0x8000000249BE4CB0;
  v33._countAndFlagsBits = 0xD000000000000046;
  v10._countAndFlagsBits = 0x100000000000002CLL;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  v14 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] displayName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v18 = String.init(format:_:)();
  v20 = v19;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = result;
  v34._object = 0x8000000249BE4D30;
  v22._countAndFlagsBits = 0x6B636F6C6E55;
  v34._countAndFlagsBits = 0xD000000000000045;
  v22._object = 0xE600000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v34);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  v28[1] = v8;
  v28[2]._countAndFlagsBits = v18;
  v28[2]._object = v20;
  v28[3]._countAndFlagsBits = partial apply for closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:);
  v28[3]._object = v27;
  v28[4] = v25;
  v28[5]._countAndFlagsBits = v1;
  v29 = a1;

  v30 = v1;
  DOCRunInMainThread(_:)();
}

void embedAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 childViewControllers];
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    return;
  }

  v8 = objc_opt_self();
  v9 = _convertErrorToNSError(_:)();
  v10 = [a3 uiActionProviderIdentifier];
  v11 = [a3 fpProviderDomain];
  v12 = [v11 identifier];

  v13 = [v8 actionControllerForInlineError:v9 providerIdentifier:v10 providerDomainIdentifier:v12];
  v14 = v13;
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = v15;
  [v15 setOpaque_];

  v17 = [v14 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [a1 effectiveAppearance];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 backgroundColor];
  }

  else
  {
    v21 = 0;
  }

  [v18 setBackgroundColor_];

  [v14 setDelegate_];
  v22 = [v14 view];
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = v22;
  v24 = [a1 view];
  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = v24;
  v26 = [v24 tintColor];

  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = [objc_opt_self() _doc_safeTintColor_];

  [v23 setTintColor_];
  v28 = [v14 view];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  [a1 doc:v14 addChildViewController:0 addSubviewBlock:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_249BA0470;
  v31 = [v14 view];
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [a1 view];
  if (!v34)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v35 = v34;
  v36 = [v34 safeAreaLayoutGuide];

  v37 = [v36 topAnchor];
  v38 = [v33 constraintEqualToAnchor_];

  *(v30 + 32) = v38;
  v39 = [v14 view];
  if (!v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = [a1 view];
  if (!v42)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v43 = v42;
  v44 = [v42 safeAreaLayoutGuide];

  v45 = [v44 leadingAnchor];
  v46 = [v41 constraintEqualToAnchor_];

  *(v30 + 40) = v46;
  v47 = [v14 view];
  if (!v47)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [a1 view];
  if (!v50)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v51 = v50;
  v52 = [v50 safeAreaLayoutGuide];

  v53 = [v52 trailingAnchor];
  v54 = [v49 constraintEqualToAnchor_];

  *(v30 + 48) = v54;
  v55 = [v14 view];

  if (!v55)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v56 = [v55 bottomAnchor];

  v57 = [a1 view];
  if (!v57)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v58 = v57;
  v59 = objc_opt_self();
  v60 = [v58 safeAreaLayoutGuide];

  v61 = [v60 bottomAnchor];
  v62 = [v56 constraintEqualToAnchor_];

  *(v30 + 56) = v62;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 activateConstraints_];
}

void presentAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 presentedViewController];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = _convertErrorToNSError(_:)();
    v8 = [a3 uiActionProviderIdentifier];
    v9 = [a3 fpProviderDomain];
    v10 = [v9 identifier];

    v17 = [v6 actionControllerForInlineError:v7 providerIdentifier:v8 providerDomainIdentifier:v10];
    [v17 setDelegate_];
    v11 = [v17 view];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 tintColor];

        if (v15)
        {
          v16 = [objc_opt_self() _doc_safeTintColor_];

          [v12 setTintColor_];
          [a1 presentViewController:v17 animated:1 completion:0];
          v5 = v17;
          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
}

void closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x24C1FAD20](a1, a2);
    v12[4] = partial apply for closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:);
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v12[3] = &block_descriptor_76;
    v11 = _Block_copy(v12);

    [v9 unlockDomain:a4 withPassword:v10 saveToKeychain:1 completionHandler:v11];
    _Block_release(v11);
  }
}

uint64_t closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:);
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19_6;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void closure #1 in closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v7[3] = type metadata accessor for DOCErrorViewController();
      v7[0] = v1;
      v5 = *(v3 + 8);
      v6 = v1;
      v5(v7, 0, 4, 1, ObjectType, v3);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }
}

void DOCErrorViewController.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction);
}

id DOCErrorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCErrorViewController.actionController(_:presentError:completion:)()
{
  v0 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

void specialized DOCErrorViewController.updateOverlay(animated:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems;
  swift_beginAccess();
  v5 = *&v0[v4];
  v6 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 56);
    v10 = v3;

    v11 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v3;

    v11 = MEMORY[0x277D84F90];
  }

  v42 = v5;
  v43 = v3;
  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
LABEL_53:
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  do
  {
    v16 = v15;
    if (v14 == v15)
    {
      break;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1FC540](v15, v11);
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_52;
      }

      v17 = *(v11 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_51;
    }

    v19 = (*((*MEMORY[0x277D85000] & *v17) + 0x98))();

    v15 = v16 + 1;
  }

  while ((v19 & 1) == 0);
  if (![v1 enclosedInUIPDocumentLanding])
  {
    v24 = v43;
    goto LABEL_23;
  }

  v20 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] defaultEffectiveTabIdentifierForLocationRestore];
  v21 = DOCTabIdentifier.tab.getter();
  v23 = v22;

  if (v14 != v16)
  {
    v24 = v43;
    if (v11 >> 62)
    {
      goto LABEL_37;
    }

LABEL_24:
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v42;
    if (v25)
    {
LABEL_25:
      v27 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
      swift_beginAccess();
      v28 = 0;
      v13 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v13)
        {
          v30 = MEMORY[0x24C1FC540](v28, v11);
        }

        else
        {
          if (v28 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v30 = *(v11 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if ([v1 isEditing])
        {
          v29 = v1[v27];
        }

        else
        {
          v29 = 1;
        }

        (*((*MEMORY[0x277D85000] & *v31) + 0x88))(v29);

        ++v28;
        if (v32 == v25)
        {
          v26 = v42;
          v24 = v43;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    goto LABEL_38;
  }

  v24 = v43;
  if ((v23 & 1) != 0 || v21 == 2)
  {
LABEL_23:
    if (v11 >> 62)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  v11 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_24;
  }

LABEL_37:
  v25 = __CocoaSet.count.getter();
  v26 = v42;
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_38:

  v11 = MEMORY[0x277D84F90];
LABEL_39:
  if (v11 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v24 setLeftItemsSupplementBackButton_];
  [v24 setHidesBackButton_];
  if (v11 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

    v35 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v34 = v35;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

    v34 = v11;
  }

  specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v26, v34);

  DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(0);
  v36 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location];
  if (!v36 || (v37 = [v36 displayName]) == 0)
  {
    v37 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] displayName];
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = MEMORY[0x24C1FAD20](v38, v40);

  [v24 setTitle_];
}

void specialized DOCErrorViewController.docUpdateContentUnavailableConfiguration(using:)()
{
  v1 = v0;
  DOCErrorViewController.contentUnavailableInfoToDisplay.getter(&v16);
  v2 = v17;
  if (v17)
  {
    v3 = v16;
    v19 = v18;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v6 = [objc_opt_self() emptyProminentConfiguration];
    v7 = v5;
    v8 = MEMORY[0x24C1FAD20](v3, v2);
    [v6 setText_];

    if (*(&v19 + 1))
    {
      v9 = MEMORY[0x24C1FAD20](v19);
      [v6 setSecondaryText_];
    }

    v10 = v7;
    v11 = [v6 buttonProperties];
    [v11 configurePlain];

    v12 = [v6 buttonProperties];
    [v12 setPrimaryAction_];

    v13 = v6;

    outlined destroy of String?(&v19);

    v14 = [v1 docContentUnavailableConfigurationState];
    v15 = [v13 updatedConfigurationForState_];

    [v1 doc:v15 setContentUnavailableConfiguration:?];
  }

  else
  {

    [v0 doc:0 setContentUnavailableConfiguration:?];
  }
}

void specialized DOCErrorViewController.applicationDidBecomeActive(_:)()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error];
  v20 = _convertErrorToNSError(_:)();
  v3 = [v20 domain];
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

      return;
    }
  }

  v10 = [v20 code];

  if (v10 == -1000)
  {
    v11 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (!v11 || (v12 = v11, v13 = [v12 identifier], v14 = DOCProviderDomainIDIsWebDAV(), v13, v12, (v14 & 1) == 0))
    {
      v15 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        v17 = swift_getObjectType();
        v21[3] = ObjectType;
        v21[0] = v0;
        v18 = *(v16 + 8);
        v19 = v0;
        v18(v21, v2, 0, 1, v17, v16);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v21);
      }
    }
  }
}

void specialized DOCErrorViewController.actionControllerDidFinishAction(_:error:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    v7 = _convertErrorToNSError(_:)();
    *(v6 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v6 + 64) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v6 + 32) = v7;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v8 = ObjectType;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2493AC000, v10, v11, "Action fisnished successfully. Reloading the collection from provider", v12, 2u);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source]) + 0x290))();
    v13 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      v15 = swift_getObjectType();
      v18[3] = v8;
      v18[0] = v2;
      v16 = *(v14 + 8);
      v17 = v2;
      v16(v18, 0, 4, 1, v15, v14);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v18);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of String?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t validateFilename(_:displayingFileExtension:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v9))
  {
    lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
    a1 = swift_allocError();
    *v10 = 2;
  }

  else
  {
    CharacterSet.init(charactersIn:)();
    v14[2] = a1;
    v14[3] = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v11)
    {
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
      a1 = swift_allocError();
      *v12 = 3;
      (*(v5 + 8))(v8, v4);
    }
  }

  return a1;
}

objc_class *DOCRenameViewController.__allocating_init(renamingItem:transitionProxy:initialThumbnail:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v8;
}

char *DOCCreateFolderViewController.__allocating_init(creatingFolderInParentItem:suggestedName:transitionProxy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(a1, a2, a3, a4);

  return v10;
}

uint64_t one-time initialization function for DOCSafeAreaViewDidLayout()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BE5890);
  static NSNotificationName.DOCSafeAreaViewDidLayout = result;
  return result;
}

Swift::Int FilenameValidationError._ProgrammerError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

objc_class *FilenameValidationError.errorDescription.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v2 = result;
          v3 = 0xD000000000000034;
          v13 = 0x8000000249BE4FE0;
          v4 = 0x617A696C61636F4CLL;
          v5 = 0xEB00000000656C62;
          v6 = 0x8000000249BE4F90;
          v7 = 0x1000000000000049;
LABEL_10:
          v8.super.isa = v2;
          v9 = 0;
          v10 = 0xE000000000000000;
LABEL_19:
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, *&v4, v8, *&v9, *&v3)._countAndFlagsBits;

          return countAndFlagsBits;
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v2 = result;
    v12 = "ot change after rename";
    v13 = 0x8000000249BE4F50;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v7 = 0x1000000000000083;
LABEL_18:
    v6 = v12 | 0x8000000000000000;
    v8.super.isa = v2;
    v9 = 0;
    v10 = 0xE000000000000000;
    v3 = 0xD000000000000036;
    goto LABEL_19;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v2 = result;
        v7 = 0xD00000000000001BLL;
        v3 = 0xD00000000000002DLL;
        v13 = 0x8000000249BE4E30;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 0x8000000249BE4E10;
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_11:
    if (a1)
    {
      return 0xD00000000000003DLL;
    }

    else
    {
      return 0xD000000000000042;
    }
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v12 = "n renaming has been cancelled";
    v7 = 0xD000000000000018;
    v13 = 0x8000000249BE4E80;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

double DOCInsetTextField.textRect(forBounds:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 clearButtonRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 traitCollection];
  v18 = [v17 layoutDirection];

  if (v18 == 1)
  {
    v26.origin.x = v10;
    v26.origin.y = v12;
    v26.size.width = v14;
    v26.size.height = v16;
    Width = CGRectGetWidth(v26);
    v20 = a4;
    v21 = v10 + v10 + Width;
  }

  else
  {
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    v24 = a4;
    v22 = CGRectGetWidth(v27);
    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v21 = v22 - CGRectGetMaxX(v28);
    v29.origin.x = v10;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    CGRectGetWidth(v29);
    v20 = v24;
  }

  return UIEdgeInsetsInsetRect(a1, a2, a3, v20, 0.0, v21);
}

char *DOCSafeAreaView.init(safeAreaView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint] = 0;
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeAreaView] = a1;
  v5 = a1;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v33.receiver = objc_msgSendSuper2(&v34, sel_initWithEffect_, 0);
  v33.super_class = ObjectType;
  v6 = v33.receiver;
  v7 = objc_msgSendSuper2(&v33, sel_contentView);
  [v7 addSubview_];
  v8 = [v7 bottomAnchor];
  v9 = [v5 bottomAnchor];
  [v6 safeAreaInsets];
  v11 = [v8 constraintEqualToAnchor:v9 constant:v10];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA0470;
  v13 = [v7 safeAreaLayoutGuide];
  v14 = [v13 leadingAnchor];

  v15 = [v5 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v12 + 32) = v16;
  v17 = [v5 trailingAnchor];
  v18 = [v7 safeAreaLayoutGuide];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v12 + 40) = v20;
  v21 = [v7 safeAreaLayoutGuide];
  v22 = [v21 topAnchor];

  v23 = [v5 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 48) = v24;
  *(v12 + 56) = v11;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v25 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints_];

  v27 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint] = v25;
  v28 = v25;

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = specialized static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:)(partial apply for closure #1 in DOCSafeAreaView.init(safeAreaView:), v29, partial apply for closure #1 in DOCSafeAreaView.init(safeAreaView:), v29);

  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations] = v30;

  return v6;
}

void closure #1 in DOCSafeAreaView.init(safeAreaView:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCSafeAreaView.handleKeyboardNotification(_:)();
  }
}

uint64_t DOCSafeAreaView.handleKeyboardNotification(_:)()
{
  v1 = v0;
  result = specialized Sequence<>.contains(_:)(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState), &outlined read-only object #0 of DOCSafeAreaView.handleKeyboardNotification(_:));
  if (result)
  {
    v3 = Notification.userInfo.getter();
    if (v3)
    {
      v4 = v3;
      *&v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v9 + 1) = v5;
      AnyHashable.init<A>(_:)();
      if (*(v4 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v7 & 1) != 0))
      {
        outlined init with copy of Any(*(v4 + 56) + 32 * v6, v12);
        outlined destroy of AnyHashable(v11);

        type metadata accessor for CGRect(0);
        if (swift_dynamicCast())
        {
          v8 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame;
          *v8 = v9;
          *(v8 + 16) = v10;
          *(v8 + 32) = 0;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v11);
      }
    }

    return DOCSafeAreaView.updateLayout()();
  }

  return result;
}

id DOCSafeAreaView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations;
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations];
  if (v1 >> 62)
  {
LABEL_15:
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      v6 = [objc_opt_self() defaultCenter];
      [v6 removeObserver_];
      swift_unknownObjectRelease();

      ++v3;
    }

    while (v5 != v2);
  }

  *&v0[v8] = MEMORY[0x277D84F90];

  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t DOCSafeAreaView.updateLayout()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCSafeAreaView.updateSafeBottomConstraint()();
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState) == 1)
  {
    [v0 layoutIfNeeded];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCSafeAreaView.updateLayout();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_190_0;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

id DOCSafeAreaView.updateSafeBottomConstraint()()
{
  [v0 safeAreaInsets];
  v2 = v1;
  Height = 0.0;
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 32] & 1) == 0)
  {
    [v0 convertRect:0 fromView:{*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame], *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 8], *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 16], *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 24]}];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v0 bounds];
    v32.origin.x = v12;
    v32.origin.y = v13;
    v32.size.width = v14;
    v32.size.height = v15;
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v29 = CGRectIntersection(v28, v32);
    Height = CGRectGetHeight(v29);
    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 bundleIdentifier];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          [v0 bounds];
          Width = CGRectGetWidth(v30);
          [v0 bounds];
          if (Width < CGRectGetHeight(v31))
          {
            Height = Height + 40.0;
          }
        }
      }
    }
  }

  result = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint];
  if (result)
  {
    if (v2 > Height)
    {
      v26 = v2;
    }

    else
    {
      v26 = Height;
    }

    return [result setConstant_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCSafeAreaView.updateLayout()(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (one-time initialization token for DOCSafeAreaViewDidLayout != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:static NSNotificationName.DOCSafeAreaViewDidLayout object:a1];
}

void DOCAspectImageView.updateAspectRatioConstraint()()
{
  v1 = [v0 image];
  if (v1 && (v2 = v1, [v1 size], v4 = v3, objc_msgSend(v2, sel_size), v6 = v5, v2, v6 != 0.0))
  {
    v7 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    v9 = v4 / v6;
    if (!v8)
    {
LABEL_14:
      v13 = [v0 widthAnchor];
      v14 = [v0 heightAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 multiplier:v9];

      [v15 setActive_];
      v12 = *v7;
      *v7 = v15;
      goto LABEL_15;
    }

    v10 = 0;
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    if (!v8)
    {
      return;
    }

    v9 = 0.0;
    v10 = 1;
  }

  [v8 multiplier];
  if ((v10 & 1) == 0 && v11 == v9)
  {
    return;
  }

  if (*v7)
  {
    [v0 removeConstraint_];
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = *v7;
  *v7 = 0;
LABEL_15:
}

void DOCRenameThumbnailView.recalculateThumbnail()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    if (one-time initialization token for displayScale != -1)
    {
      swift_once();
    }

    v4 = v0;
    v30 = static UITraitCollection.Traits.displayScale;
    v31 = qword_27EEE9C90;
    v5 = one-time initialization token for userInterfaceStyle;

    if (v5 != -1)
    {
      swift_once();
    }

    v32 = static UITraitCollection.Traits.userInterfaceStyle;
    v33 = qword_27EEE9CA8;

    _StringGuts.grow(_:)(18);

    *v27 = 0x6172287469617254;
    *&v27[8] = 0xEF3A65756C615677;
    v29[0] = 0;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v6);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v7 = *v27;
    *v27 = 0;
    *&v27[8] = v7;

    specialized OptionSet<>.insert(_:)(v29, v30, *(&v30 + 1), v31);

    v9 = *(&v32 + 1);
    v8 = v33;
    v10 = v32;

    specialized OptionSet<>.insert(_:)(v29, v10, v9, v8);

    swift_arrayDestroy();
    v11 = UITraitCollection.doc_hasSpecified(_:)(v27);

    if (v11)
    {
      v12 = [v4 traitCollection];
      v13 = [v12 userInterfaceStyle];

      if (v13 >= 3)
      {
        type metadata accessor for UIUserInterfaceStyle(0);
        v28 = v16;
        *v27 = v13;
        doc_warnUnrecognizedEnumValueEncountered(_:)(v27);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v14 = 1;
      }

      else
      {
        v14 = qword_249BAD7B0[v13];
      }

      v17 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_maxThumbnailSize];
      v18 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_maxThumbnailSize + 8];
      v19 = [v4 traitCollection];
      [v19 displayScale];
      v21 = v20;

      v22 = [v2 isFolder];
      v23 = [objc_allocWithZone(MEMORY[0x277D063C0]) initWithSize:v14 scale:1 style:0 isFolded:v22 isInteractive:v17 isFolder:{v18, v21}];
      v24 = [objc_opt_self() sharedGenerator];
      v25 = [v24 thumbnailForNode:v2 descriptor:v23];

      v26 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail];
      *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail] = v25;
      swift_unknownObjectRetain();
      DOCRenameThumbnailView.fullSizeThumbnail.didset(v26);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v15 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail] = 0;
    DOCRenameThumbnailView.fullSizeThumbnail.didset(v15);

    swift_unknownObjectRelease();
  }
}

void *DOCRenameThumbnailView.addDecoration.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail);
  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail))
  {
    v3 = *v2;
    if (*v2)
    {
      if (![swift_unknownObjectRetain() isLoading])
      {
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    v3 = *v1;
    if (!*v1)
    {
      return 0;
    }
  }

  else
  {
    v3 = *v2;
    if (!*v2)
    {
      return 0;
    }
  }

  swift_unknownObjectRetain();
LABEL_9:
  v4 = [v3 isRepresentativeIcon];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item);
  if (result)
  {
    return ([result isFolder] ^ 1);
  }

  return result;
}

objc_class *DOCRenameThumbnailView.fullSizeThumbnail.didset(void *a1)
{
  result = swift_getObjectType();
  v4 = result;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail;
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail];
  if (a1)
  {
    if (v6 == a1)
    {
      return result;
    }

    v7 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail];
    if (!*&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail])
    {
LABEL_10:
      if (!v6)
      {
        v8 = 0;
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (!v6)
    {
      v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail];
LABEL_11:
      swift_unknownObjectRetain();
      goto LABEL_12;
    }
  }

  else
  {
    if (!v6)
    {
      return result;
    }

    v7 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail];
    if (!*&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail])
    {
      goto LABEL_11;
    }
  }

  if ([swift_unknownObjectRetain() isLoading])
  {
    swift_unknownObjectRelease();
    v6 = *v7;
    goto LABEL_10;
  }

LABEL_12:
  v8 = [v6 thumbnail];
  swift_unknownObjectRelease();
LABEL_13:
  v10.receiver = v1;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, sel_setImage_, v8);
  v9 = DOCRenameThumbnailView.addDecoration.getter();
  specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(v1, v9 & 1);

  if (a1)
  {
    [a1 removeListener_];
  }

  result = *&v1[v5];
  if (result)
  {
    return [(objc_class *)result addListener:v1];
  }

  return result;
}

id DOCRenameThumbnailView.init(item:initialThumbnail:maxThumbnailSize:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item] = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail] = 0;
  *&v5[v11] = a1;
  *&v5[v12] = a2;
  v13 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_maxThumbnailSize];
  *v13 = a3;
  v13[1] = a4;
  v14 = a1;
  if (a2)
  {
    v15 = [swift_unknownObjectRetain() thumbnail];
  }

  else
  {
    v15 = 0;
  }

  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, sel_initWithImage_, v15);

  v17 = v16;
  [v17 setContentMode_];
  [v17 setAccessibilityIgnoresInvertColors_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249B9FA70;
  v19 = type metadata accessor for UITraitDisplayScale();
  v20 = MEMORY[0x277D74B68];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = type metadata accessor for UITraitUserInterfaceStyle();
  v22 = MEMORY[0x277D74BF0];
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

void closure #1 in DOCRenameThumbnailView.thumbnailLoaded(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail);
    if (v5)
    {
      v6 = v5 == a2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail;
      v8 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail);
      swift_unknownObjectRetain();
      if (v8 && [v5 isLoading] && (swift_unknownObjectRelease(), v5 = *&v4[v7], swift_unknownObjectRetain(), !v5))
      {
        v9 = 0;
      }

      else
      {
        v9 = [v5 thumbnail];
        swift_unknownObjectRelease();
      }

      v11.receiver = v4;
      v11.super_class = type metadata accessor for DOCRenameThumbnailView();
      objc_msgSendSuper2(&v11, sel_setImage_, v9);
      v10 = DOCRenameThumbnailView.addDecoration.getter();
      specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(v4, v10 & 1);

      v4 = v9;
    }
  }
}

uint64_t DOCRenameThumbnailView.__ivar_destroyer()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id DOCFolderThumbnailView.thumbnail.didset(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail;
  result = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail];
  if (!a1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result == a1)
  {
    return result;
  }

  if (result)
  {
LABEL_6:
    v5 = [result thumbnail];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  [v1 setImage_];

  if (a1)
  {
    [a1 removeListener_];
  }

  result = *&v1[v3];
  if (result)
  {

    return [result addListener_];
  }

  return result;
}

id DOCFolderThumbnailView.init(item:maxThumbnailSize:)(void *a1, double a2, double a3)
{
  swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail] = 0;
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_maxThumbnailSize];
  *v7 = a2;
  v7[1] = a3;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_item] = a1;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for DOCFolderThumbnailView();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v16, sel_initWithImage_, 0);
  [v9 setContentMode_];
  [v9 setAccessibilityIgnoresInvertColors_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9FA70;
  v11 = type metadata accessor for UITraitDisplayScale();
  v12 = MEMORY[0x277D74B68];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = type metadata accessor for UITraitUserInterfaceStyle();
  v14 = MEMORY[0x277D74BF0];
  *(v10 + 48) = v13;
  *(v10 + 56) = v14;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v9;
}