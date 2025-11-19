uint64_t *specialized Slice._copyContents(initializing:)(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
LABEL_17:
    v17 = a4;
LABEL_20:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v17;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v18 = a3;
    v19 = result;
    v9 = 0;
    v10 = a6 & 0xC000000000000001;
    v11 = a6 & 0xFFFFFFFFFFFFFF8;
    v12 = a4 - a5;
    v13 = a3 - 1;
    v20 = a6;
    v14 = a6 + 8 * a4 + 24;
    v15 = 1;
    while (1)
    {
      if (!(v12 + v9))
      {
        v17 = a5;
        a3 = a4 - a5;
        result = v19;
        a6 = v20;
        goto LABEL_20;
      }

      if (a4 + v9 <= a5)
      {
        break;
      }

      result = (a4 + v9 - 1);
      if (v10)
      {
        result = MEMORY[0x24C1FC540](result, v20);
      }

      else
      {
        if (a4 + v9 < 1)
        {
          goto LABEL_22;
        }

        if (result >= *(v11 + 16))
        {
          goto LABEL_23;
        }

        result = *(v14 + 8 * v9);
      }

      *v8 = result;
      if (!(v13 + v9))
      {
        v17 = a4 + v9 - 1;
        result = v19;
        a6 = v20;
        a3 = v18;
        goto LABEL_20;
      }

      ++v8;
      --v9;
      if (__OFADD__(v15++, 1))
      {
        goto LABEL_24;
      }
    }

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

uint64_t specialized Collection.dropLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

void specialized DOCColumnViewController.resignFocusOfContainers(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v43 = &v39 - v8;
  v44 = a1;
  if (a1 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v11 = v44 & 0xC000000000000001;
    v12 = MEMORY[0x277D85000];
    v13 = &selRef_initWithFrame_;
    v40 = v44 & 0xC000000000000001;
    v41 = v9;
    do
    {
      if (v11)
      {
        v14 = MEMORY[0x24C1FC540](v10, v44, v7);
      }

      else
      {
        v14 = *(v44 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = *((*v12 & *v14) + 0xE8);
      v17 = v16();
      if (v17)
      {
        v18 = v17;
        type metadata accessor for DOCItemCollectionViewController(0);
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = 0;
      }

      [v19 v13[298]];

      v20 = v16();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for DOCItemCollectionViewController(0);
        v22 = swift_dynamicCastClass();
        v12 = MEMORY[0x277D85000];
        if (v22)
        {
          v23 = (*((*MEMORY[0x277D85000] & *v22) + 0x1010))();

          v24 = type metadata accessor for IndexPath();
          v25 = v43;
          v26 = (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
          v27 = *((*v12 & *v23) + 0xF0);
          v28 = (v27)(v26);
          v29 = v42;
          outlined init with copy of DOCGridLayout.Spec?(v25, v42, &_s10Foundation9IndexPathVSgMd);
          (*(*v28 + 112))(v29);

          v30 = outlined destroy of CharacterSet?(v25, &_s10Foundation9IndexPathVSgMd);
          v31 = (v27)(v30);
          LOBYTE(v25) = (*(*v31 + 152))(v31);

          if (v25)
          {
            v12 = MEMORY[0x277D85000];
            if ((*((*MEMORY[0x277D85000] & *v23) + 0xD8))(v32))
            {
              v34 = v33;
              ObjectType = swift_getObjectType();
              v36 = v27();
              v37 = v43;
              (*(*v36 + 104))(v36);

              v38 = ObjectType;
              v12 = MEMORY[0x277D85000];
              (*(v34 + 16))(v23, &protocol witness table for DOCItemCollectionView, v37, v38, v34);

              swift_unknownObjectRelease();
              outlined destroy of CharacterSet?(v37, &_s10Foundation9IndexPathVSgMd);
            }

            else
            {
            }

            v11 = v40;
            v9 = v41;
          }

          else
          {

            v11 = v40;
            v9 = v41;
            v12 = MEMORY[0x277D85000];
          }

          v13 = &selRef_initWithFrame_;
        }

        else
        {
        }
      }

      else
      {

        v12 = MEMORY[0x277D85000];
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = __CocoaSet.count.getter();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = __CocoaSet.count.getter();
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = __CocoaSet.count.getter();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for DOCBrowserContainerController();

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

char *specialized DOCColumnViewController.init(configuration:)(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCColumnViewController_containerControllers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCColumnViewController_additionalLeadingNavigationBarButtonItems] = v3;
  *&v1[OBJC_IVAR___DOCColumnViewController_additionalTrailingNavigationBarButtonItems] = v3;
  *&v1[OBJC_IVAR___DOCColumnViewController_diffableDataSource] = 0;
  v1[OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot] = 0;
  *&v1[OBJC_IVAR___DOCColumnViewController_columnViewSpecs] = 0;
  v4 = OBJC_IVAR___DOCColumnViewController_pendingScrollToItem;
  v5 = type metadata accessor for ScrollToItem(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR___DOCColumnViewController_activeScrollToItemContext;
  active = type metadata accessor for ActiveScrollItemContext(0);
  (*(*(active - 8) + 56))(&v1[v6], 1, 1, active);
  *&v1[OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController] = 0;
  v1[OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator] = 0;
  *&v1[OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator] = 0;
  *&v1[OBJC_IVAR___DOCColumnViewController_configuration] = a1;
  v8 = objc_allocWithZone(type metadata accessor for DOCColumnLayout());
  v9 = a1;
  v10 = [v8 init];
  [v10 setScrollDirection_];
  [v10 setMinimumLineSpacing_];
  [v10 setMinimumInteritemSpacing_];
  v27.receiver = v1;
  v27.super_class = type metadata accessor for DOCColumnViewController(0);
  v11 = objc_msgSendSuper2(&v27, sel_initWithCollectionViewLayout_, v10);
  v12 = DOCColumnViewController.notificationsController.getter();
  if (one-time initialization token for DOCItemCollectionViewDidLoadContents != -1)
  {
    swift_once();
  }

  v13 = static NSNotificationName.DOCItemCollectionViewDidLoadContents;
  v14 = objc_opt_self();
  v15 = [v14 mainQueue];
  (*(*v12 + 152))(v13, &v26, v15, closure #1 in DOCColumnViewController.init(configuration:), 0);

  outlined destroy of CharacterSet?(&v26, &_sypSgMd);
  v16 = OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController;
  v17 = *&v11[OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController];
  v18 = one-time initialization token for DOCItemCollectionViewDidLayoutSubviews;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews;
  v20 = [v14 mainQueue];
  (*(*v17 + 152))(v19, &v26, v20, closure #2 in DOCColumnViewController.init(configuration:), 0);

  outlined destroy of CharacterSet?(&v26, &_sypSgMd);
  v21 = *&v11[v16];
  v22 = one-time initialization token for DOCItemCollectionViewDidUpdateContents;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static NSNotificationName.DOCItemCollectionViewDidUpdateContents;
  v24 = [v14 mainQueue];
  (*(*v21 + 152))(v23, &v26, v24, closure #3 in DOCColumnViewController.init(configuration:), 0);

  outlined destroy of CharacterSet?(&v26, &_sypSgMd);
  return v11;
}

void specialized DOCColumnViewController.init(coder:)()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___DOCColumnViewController_containerControllers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___DOCColumnViewController_additionalLeadingNavigationBarButtonItems) = v1;
  *(v0 + OBJC_IVAR___DOCColumnViewController_additionalTrailingNavigationBarButtonItems) = v1;
  *(v0 + OBJC_IVAR___DOCColumnViewController_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_columnViewSpecs) = 0;
  v2 = OBJC_IVAR___DOCColumnViewController_pendingScrollToItem;
  v3 = type metadata accessor for ScrollToItem(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR___DOCColumnViewController_activeScrollToItemContext;
  active = type metadata accessor for ActiveScrollItemContext(0);
  (*(*(active - 8) + 56))(v0 + v4, 1, 1, active);
  *(v0 + OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCColumnViewController.collectionView(_:willDisplay:forItemAt:)(void *a1)
{
  v3 = IndexPath.item.getter();
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v3 == v6 - 1)
  {
    DOCColumnViewController.updateContainerNavigationItem()();
  }

  type metadata accessor for DOCColumnViewCell();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = a1;
  DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:)(v8);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v11 = *&v8[v10];
  if (v11)
  {
    v12 = *((*v4 & *v11) + 0xE8);
    v13 = v11;
    v14 = v12();

    if (v14)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *((*v4 & *v15) + 0xBE0);
        v17 = v14;
        v16(3);
      }

      if (_UISolariumEnabled())
      {
        [v14 beginAppearanceTransition:1 animated:0];
        [v14 endAppearanceTransition];
      }
    }

    v18 = *&v8[v10];
    if (v18)
    {
      [v18 _doc_ipi_updateContentOverlayInsetsForSelfAndChildren];
    }
  }

  DOCColumnViewCell.updatePreferredFocusCell(_:)(0);
}

void specialized DOCColumnViewController.collectionView(_:didEndDisplaying:forItemAt:)(void *a1)
{
  type metadata accessor for DOCColumnViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (v5)
    {
      v6 = a1;
      v7 = v5;
      v8 = DOCColumnViewCell.isBrowserContainerControllerStillOwnedByUs(_:)(v7);

      if (v8)
      {
        v9 = *(v3 + v4);
        if (v9)
        {
          v10 = *((*MEMORY[0x277D85000] & *v9) + 0x240);
          v11 = v9;
          v10(0);
        }
      }
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void type metadata completion function for DOCColumnViewController()
{
  type metadata accessor for ScrollToItem?(319, &lazy cache variable for type metadata for ScrollToItem?, type metadata accessor for ScrollToItem);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScrollToItem?(319, &lazy cache variable for type metadata for ActiveScrollItemContext?, type metadata accessor for ActiveScrollItemContext);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ScrollToItem?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for ActiveScrollItemContext()
{
  result = type metadata accessor for ScrollToItem(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DOCColumnViewControllerCollectionView();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ScrollToItem()
{
  type metadata accessor for IndexPath();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t outlined init with copy of ScrollToItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ScrollToItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ActiveScrollItemContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:)()
{
  v1 = *(type metadata accessor for ScrollToItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:)(v3, v0 + v2, v4);
}

uint64_t _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1, type metadata accessor for DOCBrowserContainerController) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1, type metadata accessor for DOCItemCollectionViewController) & 1;
}

DocumentManagerExecutables::DOCUSBRenamingErrorCode_optional __swiftcall DOCUSBRenamingErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DOCUSBRenamingErrorCode.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCUSBRenamingErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCUSBRenamingErrorCode()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x24C1FCBD0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUSBRenamingErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCUSBRenamingErrorCode@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCUSBRenamingErrorCode(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t DOCUSBRenameOperation_StorageKit.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(27);

  v2 = [*(v0 + 16) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x24C1FAEA0](v3, v5);

  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BE83D0);
  MEMORY[0x24C1FAEA0](*(v1 + 24), *(v1 + 32));
  return 0x3D656372756F73;
}

void DOCUSBRenameOperation_StorageKit.perform()()
{
  v1 = v0;
  v2 = [*(v0 + 16) identifier];
  v3 = objc_opt_self();

  v4 = [v3 sharedManager];
  if (v4)
  {
    v5 = v4;
    v6 = specialized SKManager.doc_disk(forDomainIdentifier:)(v2);

    if (v6)
    {
      v7 = specialized DOCUSBRenameOperation_StorageKit.trimInvalidCharacters(proposedName:disk:)(v1[3], v1[4], v6);
      v8 = MEMORY[0x24C1FAD20](v7);

      v23 = partial apply for closure #1 in DOCUSBRenameOperation_StorageKit.perform();
      v24 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v22 = &block_descriptor_22_4;
      v9 = _Block_copy(&aBlock);

      [v6 rename:v8 withCompletionBlock:v9];
      _Block_release(v9);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v11;
      aBlock = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x24C1FAEA0](0xD000000000000036, 0x8000000249BE83F0);
      v25 = v2;
      type metadata accessor for FPProviderDomainID(0);
      _print_unlocked<A, B>(_:_:)();
      *(inited + 48) = 0;
      *(inited + 56) = 0xE000000000000000;
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, String)(inited + 32);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

      v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v14 = MEMORY[0x24C1FAD20](0xD00000000000002BLL, 0x8000000249BFABF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = [v13 initWithDomain:v14 code:1 userInfo:isa];

      v17 = v1[5];
      if (v17)
      {
        outlined copy of (@escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed Error) -> ())?(v1[5], v1[6]);
        v18 = v16;
        v17(0, v16);

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCUSBRenameOperation_StorageKit.perform()(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.Rename);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x286D726F66726570, 0xE900000000000029, &v24);
      *(v9 + 12) = 2080;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_2493AC000, v7, v8, "%s: Rename failed with error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    v15 = *(a2 + 40);
    if (v15)
    {
      v16 = *(a2 + 48);
      v17 = a1;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed Error) -> ())?(v15, v16);
      v15(0, a1);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v15);
    }
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.Rename);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x286D726F66726570, 0xE900000000000029, &v24);
      _os_log_impl(&dword_2493AC000, v19, v20, "%s: Rename completed on disk", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v23 = *(a2 + 40);
    if (v23)
    {

      v23(0, 0);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v23);
    }
  }
}

uint64_t DOCUSBRenameOperation_StorageKit.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t DOCUSBRenaming.__allocating_init()()
{
  v0 = swift_allocObject();
  DOCUSBRenaming.init()();
  return v0;
}

uint64_t static DOCUSBRenaming.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t DOCUSBRenaming.canRename.getter()
{
  v0 = [objc_opt_self() usbRenameErase];
  v1 = [v0 isEnabled];

  if (v1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = (*(*static DOCUSBFormatting.shared + 128))() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v42 = *(v19 - 8);
  v43 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCUSBRenameOperation_StorageKit();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v24 = swift_allocObject();
  v24[2] = v8;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = a6;
  v24[7] = a7;
  v23[5] = partial apply for closure #1 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:);
  v23[6] = v24;
  swift_bridgeObjectRetain_n();
  v25 = a1;

  v26 = a4;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.Rename);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000068, 0x8000000249BFAC20, aBlock);
    *(v30 + 12) = 2080;

    v32 = DOCUSBRenameOperation_StorageKit.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, aBlock);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_2493AC000, v28, v29, "%s: Adding USB Rename Operation %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

  v36 = *(v8 + 16);
  aBlock[4] = partial apply for closure #2 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_152;
  v37 = _Block_copy(aBlock);

  v38 = v36;
  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v39 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v22, v18, v37);
  _Block_release(v37);

  (*(v44 + 8))(v18, v39);
  (*(v42 + 8))(v22, v43);
}

uint64_t closure #1 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a7;
  v15[8] = a8;
  v16 = a2;

  v17 = a6;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(id))
{
  if (a1)
  {
    v11 = a1;
    v12 = _convertErrorToNSError(_:)();
    v13 = specialized DOCUSBRenaming.createInvalidNameError(newName:underlyingError:)(a3, a4, v12);

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a5;
    v15 = v13;
    v16 = a5;
    DOCRunInMainThread(_:)();
  }

  return a6(a1);
}

uint64_t DOCUSBRenaming.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCUSBRenaming.init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v0, v1);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v12[1] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v12[0];
  *(v12[0] + 16) = v9;
  return v10;
}

unint64_t lazy protocol witness table accessor for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode()
{
  result = lazy protocol witness table cache variable for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode;
  if (!lazy protocol witness table cache variable for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode);
  }

  return result;
}

uint64_t specialized DOCUSBRenameOperation_StorageKit.trimInvalidCharacters(proposedName:disk:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 filesystemType];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v16)
    {
      if (v17 == v14 && v16 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v14 || v16 != v21)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_15;
        }
      }

      v24[0] = a1;
      v24[1] = a2;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      a1 = StringProtocol.trimmingCharacters(in:)();
      (*(v7 + 8))(v11, v6);
      return a1;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_15:

  return a1;
}

id specialized DOCUSBRenaming.createInvalidNameError(newName:underlyingError:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v47._object = 0x8000000249BFADA0;
  v8._object = 0x8000000249BFAD70;
  v47._countAndFlagsBits = 0xD000000000000042;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = static String.localizedStringWithFormat(_:_:)();
  v43 = v13;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  v48._object = 0x8000000249BFAE40;
  v15._countAndFlagsBits = 0xD000000000000045;
  v15._object = 0x8000000249BFADF0;
  v48._countAndFlagsBits = 0xD000000000000045;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v48);

  _StringGuts.grow(_:)(59);
  MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BFAE90);
  MEMORY[0x24C1FAEA0](a1, a2);
  MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BFAEC0);
  *&v44[0] = a3;
  v42 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd);
  v19 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v19);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = MEMORY[0x277D837D0];
  v46 = MEMORY[0x277D837D0];
  v45._countAndFlagsBits = v12;
  v45._object = v43;
  outlined init with take of Any(&v45, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v20, v22, isUniquelyReferenced_nonNull_native);

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v46 = v23;
  v45 = v18;
  outlined init with take of Any(&v45, v44);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v25, v27, v28);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v46 = v23;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  outlined init with take of Any(&v45, v44);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v29, v31, v32);

  if (a3)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v46 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    v45._countAndFlagsBits = v42;
    outlined init with take of Any(&v45, v44);
    v36 = v42;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v33, v35, v37);
  }

  v38 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v39 = MEMORY[0x24C1FAD20](0xD00000000000002BLL, 0x8000000249BFABF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = [v38 initWithDomain:v39 code:2 userInfo:isa];

  return v41;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

id DOCItemGroupingBehavior.localizedName.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 > 2u)
    {
      if (v1 == 3)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }

      goto LABEL_16;
    }

    if (v1 >= 2)
    {
      v2 = 1;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (*v0 <= 6u)
  {
    if (v1 == 5)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    goto LABEL_16;
  }

  if (v1 - 7 < 2)
  {
LABEL_8:
    v2 = 0;
    goto LABEL_16;
  }

  if (v1 == 9)
  {
    v2 = 6;
LABEL_16:
    v9[1] = v2;
    v9[0] = 0;
    return DOCItemSortMode.DisplayableMode.localizedName(for:)(v9)._countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v10._object = 0x8000000249BFAEE0;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 1701736270;
    v6._object = 0xE400000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemGroupingBehavior.accessibilityIdentifierComponent.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 <= 2u)
    {
      if (v1 >= 2)
      {
        return 1701667182;
      }

      return 1702125924;
    }

    v3 = v1 == 3;
    v4 = 6775156;
    v5 = 1702521203;
  }

  else
  {
    if (*v0 > 6u)
    {
      if (v1 - 7 >= 2)
      {
        if (v1 == 9)
        {
          return 0x732064756F6C6369;
        }

        else
        {
          return 1701736302;
        }
      }

      return 1702125924;
    }

    v3 = v1 == 5;
    v4 = 1684957547;
    v5 = 0x7942646572616873;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t static DOCItemGroupingBehavior.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    return v3 == 10;
  }

  if (v3 == 10)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t DOCItemGroupingBehavior.init(enabled:groupingMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  if (result)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 11;
  }

  if (*a2 == 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  *a3 = v4;
  return result;
}

uint64_t DOCItemGroupingBehavior.hash(into:)()
{
  if (*v0 == 10)
  {
    return MEMORY[0x24C1FCBD0](0);
  }

  MEMORY[0x24C1FCBD0](1);

  return specialized RawRepresentable<>.hash(into:)();
}

Swift::Int DOCItemGroupingBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    specialized RawRepresentable<>.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemGroupingBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    specialized RawRepresentable<>.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCItemGroupingBehavior()
{
  if (*v0 == 10)
  {
    return MEMORY[0x24C1FCBD0](0);
  }

  MEMORY[0x24C1FCBD0](1);

  return specialized RawRepresentable<>.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemGroupingBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    specialized RawRepresentable<>.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemGroupingBehavior(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    return v3 == 10;
  }

  if (v3 == 10)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(void *a1, void *a2)
{
  swift_getObjectType();

  return specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(a1, a2);
}

uint64_t DOCInteractionManagerContext.init(actionReportingDelegate:itemDownloadHandler:itemFetchedHandler:isCommittingPreview:useSharedQuickLook:isColumnMode:initialLocation:itemSelectedInUI:shouldSkipDownload:alertPresentingViewController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 57) = a12;
  *(a9 + 64) = a13;
  return result;
}

void DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a1, a2, v2, ObjectType);
}

uint64_t DOCInteractionManagerContext.actionReportingDelegate.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t key path getter for DOCInteractionManagerContext.itemDownloadHandler : DOCInteractionManagerContext@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
}

uint64_t key path setter for DOCInteractionManagerContext.itemDownloadHandler : DOCInteractionManagerContext(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t DOCInteractionManagerContext.itemDownloadHandler.getter()
{
  v1 = *(v0 + 8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCInteractionManagerContext.itemDownloadHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t key path getter for DOCInteractionManagerContext.itemFetchedHandler : DOCInteractionManagerContext@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
}

uint64_t key path setter for DOCInteractionManagerContext.itemFetchedHandler : DOCInteractionManagerContext(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t DOCInteractionManagerContext.itemFetchedHandler.getter()
{
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCInteractionManagerContext.itemFetchedHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void *DOCInteractionManagerContext.initialLocation.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277CC63C0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v11 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithItems_];

  [v13 setQualityOfService_];
  v14 = *((*MEMORY[0x277D85000] & *v4) + 0x80);
  v15 = swift_unknownObjectRetain();
  v14(v15);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v20[4] = partial apply for closure #1 in DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:);
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem], @guaranteed Error?) -> ();
  v20[3] = &block_descriptor_153;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v13 setDownloadCompletionBlock_];
  _Block_release(v17);
  v19 = [objc_opt_self() defaultManager];
  [v19 scheduleAction_];
}

void closure #1 in DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:)(unint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9A480;
    *(v9 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v9 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v9 + 32) = v8;
    v28 = v8;
    os_log(_:dso:log:type:_:)();

    v10 = [v28 domain];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ([v28 code] == 3072)
    {
      static os_log_type_t.error.getter();
      v20 = swift_allocObject();
      *(v20 + 16) = v27;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = 0xD000000000000035;
      *(v20 + 40) = 0x8000000249BFAF60;
      os_log(_:dso:log:type:_:)();

LABEL_19:
      a4(0);

      return;
    }

LABEL_18:
    v21 = swift_allocObject();
    *(v21 + 16) = v28;
    *(v21 + 24) = a3;
    v22 = v28;
    v23 = a3;
    DOCRunInMainThread(_:)();

    goto LABEL_19;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_23:
    if (one-time initialization token for UI == -1)
    {
LABEL_24:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_249B9A480;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v26 + 32) = 0xD000000000000035;
      *(v26 + 40) = 0x8000000249BFAF60;
      os_log(_:dso:log:type:_:)();

      a4(0);
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_24;
  }

  v24 = a1;
  v25 = __CocoaSet.count.getter();
  a1 = v24;
  if (!v25)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_12;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v15 = *(a1 + 32);
LABEL_12:
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = v16;

  v18 = v16;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9A480;
    v8 = [a1 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x277D837D0];
    v12 = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    os_log(_:dso:log:type:_:)();

    if ((*(a3 + 40) & 1) == 0)
    {
      v13 = *((*MEMORY[0x277D85000] & *v6) + 0x68);
      v14 = swift_unknownObjectRetain();
      v13(v14);
      static os_log_type_t.default.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_249B9A480;
      *(v15 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      *(v15 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
      *(v15 + 32) = a1;
      v16 = a1;
      os_log(_:dso:log:type:_:)();
    }

    static os_log_type_t.default.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249B9A480;
    v18 = [a1 displayName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v12;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    os_log(_:dso:log:type:_:)();

    v22 = [objc_opt_self() defaultManager];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a1;
    v25 = *(a3 + 48);
    *(v24 + 64) = *(a3 + 32);
    *(v24 + 80) = v25;
    *(v24 + 96) = *(a3 + 64);
    v26 = *(a3 + 16);
    *(v24 + 32) = *a3;
    *(v24 + 48) = v26;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_33_3;
    v27 = _Block_copy(aBlock);
    v28 = a1;
    outlined init with copy of DOCInteractionManagerContext(a3, v29);

    [v22 fetchURLForItem:v28 completionHandler:v27];
    _Block_release(v27);
  }
}

uint64_t closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v13 = &v25[-v12];
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  outlined init with copy of URL?(a1, v13);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  outlined init with take of URL?(v13, v19 + v16);
  *(v19 + v17) = a4;
  *(v19 + v18) = v14;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = *(a5 + 48);
  *(v20 + 32) = *(a5 + 32);
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a5 + 64);
  v22 = *(a5 + 16);
  *v20 = *a5;
  *(v20 + 16) = v22;
  v23 = a4;

  outlined init with copy of DOCInteractionManagerContext(a5, v25);
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URL();
  if ((*(*(v7 - 8) + 48))(a1, 1, v7) == 1 && ([a2 doc_isCollaborationInvitation] & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249B9A480;
    v23 = [a2 displayName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      (*((*MEMORY[0x277D85000] & *Strong) + 0x68))(0);
    }
  }

  else
  {
    v8 = *(a4 + 24);
    if (v8)
    {
      v8(a2, a1);
    }

    if (*(a4 + 40))
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249B9A480;
      v10 = [a2 displayName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      os_log(_:dso:log:type:_:)();

      v14 = *a4;
      if (*a4)
      {
        v15 = sel_didCommitPreviewOf_;
        v16 = a2;

LABEL_11:
        [v14 v15];
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_249B9A480;
      v18 = [a2 displayName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      os_log(_:dso:log:type:_:)();

      v14 = *a4;
      if (*a4)
      {
        v15 = sel_didSelectItem_atParentLocation_wasAlreadySelected_onlyRevealIfColumn_;
        v16 = a2;

        goto LABEL_11;
      }
    }
  }
}

void closure #3 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      specialized DOCInteractionManager.cancelDownload(item:)(v4);

      v3 = v4;
    }
  }
}

void closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = *(a3 + 64);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = a4;
      *(v15 + 24) = v14;
      v16 = *(a3 + 48);
      *(v15 + 64) = *(a3 + 32);
      *(v15 + 80) = v16;
      v17 = *(a3 + 64);
      v18 = *(a3 + 16);
      *(v15 + 32) = *a3;
      *(v15 + 48) = v18;
      *(v15 + 96) = v17;
      *(v15 + 104) = a5;
      *(v15 + 112) = a6;
      v19 = a1;
      swift_unknownObjectRetain();

      outlined init with copy of DOCInteractionManagerContext(a3, &v20);

      DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:)(v19, v13, partial apply for closure #1 in closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:), v15);
    }

    else
    {
    }
  }
}

void closure #1 in closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249B9A480;
  v8 = [a2 displayName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 64) = v13;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:type:_:)();

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = *((*MEMORY[0x277D85000] & *Strong) + 0x78);
      v17 = a1;
      v18 = v16();
      if (v18)
      {
        v19 = v18;
        swift_getObjectType();
        v20 = v17;
        v21 = specialized DOCNode.isEqualTo(node:)(v19, v20);

        swift_unknownObjectRelease();
        if (v21)
        {
          static os_log_type_t.default.getter();
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_249B9A480;
          v23 = [a2 displayName];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          *(v22 + 56) = MEMORY[0x277D837D0];
          *(v22 + 64) = v13;
          *(v22 + 32) = v24;
          *(v22 + 40) = v26;
          os_log(_:dso:log:type:_:)();

          v27 = *(a4 + 8);
          if (v27)
          {
            v28 = v20;
            v27(a1);
          }

          a5(v20);

          return;
        }
      }
    }

    else
    {
      v35 = a1;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    v37 = a1;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136315650;
      v42 = [v37 displayName];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v60);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v47 = v37;
      v48 = [v47 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v60);

      *(v40 + 14) = v52;
      *(v40 + 22) = 2080;
      swift_beginAccess();
      v53 = swift_unknownObjectWeakLoadStrong();
      if (v53)
      {
        v54 = v53;
        (*((*MEMORY[0x277D85000] & *v53) + 0x78))();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v55 = String.init<A>(describing:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v60);

      *(v40 + 24) = v57;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v41, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_249B9A480;
    v30 = [a2 displayName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v12;
    v34 = v33;

    *(v29 + 56) = v32;
    *(v29 + 64) = v13;
    *(v29 + 32) = v31;
    *(v29 + 40) = v34;
    os_log(_:dso:log:type:_:)();
  }
}

void specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v67 = &v66 - v8;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = static DOCLog.UI;
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  v68 = xmmword_249B9A480;
  *(v10 + 16) = xmmword_249B9A480;
  v11 = [a1 displayName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v69 = v9;
  os_log(_:dso:log:type:_:)();

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = *a2;
  *(v17 + 40) = *(a2 + 16);
  v19 = *(a2 + 48);
  *(v17 + 56) = *(a2 + 32);
  *(v17 + 72) = v19;
  *(v17 + 88) = *(a2 + 64);
  *(v17 + 24) = v18;
  outlined init with copy of DOCInteractionManagerContext(a2, v71);
  if ([a1 isDownloading] && !objc_msgSend(a1, sel_isDownloaded))
  {
    v20 = 1;
  }

  else
  {
    v20 = [a1 isExternalDownloadPlaceholder];
  }

  if ([a1 isCloudItem])
  {
    v21 = [a1 isDownloaded] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  if (![a1 isFolder])
  {
    if ((*(a2 + 42) & 1) != 0 && (*(a2 + 56) & 1) == 0)
    {
      static os_log_type_t.default.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = v68;
      v47 = [a1 displayName];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = v15;
      *(v46 + 32) = v48;
      *(v46 + 40) = v50;
      os_log(_:dso:log:type:_:)();

      v40 = swift_allocObject();
      *(v40 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v40 + 24) = v17;

      v41 = partial apply for closure #2 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
    }

    else
    {
      if ((*(a2 + 57) & 1) == 0)
      {
        if (v20)
        {
          if ([a1 isExternalDownloadPlaceholder])
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v42 = type metadata accessor for Logger();
            __swift_project_value_buffer(v42, static Logger.UI);
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              _os_log_impl(&dword_2493AC000, v43, v44, "[TAP] [Interaction] Item is a Safari download in progress, don't cancel the D/L, but don't open either", v45, 2u);
              MEMORY[0x24C1FE850](v45, -1, -1);
            }
          }

          else if ((*(a2 + 40) & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, static Logger.UI);
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&dword_2493AC000, v62, v63, "[TAP] [Interaction] Item is a Download in progress, Cancelling D/L", v64, 2u);
              MEMORY[0x24C1FE850](v64, -1, -1);
            }

            v65 = swift_allocObject();
            swift_unknownObjectWeakInit();

            DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #3 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:), v65);
          }

          goto LABEL_36;
        }

        if (v21)
        {
          static os_log_type_t.default.getter();
          v51 = swift_allocObject();
          *(v51 + 16) = v68;
          v52 = [a1 displayName];
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          *(v51 + 56) = MEMORY[0x277D837D0];
          *(v51 + 64) = v15;
          *(v51 + 32) = v53;
          *(v51 + 40) = v55;
          os_log(_:dso:log:type:_:)();

          v56 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v57 = swift_allocObject();
          v58 = *a2;
          *(v57 + 40) = *(a2 + 16);
          v59 = *(a2 + 48);
          *(v57 + 56) = *(a2 + 32);
          *(v57 + 72) = v59;
          *(v57 + 16) = v56;
          v60 = *(a2 + 64);
          *(v57 + 24) = v58;
          *(v57 + 88) = v60;
          *(v57 + 96) = a1;
          *(v57 + 104) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
          *(v57 + 112) = v17;
          outlined init with copy of DOCInteractionManagerContext(a2, v71);

          swift_unknownObjectRetain();
          DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:), v57);

          goto LABEL_35;
        }
      }

      static os_log_type_t.default.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = v68;
      v36 = [a1 displayName];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 64) = v15;
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      os_log(_:dso:log:type:_:)();

      v40 = swift_allocObject();
      *(v40 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v40 + 24) = v17;

      v41 = _s26DocumentManagerExecutables014DOCInteractionB0C26prepareNodeAndOpenIfNeeded_7contextySo7DOCNode_p_AA0dB7ContextVtFySo6FPItemCSgcfU3_TA_0;
    }

    DOCNode.fpfs_fetchFPItem(completion:)(v41, v40);
LABEL_35:

LABEL_36:

    return;
  }

  v22 = [a1 fpfs_fpItem];
  if (v22)
  {
    v23 = v22;
    v24 = one-time initialization token for restorableSettingsCache;
    v25 = v22;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for RestorableSettings(0);
    v27 = v67;
    (*(*(v26 - 8) + 56))(v67, 1, 1, v26);
    swift_beginAccess();
    v28 = v25;
    specialized Dictionary.subscript.setter(v27, v23, 0);
    swift_endAccess();
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.UI);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2493AC000, v30, v31, "[TAP] [Interaction] Node is a folder, navigating to the next location.", v32, 2u);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  v33 = DOCNode.sourceIdentifier.getter();
  v34 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v33 node:a1];

  if (*a2)
  {
    [*a2 didSelectLocation:v34 atParentLocation:*(a2 + 48)];
  }
}

uint64_t getEnumTagSinglePayload for DOCInteractionManagerContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCInteractionManagerContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized DOCInteractionManager.cancelDownload(item:)(void *a1)
{
  v2 = [a1 downloadingProgress];
  [v2 cancel];

  v3 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CC63D0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v6 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v5 initWithItems_];

  [v3 scheduleAction_];
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);

  closure #1 in closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(v0 + v2, v5, v6, v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t NSURL.bumpLastOpenDate(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - v11;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = [objc_opt_self() defaultManager];
  (*(v5 + 16))(v8, v12, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  *(v16 + v15) = 0;

  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v12, _s10Foundation3URLV26DocumentManagerExecutablesE16bumpLastOpenDate5delay17completionHandlerySd_ySo6FPItemCSgcSgtFyAJ_s5Error_pSgtcfU_TA_0, v16);

  return (*(v5 + 8))(v12, v4);
}

uint64_t @objc NSURL.bumpLastOpenDate(completionHandler:)(void *a1, uint64_t a2, const void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v23 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = objc_opt_self();
  v17 = a1;
  v18 = [v16 defaultManager];
  (*(v6 + 16))(v9, v13, v5);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  *(v21 + 24) = v15;
  (*(v6 + 32))(v21 + v19, v9, v5);
  *(v21 + v20) = 0;

  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v13, closure #1 in URL.bumpLastOpenDate(delay:completionHandler:)partial apply, v21);

  return (*(v6 + 8))(v13, v5);
}

uint64_t NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a2;
  *(v14 + 40) = a1;

  v15 = a2;
  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v12, partial apply for closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:), v14);

  return (*(v9 + 8))(v12, v8);
}

void closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(void *a1, uint64_t a2, void (*a3)(void, uint64_t, double), uint64_t a4, void *a5, char a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    if ([a5 interactionModeForPreparing] && (objc_msgSend(a5, sel_neverCreateBookmarkForOpenInPlace) & 1) == 0)
    {
      v25 = [a5 hostIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v26;

      if ((a6 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      if ((a6 & 1) == 0)
      {
LABEL_6:
        v21 = swift_allocObject();
        *(v21 + 16) = a3;
        *(v21 + 24) = a4;
        v22 = swift_allocObject();
        v22[2] = partial apply for closure #1 in closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:);
        v22[3] = v21;
        v22[4] = v19;
        v22[5] = v20;
        v22[6] = v18;
        aBlock[4] = partial apply for specialized closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_52_1;
        v23 = _Block_copy(aBlock);
        v24 = v18;

        [v24 fetchURL_];
        _Block_release(v23);

        return;
      }
    }

    Date.init()();
    FPItem.setLastOpenDate(_:delay:)(v17, 0.0);
    (*(v13 + 8))(v17, v12);
    goto LABEL_6;
  }

  a3(0, a2, v15);
}

void closure #1 in closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a3)
  {
    (a4)(0, a3);
  }

  else if (a1)
  {
    v6 = a1;
    (a4)(a1, 0);
  }

  else
  {
    type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode(0);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode);
    _BridgedStoredNSError.init(_:userInfo:)();
    a4(0);
  }
}

void DOCNode.createDOCItemBookmark(bookmark:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v9;
  v10[6] = v8;
  v10[7] = v4;
  v12[4] = partial apply for closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:);
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_154;
  v11 = _Block_copy(v12);

  swift_unknownObjectRetain();

  [v4 fetchURL_];
  _Block_release(v11);
}

uint64_t @objc NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(void *a1, uint64_t a2, char a3, void *a4, const void *a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = objc_opt_self();
  v17 = a4;
  v18 = a1;
  v19 = [v16 defaultManager];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ();
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = a3;
  v21 = v17;

  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v13, closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)partial apply, v20);

  return (*(v10 + 8))(v13, v9);
}

void URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(id, char *, void), uint64_t a5)
{
  v40 = a2;
  v41 = a5;
  v39 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  if ([objc_opt_self() isMainThread])
  {
    type metadata accessor for OS_dispatch_queue();
    v34 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v13);
    v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = v7;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v19;
    (*(v14 + 32))(v22 + v20, v17, v13);
    v23 = (v22 + v21);
    v24 = v40;
    v25 = v41;
    *v23 = v39;
    v23[1] = v25;
    *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
    aBlock[4] = partial apply for closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_12_3;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v42 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v27 = v36;
    v28 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v29 = v34;
    MEMORY[0x24C1FB9A0](0, v12, v27, v26);
    _Block_release(v26);

    (*(v38 + 8))(v27, v28);
    (*(v35 + 8))(v12, v37);
  }

  else
  {
    v30 = v39;
    v31 = v40;
    v32 = v41;

    createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v18, v19, v5, v30, v32, v31);
  }
}

void createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, char *, void), uint64_t a5, uint64_t a6)
{
  v32 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  if (a2)
  {
    URL.startAccessingSecurityScopedResource()();
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v22 = MEMORY[0x24C1FAD20](a1, a2);
    (*(v16 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v15);
    v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v32;
    *(v24 + 24) = a5;
    (*(v16 + 32))(v24 + v23, &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    *(v24 + ((v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
    aBlock[4] = partial apply for closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_36_1;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    FPExtendBookmarkForDocumentURL();
    _Block_release(v25);
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277D05EE0]);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = [v26 initWithURL:v28 node:a6];

    (*(v16 + 16))(v14, a3, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
    v32(v30, v14, 0);

    outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd);
  }
}

void closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t a1, void *a2, void (*a3)(void, char *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = type metadata accessor for URL();
  v12 = *(v66 - 8);
  v14 = MEMORY[0x28223BE20](v66, v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v59 - v22;
  if (a2)
  {
    v64 = &v59 - v22;
    v65 = a4;
    v63 = a3;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.Picker);
    v25 = v66;
    v62 = *(v12 + 16);
    v62(v16, a5, v66);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = a5;
      v30 = v29;
      v31 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68 = v60;
      *v30 = 138412546;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v33 = v32;
      (*(v12 + 8))(v16, v66);
      *(v30 + 4) = v33;
      *v31 = v33;
      *(v30 + 12) = 2080;
      v67 = a2;
      v34 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CFErrorRefaSgMd);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v68);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_2493AC000, v27, v28, "Error while extending bookmark for %@ with error %s", v30, 0x16u);
      outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd);
      v38 = v31;
      v25 = v66;
      MEMORY[0x24C1FE850](v38, -1, -1);
      v39 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C1FE850](v39, -1, -1);
      v40 = v30;
      a5 = v61;
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v25);
    }

    v43 = v64;
    v62(v64, a5, v25);
    (*(v12 + 56))(v43, 0, 1, v25);
    v63(0, v43, 0);
    v44 = v43;
  }

  else
  {
    if (a1)
    {
      v41 = [objc_allocWithZone(MEMORY[0x277D05EE0]) initWithBookmarkableString:a1 node:a6];
      v42 = v66;
      (*(v12 + 16))(v23, a5, v66);
      (*(v12 + 56))(v23, 0, 1, v42);
      a3(v41, v23, 0);
      outlined destroy of CharacterSet?(v23, &_s10Foundation3URLVSgMd);
      URL.stopAccessingSecurityScopedResource()();

      return;
    }

    v64 = &v59 - v22;
    v65 = a4;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.Picker);
    v46 = *(v12 + 16);
    v47 = v66;
    v46(v19, a5, v66);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v63 = a3;
      v51 = v50;
      v52 = swift_slowAlloc();
      v62 = v46;
      v53 = v52;
      *v51 = 138412290;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v55 = v54;
      (*(v12 + 8))(v19, v47);
      *(v51 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_2493AC000, v48, v49, "bookmark for %@ is nil", v51, 0xCu);
      outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd);
      v56 = v53;
      v46 = v62;
      MEMORY[0x24C1FE850](v56, -1, -1);
      v57 = v51;
      a3 = v63;
      MEMORY[0x24C1FE850](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v47);
    }

    v58 = v64;
    v46(v64, a5, v47);
    (*(v12 + 56))(v58, 0, 1, v47);
    a3(0, v58, 0);
    v44 = v58;
  }

  outlined destroy of CharacterSet?(v44, &_s10Foundation3URLVSgMd);
  URL.stopAccessingSecurityScopedResource()();
}

void DOCNode.newFolderButtonMode(for:)(void *a1@<X0>, char *a2@<X8>)
{
  if (![v2 isFolder])
  {
    goto LABEL_16;
  }

  v5 = [a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_7:

    goto LABEL_16;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_15;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_7;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
    goto LABEL_15;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_7;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
    goto LABEL_15;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_7;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
    goto LABEL_15;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_7;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
    goto LABEL_15;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_7;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
LABEL_15:

    goto LABEL_16;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0 && ([v2 isTrashed] & 1) == 0)
  {
    type metadata accessor for DOCActionManager(0);
    v22 = specialized static DOCActionManager.canCreateNewFolder(in:)(v2) & 1;
    goto LABEL_17;
  }

LABEL_16:
  v22 = 2;
LABEL_17:
  *a2 = v22;
}

uint64_t closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:)(uint64_t a1, void *a2, void (*a3)(id, char *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a6;
  v80 = a7;
  v78 = a5;
  v84 = a3;
  v85 = a4;
  v81 = a1;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v83 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v68 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  MEMORY[0x28223BE20](v29, v30);
  if (a2)
  {
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.Picker);
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2493AC000, v35, v36, "Error while fetching item : %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v42 = v83;
    (*(v26 + 56))(v83, 1, 1, v25);
    v43 = v42;
    v44 = a2;
LABEL_13:
    v84(0, v43, v44);
    return outlined destroy of CharacterSet?(v42, &_s10Foundation3URLVSgMd);
  }

  v45 = v32;
  v46 = &v68 - v31;
  v72 = v13;
  v47 = v82;
  v73 = v10;
  outlined init with copy of URL?(v81, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.Picker);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2493AC000, v49, v50, "Error while fetching item URL is nil", v51, 2u);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    v42 = v83;
    (*(v26 + 56))(v83, 1, 1, v25);
    v43 = v42;
    v44 = 0;
    goto LABEL_13;
  }

  v53 = *(v26 + 32);
  v71 = v46;
  v83 = v53;
  (v53)(v46, v24, v25);
  (*(v47 + 104))(v17, *MEMORY[0x277D851D0], v14);
  if ([objc_opt_self() isMainThread])
  {
    type metadata accessor for OS_dispatch_queue();
    v69 = static OS_dispatch_queue.global(qos:)();
    (*(v26 + 16))(v45, v71, v25);
    v54 = *(v26 + 80);
    v81 = v17;
    v55 = (v54 + 32) & ~v54;
    v56 = (v27 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = v25;
    v57 = swift_allocObject();
    v58 = v79;
    *(v57 + 16) = v78;
    *(v57 + 24) = v58;
    (v83)(v57 + v55, v45, v25);
    v59 = (v57 + v56);
    v60 = v14;
    v61 = v85;
    *v59 = v84;
    v59[1] = v61;
    *(v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8)) = v80;
    aBlock[4] = closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:)partial apply;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_43_2;
    v62 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v63 = v72;
    static DispatchQoS.unspecified.getter();
    v86 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v64 = v76;
    v65 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v66 = v69;
    MEMORY[0x24C1FB9A0](0, v63, v64, v62);
    _Block_release(v62);

    (*(v77 + 8))(v64, v65);
    (*(v75 + 8))(v63, v73);
    (*(v82 + 8))(v81, v60);
    (*(v26 + 8))(v71, v70);
  }

  else
  {
    v67 = v71;
    createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v78, v79, v71, v84, v85, v80);
    (*(v47 + 8))(v17, v14);
    return (*(v26 + 8))(v67, v25);
  }
}

uint64_t getEnumTagSinglePayload for BookmarkInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BookmarkInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for BookmarkInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroy_2Tm_4()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void partial apply for closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v5, v6, v0 + v2, v8, v9, v10);
}

Swift::Int DOCProgressCollectionListViewController.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for DOCProgressCollectionListViewController.cancelAccessoryDisplayedState : DOCProgressCollectionListViewController(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xC8))(v8);
}

uint64_t DOCProgressCollectionListViewController.cancelAccessoryDisplayedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DOCProgressCollectionListViewController.cancelAccessoryDisplayedState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *DOCProgressCollectionListViewController.dismissButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_dismissButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCProgressCollectionListViewController.dismissButton.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_dismissButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCProgressCollectionListViewController.updateNavigationItems()();
}

void (*DOCProgressCollectionListViewController.dismissButton.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCProgressCollectionListViewController.dismissButton.modify;
}

void DOCProgressCollectionListViewController.dismissButton.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCProgressCollectionListViewController.updateNavigationItems()();
  }
}

id DOCProgressCollectionListViewController.init(_:style:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  v8 = *MEMORY[0x277D74A88];
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v9 - 8) + 104))(&v3[v7], v8, v9);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_dismissButton] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView] = 0;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian;
  type metadata accessor for DOCUpdateGuardian();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84FA0];
  *&v3[v11] = v12;
  *(v12 + 24) = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_isDisplayingProgress] = 0;
  v13 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source];
  *v13 = a1;
  v13[1] = a2;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_style] = v6;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v22, sel_init);
  result = _DocumentManagerBundle();
  if (result)
  {
    v16 = result;
    v23._object = 0x8000000249BEF280;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0x73736572676F7250;
    v19._object = 0x8000000249BEF260;
    v23._countAndFlagsBits = 0xD000000000000040;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    v18._object = 0xE800000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v17, v16, v18, v23);

    v21 = MEMORY[0x24C1FAD20](v20._countAndFlagsBits, v20._object);

    [v14 setTitle_];
    swift_unknownObjectRelease();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double DOCProgressCollectionListViewController.additionalTopInset.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCProgressCollectionListViewController.additionalTopInset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint) setConstant_];
}

void (*DOCProgressCollectionListViewController.additionalTopInset.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCProgressCollectionListViewController.additionalTopInset.modify;
}

void DOCProgressCollectionListViewController.additionalTopInset.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint) setConstant_];
  }

  free(v3);
}

uint64_t static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight.setter(double a1)
{
  result = swift_beginAccess();
  static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight = *&a1;
  return result;
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.ProgressListingView.layoutSubviews()()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount;
  v2 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount] = v4;
    v8.receiver = v0;
    v8.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
    objc_msgSendSuper2(&v8, sel_layoutSubviews);
    v5 = *&v0[v1];
    if (v5 == 1)
    {
      [v0 contentSize];
      [v0 setFittingHeight_];
      v5 = *&v0[v1];
    }

    v3 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (!v3)
    {
      *&v0[v1] = v7;
      return;
    }
  }

  __break(1u);
}

id DOCProgressCollectionListViewController.ProgressListingView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCProgressCollectionListViewController.ProgressListingView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  *&v5[v11] = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *&v5[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount] = 0;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v12;
}

id DOCProgressCollectionListViewController.ProgressListingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCProgressCollectionListViewController.ProgressListingView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  *&v1[v3] = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DOCProgressCollectionListViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView];
LABEL_5:
    v17 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
    v15 = [objc_allocWithZone(type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView()) initWithFrame:v14 collectionViewLayout:{v7, v9, v11, v13}];

    v16 = *&v0[v1];
    *&v0[v1] = v15;
    v3 = v15;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.viewDidLoad()()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v1 = DOCProgressCollectionListViewController.collectionView.getter();
  v2 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BFB280);
  [v1 setAccessibilityIdentifier_];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView;
  [v3 addSubview_];

  [*(v0 + v5) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [*(v0 + v5) topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  v11 = [v6 constraintEqualToAnchor:v9 constant:?];

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint;
  v13 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA0470;
  v15 = [*(v0 + v5) leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = [*(v0 + v5) trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  v25 = *(v0 + v12);
  *(v14 + 40) = v24;
  *(v14 + 48) = v25;
  v26 = *(v0 + v5);
  v27 = v25;
  v28 = [v26 bottomAnchor];
  v29 = [v0 view];
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 bottomAnchor];

    v33 = [v28 constraintEqualToAnchor_];
    *(v14 + 56) = v33;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 activateConstraints_];

    v35 = (*((*v10 & *v0) + 0x190))();
    (*((*v10 & *v0) + 0x1A0))(v35);
    DOCProgressCollectionListViewController.updateNavigationItems()();
    return;
  }

LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.prepareForPresenting()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCProgressCollectionListViewController.prepareForPresenting();
  *(v3 + 24) = v2;
  v5[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_155;
  v4 = _Block_copy(v5);
  v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();
  }
}

void closure #1 in DOCProgressCollectionListViewController.prepareForPresenting()(void *a1)
{
  DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 0);
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 0);
  swift_beginAccess();

  specialized Set._Variant.insert(_:)();
  swift_endAccess();

  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source + 8];
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v4 + 16);

  v7(v2, partial apply for closure #1 in DOCProgressCollectionListViewController.viewWillAppear(_:), v6, ObjectType, v4);
}

void closure #1 in DOCProgressCollectionListViewController.viewWillAppear(_:)()
{
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.progressUI;
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2493AC000, v0, v1, "Progress listing received 'didUpdate' from source", v2, 2u);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 1);
  }
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian];
  swift_beginAccess();

  specialized Set._Variant.remove(_:)();
  swift_endAccess();
  if (!*(*(v4 + 16) + 16) && *(v4 + 24) == 1)
  {
    closure #1 in DOCProgressCollectionListViewController.viewDidAppear(_:)();
  }
}

uint64_t closure #1 in DOCProgressCollectionListViewController.viewDidAppear(_:)()
{
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.progressUI;
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2493AC000, v0, v1, "Progress listing received 'didUpdate' while appearing.  Performing now!", v2, 2u);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }

  return DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 1);
}

void DOCProgressCollectionListViewController.updateNavigationItems()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v3 = v2();
  if (v3 && (v4 = v3, v5 = [v3 systemItem], v4, v5 == 24))
  {
    v6 = [v1 editButtonItem];
    v7 = (v2)(v6);
  }

  else
  {
    v6 = v2();
    v8 = v6;
    v7 = [v1 editButtonItem];
  }

  v9 = v7;
  v21 = v7;
  v10 = [v1 navigationItem];
  v11 = [v10 leftBarButtonItem];

  v12 = v21;
  if (!v9)
  {
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
LABEL_11:
    v14 = [v1 navigationItem];
    [v14 setLeftBarButtonItem_];
  }

LABEL_12:
  v15 = [v1 navigationItem];
  v16 = [v15 rightBarButtonItem];

  if (!v6)
  {
    v19 = v21;
    if (!v16)
    {
      goto LABEL_22;
    }

    v6 = 0;
    goto LABEL_19;
  }

  if (!v16)
  {
    v16 = v6;
LABEL_19:

    goto LABEL_20;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
LABEL_20:
    v20 = [v1 navigationItem];
    [v20 setRightBarButtonItem_];

    v18 = v6;
    v6 = v20;
    goto LABEL_21;
  }

  v18 = v21;
LABEL_21:

  v19 = v6;
LABEL_22:
}

id DOCProgressCollectionListViewController.primaryScrollView.getter()
{

  return DOCProgressCollectionListViewController.collectionView.getter();
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.configureCollectionView()()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_style;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_style))
  {
    v14 = MEMORY[0x277D74D60];
  }

  else
  {
    v14 = MEMORY[0x277D74D50];
  }

  (*(v3 + 104))(v6, *v14, v2, v10);
  UICollectionLayoutListConfiguration.init(appearance:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  if (*(v1 + v13) == 1)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  }

  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  v17 = DOCProgressCollectionListViewController.collectionView.getter();
  v18 = [v15 clearColor];
  [v17 setBackgroundColor_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v19 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 effectWithStyle_];
    v23 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v21 setBackgroundView_];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCompositionalLayout);
  v24 = static UICollectionViewCompositionalLayout.list(using:)();
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView) setCollectionViewLayout_];
  [*(v1 + v25) setDelegate_];

  (*(v8 + 8))(v12, v7);
}

char *closure #1 in DOCProgressCollectionListViewController.configureCollectionView()()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = objc_opt_self();
  v2 = [v1 configurationWithActions_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return v2;
  }

  v4 = result;
  v5 = *&result[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if (!v33)
  {

    outlined destroy of CharacterSet?(aBlock, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    return v2;
  }

  outlined init with copy of DOCSidebarItemIconProvider(v35, v36);
  outlined destroy of CharacterSet?(aBlock, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  outlined init with take of DOCDSCopyEngineConnection(v36, v37);
  v7 = v38;
  v8 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v8 + 8))(aBlock, v7, v8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  v10 = __swift_project_value_buffer(v9, static DOCProgressCollectionListViewController.NullProgress.shared);
  v11 = MEMORY[0x24C1FC430](aBlock, v10 + 80);
  outlined destroy of AnyHashable(aBlock);
  if ((v11 & 1) != 0 || (v12 = v38, v13 = v39, __swift_project_boxed_opaque_existential_1(v37, v38), v14 = (*(v13 + 24))(v12, v13), LODWORD(v12) = [v14 isCancellable], v14, !v12))
  {

    __swift_destroy_boxed_opaque_existential_0(v37);
    return v2;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v15 = result;
    v40._object = 0x8000000249BD2AF0;
    v16._countAndFlagsBits = 0x6C65636E6143;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v16._object = 0xE600000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v40);

    v20 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    outlined init with copy of DOCSidebarItemIconProvider(v37, v36);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    outlined init with take of DOCDSCopyEngineConnection(v36, v22 + 24);

    v23 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

    v34 = partial apply for closure #1 in closure #1 in DOCProgressCollectionListViewController.configureCollectionView();
    v35[0] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
    v33 = &block_descriptor_72_1;
    v24 = _Block_copy(aBlock);
    v25 = [objc_opt_self() contextualActionWithStyle:1 title:v23 handler:v24];

    _Block_release(v24);

    if (_UISolariumEnabled())
    {
      v26 = MEMORY[0x24C1FAD20](0x69632E6B72616D78, 0xEC000000656C6372);
      v27 = [objc_opt_self() systemImageNamed_];

      [v25 setImage_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249BA0290;
    *(v28 + 32) = v25;
    v29 = v25;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v1 configurationWithActions_];

    [v31 setPerformsFirstActionWithFullSwipe_];
    __swift_destroy_boxed_opaque_existential_0(v37);
    return v31;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in DOCProgressCollectionListViewController.configureCollectionView()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v10 = Strong;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = *((*MEMORY[0x277D85000] & *v10) + 0x198);

  v12(a6, _sSo36DOCFullDocumentManagerViewControllerC0bC11ExecutablesE6reveal4node19showEnclosingFolder15completionBlockySo7DOCNode_p_SbySbctFyycfU_TA_0, v11);
}

void closure #2 in DOCProgressCollectionListViewController.configureCollectionView()(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v30 = &v27 - v10;
  v11 = type metadata accessor for UIListSeparatorConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v29 = v7;
    v18 = DOCProgressCollectionListViewController.collectionView.getter();
    v19 = [v18 numberOfItemsInSection_];

    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      v27 = v19 - 1;
      (*(v12 + 16))(v15, a1, v11);
      v20 = IndexPath.row.getter();
      v21 = *(v4 + 104);
      v22 = *MEMORY[0x277D74C98];
      v28 = v11;
      v23 = v3;
      v24 = *MEMORY[0x277D74CA0];
      if (v20)
      {
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      v21(v30, v25, v23);
      UIListSeparatorConfiguration.topSeparatorVisibility.setter();
      if (IndexPath.row.getter() == v27)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      v21(v29, v26, v23);
      UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();

      (*(v12 + 32))(v31, v15, v28);
    }
  }

  else
  {
    (*(v12 + 16))(v31, a1, v11);
  }
}

uint64_t DOCProgressCollectionListViewController.cancelOperation(_:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = type metadata accessor for Date();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMd);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  [v16 cancel];

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 8))(v36, v17, v18);
  outlined init with copy of DOCSidebarItemIconProvider(a1, &v37);
  v19 = [objc_opt_self() mainRunLoop];
  Current = CFAbsoluteTimeGetCurrent();
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable;
  v22 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
  if (v22)
  {
    v23 = Current;
    v24 = v4;
    v25 = (v33 + 8);
    v26 = (v34 + 8);
    while (1)
    {
      v27 = v22;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v28 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*v25)(v13, v10);
      LOBYTE(v27) = specialized Sequence<>.contains(_:)(v36, v28);

      if ((v27 & 1) == 0 || CFAbsoluteTimeGetCurrent() - v23 > 0.5)
      {
        break;
      }

      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v26)(v9, v35);
      [v19 runUntilDate_];

      v22 = *(v24 + v21);
      if (!v22)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    __break(1u);
  }

  v32();
  return outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.configureDataSource()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMd);
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v5 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v36 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v36 - v16;
  swift_allocObject();
  v18 = v0;
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCProgressCollectionListCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
  UICollectionView.CellRegistration.init(handler:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  v20 = __swift_project_value_buffer(v19, static DOCProgressCollectionListViewController.NullProgress.shared);
  UICollectionView.CellRegistration.init(handler:)();
  v36[1] = DOCProgressCollectionListViewController.collectionView.getter();
  outlined init with copy of DOCGridLayout.Spec?(v20, v39, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  v21 = v37;
  v22 = v38;
  v23 = *(v38 + 16);
  v23(v9, v13, v37);
  v23(v5, v17, v21);
  v24 = *(v22 + 80);
  v25 = (v24 + 96) & ~v24;
  v26 = (v3 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  v28 = v39[3];
  *(v27 + 3) = v39[2];
  *(v27 + 4) = v28;
  *(v27 + 5) = v39[4];
  v29 = v39[1];
  *(v27 + 1) = v39[0];
  *(v27 + 2) = v29;
  v36[0] = v17;
  v30 = *(v22 + 32);
  v30(&v27[v25], v9, v21);
  v30(&v27[v26], v5, v21);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMd));
  v32 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable;
  v34 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
  *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable) = v32;

  if (*(v18 + v33))
  {
    [*(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView) setDataSource_];
    v35 = *(v38 + 8);
    v35(v13, v21);
    v35(v36[0], v21);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCProgressCollectionListViewController.configureDataSource()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UICellAccessory.DisplayedState();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    outlined init with copy of DOCSidebarItemIconProvider(a3, v13);
    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))(v13);
    (*((*v11 & *v10) + 0xC0))(v12);
    (*((*v11 & *a1) + 0x108))(v8);
  }
}

uint64_t closure #3 in DOCProgressCollectionListViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of DOCGridLayout.Spec?(a3, v17, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  outlined init with copy of DOCGridLayout.Spec?(v17, v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  outlined init with copy of DOCGridLayout.Spec?(a4, &v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (!v11)
  {
    outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    if (!*(&v13 + 1))
    {
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
      goto LABEL_8;
    }

LABEL_7:
    outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMd);
    goto LABEL_8;
  }

  outlined init with copy of DOCGridLayout.Spec?(v10, v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (!*(&v13 + 1))
  {
    outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    goto LABEL_7;
  }

  v8[2] = v14;
  v8[3] = v15;
  v8[4] = v16;
  v8[0] = v12;
  v8[1] = v13;
  MEMORY[0x24C1FC430](v9, v8);
  outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
LABEL_8:
  outlined init with copy of DOCSidebarItemIconProvider(a3 + 40, v10);
  type metadata accessor for DOCProgressCollectionListCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
  v6 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  return v6;
}

uint64_t DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(uint64_t a1, int a2)
{
  v131 = a2;
  *&v140 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v126 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for DispatchQoS();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v6);
  v130 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v133 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v114 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMd);
  v134 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v114 - v22;
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian;
  v25 = v2;
  v26 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian];
  result = swift_beginAccess();
  if (*(*(v26 + 16) + 16))
  {
    LOBYTE(v28) = 1;
LABEL_3:
    *(v26 + 24) = v28;
    return result;
  }

  v139 = v23;
  v120 = v8;
  v121 = v11;
  v124 = v19;
  v118 = v24;
  v132 = v16;
  v116 = v15;
  v29 = *&v25[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source + 8];
  ObjectType = swift_getObjectType();
  v31 = (*(v29 + 8))(ObjectType, v29);
  v32 = *(v31 + 16);
  v122 = v31;
  if (v32)
  {
    v33 = v31;
    v151 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v34 = v151;
    v35 = v33 + 32;
    v36 = v134;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v35, &v141);
      v37 = *(&v142 + 1);
      v38 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      (*(v38 + 8))(&v146, v37, v38);
      __swift_destroy_boxed_opaque_existential_0(&v141);
      v151 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v34 = v151;
      }

      *(v34 + 16) = v40 + 1;
      v41 = v34 + 40 * v40;
      v42 = v146;
      v43 = v147;
      *(v41 + 64) = v148;
      *(v41 + 32) = v42;
      *(v41 + 48) = v43;
      v35 += 40;
      --v32;
    }

    while (v32);
    v138 = v34;
  }

  else
  {
    v138 = MEMORY[0x277D84F90];
    v36 = v134;
  }

  v44 = specialized _arrayForceCast<A, B>(_:)(v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGSgGMd);
  inited = swift_initStackObject();
  v140 = xmmword_249B9A480;
  inited[1] = xmmword_249B9A480;
  v46 = v139;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v47 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
    v48 = __swift_project_value_buffer(v47, static DOCProgressCollectionListViewController.NullProgress.shared);
    outlined init with copy of DOCGridLayout.Spec?(v48, (inited + 2), &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    *&v146 = v44;
    specialized Array.append<A>(contentsOf:)(inited);
    v123 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable;
    v49 = *&v25[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable];
    if (!v49)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v115 = v48;
    v50 = v25;
    v135 = v146;
    v51 = v49;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v52 = v132;
    v44 = v46;
    inited = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v53 = v36[1];
    v134 = v36 + 1;
    v117 = v53;
    v53(v46, v52);
    v54 = *(inited + 2);
    if (!v54)
    {
      break;
    }

    v55 = 0;
    v139 = (inited + 2);
    v137 = v138 + 32;
    v136 = MEMORY[0x277D84F90];
    v36 = &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd;
    v25 = &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR;
    while (v55 < *(inited + 2))
    {
      outlined init with copy of DOCGridLayout.Spec?(v139 + 80 * v55, &v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      v57 = *(&v150 + 1);
      v56 = v150;
      __swift_project_boxed_opaque_existential_1(&v148 + 1, v150);
      v44 = (*(v57 + 24))(v56, v57);
      v46 = [v44 isCancelled];

      if (v46)
      {
        goto LABEL_15;
      }

      v58 = *(&v150 + 1);
      v46 = v150;
      __swift_project_boxed_opaque_existential_1(&v148 + 1, v150);
      (*(v58 + 8))(&v141, v46, v58);
      v59 = v137;
      v44 = *(v138 + 16) + 1;
      while (--v44)
      {
        v46 = v59 + 40;
        v60 = MEMORY[0x24C1FC430]();
        v59 = v46;
        if (v60)
        {
          outlined destroy of AnyHashable(&v141);
          goto LABEL_15;
        }
      }

      outlined destroy of AnyHashable(&v141);
      outlined init with copy of DOCGridLayout.Spec?(&v146, &v141, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      v44 = specialized Sequence<>.contains(_:)(&v141, v135);
      outlined destroy of CharacterSet?(&v141, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
      if (v44)
      {
LABEL_15:
        outlined destroy of CharacterSet?(&v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      }

      else
      {
        v143 = v148;
        v144 = v149;
        v145 = v150;
        v141 = v146;
        v142 = v147;
        v44 = v136;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1);
          v44 = v151;
        }

        v63 = *(v44 + 16);
        v62 = *(v44 + 24);
        v46 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v44 = v151;
        }

        *(v44 + 16) = v46;
        v136 = v44;
        v64 = (v44 + 80 * v63);
        v64[2] = v141;
        v65 = v142;
        v66 = v143;
        v67 = v145;
        v64[5] = v144;
        v64[6] = v67;
        v64[3] = v65;
        v64[4] = v66;
      }

      if (++v55 == v54)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

  v136 = MEMORY[0x277D84F90];
LABEL_30:

  if (!*&v50[v123])
  {
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCDiffableIdentifier<String> and conformance DOCDiffableIdentifier<A>, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCDiffableIdentifier<DOCProgressProvidingOperation> and conformance DOCDiffableIdentifier<A>, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  v68 = v124;
  NSDiffableDataSourceSnapshot.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGGMd);
  v69 = swift_allocObject();
  *(v69 + 16) = v140;
  *&v146 = 0x746365536E69616DLL;
  *(&v146 + 1) = 0xEB000000006E6F69;
  AnyHashable.init<A>(_:)();
  *(v69 + 72) = 0x746365536E69616DLL;
  *(v69 + 80) = 0xEB000000006E6F69;
  NSDiffableDataSourceSnapshot.appendSections(_:)(v69);

  v70 = v136;
  v71 = *(v136 + 16);
  v72 = MEMORY[0x277D84F90];
  v119 = v50;
  v137 = v71;
  if (v71)
  {
    v151 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
    v72 = v151;
    v73 = v70 + 32;
    v74 = v71;
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v73, &v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      outlined init with copy of DOCSidebarItemIconProvider(&v148 + 8, &v141);
      outlined destroy of CharacterSet?(&v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      v151 = v72;
      v76 = v72[2];
      v75 = v72[3];
      if (v76 >= v75 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
      }

      v77 = *(&v142 + 1);
      v78 = v143;
      v79 = __swift_mutable_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v80 = MEMORY[0x28223BE20](v79, v79);
      v82 = &v114 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v83 + 16))(v82, v80);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v76, v82, &v151, v77, v78);
      __swift_destroy_boxed_opaque_existential_0(&v141);
      v72 = v151;
      v73 += 80;
      --v74;
    }

    while (v74);
    v84 = v119;
    v68 = v124;
  }

  else
  {
    v84 = v50;
  }

  *&v146 = v122;

  specialized Array.append<A>(contentsOf:)(v72);
  v139 = v146;

  inited = 0;
  specialized MutableCollection<>.sort(by:)(&v146);
  v85 = v133;
  v86 = v121;
  v87 = *(v146 + 16);
  if (v87)
  {
    v114 = v146;
    v88 = v146 + 32;
    v89 = v68;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v88, &v141);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMd);
      v90 = swift_allocObject();
      *(v90 + 16) = v140;
      inited = *(&v142 + 1);
      v91 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      (*(v91 + 8))(inited, v91);
      outlined init with copy of DOCSidebarItemIconProvider(&v141, v90 + 72);
      *&v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v146 = 0u;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      outlined destroy of CharacterSet?(&v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGSgMd);
      __swift_destroy_boxed_opaque_existential_0(&v141);
      v88 += 40;
      --v87;
    }

    while (v87);

    v85 = v133;
    v68 = v89;
    v84 = v119;
    v86 = v121;
  }

  else
  {
  }

  v92 = *(v139 + 16);
  v93 = v130;
  if (!v92)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMd);
    inited = swift_allocObject();
    inited[1] = v140;
    outlined init with copy of DOCGridLayout.Spec?(v115, &v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    if (*(&v147 + 1))
    {
      v94 = v147;
      v95 = v149;
      v96 = v150;
      inited[4] = v148;
      inited[5] = v95;
      inited[6] = v96;
      inited[2] = v146;
      inited[3] = v94;
      *&v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v146 = 0u;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      outlined destroy of CharacterSet?(&v146, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGSgMd);
      goto LABEL_46;
    }

LABEL_63:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_46:
  v97 = v84[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_isDisplayingProgress];
  v98 = v92 != 0;
  v84[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_isDisplayingProgress] = v98;
  if (v98 == v97)
  {
    v100 = v120;
    goto LABEL_51;
  }

  v99 = [v84 view];
  v100 = v120;
  if (!v99)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v101 = v99;
  inited = [v99 window];

  if (inited)
  {
  }

LABEL_51:
  v102 = *&v84[v123];
  if (!v102)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v103 = v102;

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  if (v137)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v139 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v104 = v116;
    + infix(_:_:)();
    v105 = *(v85 + 8);
    v133 = v85 + 8;
    *&v140 = v105;
    v105(v86, v100);
    v106 = swift_allocObject();
    v107 = v136;
    *(v106 + 16) = v84;
    *(v106 + 24) = v107;
    *&v148 = partial apply for closure #6 in DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:);
    *(&v148 + 1) = v106;
    *&v146 = MEMORY[0x277D85DD0];
    *(&v146 + 1) = 1107296256;
    *&v147 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v147 + 1) = &block_descriptor_81_1;
    v108 = _Block_copy(&v146);
    v109 = v84;

    static DispatchQoS.unspecified.getter();
    *&v146 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v110 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v111 = v126;
    v112 = v129;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v113 = v139;
    MEMORY[0x24C1FB940](v104, v93, v111, v108);
    _Block_release(v108);

    (*(v128 + 8))(v111, v112);
    v84 = v110;
    (*(v125 + 8))(v93, v127);
    (v140)(v104, v120);
    v117(v124, v132);
  }

  else
  {
    v117(v68, v132);
  }

  v26 = *&v84[v118];
  result = swift_beginAccess();
  v28 = *(*(v26 + 16) + 16);
  if (!v28)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t DOCProgressCollectionListViewController.NullProgress.init()@<X0>(_OWORD *a1@<X8>)
{
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  strcpy(v8, "NullProgress");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  AnyHashable.init<A>(_:)();
  v2 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  static Date.distantPast.getter();
  v3 = *(v2 + 28);
  *(a1 + v3) = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  static UTType.data.getter();
  type metadata accessor for DOCProgressProvidingOperationIconType();
  swift_storeEnumTagMultiPayload();
  v10 = v2;
  v11 = &protocol witness table for DOCProgressCollectionListViewController.NullProgress;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  outlined init with copy of DOCProgressProvidingOperationIconType(a1, boxed_opaque_existential_1, type metadata accessor for DOCProgressCollectionListViewController.NullProgress);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (v6[1])(v8, v5, v6);
  return outlined assign with take of DOCDiffableIdentifier<DOCProgressProvidingOperation>?(v8, a1);
}

uint64_t DOCProgressCollectionListViewController.NullProgress.hash(into:)()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(v0, &v14, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (*(&v15 + 1))
  {
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[0] = v14;
    v13[1] = v15;
    Hasher._combine(_:)(1u);
    AnyHashable.hash(into:)();
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  AnyHashable.hash(into:)();
  v10 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  outlined init with copy of DOCProgressProvidingOperationIconType(v0 + *(v10 + 32), v9, type metadata accessor for DOCProgressProvidingOperationIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      return MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v5, v1);
  }
}

Swift::Int DOCProgressCollectionListViewController.NullProgress.hashValue.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of DOCGridLayout.Spec?(v0, &v14, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (*(&v15 + 1))
  {
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[1] = v15;
    v13[0] = v14;
    Hasher._combine(_:)(1u);
    AnyHashable.hash(into:)();
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  AnyHashable.hash(into:)();
  v10 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  outlined init with copy of DOCProgressProvidingOperationIconType(v0 + *(v10 + 32), v9, type metadata accessor for DOCProgressProvidingOperationIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressCollectionListViewController.NullProgress(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of DOCGridLayout.Spec?(v2, &v16, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (*(&v17 + 1))
  {
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[1] = v17;
    v15[0] = v16;
    Hasher._combine(_:)(1u);
    AnyHashable.hash(into:)();
    outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  AnyHashable.hash(into:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  outlined init with copy of DOCProgressProvidingOperationIconType(v2 + *(a2 + 32), v12, type metadata accessor for DOCProgressProvidingOperationIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

id DOCProgressCollectionListViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCProgressCollectionListViewController.__ivar_destroyer()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  v2 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
}

id DOCProgressCollectionListViewController.ProgressListingView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DOCUpdateGuardian.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *v4;
  Hasher.init(_seed:)();
  v24 = a3;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v9 = 0;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v9 = 2;
      goto LABEL_20;
    }

LABEL_63:
    MEMORY[0x24C1FCBD0](1);
    String.hash(into:)();
    goto LABEL_21;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_20;
  }

  if (a2 == 6)
  {
    v9 = 7;
    goto LABEL_20;
  }

  if (a2 == 7)
  {
    v9 = 8;
    goto LABEL_20;
  }

  if (a2 != 8)
  {
    goto LABEL_63;
  }

  v9 = 9;
LABEL_20:
  MEMORY[0x24C1FCBD0](v9);
LABEL_21:
  result = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = result & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_62:
    *v24 = xmmword_249BB7D40;
    return result;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(v8 + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    if (v16 <= 3)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (a2 == 2)
          {
            v20 = *v14;
            v21 = 2;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 2;
        }

        else
        {
          if (a2 == 3)
          {
            v20 = *v14;
            v21 = 3;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 3;
        }

        goto LABEL_53;
      }

      if (!v16)
      {
        if (!a2)
        {
          v20 = *v14;
          v21 = 0;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a1, a2);
        v17 = 0;
        goto LABEL_53;
      }

      if (v16 == 1)
      {
        if (a2 == 1)
        {
          v20 = *v14;
          v21 = 1;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a1, a2);
        v17 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          if (a2 == 4)
          {
            v20 = *v14;
            v21 = 4;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 4;
        }

        else
        {
          if (a2 == 5)
          {
            v20 = *v14;
            v21 = 5;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 5;
        }

        goto LABEL_53;
      }

      switch(v16)
      {
        case 6:
          if (a2 == 6)
          {
            v20 = *v14;
            v21 = 6;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 6;
          goto LABEL_53;
        case 7:
          if (a2 == 7)
          {
            v20 = *v14;
            v21 = 7;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 7;
          goto LABEL_53;
        case 8:
          if (a2 == 8)
          {
            v20 = *v14;
            v21 = 8;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 8;
          goto LABEL_53;
      }
    }

    if (a2 < 9)
    {
      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(v15, v16);
      v17 = v16;
LABEL_53:
      outlined consume of ColumnType(v15, v17);
      result = outlined consume of ColumnType(a1, a2);
      goto LABEL_54;
    }

    if (v15 == a1 && v16 == a2)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a1, a2);
    outlined copy of ColumnType(v15, v16);
    outlined consume of ColumnType(v15, v16);
    result = outlined consume of ColumnType(a1, a2);
    if (v19)
    {
      goto LABEL_75;
    }

LABEL_54:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  outlined copy of ColumnType(a1, a2);
  outlined copy of ColumnType(a1, a2);
  v20 = a1;
  v21 = a2;
LABEL_74:
  outlined consume of ColumnType(v20, v21);
  outlined consume of ColumnType(a1, a2);
LABEL_75:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v4;
  v25 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v23 = v25;
  }

  *v24 = *(*(v23 + 48) + 16 * v12);
  result = specialized _NativeSet._delete(at:)(v12);
  *v4 = v25;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)()
{
  v1 = v0;
  v2 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_11;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v17 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 8 * v5);
  specialized _NativeSet._delete(at:)(v5);
  *v1 = v17;
  return v13;
}

uint64_t specialized Set._Variant.remove(_:)(char a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 2;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != (a1 & 1))
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 6;
  }

  v24 = v1;
  v8 = ~v6;
  v9 = a1;
  while (1)
  {
    v10 = *(*(v4 + 48) + v7);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v11 = 0x6E6F697461636F6CLL;
        v12 = 0xE900000000000073;
      }

      else
      {
        if (v10 == 4)
        {
          v11 = 0x73726576726573;
        }

        else
        {
          v11 = 1936154996;
        }

        if (v10 == 4)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }
      }
    }

    else if (*(*(v4 + 48) + v7))
    {
      if (v10 == 1)
      {
        v11 = 0x796C746E65636572;
      }

      else
      {
        v11 = 0x657469726F766166;
      }

      if (v10 == 1)
      {
        v12 = 0xEC00000064657355;
      }

      else
      {
        v12 = 0xE900000000000073;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7368564;
    }

    v13 = 0x73726576726573;
    if (v9 != 4)
    {
      v13 = 1936154996;
    }

    v14 = 0xE700000000000000;
    if (v9 != 4)
    {
      v14 = 0xE400000000000000;
    }

    if (v9 == 3)
    {
      v13 = 0x6E6F697461636F6CLL;
      v14 = 0xE900000000000073;
    }

    v15 = 0x796C746E65636572;
    if (v9 != 1)
    {
      v15 = 0x657469726F766166;
    }

    v16 = 0xEC00000064657355;
    if (v9 != 1)
    {
      v16 = 0xE900000000000073;
    }

    if (!v9)
    {
      v15 = 7368564;
      v16 = 0xE300000000000000;
    }

    v17 = v9 <= 2 ? v15 : v13;
    v18 = v9 <= 2 ? v16 : v14;
    if (v11 == v17 && v12 == v18)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_44;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 6;
    }
  }

LABEL_44:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v2;
  v25 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v22 = v25;
  }

  v20 = *(*(v22 + 48) + v7);
  specialized _NativeSet._delete(at:)(v7);
  *v24 = v25;
  return v20;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v4 + 48) + 56 * v7, v17);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      dispatch thunk of Hashable.hash(into:)();
      v9 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      result = outlined destroy of DOCIdentityHashableLocation(v17);
      if (v9 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v15;
    v19 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v12 = v19;
    }

    v13 = *(v12 + 48) + 56 * v7;
    v14 = *(v13 + 16);
    *a2 = *v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = *(v13 + 32);
    *(a2 + 48) = *(v13 + 48);
    result = specialized _NativeSet._delete(at:)(v7);
    *v15 = v19;
  }

  else
  {
LABEL_5:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  return specialized Set._Variant.remove(_:)(a1, &lazy cache variable for type metadata for UITouch, 0x277D75C68, specialized _NativeSet.copy(), _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo7UITouchC_Tt1g5);
}

{
  return specialized Set._Variant.remove(_:)(a1, &lazy cache variable for type metadata for FINode, 0x277D04700, specialized _NativeSet.copy(), _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6FINodeC_Tt1g5);
}

{
  return specialized Set._Variant.remove(_:)(a1, &lazy cache variable for type metadata for DOCTag, 0x277D06260, specialized _NativeSet.copy(), _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5);
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  result = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = result & ~v5;
  v7 = 0uLL;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = (*(v3 + 48) + 48 * v6);
      v10 = *(v9 + 25);
      v11 = v9[1];
      v26 = *v9;
      v27[0] = v11;
      *(v27 + 9) = v10;
      outlined init with copy of DOCSidebarItem(&v26, v25);
      v12 = DOCSidebarItem.hashComparableValue.getter();
      v14 = v13;
      if (v12 == DOCSidebarItem.hashComparableValue.getter() && v14 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = outlined destroy of DOCSidebarItem(&v26);
      if (v16)
      {
        goto LABEL_10;
      }

      v6 = (v6 + 1) & v8;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        v17 = 0;
        v18 = -1;
        v19 = 0uLL;
        v7 = 0uLL;
        goto LABEL_13;
      }
    }

    outlined destroy of DOCSidebarItem(&v26);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v1;
    v25[0] = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v21 = v25[0];
    }

    v22 = *(v21 + 48) + 48 * v6;
    v23 = *(v22 + 16);
    v24 = *v22;
    v17 = *(v22 + 32);
    v18 = *(v22 + 40);
    result = specialized _NativeSet._delete(at:)(v6);
    v19 = v23;
    v7 = v24;
    *v1 = v25[0];
  }

  else
  {
    v17 = 0;
    v18 = -1;
    v19 = 0uLL;
  }

LABEL_13:
  *a1 = v7;
  *(a1 + 16) = v19;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = a1;
    v12 = __CocoaSet.contains(_:)();

    if (v12)
    {
      v13 = specialized Set._Variant._migrateToNative(_:removing:)(v10, v11, a5, a2);

      return v13;
    }

    return 0;
  }

  v16 = v5;
  type metadata accessor for NSMutableAttributedString(0, a2);
  v17 = NSObject._rawHashValue(seed:)(*(v7 + 40));
  v18 = -1 << *(v7 + 32);
  v19 = v17 & ~v18;
  if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v7 + 48) + 8 * v19);
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v24 = v26;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  specialized _NativeSet._delete(at:)(v19);
  result = v25;
  *v16 = v26;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  v7 = v4;

  v8 = __CocoaSet.count.getter();
  v9 = swift_unknownObjectRetain();
  v10 = a3(v9, v8);
  v20 = v10;
  v11 = *(v10 + 40);

  v12 = NSObject._rawHashValue(seed:)(v11);
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    type metadata accessor for NSMutableAttributedString(0, a4);
    while (1)
    {
      v16 = *(*(v10 + 48) + 8 * v14);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v18 = *(*(v10 + 48) + 8 * v14);
  specialized _NativeSet._delete(at:)(v14);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v7 = v20;
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        if (v12 <= 3)
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              v13 = 3;
            }

            else
            {
              v13 = 4;
            }

            goto LABEL_25;
          }

          if (!v12)
          {
            v13 = 0;
            goto LABEL_25;
          }

          if (v12 == 1)
          {
            v13 = 2;
            goto LABEL_25;
          }
        }

        else
        {
          if (v12 <= 5)
          {
            if (v12 == 4)
            {
              v13 = 5;
            }

            else
            {
              v13 = 6;
            }

            goto LABEL_25;
          }

          switch(v12)
          {
            case 6:
              v13 = 7;
              goto LABEL_25;
            case 7:
              v13 = 8;
              goto LABEL_25;
            case 8:
              v13 = 9;
LABEL_25:
              MEMORY[0x24C1FCBD0](v13);
              goto LABEL_26;
          }
        }

        MEMORY[0x24C1FCBD0](1);

        String.hash(into:)();
LABEL_26:
        v14 = Hasher._finalize()();
        outlined consume of ColumnType(v11, v12);
        v15 = v14 & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_31;
        }

        if (v2 >= v15)
        {
LABEL_31:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        if (v12 <= 4)
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              v13 = 2;
            }

            else if (v12 == 3)
            {
              v13 = 3;
            }

            else
            {
              v13 = 4;
            }

            goto LABEL_29;
          }

          if (!v12)
          {
            v13 = 0;
            goto LABEL_29;
          }

          if (v12 == 1)
          {
            v13 = 1;
            goto LABEL_29;
          }
        }

        else
        {
          if (v12 <= 7)
          {
            if (v12 == 5)
            {
              v13 = 5;
            }

            else if (v12 == 6)
            {
              v13 = 6;
            }

            else
            {
              v13 = 7;
            }

            goto LABEL_29;
          }

          switch(v12)
          {
            case 8:
              v13 = 8;
              goto LABEL_29;
            case 9:
              v13 = 9;
              goto LABEL_29;
            case 10:
              v13 = 11;
LABEL_29:
              MEMORY[0x24C1FCBD0](v13);
              goto LABEL_30;
          }
        }

        MEMORY[0x24C1FCBD0](10);

        String.hash(into:)();
LABEL_30:
        v14 = Hasher._finalize()();
        outlined consume of DOCItemFileTypeGroupCategory(v11, v12);
        v15 = v14 & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_35;
        }

        if (v2 >= v15)
        {
LABEL_35:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v11 = v10;
        String.hash(into:)();
        v12 = Hasher._finalize()();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        MEMORY[0x24C1FCBD0](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        if (v10 == 2)
        {
          v11 = 1;
          goto LABEL_12;
        }

        if (v10 == 3)
        {
          break;
        }

        if (v10 == 4)
        {
          v11 = 3;
LABEL_12:
          MEMORY[0x24C1FCBD0](v11);
          goto LABEL_14;
        }

        MEMORY[0x24C1FCBD0](0);
        Hasher._combine(_:)(v10 & 1);
LABEL_14:
        v12 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_19;
        }

        if (v2 >= v12)
        {
LABEL_19:
          v13 = *(v3 + 48);
          v14 = (v13 + v2);
          v15 = (v13 + v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = 2;
      goto LABEL_12;
    }

LABEL_22:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of DOCIdentityHashableLocation(*(v3 + 48) + 56 * v6, v21);
        Hasher.init(_seed:)();
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        dispatch thunk of Hashable.hash(into:)();
        v13 = Hasher._finalize()();
        outlined destroy of DOCIdentityHashableLocation(v21);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 56 * v2;
          v17 = (v15 + 56 * v6);
          if (v2 != v6 || v16 >= v17 + 56)
          {
            v10 = *v17;
            v11 = v17[1];
            v12 = v17[2];
            *(v16 + 48) = *(v17 + 6);
            *(v16 + 16) = v11;
            *(v16 + 32) = v12;
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v12 = 48 * v6;
        v13 = (*(v3 + 48) + 48 * v6);
        v15 = *v13;
        v14 = v13[1];
        *(v26 + 9) = *(v13 + 25);
        v25 = v15;
        v26[0] = v14;
        Hasher.init(_seed:)();
        outlined init with copy of DOCSidebarItem(&v25, v24);
        DOCSidebarItem.hashComparableValue.getter();
        String.hash(into:)();

        v16 = Hasher._finalize()();
        outlined destroy of DOCSidebarItem(&v25);
        v17 = v16 & v7;
        if (v2 >= v9)
        {
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v17)
        {
LABEL_11:
          v18 = *(v3 + 48);
          v19 = (v18 + 48 * v2);
          v20 = (v18 + v12);
          if (48 * v2 < v12 || v19 >= v20 + 3 || v2 != v6)
          {
            v10 = *v20;
            v11 = v20[2];
            v19[1] = v20[1];
            v19[2] = v11;
            *v19 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        MEMORY[0x24C1FCBD0](0);
        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized static DOCProgressCollectionListViewController.NullProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  outlined init with copy of DOCGridLayout.Spec?(a2, &v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (!v11)
  {
    if (!*(&v13 + 1))
    {
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
      goto LABEL_7;
    }

LABEL_12:
    outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMd);
LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  outlined init with copy of DOCGridLayout.Spec?(v10, v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if (!*(&v13 + 1))
  {
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    goto LABEL_12;
  }

  v8[2] = v14;
  v8[3] = v15;
  v8[4] = v16;
  v8[0] = v12;
  v8[1] = v13;
  v4 = MEMORY[0x24C1FC430](v9, v8);
  outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((MEMORY[0x24C1FC430](a1 + 80, a2 + 80) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = specialized static DOCProgressProvidingOperationIconType.== infix(_:_:)(a1 + *(v5 + 32), a2 + *(v5 + 32));
  return v6 & 1;
}

BOOL specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
    }

    specialized _NativeSet._delete(at:)(v2);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t partial apply for closure #3 in DOCProgressCollectionListViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMd);

  return closure #3 in DOCProgressCollectionListViewController.configureDataSource()(a1, a2, a3, v3 + 16);
}

unint64_t lazy protocol witness table accessor for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style()
{
  result = lazy protocol witness table cache variable for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style;
  if (!lazy protocol witness table cache variable for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style);
  }

  return result;
}

uint64_t type metadata completion function for DOCProgressCollectionListViewController()
{
  result = type metadata accessor for UICellAccessory.DisplayedState();
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

void type metadata completion function for DOCProgressCollectionListViewController.NullProgress()
{
  type metadata accessor for DOCDiffableIdentifier<DOCProgressProvidingOperation>?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for NSProgress);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DOCProgressProvidingOperationIconType();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for DOCDiffableIdentifier<DOCProgressProvidingOperation>?()
{
  if (!lazy cache variable for type metadata for DOCDiffableIdentifier<DOCProgressProvidingOperation>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCDiffableIdentifier<DOCProgressProvidingOperation>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason()
{
  result = lazy protocol witness table cache variable for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason;
  if (!lazy protocol witness table cache variable for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of DOCProgressProvidingOperationIconType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of DOCDiffableIdentifier<DOCProgressProvidingOperation>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void default argument 2 of DOCMetadataFolderSizingViewModel.init(isCloudItem:itemCount:folderSize:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

__n128 DOCMetadataFolderSizingViewModel.init(isCloudItem:itemCount:folderSize:)@<Q0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u64[0];
  v5 = a3[1].n128_u8[8];
  v6 = a3[1].n128_u8[9];
  a4->n128_u8[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u64[0] = v4;
  a4[2].n128_u8[8] = v5;
  a4[2].n128_u8[9] = v6;
  return result;
}

uint64_t DOCMetadataFolderSizingViewModel.sizeText.getter()
{
  if ((v0[41] & 1) != 0 || (*(v0 + 6) & 1) != 0 || (v0[40] & 1) != 0 || ((v1 = *(v0 + 2), v2 = *(v0 + 4), v1 != -1) ? (v3 = v2 == -1) : (v3 = 1), v3))
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v5 = result;
      v6._countAndFlagsBits = 0xD000000000000010;
      v72._object = 0x8000000249BD07E0;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v6._object = 0x8000000249BD07C0;
      v72._countAndFlagsBits = 0xD00000000000004DLL;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v72)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = *v0;
  v11 = *(v0 + 1);
  if (v2 < 0)
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v12 = objc_opt_self();
    v13 = [v12 stringFromByteCount:v2 countStyle:0];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((v1 & 0x8000000000000000) == 0)
    {
      v17 = [v12 stringFromByteCount:v1 countStyle:0];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if ((v11 & 0x8000000000000000) == 0)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v21 = result;
          v73._object = 0x8000000249BFB720;
          v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v22.value._object = 0xEB00000000656C62;
          v23._object = 0x8000000249BFB650;
          v73._countAndFlagsBits = 0xD00000000000004ELL;
          v23._countAndFlagsBits = 0xD00000000000001DLL;
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v73);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_249BA08C0;
          v26 = MEMORY[0x277D837D0];
          *(v25 + 56) = MEMORY[0x277D837D0];
          v27 = lazy protocol witness table accessor for type String and conformance String();
          *(v25 + 32) = v18;
          *(v25 + 40) = v20;
          *(v25 + 96) = v26;
          *(v25 + 104) = v27;
          *(v25 + 64) = v27;
          *(v25 + 72) = v14;
          v28 = MEMORY[0x277D83B88];
          *(v25 + 80) = v16;
LABEL_30:
          v53 = MEMORY[0x277D83C10];
          *(v25 + 136) = v28;
          *(v25 + 144) = v53;
          *(v25 + 112) = v11;
          countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

          goto LABEL_36;
        }

        goto LABEL_40;
      }
    }

    v29 = [objc_opt_self() stringFromByteCount:v2 countStyle:0];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if ((v11 & 0x8000000000000000) == 0)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v33 = result;
        v34._countAndFlagsBits = 0xD00000000000001BLL;
        v74._object = 0x8000000249BFB6D0;
        v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v35.value._object = 0xEB00000000656C62;
        v34._object = 0x8000000249BFB6B0;
        v74._countAndFlagsBits = 0xD000000000000041;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v74);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_249B9FA70;
        *(v37 + 56) = MEMORY[0x277D837D0];
        v38 = lazy protocol witness table accessor for type String and conformance String();
        *(v37 + 32) = v30;
        *(v37 + 40) = v32;
        v39 = MEMORY[0x277D83C10];
        *(v37 + 96) = MEMORY[0x277D83B88];
        *(v37 + 104) = v39;
        *(v37 + 64) = v38;
        *(v37 + 72) = v11;
        countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

LABEL_36:

        return countAndFlagsBits;
      }

      goto LABEL_41;
    }
  }

  if (v1 < 0)
  {
    return 11565;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v40 setAllowedUnits_];
  [v40 setAllowsNonnumericFormatting_];
  v41 = [v40 stringFromByteCount_];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if ((v2 & 0x8000000000000000) == 0)
  {
    v44 = [objc_opt_self() stringFromByteCount:v2 countStyle:0];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if ((v11 & 0x8000000000000000) == 0)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v47 = result;
        v75._object = 0x8000000249BFB670;
        v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v48.value._object = 0xEB00000000656C62;
        v49._object = 0x8000000249BFB650;
        v75._countAndFlagsBits = 0xD00000000000003CLL;
        v49._countAndFlagsBits = 0xD00000000000001DLL;
        v50._countAndFlagsBits = 0;
        v50._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v48, v47, v50, v75);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_249BA08C0;
        v51 = MEMORY[0x277D837D0];
        *(v25 + 56) = MEMORY[0x277D837D0];
        v52 = lazy protocol witness table accessor for type String and conformance String();
        *(v25 + 32) = v71;
        *(v25 + 40) = v43;
        *(v25 + 96) = v51;
        *(v25 + 104) = v52;
        *(v25 + 64) = v52;
        *(v25 + 72) = v70;
        v28 = MEMORY[0x277D83B88];
        *(v25 + 80) = v46;
        goto LABEL_30;
      }

      goto LABEL_42;
    }
  }

  v54 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v54 setAllowedUnits_];
  [v54 setAllowsNonnumericFormatting_];
  v55 = [v54 stringFromByteCount_];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  if (v2 < 0)
  {

    return 11565;
  }

  v59 = [objc_opt_self() stringFromByteCount:v2 countStyle:0];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  result = _DocumentManagerBundle();
  if (result)
  {
    v63 = result;
    v76._object = 0x8000000249BFB610;
    v64._countAndFlagsBits = 0x6F20402528204025;
    v64._object = 0xEF296B736964206ELL;
    v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v65.value._object = 0xEB00000000656C62;
    v76._countAndFlagsBits = 0xD00000000000003FLL;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v76);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_249B9FA70;
    v68 = MEMORY[0x277D837D0];
    *(v67 + 56) = MEMORY[0x277D837D0];
    v69 = lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 32) = v56;
    *(v67 + 40) = v58;
    *(v67 + 96) = v68;
    *(v67 + 104) = v69;
    *(v67 + 64) = v69;
    *(v67 + 72) = v60;
    *(v67 + 80) = v62;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    goto LABEL_36;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t DOCMetadataFolderSizingViewModel.shouldGrayTextOut.getter()
{
  if (*(v0 + 41))
  {
    return 1;
  }

  if (*(v0 + 24))
  {
    return 1;
  }

  if (*(v0 + 40))
  {
    return 1;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v5 = v2 == -1 || v3 == -1;
  v7 = v2 < 0 && v3 >= 0;
  if ((*v0 ^ 1))
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t DOCMetadataFolderSizingViewModel.updateFolderSize(_:)(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 DOCMetadataFolderSizingViewModel.folderSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u8[8];
  v4 = v1[2].n128_u8[9];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

__n128 DOCMetadataFolderSizingViewModel.folderSize.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u8[8] = v3;
  v1[2].n128_u8[9] = v4;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCMetadataFolderSizingViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCMetadataFolderSizingViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void UIDevice.doc_preferredAuthenticationMechanism.getter(char *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  if ((MobileGestalt_get_pearlIDCapability() & 1) == 0)
  {
    if (MobileGestalt_get_touchIDCapability())
    {

      v9 = [objc_opt_self() currentUser];
      v10 = [v9 state];

      v11 = [v10 biometry];
      if (v11)
      {
        v12 = [v11 isEnrolled];

        if (v12)
        {
          v8 = 2;
          goto LABEL_15;
        }
      }
    }

    else
    {
      oysterCapability = MobileGestalt_get_oysterCapability();

      if (oysterCapability)
      {
        v14 = [objc_opt_self() currentUser];
        v15 = [v14 state];

        v16 = [v15 biometry];
        if (v16)
        {
          v17 = [v16 isEnrolled];

          if (v17)
          {
            v8 = 4;
            goto LABEL_15;
          }
        }
      }
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v4 = [objc_opt_self() currentUser];
  v5 = [v4 state];

  v6 = [v5 biometry];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [v6 isEnrolled];

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = 3;
LABEL_15:
  *a1 = v8;
}

objc_class *DOCAuthenticationMechanism.localizedDescription.getter()
{
  v1 = *v0;
  result = _DocumentManagerBundle();
  v3 = result;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      if (!result)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v13 = 0x8000000249BFB7F0;
      v5 = 0x64695F6863756F74;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v8 = 0x4449206863756F54;
    }

    else
    {
      if (v1 == 3)
      {
        if (result)
        {
          v4 = 0xD000000000000038;
          v13 = 0x8000000249BFB7B0;
          v5 = 0x64695F65636166;
          v6 = 0x617A696C61636F4CLL;
          v7 = 0xEB00000000656C62;
          v8 = 0x2044492065636146;
          v9 = 0xE700000000000000;
          v10.super.isa = v3;
          v11 = 0xE800000000000000;
LABEL_16:
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v6, v10, *&v8, *&v4)._countAndFlagsBits;

          return countAndFlagsBits;
        }

        goto LABEL_18;
      }

      if (!result)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v13 = 0x8000000249BFB770;
      v5 = 0x64695F726573796FLL;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v8 = 0x444920636974704FLL;
    }

LABEL_15:
    v9 = 0xE800000000000000;
    v10.super.isa = v3;
    v11 = 0xE800000000000000;
    v4 = 0xD000000000000039;
    goto LABEL_16;
  }

  if (!v1)
  {
    if (result)
    {
      v13 = 0x8000000249BFB870;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v5 = 1701736302;
      v4 = 0xD000000000000044;
      v9 = 0xE400000000000000;
      v10.super.isa = v3;
      v8 = 1701736270;
      v11 = 0xE400000000000000;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (result)
  {
    v8 = 0x65646F6373736150;
    v13 = 0x8000000249BFB830;
    v6 = 0x617A696C61636F4CLL;
    v7 = 0xEB00000000656C62;
    v5 = 0x65646F6373736170;
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

void static DOCAuthenticationMechanism.current.getter(char *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  if (!MobileGestalt_get_pearlIDCapability())
  {
    if (MobileGestalt_get_touchIDCapability())
    {

      v4 = 2;
      goto LABEL_9;
    }

    oysterCapability = MobileGestalt_get_oysterCapability();

    if (oysterCapability)
    {
      v4 = 4;
      goto LABEL_9;
    }

LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  v4 = 3;
LABEL_9:
  *a1 = v4;
}

Swift::Int DOCAuthenticationMechanism.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

id specialized static UIImage.doc_executablesFrameworkImage(named:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BCF430);
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = MEMORY[0x24C1FAD20](a1, a2);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

  return v8;
}

unint64_t lazy protocol witness table accessor for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism()
{
  result = lazy protocol witness table cache variable for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism;
  if (!lazy protocol witness table cache variable for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t DOCFileProviderSource.isRootWritable.getter()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v30 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v16)
  {
    return 0;
  }

  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain) isReadOnly])
  {
    return 1;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v31 = (v18 + 16);
  v33 = v16;
  v19 = dispatch_semaphore_create(0);
  v34 = v7;
  v20 = v19;
  v32 = [objc_opt_self() defaultManager];
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  aBlock[4] = partial apply for closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_156;
  v22 = _Block_copy(aBlock);
  v35 = v18;
  v23 = v33;

  v24 = v20;

  v25 = v32;
  [v32 doc:v23 fetchRootNodeForProviderDomain:v22 completionHandler:?];
  _Block_release(v22);

  static DispatchTime.now()();
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x277D85188], v1);
  MEMORY[0x24C1FAA90](v10, v5);
  (*(v2 + 8))(v5, v1);
  v26 = *(v34 + 8);
  v26(v10, v6);
  MEMORY[0x24C1FBB60](v15);
  v26(v15, v6);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (v27 = v31, swift_beginAccess(), *v27))
  {
    v28 = [*v27 isWritable];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_249B9A480;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
    strcpy((v29 + 32), "isRootWritable");
    *(v29 + 47) = -18;
    os_log(_:dso:log:type:_:)();

    v28 = 0;
  }

  return v28;
}

id DOCSidebarItem.underlyingFPItem.getter()
{
  v1 = *(v0 + 40);
  if (v1 != 3 && v1 != 0)
  {
    return 0;
  }

  v4 = *v0;
  v3 = *v0;
  return v4;
}

BOOL DOCSidebarViewController.canReorderItemsInSection(_:proposedItemToReorder:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x440))();
  v6 = (*(a2 + 72))(v5, ObjectType, a2);
  if ((*(a2 + 56))(ObjectType, a2) & 1) != 0 && (DOCSidebarItem.movable.getter())
  {
    v7 = *(v6 + 16);

    return v7 > 1;
  }

  else
  {

    return 0;
  }
}

void DOCSidebarViewController.commitUpdateItemOrderingInSection(_:newItemOrdering:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x520))();
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    ObjectType = swift_getObjectType();
    v12 = (*(a2 + 16))(ObjectType, a2);
    v13 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v14 = v13(v12);

    swift_beginAccess();
    v15 = *(v10 + 16) + 1;
    if (__OFADD__(*(v10 + 16), 1))
    {
      __break(1u);
    }

    else
    {
      *(v10 + 16) = v15;
      if (v15 == 1)
      {
        v16._countAndFlagsBits = 0x655274696D6D6F63;
        v16._object = 0xED0000726564726FLL;
        DOCSidebarViewController.beginDeferReloadsForUIChange(logID:)(v16);
      }

      v17 = (*((*v7 & *v4) + 0x440))();
      v18 = swift_allocObject();
      *(v18 + 16) = v10;
      *(v18 + 24) = v4;
      v19 = *(*v14 + 416);

      v20 = v4;
      v19(a3, v17, v9, partial apply for closure #1 in closure #1 in DOCSidebarViewController.commitUpdateItemOrderingInSection(_:newItemOrdering:), v18);
    }
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v21 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.indexPathForAppendingItem(toSection:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v4 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v5)
  {
    v6 = 1;
LABEL_8:
    v14 = type metadata accessor for IndexPath();
    return (*(*(v14 - 8) + 56))(a2, v6, 1, v14);
  }

  v7 = v4;
  ObjectType = swift_getObjectType();
  v9 = *(a1 + 64);
  v15 = v9(ObjectType, a1) & 1;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
    v11 = v12 - (v9(ObjectType, a1) & (v12 > 0));
  }

  result = v11 + v15;
  if (!__OFADD__(v11, v15))
  {
    MEMORY[0x24C1F80E0](result, v7);
    v6 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t DOCSidebarDropProposal.debugInfo.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(21);
  type metadata accessor for IndexPath();
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x24C1FAEA0](0x28746E65746E6920, 0xE800000000000000);
  v3 = [v1 intent];
  v4 = 1061109567;
  if (v3 == 2)
  {
    v4 = 1330925129;
  }

  if (v3 == 1)
  {
    v5 = 710164778;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x24C1FAEA0](v5, 0xE400000000000000);

  v6 = 0xE600000000000000;
  MEMORY[0x24C1FAEA0](0x28706F202C29, 0xE600000000000000);
  v7 = [v1 operation];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v6 = 0xE400000000000000;
      v8 = 2037411651;
      goto LABEL_16;
    }

    if (v7 == 3)
    {
      v6 = 0xE400000000000000;
      v8 = 1702260557;
      goto LABEL_16;
    }

LABEL_13:
    v6 = 0x8000000249BEF570;
    v8 = 0xD000000000000014;
    goto LABEL_16;
  }

  if (!v7)
  {
    v8 = 0x6C65636E6143;
    goto LABEL_16;
  }

  if (v7 != 1)
  {
    goto LABEL_13;
  }

  v6 = 0xE90000000000006ELL;
  v8 = 0x6564646962726F46;
LABEL_16:
  MEMORY[0x24C1FAEA0](v8, v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return v2;
}

Swift::Void __swiftcall DOCSidebarViewController.configureForHandlingDragAndDrop()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSidebarViewController(0);
  v1 = objc_msgSendSuper2(&v3, sel_collectionView);
  if (v1)
  {
    v2 = v1;
    [v1 setDropDelegate_];
    [v2 setSpringLoaded_];
  }
}

uint64_t UIDropOperation.debugInfo.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1702260557;
      }

      return 0xD000000000000014;
    }

    return 2037411651;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6564646962726F46;
      }

      return 0xD000000000000014;
    }

    return 0x6C65636E6143;
  }
}

BOOL UIDropSession.hasDOCNode(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_unknownObjectRetain();
    static UTType.item.getter();
    v8 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v1, v7);
    (*(v4 + 8))(v7, v3);
    swift_getObjectType();
    v9 = swift_unknownObjectRetain();
    v10 = specialized Array<A>.contains(node:)(v9, v8);

    swift_unknownObjectRelease_n();
  }

  else
  {
    return 0;
  }

  return v10;
}

uint64_t DOCSidebarViewController.collectionView(_:targetIndexPathForMoveFromItemAt:toProposedIndexPath:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v28 - v13;
  if ([a1 _hasActiveDrop])
  {
    DOCSidebarViewController.dropReorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)(a3, a4);
    v15 = 0xE400000000000000;
    v16 = 1886351972;
  }

  else
  {
    DOCSidebarViewController.reorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)(a2, a4);
    v15 = 0xE700000000000000;
    v16 = 0x726564726F6572;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x24C1FAEA0](0x6F46746567726174, 0xEF5B2065766F4D72);
  MEMORY[0x24C1FAEA0](v16, v15);

  MEMORY[0x24C1FAEA0](0x203A6D6F7266205DLL, 0xE800000000000000);
  v17 = type metadata accessor for IndexPath();
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v18);

  MEMORY[0x24C1FAEA0](0x203A6F74202CLL, 0xE600000000000000);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v19);

  MEMORY[0x24C1FAEA0](0x75746572202D2D20, 0xEE0020676E696E72);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v20);

  v21 = v28;
  v22 = v29;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v23(0xD000000000000015, 0x8000000249BFB8F0, v21, v22);

  result = (*((*MEMORY[0x277D85000] & *v5) + 0x3D8))(v24);
  if (result)
  {
    v26 = *(result + 32);

    v27 = *(v17 - 8);
    (*(v27 + 16))(v14, a4, v17);
    (*(v27 + 56))(v14, 0, 1, v17);
    (*(*v26 + 104))(v14);
  }

  return result;
}

uint64_t DOCSidebarViewController.reorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (IndexPath.row.getter())
  {
    v9 = IndexPath.row.getter();
  }

  else
  {
    v9 = 1;
  }

  v10 = IndexPath.section.getter();
  MEMORY[0x24C1F80E0](v9, v10);
  if (!DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(a1, 0))
  {
    (*(v5 + 8))(v8, v4);
    return (*(v5 + 16))(a2, a1, v4);
  }

  v12 = v11;
  v26 = a2;
  v13 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v8, 0);
  if (!v13)
  {
    (*(v5 + 8))(v8, v4);
LABEL_15:
    swift_unknownObjectRelease();
    return (*(v5 + 16))(v26, a1, v4);
  }

  v15 = v13;
  v16 = v14;
  ObjectType = swift_getObjectType();
  if (((*(v12 + 104))(v15, v16, ObjectType, v12) & 1) == 0)
  {
LABEL_14:
    (*(v5 + 8))(v8, v4);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v18 = swift_getObjectType();
  if ((*(v16 + 16))(v18, v16) == 3)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v21 = DOCSidebarViewController.indexOfLastReorderableItem(in:)(v15, v16);
  if (v22)
  {
    goto LABEL_14;
  }

  v23 = v21;
  if (v21 < IndexPath.row.getter())
  {
    v24 = IndexPath.section.getter();
    MEMORY[0x24C1F80E0](v23, v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

LABEL_18:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v5 + 32))(v26, v8, v4);
}

uint64_t DOCSidebarViewController.dropReorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v15 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D8))(v7);
  if (v10 && (v11 = (*(*v10 + 112))(), , v11))
  {
    (*(v15 + 16))(v9, v11 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath, v5);

    return (*(v15 + 32))(a2, v9, v5);
  }

  else
  {
    v13 = *(v15 + 16);

    return v13(a2, a1, v5);
  }
}

void DOCSidebarViewController.performDrop(in:with:)(void *a1, char *a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v9, v10);
  v13 = v111 - v12;
  v14 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D8))(v11);
  if (!v14 || (v15 = (*(*v14 + 112))(v14), , !v15))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = *(*static DOCSidebarViewController.dbg.shared + 144);

    v19(0xD000000000000020, 0x8000000249BFBBF0);

    return;
  }

  v16 = *(v6 + 16);
  v115 = v6 + 16;
  v114 = v16;
  v16(v13, &v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v5);
  v17 = IndexPath.row.getter();
  v123 = v2;
  if (v17 < 1)
  {
    v112 = NSNotFound.getter();
  }

  else
  {
    v18 = IndexPath.row.getter();
    if (__OFSUB__(v18, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    v112 = v18 - 1;
  }

  v113 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  v124 = v13;
  v125 = v15;
  v122 = v5;
  v120 = v6;
  v119 = [a2 session];
  v20 = a2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  LODWORD(v121) = static os_log_type_t.debug.getter();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 56) = MEMORY[0x277D837D0];
  v23 = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 64) = v23;
  *(v22 + 32) = 0xD000000000000015;
  *(v22 + 40) = 0x8000000249BFBC20;
  v118 = 0x8000000249BFBC20;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  *(v22 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  *(v22 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject);
  *(v22 + 72) = v24;
  v117 = v20;
  swift_unknownObjectRetain();
  os_log(_:dso:log:type:_:)();

  v26 = v125;
  v121 = *((*MEMORY[0x277D85000] & *v125) + 0x60);
  v27 = (v121)(v25);
  v28 = v124;
  v29 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v124, v27 & 1);
  if (!v29)
  {
    static os_log_type_t.debug.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_249B9A480;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = v23;
    v40 = v118;
    *(v39 + 32) = 0xD000000000000015;
    *(v39 + 40) = v40;
    os_log(_:dso:log:type:_:)();

    swift_unknownObjectRelease();

    (*(v120 + 8))(v28, v122);
    return;
  }

  v31 = v29;
  v32 = v30;
  v111[2] = v21;
  v118 = v23;
  ObjectType = swift_getObjectType();
  v34 = *(v32 + 16);
  v35 = ObjectType;
  v36 = v32;
  v37 = v34();
  if (v37 <= 2)
  {
    if (v37 - 1 >= 2)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v120 + 8))(v124, v122);
      return;
    }

    v38 = (v34)(v35, v32);
    v111[1] = v31;
    if (!v38)
    {
      goto LABEL_40;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      if ((v34)(v35, v32) == 1)
      {
LABEL_40:

        goto LABEL_54;
      }

      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) == 0)
      {
        v64 = (v121)(v64);
        if (v64)
        {
          v73 = v117;
          v74 = [v117 items];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UICollectionViewDropItem_pMd);
          v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v75 >> 62)
          {
            v76 = __CocoaSet.count.getter();
          }

          else
          {
            v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v77 = v120;
          v78 = v122;

          if (v76 >= 1)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
            v79 = v113;
            v80 = v124;
            v114(v113, v124, v78);
            v81 = (*(v77 + 80) + 24) & ~*(v77 + 80);
            v82 = (v7 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
            v83 = swift_allocObject();
            v84 = v79;
            v85 = v123;
            *(v83 + 16) = v123;
            (*(v77 + 32))(v83 + v81, v84, v78);
            *(v83 + v82) = v73;
            *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
            swift_unknownObjectRetain();
            v86 = v85;
            static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:)(v119, v86, partial apply for closure #1 in DOCSidebarViewController.performDrop(in:with:), v83);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*(v77 + 8))(v80, v78);
            return;
          }

          (*(v77 + 8))(v124, v78);

          goto LABEL_61;
        }
      }
    }

LABEL_54:
    v87 = v125;
    v88 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v125) + 0x68))(v64))
    {
      v89 = v124;
      v90 = v117;
      specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(v123, v124, v116, v117);
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v89, 1, &v127);
      v91 = v119;
      v92 = v120;
      v93 = v122;
      if (v132)
      {
        if (v132 != 3)
        {
          if (v132 == 255)
          {
            static os_log_type_t.debug.getter();
            v94 = swift_allocObject();
            *(v94 + 16) = xmmword_249B9A480;
            v95 = v118;
            *(v94 + 56) = MEMORY[0x277D837D0];
            *(v94 + 64) = v95;
            *(v94 + 32) = 0xD00000000000001ELL;
            *(v94 + 40) = 0x8000000249BFBB60;
            os_log(_:dso:log:type:_:)();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          }

          (*(v92 + 8))(v124, v93);
          return;
        }

        v96 = v127;
        outlined copy of DOCSidebarItem(v127, v128, v129, v130, v131, 3u);
      }

      else
      {
        v96 = v127;
        outlined copy of DOCSidebarItem(v127, v128, v129, v130, v131, 0);
      }

      v97 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      swift_getObjectType();
      v98 = swift_unknownObjectRetain();
      v99 = specialized static FPItem.sessionContainsDOCNode(_:)(v98, v97);
      v100 = swift_unknownObjectRelease();
      if (v99)
      {
        v101 = v96;
        specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v91, v123, v97, v101);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_69:
        outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        (*(v92 + 8))(v124, v122);
        return;
      }

      v102 = (*((*v88 & *v123) + 0x440))(v100);
      v103 = DOCImmutableSidebarSection.fpItems(forEditingMode:)(v102, v35, v36);
      if (v103 >> 62)
      {
        v110 = __CocoaSet.count.getter();

        if (v110)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v104)
        {
LABEL_68:
          v105 = [objc_msgSend(v90 session)];
          swift_unknownObjectRelease();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
          v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v107 = v96;
          _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(v106, v107, v123, 0, 0);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_69;
        }
      }

      (*(v92 + 8))(v124, v122);
      outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    (*(v120 + 8))(v124, v122);

LABEL_61:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  if (v37 == 3)
  {
    v41 = v125;
    v42 = MEMORY[0x277D85000];
    v43 = (*((*MEMORY[0x277D85000] & *v125) + 0x68))();
    v44 = v124;
    if ((v43 & 1) == 0)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v120 + 8))(v44, v122);
      return;
    }

    DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v124, 1, &v127);
    v46 = v119;
    v45 = v120;
    v47 = v122;
    if (v132 == 1)
    {
      type metadata accessor for DOCFileProviderSource();
      v65 = swift_dynamicCastClass();
      if (v65)
      {
        v66 = (*((*v42 & *v65) + 0xE0))();
        if (!v66)
        {

          outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          goto LABEL_78;
        }

        v67 = v66;
        v68 = v123;
        v69 = v117;
        specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(v123, v44, v116, v117);
        v70 = [v69 proposal];
        v71 = [v70 operation];

        v67(v46, v71, v68);
        outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67);
      }

      else
      {
        outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      }
    }

    else
    {
      if (v132 == 255)
      {
        static os_log_type_t.debug.getter();
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_249B9A480;
        v49 = v118;
        *(v48 + 56) = MEMORY[0x277D837D0];
        *(v48 + 64) = v49;
        *(v48 + 32) = 0xD00000000000001ELL;
        *(v48 + 40) = 0x8000000249BFBB60;
        os_log(_:dso:log:type:_:)();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_79:
        (*(v45 + 8))(v44, v47);
        return;
      }

      outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    }

LABEL_78:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_79;
  }

  v13 = v124;
  a2 = v125;
  if (v37 == 4)
  {
LABEL_22:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v120 + 8))(v13, v122);
    return;
  }

  if (v121())
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_30:
      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.UI);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.fault.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v120;
      v55 = v122;
      if (v53)
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2493AC000, v51, v52, "Unexpected drag operation. Tag section only supports drop onto existing items", v56, 2u);
        MEMORY[0x24C1FE850](v56, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      (*(v54 + 8))(v13, v55);
      return;
    }

LABEL_81:
    swift_once();
    goto LABEL_30;
  }

  if (((*((*MEMORY[0x277D85000] & *a2) + 0x68))() & 1) == 0)
  {
    goto LABEL_22;
  }

  v57 = v123;
  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v13, 1, &v127);
  v58 = v119;
  v59 = v120;
  v60 = v122;
  if (v132 == 2)
  {
    v108 = v127;
    specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(v57, v13, v116, v117);
    v109 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    outlined init with copy of DOCGridLayout.Spec?(&v127, v126, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v58, v57, v109, v108);
    outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  else if (v132 == 255)
  {
    static os_log_type_t.debug.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_249B9A480;
    v62 = v118;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = v62;
    *(v61 + 32) = 0xD00000000000001ELL;
    *(v61 + 40) = 0x8000000249BFBB60;
    os_log(_:dso:log:type:_:)();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of CharacterSet?(&v127, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  (*(v59 + 8))(v13, v60);
}

void DOCSidebarViewController.updateDropPointIndicatorView()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D8))();
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {

      v7 = [objc_opt_self() standardUserDefaults];
      v8 = MEMORY[0x24C1FAD20](0xD000000000000035, 0x8000000249BEF4C0);
      v9 = [v7 BOOLForKey_];

      if (v9)
      {
        v10 = *((*v1 & *v0) + 0x3C0);
        v11 = v10();
        if (v11)
        {

          v12 = v10();
          if (v12)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v19 = [objc_allocWithZone(type metadata accessor for DOCSidebarViewController.DebugDropIndicatorView()) init];
          v20 = (*((*v1 & *v0) + 0x3C8))(v19);
          v12 = (v10)(v20);
          if (v12)
          {
LABEL_7:
            v13 = v12;
            v14 = [v0 view];
            if (v14)
            {
              v15 = v14;
              v16 = *(v3 + 16);
              v17 = *((*v1 & *v13) + 0x108);
              swift_unknownObjectRetain();
              v17(v15, v16, v3);

              swift_unknownObjectRelease();
              return;
            }

LABEL_20:
            __break(1u);
            return;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }

  v18 = (*((*v1 & *v0) + 0x3C0))(v2);
  if (v18)
  {
    v21 = v18;
    (*((*v1 & *v18) + 0x110))();
  }
}

unint64_t DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(void *a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCDragPasteboardType();
  v7 = *(v6 - 8);
  v320 = v6;
  v321 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v325 = &v304 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v324 = &v304 - v12;
  v323 = type metadata accessor for UTType();
  v319 = *(v323 - 8);
  MEMORY[0x28223BE20](v323, v13);
  v322 = &v304 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v338 = (&v304 - v17);
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v332 = &v304 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v331 = &v304 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v336 = &v304 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = (&v304 - v31);
  v33 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  ObjectType = swift_getObjectType();
  v333 = v33;
  v326 = ObjectType;
  LODWORD(v337) = specialized static FPItem.sessionContainsFolder(_:)(a1);
  v341 = swift_allocBox();
  v35 = *(v19 + 2);
  v339 = v36;
  v334 = v35;
  v335 = v19 + 16;
  v35(v36, a2, v18);
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v357);
  v37 = *(v29 + 8);
  v328 = v32;
  v329 = v29 + 8;
  v330 = v28;
  v327 = v37;
  v37(v32, v28);
  if (v357[0])
  {
    v368 = v358;
    *v369 = v359[0];
    *&v369[9] = *(v359 + 9);
    v370[0] = v357[0];
    v370[1] = v357[1];
    outlined destroy of DOCSidebarViewController.OutlineSection(v370);
    if (v369[24] != 255)
    {
      v38 = &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd;
      v39 = &v368;
LABEL_4:
      outlined destroy of CharacterSet?(v39, v38);
      goto LABEL_9;
    }

    if (v337)
    {
      v40 = IndexPath.section.getter();
      v41 = v338;
      DOCSidebarViewController.indexPathForAppendingToSectionAboveSection(_:)(v40, v338);
      if ((*(v19 + 6))(v41, 1, v18) == 1)
      {
        v38 = &_s10Foundation9IndexPathVSgMd;
        v39 = v41;
        goto LABEL_4;
      }

      v42 = v336;
      (*(v19 + 4))(v336, v41, v18);
      (*(v19 + 5))(v339, v42, v18);
    }
  }

LABEL_9:
  v336 = v19;
  v340 = a1;
  v338 = v3;
  v360 = 0;
  v361 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000033, 0x8000000249BFB9B0);
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v43);

  i = v360;
  rawValue = v361;
  v46 = v18;
  if (one-time initialization token for shared != -1)
  {
LABEL_119:
    swift_once();
  }

  v47 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v47(0x6567726154646E64, 0xEB00000000322E74, i, rawValue);

  v360 = 0;
  v361 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000033, 0x8000000249BFB9F0);
  v48 = v339;
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v49);

  v50 = v360;
  v51 = v361;
  v52 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v52(0x6567726154646E64, 0xEB00000000332E74, v50, v51);

  v53 = v338;
  v54 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v48, 1);
  if (v54)
  {
    i = v54;
    v56 = v55;
    v318 = v46;
    v57 = MEMORY[0x277D85000];
    LODWORD(v317) = (*((*MEMORY[0x277D85000] & *v53) + 0x440))();
    v58 = swift_getObjectType();
    v46 = 0;
    v59 = (*(v56 + 16))(v58, v56);
    rawValue = 0x278FA9000;
    if (v59 <= 2)
    {
      v60 = v340;
      if (!v59)
      {
        goto LABEL_96;
      }

      if (v59 == 1)
      {
        if (((*(v56 + 32))(v58, v56) & 1) != 0 && (v61 = operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(v53, v341, v317 != 0, v340), (v62 & 1) == 0))
        {
          v100 = v61;
          swift_beginAccess();
          v101 = v332;
          v102 = v48;
          v103 = v318;
          v104 = v334;
          v334(v332, v102, v318);
          v105 = type metadata accessor for DOCSidebarDropProposal(0);
          v106 = objc_allocWithZone(v105);
          v104(&v106[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v101, v103);
          v353.receiver = v106;
          v57 = MEMORY[0x277D85000];
          v353.super_class = v105;
          rawValue = 0x278FA9000;
          v46 = objc_msgSendSuper2(&v353, sel_initWithDropOperation_intent_, v100, 2);
          (*(v336 + 1))(v101, v103);
          v107 = v46;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_95;
      }

      v82 = static FPItem.dropSessionContainsSMBItems(_:)(v340);
      destinationItem #1 (logIfMissing:) in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(1, &v360);
      v83 = v365;
      if (((v365 == 255) & v337) == 1)
      {
        swift_beginAccess();
        v84 = v332;
        v85 = v318;
        v86 = v334;
        v334(v332, v48, v318);
        v87 = type metadata accessor for DOCSidebarDropProposal(0);
        v88 = objc_allocWithZone(v87);
        v86(&v88[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v84, v85);
        v350.receiver = v88;
        v350.super_class = v87;
        v46 = objc_msgSendSuper2(&v350, sel_initWithDropOperation_intent_, 3, 1);
        (*(v336 + 1))(v84, v85);
        v89 = v46;
LABEL_93:
        v57 = MEMORY[0x277D85000];
        goto LABEL_94;
      }

      v91 = v360;
      v92 = v361;
      v93 = i;
      v95 = v362;
      v94 = v363;
      v331 = v364;
      v96 = *(v56 + 32);
      v337 = v93;
      if ((v96(v58, v56) & 1) == 0)
      {
LABEL_147:
        outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        goto LABEL_148;
      }

      if (v82 || (specialized static FPItem.sessionContainsLocations(_:)(v340, v333) & 1) == 0 && (specialized static FPItem.sessionContainsFavorites(_:)(v340), (v109 & 1) == 0))
      {
        v53 = v338;
        v97 = v340;
        v98 = operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(v338, v341, v317 != 0, v340);
        if (v99)
        {
          outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          v46 = 0;
        }

        else
        {
          v111 = v98;
          v112 = v339;
          swift_beginAccess();
          v113 = v332;
          v114 = v318;
          v115 = v334;
          v334(v332, v112, v318);
          v116 = type metadata accessor for DOCSidebarDropProposal(0);
          v117 = objc_allocWithZone(v116);
          v115(&v117[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v113, v114);
          v352.receiver = v117;
          v352.super_class = v116;
          v46 = objc_msgSendSuper2(&v352, sel_initWithDropOperation_intent_, v111, 2);
          outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          (*(v336 + 1))(v113, v114);
          v118 = v46;
        }

        v57 = MEMORY[0x277D85000];
        rawValue = 0x278FA9000;
        v60 = v97;
        goto LABEL_96;
      }

      v110 = v360;
      if (v365 == 3)
      {
        outlined copy of DOCSidebarItem(v91, v92, v95, v94, v331, v83);
      }

      else if (v365)
      {
        v110 = 0;
      }

      else
      {
        outlined copy of DOCSidebarItem(v91, v92, v95, v94, v331, v83);
      }

      v53 = v338;
      v145 = v339;
      v57 = MEMORY[0x277D85000];
      v146 = v317;
      v147 = UIDropSession.hasDOCNode(_:)(v110);
      swift_unknownObjectRelease();
      if (!v146)
      {
        specialized static FPItem.sessionContainsFavorites(_:)(v340);
        if (((v148 | v147) & 1) == 0)
        {
          v161 = v340;
          v162 = operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(v53, v341, 0, v340);
          if (v163)
          {
            v164 = 3;
          }

          else
          {
            v164 = v162;
          }

          swift_beginAccess();
          v46 = DOCSidebarViewController.autoIntent_dropTargetProposalForUpdatedSession(_:destinationIndexPath:operationIfInsertingInto:)(v161, v145, v164);
          swift_endAccess();
          outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          v165 = v46;
          rawValue = 0x278FA9000;
          v60 = v161;
          goto LABEL_96;
        }
      }

      swift_beginAccess();
      v149 = v332;
      v150 = v318;
      v151 = v334;
      v334(v332, v145, v318);
      v152 = type metadata accessor for DOCSidebarDropProposal(0);
      v153 = objc_allocWithZone(v152);
      v151(&v153[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v149, v150);
      v351.receiver = v153;
      v351.super_class = v152;
      v46 = objc_msgSendSuper2(&v351, sel_initWithDropOperation_intent_, 3, 1);
      outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      (*(v336 + 1))(v149, v150);
      goto LABEL_72;
    }

    v60 = v340;
    if (v59 == 3)
    {
      v337 = i;
      swift_beginAccess();
      v66 = v331;
      v67 = v318;
      v334(v331, v48, v318);
      v68 = v328;
      DOCSidebarViewController.diffableSnapshot()();
      specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(&v360);
      v327(v68, v330);
      v69 = *(v336 + 1);
      v336 += 8;
      v69(v66, v67);
      if (!v360)
      {
        v46 = 0;
        v60 = v340;
LABEL_43:
        v57 = MEMORY[0x277D85000];
        goto LABEL_96;
      }

      v328 = v69;
      v70 = v364;
      v46 = v365;
      i = v366;
      LODWORD(v71) = v367;
      v330 = v363;
      v331 = v362;
      v371[0] = v360;
      v371[1] = v361;
      outlined destroy of DOCSidebarViewController.OutlineSection(v371);
      if (v71 != 255)
      {
        v329 = v70;
        if ((*(v56 + 32))(v58, v56))
        {
          specialized static DOCDocumentSource.sourcesFromDropSession(_:)(v340);
          if (v72 >> 62)
          {
            goto LABEL_196;
          }

          v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_30;
        }

        outlined consume of DOCSidebarItem?(v331, v330, v329, v46, i, v71);
      }

LABEL_47:
      v46 = 0;
      v57 = MEMORY[0x277D85000];
LABEL_95:
      v60 = v340;
      goto LABEL_96;
    }

    if (v59 == 4)
    {
      goto LABEL_96;
    }

    v64 = v340;
    destinationItem #1 (logIfMissing:) in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(1, &v360);
    v65 = v365;
    if (v365 != 255)
    {
      if (((*(v56 + 32))(v58, v56) & 1) == 0)
      {
        outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        v46 = 0;
LABEL_94:
        rawValue = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        goto LABEL_95;
      }

      if (v65 != 2)
      {
        v108 = v340;
LABEL_49:
        outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        v60 = v108;
        v46 = 0;
        rawValue = 0x278FA9000;
        goto LABEL_96;
      }

      rawValue = 0x278FA9000;
      if (v317)
      {
        v90 = v340;
        outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        v60 = v90;
        v46 = 0;
        goto LABEL_96;
      }

      specialized static DOCTag.tagsFromDropSession(_:)(v340);
      if (v130 >> 62)
      {
LABEL_198:
        v131 = __CocoaSet.count.getter();
      }

      else
      {
        v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v132 = v333;
      v126 = v326;

      if (v131 >= 1)
      {
        swift_beginAccess();
        v133 = v332;
        v134 = v48;
        v135 = v318;
        v136 = v334;
        v334(v332, v134, v318);
        v137 = type metadata accessor for DOCSidebarDropProposal(0);
        v138 = objc_allocWithZone(v137);
        v136(&v138[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v133, v135);
        v354.receiver = v138;
        v354.super_class = v137;
        v46 = objc_msgSendSuper2(&v354, sel_initWithDropOperation_intent_, 3, 1);
        outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        (*(v336 + 1))(v133, v135);
LABEL_72:
        v154 = v46;
        goto LABEL_94;
      }

      v64 = v340;
      if (specialized static FPItem.sessionContainsDOCNode(_:)(v340, v132))
      {
        v337 = i;
        v155 = v322;
        static UTType.item.getter();
        rawValue = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v64, v155);
        (*(v319 + 8))(v155, v323);
        v333 = (rawValue >> 62);
        if (rawValue >> 62)
        {
          goto LABEL_201;
        }

        for (i = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
        {
          v71 = MEMORY[0x277D84F90];
          if (i)
          {
            v356 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
            if (i < 0)
            {
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
              goto LABEL_205;
            }

            v156 = 0;
            v71 = v356;
            do
            {
              if ((rawValue & 0xC000000000000001) != 0)
              {
                v157 = MEMORY[0x24C1FC540](v156, rawValue);
              }

              else
              {
                v157 = *(rawValue + 8 * v156 + 32);
                swift_unknownObjectRetain();
              }

              v158 = [v157 providerDomainID];
              swift_unknownObjectRelease();
              v356 = v71;
              v160 = *(v71 + 16);
              v159 = *(v71 + 24);
              v53 = (v160 + 1);
              if (v160 >= v159 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v159 > 1), v160 + 1, 1);
                v71 = v356;
              }

              ++v156;
              *(v71 + 16) = v53;
              *(v71 + 8 * v160 + 32) = v158;
            }

            while (i != v156);
          }

          else
          {
            v53 = *(MEMORY[0x277D84F90] + 16);
            v179 = MEMORY[0x277D84F90];
            if (!v53)
            {
LABEL_132:

              v186 = *(v179 + 16);

              v331 = v186;
              v46 = rawValue & 0xFFFFFFFFFFFFFF8;
              if (v333)
              {
                v187 = __CocoaSet.count.getter();
              }

              else
              {
                v187 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v57 = 0;
              v58 = (rawValue & 0xC000000000000001);
              v53 = *MEMORY[0x277CC6050];
              v48 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              while (v187 != v57)
              {
                if (v58)
                {
                  i = MEMORY[0x24C1FC540](v57, rawValue);
                  if (__OFADD__(v57, 1))
                  {
                    goto LABEL_144;
                  }
                }

                else
                {
                  if (v57 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_198;
                  }

                  i = *(rawValue + 8 * v57 + 32);
                  swift_unknownObjectRetain();
                  if (__OFADD__(v57, 1))
                  {
LABEL_144:
                    __break(1u);
                    break;
                  }
                }

                v188 = [i canPerform_];
                swift_unknownObjectRelease();
                ++v57;
                if ((v188 & 1) == 0)
                {

                  goto LABEL_147;
                }
              }

              v53 = v338;
              v57 = MEMORY[0x277D85000];
              if (v331)
              {
                v108 = v340;
                goto LABEL_49;
              }

              v197 = v339;
              swift_beginAccess();
              v198 = v332;
              v199 = v318;
              v200 = v334;
              v334(v332, v197, v318);
              v201 = type metadata accessor for DOCSidebarDropProposal(0);
              v202 = objc_allocWithZone(v201);
              v200(&v202[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v198, v199);
              v355.receiver = v202;
              v355.super_class = v201;
              v46 = objc_msgSendSuper2(&v355, sel_initWithDropOperation_intent_, 3, 2);
              outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
              (*(v336 + 1))(v198, v199);
              v203 = v46;
              v60 = v340;
              rawValue = 0x278FA9000;
              goto LABEL_96;
            }
          }

          v180 = 0;
          v48 = (v71 + 32);
          v181 = v53 - 1;
          v179 = MEMORY[0x277D84F90];
LABEL_122:
          v46 = v180;
          while (v46 < *(v71 + 16))
          {
            v180 = (v46 + 1);
            i = v48[v46];
            if (DOCProviderDomainIDIsSharedServerDomainID())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v356 = v179;
              v331 = v181;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v179 + 16) + 1, 1);
                v179 = v356;
              }

              v184 = *(v179 + 16);
              v183 = *(v179 + 24);
              v185 = v184 + 1;
              if (v184 >= v183 >> 1)
              {
                v330 = (v184 + 1);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1);
                v185 = v330;
                v179 = v356;
              }

              *(v179 + 16) = v185;
              *(v179 + 8 * v184 + 32) = i;
              v181 = v331;
              if (v331 == v46)
              {
                goto LABEL_132;
              }

              goto LABEL_122;
            }

            ++v46;
            if (v53 == v180)
            {
              goto LABEL_132;
            }
          }

          __break(1u);
LABEL_196:
          v73 = __CocoaSet.count.getter();
LABEL_30:

          if (v73 >= 1)
          {
            v74 = v332;
            v75 = v48;
            v76 = v318;
            v77 = v46;
            v327 = i;
            v78 = v334;
            v334(v332, v75, v318);
            v79 = type metadata accessor for DOCSidebarDropProposal(0);
            v80 = objc_allocWithZone(v79);
            v78(&v80[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v74, v76);
            v342.receiver = v80;
            v342.super_class = v79;
            v46 = objc_msgSendSuper2(&v342, sel_initWithDropOperation_intent_, 3, 1);
            outlined consume of DOCSidebarItem?(v331, v330, v329, v77, v327, v71);
            v328(v74, v76);
            v81 = v46;
            goto LABEL_93;
          }

          if (v71 != 1)
          {
            v140 = v330;
            v139 = v331;
            v141 = v329;
            v142 = v46;
            v143 = i;
            v144 = v71;
            goto LABEL_91;
          }

          type metadata accessor for DOCFileProviderSource();
          v119 = v331;
          v120 = swift_dynamicCastClass();
          v121 = v329;
          v122 = v330;
          if (!v120)
          {
            break;
          }

          v123 = v120;
          v316 = *((*MEMORY[0x277D85000] & *v120) + 0xE0);
          outlined copy of DOCSidebarItem(v119, v330, v329, v46, i, 1u);
          v124 = outlined copy of DOCSidebarItem(v119, v122, v121, v46, i, 1u);
          v314 = v123;
          v125 = (v316)(v124);
          if (!v125)
          {
            v170 = v329;
            outlined consume of DOCSidebarItem?(v119, v122, v329, v46, i, 1u);
            outlined consume of DOCSidebarItem?(v119, v122, v170, v46, i, 1u);
            outlined consume of DOCSidebarItem(v119, v122, v170, v46, i, 1u);
            goto LABEL_92;
          }

          v126 = v122;
          v127 = v317;
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v125);
          rawValue = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          if (v127)
          {
            v128 = v331;
            v129 = v329;
            outlined consume of DOCSidebarItem?(v331, v126, v329, v46, i, 1u);
            outlined consume of DOCSidebarItem?(v128, v126, v129, v46, i, 1u);
            outlined consume of DOCSidebarItem(v128, v126, v129, v46, i, 1u);
            goto LABEL_47;
          }

          v58 = v340;
          v171 = specialized static FPItem.sessionContainsDOCNode(_:)(v340, v333);
          v315 = v46;
          if (v171)
          {
            v172 = v331;
            v173 = v329;
            outlined consume of DOCSidebarItem?(v331, v126, v329, v46, i, 1u);
            outlined consume of DOCSidebarItem?(v172, v126, v173, v46, i, 1u);
            v174 = [v58 localDragSession];
            v327 = i;
            if (!v174)
            {
              v204 = v332;
              v205 = v318;
              v206 = v334;
              v334(v332, v48, v318);
              v207 = v173;
              v208 = type metadata accessor for DOCSidebarDropProposal(0);
              v209 = objc_allocWithZone(v208);
              v206(&v209[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v204, v205);
              v348.receiver = v209;
              v348.super_class = v208;
              rawValue = 0x278FA9000;
              v46 = objc_msgSendSuper2(&v348, sel_initWithDropOperation_intent_, 1, 2);
              outlined consume of DOCSidebarItem?(v331, v330, v207, v315, v327, 1u);
              v328(v204, v205);
              v210 = v46;
              v57 = MEMORY[0x277D85000];
              v60 = v58;
              goto LABEL_96;
            }

            swift_unknownObjectRelease();
            v175 = v322;
            static UTType.item.getter();
            rawValue = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v58, v175);
            (*(v319 + 8))(v175, v323);
            v347 = MEMORY[0x277D84F90];
            v326 = rawValue;
            if (!(rawValue >> 62))
            {
              v333 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v333)
              {
LABEL_110:
                v176 = 0;
                i = v326;
                v58 = (v326 & 0xC000000000000001);
                v46 = &lazy protocol witness table cache variable for type FPAction and conformance FPAction;
                while (1)
                {
                  if (v58)
                  {
                    v177 = MEMORY[0x24C1FC540](v176, i);
                    rawValue = v176 + 1;
                    if (__OFADD__(v176, 1))
                    {
LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    if (v176 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_200;
                    }

                    v177 = *(i + 8 * v176 + 32);
                    swift_unknownObjectRetain();
                    rawValue = v176 + 1;
                    if (__OFADD__(v176, 1))
                    {
                      goto LABEL_118;
                    }
                  }

                  v126 = [v177 doc_eligibleActions];
                  type metadata accessor for FPAction(0);
                  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
                  v178 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
                  swift_unknownObjectRelease();

                  specialized Array.append<A>(contentsOf:)(v178);
                  ++v176;
                  if (rawValue == v333)
                  {
                    rawValue = v347;
                    goto LABEL_207;
                  }
                }
              }

LABEL_206:
              rawValue = MEMORY[0x277D84F90];
LABEL_207:
              v253 = v314;
              v254 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(rawValue);

              if (v253[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8] != 1)
              {
LABEL_213:
                if (DOCFileProviderSource.isRootWritable.getter())
                {
                  if ((specialized Set.contains(_:)(*MEMORY[0x277CC6048], v254) & 1) == 0)
                  {

                    v280 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v254);

                    if (v280)
                    {
                      v242 = v332;
                      v243 = v318;
                      v281 = v334;
                      v334(v332, v339, v318);
                      v282 = type metadata accessor for DOCSidebarDropProposal(0);
                      v283 = objc_allocWithZone(v282);
                      v281(&v283[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v242, v243);
                      v345.receiver = v283;
                      v345.super_class = v282;
                      v274 = objc_msgSendSuper2(&v345, sel_initWithDropOperation_intent_, 2, 2, v304);
                      goto LABEL_243;
                    }

                    goto LABEL_246;
                  }

                  if (v333)
                  {
                    v262 = 0;
                    v323 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
                    v324 = v326 & 0xFFFFFFFFFFFFFF8;
                    v325 = (v326 & 0xC000000000000001);
                    do
                    {
                      if (v325)
                      {
                        v263 = MEMORY[0x24C1FC540](v262, v326);
                        v264 = (v262 + 1);
                        if (__OFADD__(v262, 1))
                        {
LABEL_236:
                          __break(1u);
                          goto LABEL_237;
                        }
                      }

                      else
                      {
                        if (v262 >= *(v324 + 16))
                        {
                          __break(1u);
LABEL_274:
                          __break(1u);
                          goto LABEL_275;
                        }

                        v263 = *(v326 + 8 * v262 + 32);
                        swift_unknownObjectRetain();
                        v264 = (v262 + 1);
                        if (__OFADD__(v262, 1))
                        {
                          goto LABEL_236;
                        }
                      }

                      rawValue = swift_getObjectType();
                      v126 = [v263 providerDomainID];
                      v265 = *&v314[v323];
                      if (v265)
                      {
                        i = v264;
                        v46 = [v265 identifier];
                        v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v58 = v267;
                        if (v266 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v268)
                        {
                          v270 = 1;
                        }

                        else
                        {
                          v270 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        }

                        v126 = v46;
                        v264 = i;
                      }

                      else
                      {
                        v270 = 0;
                      }

                      if ([v263 isRootItem])
                      {
                        swift_unknownObjectRelease();
                        if ((v270 & 1) == 0)
                        {
                          goto LABEL_248;
                        }
                      }

                      else
                      {
                        v126 = DOCNode.isParentRootItem.getter();
                        swift_unknownObjectRelease();
                        if ((v126 & v270 & 1) == 0)
                        {
LABEL_248:
                          LODWORD(v321) = 0;
                          goto LABEL_250;
                        }
                      }

                      ++v262;
                    }

                    while (v264 != v333);
                    LODWORD(v321) = 1;
LABEL_250:
                    v288 = 0;
                    rawValue = v314;
                    v289 = v326;
                    do
                    {
                      if (v325)
                      {
                        v290 = MEMORY[0x24C1FC540](v288, v289);
                        i = v288 + 1;
                        if (__OFADD__(v288, 1))
                        {
                          goto LABEL_265;
                        }
                      }

                      else
                      {
                        if (v288 >= *(v324 + 16))
                        {
                          goto LABEL_274;
                        }

                        v290 = *(v289 + 8 * v288 + 32);
                        swift_unknownObjectRetain();
                        i = v288 + 1;
                        if (__OFADD__(v288, 1))
                        {
LABEL_265:
                          __break(1u);
LABEL_266:

                          swift_unknownObjectRelease();
LABEL_267:

                          if ((v321 & 1) == 0)
                          {
                            v287 = 2;
                            goto LABEL_272;
                          }

LABEL_270:
                          v287 = 1;
                          goto LABEL_272;
                        }
                      }

                      v58 = [v290 providerDomainID];
                      v291 = *(rawValue + v323);
                      if (!v291)
                      {
                        goto LABEL_266;
                      }

                      v46 = [v291 identifier];
                      v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v294 = v293;
                      v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v297 = v292;
                      v126 = v295;
                      if (v297 == v296 && v294 == v295)
                      {

                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        LODWORD(v322) = _stringCompareWithSmolCheck(_:_:expecting:)();

                        swift_unknownObjectRelease();

                        if ((v322 & 1) == 0)
                        {
                          goto LABEL_267;
                        }
                      }

                      ++v288;
                    }

                    while (i != v333);

                    if (v321)
                    {
                      goto LABEL_270;
                    }

                    v287 = 3;
                  }

                  else
                  {

                    v287 = 1;
                  }

LABEL_272:
                  v299 = v332;
                  v300 = v318;
                  v301 = v334;
                  v334(v332, v339, v318);
                  v302 = type metadata accessor for DOCSidebarDropProposal(0);
                  v303 = objc_allocWithZone(v302);
                  v301(&v303[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v299, v300);
                  v344.receiver = v303;
                  v344.super_class = v302;
                  v46 = objc_msgSendSuper2(&v344, sel_initWithDropOperation_intent_, v287, 2);
                  outlined consume of DOCSidebarItem?(v331, v330, v329, v315, v327, 1u);
                  v284 = v299;
                  v285 = v300;
                }

                else
                {
LABEL_237:

                  v242 = v332;
                  v243 = v318;
                  v271 = v334;
                  v334(v332, v339, v318);
                  v272 = type metadata accessor for DOCSidebarDropProposal(0);
                  v273 = objc_allocWithZone(v272);
                  v271(&v273[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v242, v243);
                  v346.receiver = v273;
                  v346.super_class = v272;
                  v274 = objc_msgSendSuper2(&v346, sel_initWithDropOperation_intent_, 1, 2, v304);
LABEL_243:
                  v46 = v274;
                  v248 = v330;
                  v247 = v331;
                  v249 = v329;
                  v250 = v315;
LABEL_244:
                  outlined consume of DOCSidebarItem?(v247, v248, v249, v250, v327, 1u);
                  v284 = v242;
                  v285 = v243;
                }

                v328(v284, v285);
                v286 = v46;
                goto LABEL_149;
              }

              rawValue = *&v253[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
              v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v126 = v256;
              v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = v258;
              if (v255 == v257 && v126 == v258)
              {
                v275 = rawValue;

                outlined consume of DOCFileProviderSourceType(rawValue);
              }

              else
              {
                v260 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v261 = rawValue;

                outlined consume of DOCFileProviderSourceType(rawValue);
                if ((v260 & 1) == 0)
                {
                  goto LABEL_213;
                }
              }

              v276 = specialized Set.contains(_:)(*MEMORY[0x277CC6058], v254);

              if (v276)
              {
                v242 = v332;
                v243 = v318;
                v277 = v334;
                v334(v332, v339, v318);
                v278 = type metadata accessor for DOCSidebarDropProposal(0);
                v279 = objc_allocWithZone(v278);
                v277(&v279[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v242, v243);
                v343.receiver = v279;
                v343.super_class = v278;
                v274 = objc_msgSendSuper2(&v343, sel_initWithDropOperation_intent_, 3, 2, v304);
                goto LABEL_243;
              }

LABEL_246:
              outlined consume of DOCSidebarItem?(v331, v330, v329, v315, v327, 1u);
LABEL_148:
              v46 = 0;
LABEL_149:
              v53 = v338;
              v60 = v340;
              v57 = MEMORY[0x277D85000];
              rawValue = 0x278FA9000;
LABEL_96:
              if ([v60 *(rawValue + 3120)])
              {
                swift_unknownObjectRelease();
                if (v46 && (v166 = *((*v57 & *v46) + 0x68), v167 = v46, LOBYTE(v166) = v166(), v167, v167, (v166 & 1) != 0))
                {
                  v168 = [*(v53 + OBJC_IVAR___DOCSidebarViewController_configuration) isPickerUI];
                  swift_unknownObjectRelease();

                  if (v168)
                  {

                    return 0;
                  }
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              else
              {

                swift_unknownObjectRelease();
              }

              return v46;
            }

LABEL_205:
            v333 = __CocoaSet.count.getter();
            if (v333)
            {
              goto LABEL_110;
            }

            goto LABEL_206;
          }

          if (v314[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8] == 1)
          {
            v189 = *&v314[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
            v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v192 = v191;
            if (v190 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v192 == v193)
            {
              v194 = v189;

              outlined consume of DOCFileProviderSourceType(v189);
              v195 = v331;
              v196 = v329;
              outlined consume of DOCSidebarItem?(v331, v126, v329, v46, i, 1u);
              outlined consume of DOCSidebarItem?(v195, v126, v196, v46, i, 1u);
              outlined consume of DOCSidebarItem(v195, v126, v196, v46, i, 1u);
              v46 = 0;
              v53 = v338;
              goto LABEL_93;
            }

            v211 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v212 = v189;

            outlined consume of DOCFileProviderSourceType(v189);
            rawValue = 0x278FA9000;
            v58 = v340;
            if (v211)
            {
              v213 = v331;
              v214 = v329;
              outlined consume of DOCSidebarItem?(v331, v126, v329, v46, i, 1u);
              outlined consume of DOCSidebarItem?(v213, v126, v214, v46, i, 1u);
              v215 = v214;
              v216 = v340;
              outlined consume of DOCSidebarItem(v213, v126, v215, v46, i, 1u);
              v60 = v216;
LABEL_194:
              v46 = 0;
              v53 = v338;
              goto LABEL_43;
            }
          }

          v217 = [v58 items];
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
          v218 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v308 = v218;
          if (v218 >> 62)
          {
LABEL_275:
            v219 = __CocoaSet.count.getter();
          }

          else
          {
            v219 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v220 = v340;
          if (!v219)
          {
LABEL_193:

            v251 = v331;
            v252 = v329;
            outlined consume of DOCSidebarItem?(v331, v126, v329, v46, i, 1u);
            outlined consume of DOCSidebarItem?(v251, v126, v252, v46, i, 1u);
            outlined consume of DOCSidebarItem?(v251, v126, v252, v46, i, 1u);
            v60 = v220;
            goto LABEL_194;
          }

          v221 = 0;
          v306 = v308 & 0xFFFFFFFFFFFFFF8;
          v307 = v308 & 0xC000000000000001;
          v305 = v308 + 32;
          v316 = (v319 + 8);
          v317 = (v319 + 32);
          v311 = 0x8000000249BC5FD0;
          v312 = 0x8000000249BC6000;
          v309 = 0x8000000249BC5FA0;
          v319 = 0xD000000000000025;
          v313 = "com.apple.icloud.applecorporate";
          v314 = "ntManager.FINode.File";
          v304 = v219;
          while (1)
          {
            if (v307)
            {
              v333 = MEMORY[0x24C1FC540](v221, v308);
              v222 = v321;
              v223 = __OFADD__(v221, 1);
              v224 = v221 + 1;
              if (v223)
              {
                goto LABEL_203;
              }
            }

            else
            {
              v222 = v321;
              if (v221 >= *(v306 + 16))
              {
                goto LABEL_204;
              }

              v333 = *(v305 + 8 * v221);
              v223 = __OFADD__(v221, 1);
              v224 = v221 + 1;
              if (v223)
              {
                goto LABEL_203;
              }
            }

            v310 = v224;
            if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
            {
              swift_once();
            }

            rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
            v58 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
            if (v58)
            {
              break;
            }

LABEL_162:

            v221 = v310;
            v220 = v340;
            rawValue = 0x278FA9000;
            v126 = v330;
            if (v310 == v304)
            {
              goto LABEL_193;
            }
          }

          v225 = 0;
          v326 = DOCAcceptableDragPasteboardTypes._rawValue + ((*(v222 + 80) + 32) & ~*(v222 + 80));
          while (v225 < *(rawValue + 16))
          {
            v226 = v324;
            outlined init with copy of DOCDragPasteboardType(v326 + *(v222 + 72) * v225, v324);
            v126 = [v333 itemProvider];
            outlined init with copy of DOCDragPasteboardType(v226, v325);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                if (*v325)
                {
                  if (*v325 == 1)
                  {
                    v228 = v311;
                  }

                  else
                  {
                    v228 = v312;
                  }

                  v229 = 0xD000000000000029;
                }

                else
                {
                  v229 = v319;
                  v228 = v309;
                }
              }

              else
              {
                v231 = v322;
                v232 = v323;
                (*v317)(v322, v325, v323);
                v233 = UTType.identifier.getter();
                v228 = v234;
                v235 = v231;
                v222 = v321;
                (*v316)(v235, v232);
                v229 = v233;
              }
            }

            else
            {
              if (*v325)
              {
                v229 = 0xD000000000000029;
              }

              else
              {
                v229 = v319;
              }

              v230 = v314;
              if (!*v325)
              {
                v230 = v313;
              }

              v228 = v230 | 0x8000000000000000;
            }

            v236 = MEMORY[0x24C1FAD20](v229, v228);

            v237 = [v126 hasRepresentationConformingToTypeIdentifier:v236 fileOptions:0];

            outlined destroy of DOCDragPasteboardType(v324);
            if (v237)
            {
              v238 = v330;
              v239 = v331;
              v240 = v329;
              v241 = v315;
              outlined consume of DOCSidebarItem?(v331, v330, v329, v315, i, 1u);
              outlined consume of DOCSidebarItem?(v239, v238, v240, v241, i, 1u);

              v242 = v332;
              v243 = v318;
              v327 = i;
              v244 = v334;
              v334(v332, v339, v318);
              v245 = type metadata accessor for DOCSidebarDropProposal(0);
              v246 = objc_allocWithZone(v245);
              v244(&v246[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v242, v243);
              v349.receiver = v246;
              v349.super_class = v245;
              v46 = objc_msgSendSuper2(&v349, sel_initWithDropOperation_intent_, 2, 2);
              v248 = v330;
              v247 = v331;
              v249 = v240;
              v250 = v241;
              goto LABEL_244;
            }

            ++v225;
            v46 = v315;
            if (v58 == v225)
            {
              goto LABEL_162;
            }
          }

LABEL_200:
          __break(1u);
LABEL_201:
          ;
        }

        v139 = v119;
        v140 = v330;
        v141 = v329;
        v142 = v46;
        v143 = i;
        v144 = 1;
LABEL_91:
        outlined consume of DOCSidebarItem?(v139, v140, v141, v142, v143, v144);
LABEL_92:
        v46 = 0;
        goto LABEL_93;
      }

      outlined destroy of CharacterSet?(&v360, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    }

    v46 = 0;
    rawValue = 0x278FA9000;
    v60 = v64;
    goto LABEL_96;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_249B9A480;
  *(v63 + 56) = MEMORY[0x277D837D0];
  *(v63 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v63 + 32) = 0xD00000000000003CLL;
  *(v63 + 40) = 0x8000000249BFBA60;
  os_log(_:dso:log:type:_:)();

  return 0;
}