uint64_t SuggestionCollectionViewModel.__deallocating_deinit()
{
  SuggestionCollectionViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall SuggestionCollectionViewModel.shouldShowPrivacyOnboardingOverlayView(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  v4 = (*v1 + 872);
  v5 = *v4;
  v6 = (*v4)(v10);
  if (LOBYTE(v10[0]) == 2 || (v5(v10, v6), LOBYTE(v10[0]) == 1))
  {
    v7 = 0;
  }

  else
  {
    v10[0] = 0xD00000000000001FLL;
    v10[1] = 0x800000021657DAB0;
    MEMORY[0x21CE92100](countAndFlagsBits, object);
    v8 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();

    if (v8 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8 ^ 1;
    }
  }

  return v7 & 1;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.groupRecommendedViewModels()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSet();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + 432);
  v5 = v4(v45);
  v6 = MEMORY[0x277D84F90];
  *v7 = MEMORY[0x277D84F90];

  v8 = v5(v45, 0);
  v9 = *(*v1 + 440);
  v10 = *(v9(v8) + 16);

  if (v10)
  {
    v39 = v9(v11);
    v12 = *(v39 + 16);
    if (v12)
    {
      v13 = (v39 + 32);
      do
      {
        v43 = *v13;

        v14 = v4(v45);
        v16 = v15;
        v17 = *v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v16 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          *v16 = v17;
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        if (v20 >= v19 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
          *v16 = v17;
        }

        *(v17 + 2) = v20 + 1;
        *&v17[16 * v20 + 32] = v43;
        v14(v45, 0);
        ++v13;
        --v12;
      }

      while (v12);
    }

    v6 = MEMORY[0x277D84F90];
  }

  v21 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v44[0] = v6;
  if (v22 >> 62)
  {
LABEL_32:
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23)
  {
    v24 = 0;
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
    *&v43 = v22 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x21CE93180](v24, v22);
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          v30 = v44[0];
          goto LABEL_27;
        }
      }

      else
      {
        if (v24 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v26 = *(v22 + 8 * v24 + 32);

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_24;
        }
      }

      v28 = (*(*v26 + 256))();
      if (v28 && (v29 = v28[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory], v28, (v29 - 1) < 2))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v25 = v43;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_25;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_27:

  v44[0] = v30;
  specialized MutableCollection<>.sort(by:)(v44, &OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore);
  v31 = v44[0];
  v32 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_sortedSuggestionViewModels;
  swift_beginAccess();
  *(v1 + v32) = v31;

  if (*(v1 + v32) >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
  }

  v33 = v42;
  v34 = v40;
  IndexSet.init(integersIn:)();
  v35 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_ungroupedViewModelsIndexSet;
  swift_beginAccess();
  (*(v41 + 40))(v1 + v35, v34, v33);
  v36 = swift_endAccess();
  v37 = (*(*v1 + 848))(v36);
  v38 = *v1;
  if (v37)
  {
    (*(v38 + 944))();
  }

  else
  {
    (*(v38 + 936))();
  }
}

unsigned __int8 *SuggestionViewModel.recommendedEligible.getter()
{
  result = (*(*v0 + 256))();
  if (result)
  {
    v2 = result[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory];

    if (v2 == 5)
    {
      return 0;
    }

    else
    {
      return ((v2 - 1) < 2);
    }
  }

  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.groupViewModelsForCompactWidth()()
{
  v1 = (*(*v0 + 968))();
  (*(*v0 + 992))(v1);
  v2 = *(*v0 + 1056);

  v2();
}

uint64_t SuggestionCollectionViewModel.sortTopLockupCompact(viewModels:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v3)
  {

    goto LABEL_18;
  }

  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_53:

  v5 = MEMORY[0x21CE93180](0, v1);
  v4 = v5;
LABEL_7:
  v6 = (*(*v4 + 304))(v5);
  if (v6)
  {
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

LABEL_55:
    v7 = __CocoaSet.count.getter();
LABEL_10:

    if (v7 < 2)
    {
      if (v2)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 == 1)
      {
        return v1;
      }

      goto LABEL_18;
    }

LABEL_46:

    return v1;
  }

LABEL_18:
  if (v2)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return v1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v1;
    }
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE93180](v9, v1);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = __CocoaSet.count.getter();
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_3;
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    type metadata accessor for MosaicSuggestionViewModel();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {

      goto LABEL_22;
    }

    v13 = (*(*v12 + 496))();

    if (v13)
    {
      goto LABEL_34;
    }

    if (__OFADD__(v10++, 1))
    {
      break;
    }

LABEL_22:
    ++v9;
    if (v11 == v2)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_34:
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (v10 >= v2)
  {
    return v1;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CE93180](v10, v1);
    goto LABEL_42;
  }

  if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_58;
  }

LABEL_42:
  type metadata accessor for MosaicSuggestionViewModel();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    goto LABEL_46;
  }

  v9 = v15;
  if (((*(*v15 + 496))() & 1) == 0)
  {
    goto LABEL_46;
  }

  specialized Array.remove(at:)(v10);

  if (!(a1 >> 62))
  {
LABEL_45:
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v9);

    return a1;
  }

LABEL_58:
  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

MomentsUI::SuggestionGroup __swiftcall SuggestionCollectionViewModel.createCompactLockupLayoutGroup(viewModels:)(Swift::OpaquePointer viewModels)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v3 = viewModels._rawValue & 0xFFFFFFFFFFFFFF8;
  v4 = viewModels._rawValue & 0xC000000000000001;
  v5 = 1;
  v6 = viewModels._rawValue >> 62;
  v23 = viewModels._rawValue & 0xC000000000000001;
  v24 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    if (v6)
    {
      isUniquelyReferenced_nonNull_native = __CocoaSet.count.getter();
      if (v1 == isUniquelyReferenced_nonNull_native)
      {
        break;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = *(v3 + 16);
      if (v1 == isUniquelyReferenced_nonNull_native)
      {
        break;
      }
    }

    if (v7)
    {
      if (v4)
      {
        MEMORY[0x21CE93180](v1, viewModels._rawValue);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (v1 >= *(v3 + 16))
        {
          goto LABEL_77;
        }
      }

      type metadata accessor for MosaicSuggestionViewModel();
      isUniquelyReferenced_nonNull_native = swift_dynamicCastClass();
      v10 = isUniquelyReferenced_nonNull_native;
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      if (__OFADD__(v1++, 1))
      {
        goto LABEL_80;
      }

      v25[0] = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, v25);
      MEMORY[0x21CE92260]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v10 = 0;
      v24 = v26;
    }

    else
    {
      v12 = v1 + 1;
      if (__OFADD__(v1, 1))
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
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v6)
      {
        isUniquelyReferenced_nonNull_native = __CocoaSet.count.getter();
        if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = *(v3 + 16);
      }

      if (v12 < isUniquelyReferenced_nonNull_native)
      {
        if (v4)
        {
          MEMORY[0x21CE93180](v1 + 1, viewModels._rawValue);
        }

        else
        {
          if (v12 >= *(v3 + 16))
          {
            goto LABEL_81;
          }
        }

        type metadata accessor for MosaicSuggestionViewModel();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          isUniquelyReferenced_nonNull_native = (*(*v13 + 512))();
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v23)
            {
              MEMORY[0x21CE93180](v1, viewModels._rawValue);
            }

            else
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_84;
              }

              if (v1 >= *(v3 + 16))
              {
                goto LABEL_85;
              }
            }

            v15 = swift_dynamicCastClass();
            v10 = v15;
            if (v15)
            {
              v25[0] = 0;
              MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, v25);
              MEMORY[0x21CE92260]();
              if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              goto LABEL_53;
            }

LABEL_54:
          }

          else
          {
            if (v23)
            {
              MEMORY[0x21CE93180](v1, viewModels._rawValue);
            }

            else
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_83;
              }

              if (v1 >= *(v3 + 16))
              {
                goto LABEL_86;
              }
            }

            v16 = swift_dynamicCastClass();
            v10 = v16;
            if (!v16)
            {
              goto LABEL_54;
            }

            if ((*(*v16 + 512))(v16))
            {
              v25[0] = 0;
              MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, v25);
              MEMORY[0x21CE92260]();
              if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

LABEL_53:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v10 = 0;
              v24 = v26;
              ++v1;
            }

            else
            {
              v25[0] = 0;
              MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, v25);
              MEMORY[0x21CE92260]();
              if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v25[0] = 0;
              MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, v25);
              MEMORY[0x21CE92260]();
              if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v1 += 2;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v10 = 1;
              v24 = v26;
            }
          }

          v4 = v23;
          goto LABEL_61;
        }

        v4 = v23;
      }

      if (v4)
      {
        MEMORY[0x21CE93180](v1, viewModels._rawValue);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        if (v1 >= *(v3 + 16))
        {
          goto LABEL_79;
        }
      }

      type metadata accessor for MosaicSuggestionViewModel();
      v14 = swift_dynamicCastClass();
      v10 = v14;
      if (!v14)
      {
LABEL_26:

        goto LABEL_61;
      }

      v25[0] = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, v25);
      MEMORY[0x21CE92260]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v10 = 0;
      v24 = v26;
      ++v1;
    }

LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
      v2 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v2);
      v2 = isUniquelyReferenced_nonNull_native;
    }

    v5 = 0;
    *(v2 + 16) = v18 + 1;
    v19 = v2 + 24 * v18;
    *(v19 + 32) = xmmword_21659EE80;
    *(v19 + 48) = v10;
    *(v19 + 49) = 0;
  }

  while ((v7 & 1) != 0);
  if (!__OFSUB__(v1, 1))
  {
    swift_beginAccess();
    IndexSet.remove(integersIn:)();
    isUniquelyReferenced_nonNull_native = swift_endAccess();
    *v21 = v2;
    v21[1] = v24;
    goto LABEL_87;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result.items._rawValue = v9;
  result.subgroups._rawValue = isUniquelyReferenced_nonNull_native;
  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.createLockupGroups()()
{
  v1 = type metadata accessor for IndexSet.Index();
  v45 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetVGMd);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v47 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_ungroupedViewModelsIndexSet;
  swift_beginAccess();
  v13 = *(v5 + 16);
  *&v46 = v0;
  v13(v7, v0 + v12, v4);
  v14 = MEMORY[0x277CC9A28];
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28]);
  dispatch thunk of Sequence.makeIterator()();
  v15 = *(v9 + 44);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v14);
  v16 = (v45 + 8);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x277CC9A08]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v16)(v3, v1);
    if (v17)
    {
      break;
    }

    v18 = dispatch thunk of Collection.subscript.read();
    v20 = *v19;
    v18(v49, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v21 = *(v47 + 2);
    if (v21 != 3)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v47;
      }

      else
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 + 1, 1, v47);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v47 = (v24 + 1);
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
        v25 = v47;
        v22 = v26;
      }

      *(v22 + 2) = v25;
      v47 = v22;
      *&v22[8 * v24 + 32] = v20;
    }
  }

  outlined destroy of UTType?(v11, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMd);
  v27 = *(v47 + 2);
  if (v27)
  {
    v28 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_sortedSuggestionViewModels;
    v29 = v47 + 32;
    v30 = v46;
    swift_beginAccess();
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      v33 = *v29;
      v29 += 8;
      v32 = v33;
      v34 = *(v30 + v28);
      if ((v34 & 0xC000000000000001) != 0)
      {

        MEMORY[0x21CE93180](v32, v34);
      }

      else
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          if (__CocoaSet.count.getter() <= 0)
          {
            goto LABEL_34;
          }

LABEL_26:
          v36 = (*(*v30 + 952))(v31);
          if (!(v31 >> 62))
          {
            v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v38 = v37 - 1;
            if (!__OFSUB__(v37, 1))
            {
              goto LABEL_28;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v43 = __CocoaSet.count.getter();
          v38 = v43 - 1;
          if (__OFSUB__(v43, 1))
          {
            goto LABEL_41;
          }

LABEL_28:
          if (v38 < 0)
          {
LABEL_42:
            __break(1u);
          }

          else
          {
            v15 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_sortedSuggestionViewModels;
            swift_beginAccess();
            if (!__OFADD__(v38, 1))
            {
              specialized Array.replaceSubrange<A>(_:with:)(0, v38 + 1, v36);
              swift_endAccess();
              (*(*v30 + 960))(&v48, v36);

              v46 = v48;
              v15 = (*(*v30 + 432))(v49);
              v38 = v39;
              v36 = *v39;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v38 = v36;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_31:
                v42 = *(v36 + 2);
                v41 = *(v36 + 3);
                if (v42 >= v41 >> 1)
                {
                  v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v36);
                  *v38 = v36;
                }

                *(v36 + 2) = v42 + 1;
                *&v36[16 * v42 + 32] = v46;
                (v15)(v49, 0);
                goto LABEL_34;
              }

LABEL_44:
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
              *v38 = v36;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

        if (v32 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }
      }

      type metadata accessor for MosaicSuggestionViewModel();
      if (swift_dynamicCastClass())
      {

        MEMORY[0x21CE92260](v35);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v31 = v50;
      }

      else
      {
      }

      if (!--v27)
      {
        goto LABEL_24;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
  v30 = v46;
LABEL_24:
  if (v31 >> 62)
  {
    goto LABEL_37;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_26;
  }

LABEL_34:
}

unint64_t SuggestionCollectionViewModel.createSuggestionLayoutGroupsForCompactWidth(viewModels:)(unint64_t result)
{
  v40 = MEMORY[0x277D84F90];
  v30 = result >> 62;
  if (result >> 62)
  {
LABEL_85:
    v29 = result;
    v1 = __CocoaSet.count.getter();
    result = v29;
  }

  else
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_76:

    return v6;
  }

  v33 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v32 = result & 0xC000000000000001;
  v34 = result & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  v31 = result;
  while (1)
  {
    if (v32)
    {
      result = MEMORY[0x21CE93180](v3, result);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v3 >= *(v34 + 16))
      {
        goto LABEL_80;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    type metadata accessor for MosaicSuggestionViewModel();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {

      return v6;
    }

    v9 = v8;
    if (v4)
    {
      v35 = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, &v35);
      MEMORY[0x21CE92260]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v12 = *(v2 + 2);
      v11 = *(v2 + 3);
      if (v12 >= v11 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
      }

      v5 = 0;
      v4 = 0;
      *(v2 + 2) = v12 + 1;
      v13 = &v2[24 * v12];
      *(v13 + 2) = xmmword_21659EE80;
      *(v13 + 24) = 1;
      if (v12 == 2)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    if ((*(*v8 + 504))(v8) & 1) != 0 && v5 < 2 || (result = (*(*v9 + 512))(), (result))
    {
      v36 = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, &v36);
      MEMORY[0x21CE92260]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v40;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = result;
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 2) = v16;
      v17 = &v2[24 * v15];
      *(v17 + 2) = xmmword_21659EE80;
      *(v17 + 24) = 0;
      v18 = __OFADD__(v5++, 1);
      if (v18)
      {
        goto LABEL_82;
      }

      goto LABEL_57;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    if (v7 >= v33)
    {
      goto LABEL_50;
    }

    if (!v32)
    {
      break;
    }

    MEMORY[0x21CE93180](v7, v31);
LABEL_38:
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

LABEL_50:
      v39 = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, &v39);
      MEMORY[0x21CE92260]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v40;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = result;
      }

      v24 = *(v2 + 2);
      v23 = *(v2 + 3);
      v16 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 2) = v16;
      v25 = &v2[24 * v24];
      *(v25 + 2) = xmmword_21659EE80;
      *(v25 + 24) = 0;
      v18 = __OFADD__(v5++, 1);
      if (v18)
      {
        goto LABEL_84;
      }

LABEL_57:
      v4 = 0;
      if (v16 == 3)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    if ((*(*v19 + 512))())
    {
      v37 = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, &v37);
      MEMORY[0x21CE92260]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      v16 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v2);
      }

      *(v2 + 2) = v16;
      v22 = &v2[24 * v21];
      *(v22 + 2) = xmmword_21659EE80;
      *(v22 + 24) = 0;
      v18 = __OFADD__(v5++, 1);
      if (v18)
      {
        goto LABEL_87;
      }

      goto LABEL_57;
    }

    v38 = 0;
    MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, &v38);
    MEMORY[0x21CE92260]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v10 = v40;
    v4 = 1;
    if (*(v2 + 2) == 3)
    {
      goto LABEL_63;
    }

LABEL_58:
    if (v30)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *(v34 + 16);
    }

    if (__OFSUB__(result, 1))
    {
      goto LABEL_81;
    }

    if (v3 == result - 1)
    {
LABEL_63:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v27 = *(v6 + 2);
      v26 = *(v6 + 3);
      if (v27 >= v26 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v6);
      }

      *(v6 + 2) = v27 + 1;
      v28 = &v6[16 * v27];
      *(v28 + 4) = v2;
      *(v28 + 5) = v10;

      v40 = MEMORY[0x277D84F90];
      v2 = MEMORY[0x277D84F90];
      goto LABEL_6;
    }

LABEL_6:
    ++v3;
    result = v31;
    if (v7 == v33)
    {
      goto LABEL_76;
    }
  }

  if (v7 < *(v34 + 16))
  {

    goto LABEL_38;
  }

  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewModel.createSuggestionLayoutGroupsForRegularWidth(viewModels:evergreenViewModels:)(uint64_t a1, unint64_t a2, __n128 a3)
{
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_239;
  }

  v75 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    a1 = __CocoaSet.count.getter();
    v9 = a1;
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v75, v9))
  {
    __break(1u);
    goto LABEL_242;
  }

  v86 = v7;
  v85 = MEMORY[0x277D84F90];
  a3.n128_f64[0] = ceil(vcvtd_n_f64_s64(v75 + v9, 1uLL));
  if ((a3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  if (a3.n128_f64[0] <= -9.22337204e18)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  if (a3.n128_f64[0] >= 9.22337204e18)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v10 = a3.n128_f64[0];
  if (a3.n128_f64[0] < 0)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v5 = MEMORY[0x277D84F90];
  if (v10)
  {
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v4 = v11;
    *(v11 + 16) = v10;
    v12 = 32;
    a3 = xmmword_21659EE80;
    do
    {
      v13 = v11 + v12;
      *v13 = xmmword_21659EE80;
      *(v13 + 16) = 2;
      v12 += 24;
      --v10;
    }

    while (v10);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v70 = v4;
  v68 = *(v4 + 16);
  if (v68)
  {
    if (!v8)
    {
      v67 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = *(v4 + 16);
LABEL_22:
      v62 = a2 >> 62;
      v63 = a2;
      v64 = v9;
      v65 = 0;
      v3 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v71 = a2 & 0xFFFFFFFFFFFFFF8;
      v72 = a2 & 0xC000000000000001;
      v69 = MEMORY[0x277D84F90];
      while (1)
      {
        a2 = 0;
        v20 = v67;
        if (v3 > v67)
        {
          v20 = v3;
        }

        v66 = v20;
        v76 = v18;
        v77 = v3 - v20;
        v73 = v14 - v16;
        v74 = v18 ^ 0x7FFFFFFFFFFFFFFFLL;
        v5 = v17;
        v79 = v16;
        v81 = v3;
        while (1)
        {
          v21 = v16 + a2;
          if (v16 + a2 >= *(v4 + 16))
          {
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
            goto LABEL_236;
          }

          if (!(v77 + a2))
          {
            v37 = v66;
            goto LABEL_117;
          }

          v22 = v3 + a2;
          if (v72)
          {
            MEMORY[0x21CE93180](v22, v63, a3);
          }

          else
          {
            if (v22 >= *(v71 + 16))
            {
              goto LABEL_214;
            }
          }

          type metadata accessor for EvergreenSuggestionViewModel();
          v23 = swift_dynamicCastClass();
          if (!v23)
          {
            goto LABEL_116;
          }

          if (((v21 != 1) & (v19 ^ 1)) != 0)
          {
            break;
          }

          v3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_215;
          }

          if (v3 >= v75)
          {
            goto LABEL_116;
          }

          v24 = v23;
          v25 = v7 >> 62;
          if (((v76 + a2) & 1) == 0)
          {
            if (v25)
            {
              if (__CocoaSet.count.getter() < v3)
              {
                goto LABEL_219;
              }
            }

            else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
            {
              goto LABEL_219;
            }

            if (v3 < 0)
            {
              goto LABEL_222;
            }

            if (v25)
            {
              if (__CocoaSet.count.getter() < v3)
              {
                goto LABEL_228;
              }

              v26 = __CocoaSet.count.getter();
            }

            else
            {
              v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v26 < v3)
              {
                goto LABEL_229;
              }
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_224;
            }

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v86 = v7;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if (!v25)
              {
                if (v28 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_67;
                }

LABEL_68:
                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5 + 1, v5 + 1, 1, v24);
                v86 = v7;
                if (v7 >> 62)
                {
                  v32 = __CocoaSet.count.getter();
                  if ((v32 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_226;
                  }
                }

                else
                {
                  v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if ((v5 & 0x8000000000000000) == 0 && v5 < v32)
                {
                  if ((v7 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CE93180](v5, v7);
                  }

                  else
                  {
                    if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_233;
                    }
                  }

                  type metadata accessor for MosaicSuggestionViewModel();
                  if (swift_dynamicCastClass())
                  {
                    v84 = 0;
                    MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, &v84);

                    MEMORY[0x21CE92260](v33);
                    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    v34 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    MEMORY[0x21CE92260](v34);
                    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    goto LABEL_95;
                  }

                  goto LABEL_97;
                }

                goto LABEL_96;
              }
            }

            else if (!v25)
            {
LABEL_67:
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v86 = v7;
              goto LABEL_68;
            }

            __CocoaSet.count.getter();
            goto LABEL_67;
          }

          if (v25)
          {
            if (__CocoaSet.count.getter() < v5)
            {
              goto LABEL_220;
            }
          }

          else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < v5)
          {
            goto LABEL_220;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_221;
          }

          if (v25)
          {
            if (__CocoaSet.count.getter() < v5)
            {
              goto LABEL_230;
            }

            v27 = __CocoaSet.count.getter();
          }

          else
          {
            v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v27 < v5)
            {
              goto LABEL_227;
            }
          }

          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_223;
          }

          v31 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v86 = v7;
          if (v31)
          {
            if (!v25)
            {
              if (v30 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }
          }

          else if (!v25)
          {
            goto LABEL_82;
          }

          __CocoaSet.count.getter();
LABEL_82:
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v86 = v7;
LABEL_83:
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v5, 1, v24);
          v86 = v7;
          if (v7 >> 62)
          {
            v35 = __CocoaSet.count.getter();
            if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_225;
            }
          }

          else
          {
            v35 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ((v3 & 0x8000000000000000) == 0 && v3 < v35)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CE93180](v5 + 1, v7);
            }

            else
            {
              if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_234;
              }
            }

            type metadata accessor for MosaicSuggestionViewModel();
            if (swift_dynamicCastClass())
            {
              v84 = 0;
              MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, &v84);
              MEMORY[0x21CE92260]();
              if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              MEMORY[0x21CE92260](v36);
              if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

LABEL_95:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v69 = v85;
LABEL_98:
              v4 = v70;
              goto LABEL_99;
            }

LABEL_97:

            goto LABEL_98;
          }

LABEL_96:

LABEL_99:
          v16 = v79;
          v3 = v81;
          if (v74 == a2)
          {
            goto LABEL_216;
          }

          if (__OFADD__(v5, 2))
          {
            goto LABEL_217;
          }

          v15 = 0;
          v19 = 0;
          ++a2;
          v5 += 2;
          if (v73 == a2)
          {
            v3 = v81 + a2;
            goto LABEL_148;
          }
        }

        v19 = 0;
LABEL_116:

        v37 = v81 + a2;
LABEL_117:
        v82 = v37;
        if (!(v7 >> 62))
        {
          v38 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_119;
        }

        v38 = __CocoaSet.count.getter();
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_235;
        }

LABEL_119:
        if (v5 >= v38)
        {
          v3 = v82;
          goto LABEL_148;
        }

        if ((v7 & 0xC000000000000001) == 0)
        {
          if (v5 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v7 + 8 * v5 + 32);

            goto LABEL_123;
          }

LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          a1 = __CocoaSet.count.getter();
          v75 = a1;
          goto LABEL_3;
        }

        v9 = MEMORY[0x21CE93180](v5, v7, a3);
LABEL_123:
        v3 = type metadata accessor for MosaicSuggestionViewModel();
        if (!swift_dynamicCastClass())
        {

          v3 = v82;
          goto LABEL_148;
        }

        v78 = v79 + a2;
        v84 = 0;
        MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(((v79 + a2) & 1) == 0, 0, 0, &v84);
        MEMORY[0x21CE92260]();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v69 = v85;
        v4 = v70;
        if (v7 >> 62)
        {
          v39 = __CocoaSet.count.getter();
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_237;
          }
        }

        else
        {
          v39 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = v5 + 1;
        if (v5 + 1 >= v39)
        {
          goto LABEL_138;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CE93180](v5 + 1, v7);
        }

        else
        {
          if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_257;
          }
        }

        if (!swift_dynamicCastClass())
        {

LABEL_138:

          v65 = 1;
          goto LABEL_142;
        }

        v84 = 0;
        MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)((v78 & 1) != 0, 0, 0, &v84);
        MEMORY[0x21CE92260]();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v70;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v69 = v85;
        v17 = v5 + 2;
LABEL_142:
        v40 = __OFADD__(v15++, 1);
        v3 = v82;
        v14 = v68;
        if (v40)
        {
          goto LABEL_238;
        }

        v16 = v78 + 1;
        v18 = v76 + a2;
        v19 |= v15 == 2;
        if (~v79 + v68 == a2)
        {
LABEL_148:
          v9 = v64;
          if (v3 >= v64)
          {

            v5 = v69;
            goto LABEL_212;
          }

          v5 = v69;
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_259;
          }

          v8 = v62;
          a2 = v63;
          if ((v69 & 0x4000000000000000) != 0)
          {
            goto LABEL_260;
          }

          goto LABEL_151;
        }
      }
    }

    a1 = __CocoaSet.count.getter();
    v14 = v68;
    v67 = a1;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  if (v9 < 1)
  {

    v5 = MEMORY[0x277D84F90];
    goto LABEL_212;
  }

  v65 = 0;
  v3 = 0;
  if (v5 >> 62)
  {
    goto LABEL_260;
  }

LABEL_151:
  v41 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_165;
  }

LABEL_152:
  v40 = __OFSUB__(v41, 1);
  a1 = v41 - 1;
  if (v40)
  {
    goto LABEL_251;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_252;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_254;
  }

  if (a1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  v42 = a2;

  while (1)
  {
    type metadata accessor for MosaicSuggestionViewModel();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v44 = *(v43 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth);

      if (v65)
      {
        if (v44)
        {
          if (v9 < v3)
          {
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
            return result;
          }

          v83 = 0;
          v46 = &outlined read-only object #0 of SuggestionCollectionViewModel.createSuggestionLayoutGroupsForRegularWidth(viewModels:evergreenViewModels:);
LABEL_179:
          v80 = v46;
          a2 = v42;
          if (!v8)
          {
            goto LABEL_167;
          }

          goto LABEL_180;
        }

        if (v9 < v3)
        {
          goto LABEL_264;
        }

        v47 = &outlined read-only object #1 of SuggestionCollectionViewModel.createSuggestionLayoutGroupsForRegularWidth(viewModels:evergreenViewModels:);
      }

      else
      {
        if (!v44)
        {
          if (v9 < v3)
          {
            goto LABEL_265;
          }

          v83 = 0;
          v46 = &outlined read-only object #3 of SuggestionCollectionViewModel.createSuggestionLayoutGroupsForRegularWidth(viewModels:evergreenViewModels:);
          goto LABEL_179;
        }

        if (v9 < v3)
        {
          goto LABEL_263;
        }

        v47 = &outlined read-only object #2 of SuggestionCollectionViewModel.createSuggestionLayoutGroupsForRegularWidth(viewModels:evergreenViewModels:);
      }

      v80 = v47;
      v83 = 1;
      a2 = v42;
      if (!v8)
      {
        goto LABEL_167;
      }

      goto LABEL_180;
    }

    a2 = v42;
LABEL_165:
    while (v9 < v3)
    {
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      v8 = v62;
      a2 = v63;
LABEL_260:
      v41 = __CocoaSet.count.getter();
      if (v41)
      {
        goto LABEL_152;
      }
    }

    v80 = &outlined read-only object #4 of SuggestionCollectionViewModel.createSuggestionLayoutGroupsForRegularWidth(viewModels:evergreenViewModels:);
    v83 = 1;
    if (!v8)
    {
LABEL_167:
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_181;
    }

LABEL_180:
    a1 = __CocoaSet.count.getter();
LABEL_181:
    if (a1 < v3)
    {
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

    if (v3 < 0)
    {
      goto LABEL_248;
    }

    if (v8)
    {
      a1 = __CocoaSet.count.getter();
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a1 < v9)
    {
      goto LABEL_249;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    v42 = a2;
    MEMORY[0x21CE93180](a1, v5, a3);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {

    if (!v8)
    {
      goto LABEL_193;
    }

    goto LABEL_210;
  }

  if (v9 < v3)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  type metadata accessor for SuggestionViewModel();

  v48 = v3;
  do
  {
    v49 = v48 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v48);
    v48 = v49;
  }

  while (v9 != v49);
  if (!v8)
  {
LABEL_193:
    v51 = v9 - v3;
    v50 = v9 <= v3;
    if (v9 != v3)
    {
      goto LABEL_194;
    }

LABEL_211:

    swift_unknownObjectRelease();

    goto LABEL_212;
  }

LABEL_210:

  _CocoaArrayWrapper.subscript.getter();
  v3 = v60;
  v9 = v61 >> 1;
  v51 = (v61 >> 1) - v60;
  v50 = (v61 >> 1) <= v60;
  if (v61 >> 1 == v60)
  {
    goto LABEL_211;
  }

LABEL_194:
  if (v50)
  {
    goto LABEL_258;
  }

  a2 = v3;
  v52 = v5;
  v3 = type metadata accessor for EvergreenSuggestionViewModel();
  v5 = 0;
  do
  {
    v53 = swift_dynamicCastClass();
    if (v53)
    {
      v4 = v53;
      v54 = v83;
      if (v5)
      {
        v55 = v80[2];
        if (!v55)
        {
          goto LABEL_231;
        }

        v56 = (v5 - 1) % v55;
        if (v56 < 0)
        {
          goto LABEL_232;
        }

        v54 = *(v80 + v56 + 32);
      }

      v57 = *(*v53 + 376);
      a2 = *v53 + 376;

      v57(v54);
      v58 = swift_retain_n();
      MEMORY[0x21CE92260](v58);
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v59 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v86;
      MEMORY[0x21CE92260](v59);
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v52 = v85;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_218;
    }

    ++v5;
  }

  while (v51 != v5);

  swift_unknownObjectRelease();

  v4 = v70;
  v5 = v52;
LABEL_212:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI15SuggestionGroupVGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_21658CA50;
  *(result + 32) = v4;
  *(result + 40) = v5;
  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.createSuggestionGroups()()
{
  v1 = type metadata accessor for IndexSet.Index();
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetVGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v37 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_ungroupedViewModelsIndexSet;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v36 = v0;
  v12(v7, v0 + v11, v4);
  v13 = MEMORY[0x277CC9A28];
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28]);
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v13);
  v14 = (v35 + 8);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x277CC9A08]);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v14)(v3, v1);
    if (v15)
    {
      break;
    }

    v16 = dispatch thunk of Collection.subscript.read();
    v18 = *v17;
    v16(v38, 0);
    dispatch thunk of Collection.formIndex(after:)();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v37;
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v37 = v19;
    *&v19[8 * v21 + 32] = v18;
  }

  v22 = outlined destroy of UTType?(v10, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMd);
  v23 = *(v37 + 2);
  if (!v23)
  {
    v27 = MEMORY[0x277D84F90];
    v26 = v36;
LABEL_23:
    if ((*(*v26 + 848))(v22))
    {
      v31 = *(v26 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels);
      v32 = *(*v26 + 984);

      v33 = v32(v27, v31);
    }

    else
    {
      v33 = (*(*v26 + 976))(v27);
    }

    v34 = (*(*v26 + 432))(v38);
    specialized Array.append<A>(contentsOf:)(v33);
    v34(v38, 0);

    return;
  }

  v24 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_sortedSuggestionViewModels;
  v25 = v37 + 32;
  v26 = v36;
  swift_beginAccess();
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    v29 = *v25;
    v25 += 8;
    v28 = v29;
    v30 = *(v26 + v24);
    if ((v30 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CE93180](v28, v30);

      goto LABEL_16;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_16:
    type metadata accessor for MosaicSuggestionViewModel();
    if (swift_dynamicCastClass())
    {
      v38[0] = 0;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, v38);
      MEMORY[0x21CE92260]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v27 = v39;
      if (!--v23)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if (!--v23)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

MomentsUI::SuggestionGroup __swiftcall SuggestionCollectionViewModel.createRecentsSuggestionGroupForCompactWidth(viewModels:)(Swift::OpaquePointer viewModels)
{
  v53 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v43 = viewModels._rawValue >> 62;
  v46 = v1;
  v6 = viewModels._rawValue & 0xFFFFFFFFFFFFFF8;
  if (viewModels._rawValue >> 62)
  {
    goto LABEL_73;
  }

  v7 = *((viewModels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v47 = 0;
  v45 = 0;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
LABEL_4:
  if (v8 == v7)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if ((viewModels._rawValue & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE93180](v8, viewModels._rawValue);
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_72;
      }

      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v7 = __CocoaSet.count.getter();
        goto LABEL_3;
      }
    }

    type metadata accessor for MosaicSuggestionViewModel();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      break;
    }

    if (*(v9 + 2) <= 1uLL)
    {
      if (v45)
      {
        v52[0] = 1;
        MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, v52);
        MEMORY[0x21CE92260]();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v3 = *(v9 + 2);
        v12 = *(v9 + 3);
        v13 = v3 + 1;
        if (v3 >= v12 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v3 + 1, 1, v9);
        }

        v49 = v11;

        v45 = 0;
        *(v9 + 2) = v13;
        v14 = &v9[24 * v3];
        *(v14 + 2) = xmmword_21659EE80;
        *(v14 + 24) = 1;
LABEL_40:
        v8 = v2;
        if (__OFADD__(v47++, 1))
        {
          goto LABEL_116;
        }

        goto LABEL_4;
      }

      if (((*(*v10 + 504))(v10) & 1) == 0)
      {
        if (!v43)
        {
          v16 = *(v6 + 16);
          if (v16 == 1)
          {
            goto LABEL_33;
          }

LABEL_30:
          if (*(v9 + 2) != 1)
          {
            goto LABEL_43;
          }

          if (!__OFADD__(v47, 1))
          {
            if (v47 + 1 == v16)
            {
              goto LABEL_33;
            }

LABEL_43:
            v52[0] = 1;
            MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, v52);
            v13 = &v54;
            MEMORY[0x21CE92260]();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v3 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v45 = 1;
            v49 = v54;
            goto LABEL_40;
          }

          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v16 = __CocoaSet.count.getter();
        if (v16 != 1)
        {
          goto LABEL_30;
        }
      }

LABEL_33:
      v52[0] = 1;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, v52);
      MEMORY[0x21CE92260]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v49 = v17;
      v3 = *(v9 + 2);
      v18 = *(v9 + 3);
      v13 = v3 + 1;
      if (v3 >= v18 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v3 + 1, 1, v9);
      }

      v45 = 0;
      *(v9 + 2) = v13;
      v19 = &v9[24 * v3];
      *(v19 + 2) = xmmword_21659EE80;
      *(v19 + 24) = 0;
      goto LABEL_40;
    }

    v52[0] = 1;
    v4 = MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 1, 0, v52);
    MEMORY[0x21CE92260]();
    v3 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v8;
    if (v2 == v7)
    {
      goto LABEL_47;
    }
  }

LABEL_47:
  specialized MutableCollection<>.sort(by:)(&v53, MEMORY[0x277CC94D8], MEMORY[0x277CC94D8]);
  v4 = v53;
  v6 = v53 >> 62;
  if (!(v53 >> 62))
  {
    v7 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 > 3)
    {
      goto LABEL_49;
    }

LABEL_79:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  if (__CocoaSet.count.getter() < 4)
  {
    goto LABEL_79;
  }

  v16 = __CocoaSet.count.getter();
  if (v16 < 3)
  {
    goto LABEL_120;
  }

  v7 = v16;
  v16 = __CocoaSet.count.getter();
  if (v16 < 3)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (__CocoaSet.count.getter() < v7)
  {
    __break(1u);
    goto LABEL_79;
  }

LABEL_49:
  if ((v4 & 0xC000000000000001) == 0 || v7 == 3)
  {

    if (!v6)
    {
      goto LABEL_54;
    }
  }

  else
  {
    type metadata accessor for SuggestionViewModel();

    v21 = 3;
    do
    {
      v22 = v21 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v21);
      v21 = v22;
    }

    while (v7 != v22);
    if (!v6)
    {
LABEL_54:
      v13 = v4 & 0xFFFFFFFFFFFFFF8;
      v23 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
      v7 = (2 * v7) | 1;
      v3 = 3;
      if ((v7 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }
  }

  v13 = _CocoaArrayWrapper.subscript.getter();
  v3 = v24;
  v7 = v25;
  if ((v25 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_59:
  v2 = v23;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v7 >> 1, v3))
  {
    goto LABEL_117;
  }

  if (v28 != (v7 >> 1) - v3)
  {
    goto LABEL_118;
  }

  v29 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v48 = v29;
  if (!v29)
  {
    v48 = MEMORY[0x277D84F90];
    goto LABEL_67;
  }

  if (v6)
  {
    goto LABEL_68;
  }

LABEL_65:
  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i < 3; i = __CocoaSet.count.getter())
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    swift_unknownObjectRelease();
    v23 = v2;
LABEL_58:
    specialized _copyCollectionToContiguousArray<A>(_:)(v13, v23, v3, v7);
    v48 = v26;
LABEL_67:
    swift_unknownObjectRelease();
    if (!v6)
    {
      goto LABEL_65;
    }

LABEL_68:
    ;
  }

  specialized Array.replaceSubrange<A>(_:with:)(3, i);
  v4 = v53;
LABEL_80:
  if (v4 >> 62)
  {
    while (1)
    {
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
        goto LABEL_103;
      }

LABEL_82:
      v13 = v3 - 1;
      if (__OFSUB__(v3, 1))
      {
        break;
      }

      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_112;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

LABEL_87:
      type metadata accessor for MosaicSuggestionViewModel();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        (*(*v31 + 400))(1);
      }

      v32 = 0;
      v33 = v4;
      v50 = v4 & 0xFFFFFFFFFFFFFF8;
      v2 = 24;
      v4 = 512;
      while (1)
      {
        if (v6)
        {
          MEMORY[0x21CE93180](v32, v33);
          swift_unknownObjectRelease();
        }

        else if (v32 >= *(v50 + 16))
        {
          goto LABEL_101;
        }

        v7 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v35 = *(v9 + 2);
        v34 = *(v9 + 3);
        if (v35 >= v34 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
        }

        *(v9 + 2) = v35 + 1;
        v36 = &v9[24 * v35];
        *(v36 + 2) = xmmword_21659EE80;
        *(v36 + 24) = 512;
        ++v32;
        if (v7 == v3)
        {
          goto LABEL_104;
        }
      }

      __break(1u);
LABEL_101:
      __break(1u);
    }

    __break(1u);
LABEL_112:

    MEMORY[0x21CE93180](v3 - 1, v4);
    goto LABEL_87;
  }

  v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    goto LABEL_82;
  }

LABEL_103:
  v33 = v4;

LABEL_104:
  if (v48 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37)
  {
    v38 = *((*(*v44 + 416))() + 16);

    v39 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v44 + v39);
    *(v44 + v39) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v38, isUniquelyReferenced_nonNull_native);
    *(v44 + v39) = v51;
    swift_endAccess();
  }

  else
  {
  }

  *v52 = v49;
  v16 = specialized Array.append<A>(contentsOf:)(v33);
  v41 = *v52;
  *v46 = v9;
  v46[1] = v41;
LABEL_122:
  result.items._rawValue = v15;
  result.subgroups._rawValue = v16;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(unint64_t *a1, uint64_t (*a2)(char *, char *), uint64_t (*a3)(char *, char *))
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v9[1] = v7;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, a2, a3);
  *a1 = v6;
  return result;
}

void specialized MutableCollection<>.sort(by:)(unint64_t *a1, void *a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, a2);
  *a1 = v4;
}

MomentsUI::SuggestionGroup __swiftcall SuggestionCollectionViewModel.createRecentsSuggestionGroupForRegularWidth(viewModels:)(Swift::OpaquePointer viewModels)
{
  v48 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v44 = viewModels._rawValue >> 62;
  if (viewModels._rawValue >> 62)
  {
    goto LABEL_41;
  }

  v5 = *((viewModels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &class metadata base offset for TransferWorkoutViewModel; v5; i = &class metadata base offset for TransferWorkoutViewModel)
  {
    v3 = 0;
    v7 = MEMORY[0x277D84F90];
    v43 = i[232];
    v8 = MEMORY[0x277D84F90];
    while ((viewModels._rawValue & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE93180](v3, viewModels._rawValue);
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_39;
      }

LABEL_10:
      type metadata accessor for MosaicSuggestionViewModel();
      if (!swift_dynamicCastClass())
      {

        goto LABEL_43;
      }

      if (v44)
      {
        v12 = __CocoaSet.count.getter();
        if (v12 == 1)
        {
LABEL_19:
          v46[0] = 1;
          MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(v12, 0, 0, v46);
          MEMORY[0x21CE92260]();
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
          }

          v1 = *(v7 + 2);
          v13 = *(v7 + 3);
          v2 = (v1 + 1);
          if (v1 >= v13 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v1 + 1, 1, v7);
          }

          *(v7 + 2) = v2;
          v9 = &v7[24 * v1];
          *(v9 + 2) = v43;
          v10 = 3;
          goto LABEL_5;
        }
      }

      else
      {
        v12 = *((viewModels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 == 1)
        {
          goto LABEL_19;
        }
      }

      if (v3 != 1)
      {
        if (v3)
        {
          v1 = v8;
          v46[0] = 1;
          MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 1, 0, v46);
          MEMORY[0x21CE92260]();
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v2 = &v47;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          v46[0] = 1;
          MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 0, 0, v46);
          v2 = &v48;
          MEMORY[0x21CE92260]();
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v1 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v8 = v48;
        }

        goto LABEL_6;
      }

      v46[0] = 1;
      MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(0, 0, 0, v46);
      MEMORY[0x21CE92260]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v1 = *(v7 + 2);
      v14 = *(v7 + 3);
      v2 = (v1 + 1);
      if (v1 >= v14 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v1 + 1, 1, v7);
      }

      *(v7 + 2) = v2;
      v9 = &v7[24 * v1];
      *(v9 + 2) = v43;
      v10 = 2;
LABEL_5:
      *(v9 + 24) = v10;
      v49 = v7;
LABEL_6:
      ++v3;
      if (v11 == v5)
      {
        goto LABEL_43;
      }
    }

    if (v3 >= *((viewModels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v5 = __CocoaSet.count.getter();
  }

  v8 = MEMORY[0x277D84F90];
LABEL_43:
  specialized MutableCollection<>.sort(by:)(&v47, MEMORY[0x277CC94D8], MEMORY[0x277CC94D8]);
  v15 = v47;
  v16 = v47 >> 62;
  if (v47 >> 62)
  {
    if ((v47 & 0x8000000000000000) != 0)
    {
      v2 = v47;
    }

    else
    {
      v2 = (v47 & 0xFFFFFFFFFFFFFF8);
    }

    if (__CocoaSet.count.getter() < 5)
    {
      goto LABEL_79;
    }

    v29 = __CocoaSet.count.getter();
    if (v29 < 4)
    {
      __break(1u);
    }

    else
    {
      v17 = v29;
      v29 = __CocoaSet.count.getter();
      if (v29 >= 4)
      {
        if (__CocoaSet.count.getter() >= v17)
        {
          goto LABEL_45;
        }

        __break(1u);
LABEL_79:
        v21 = MEMORY[0x277D84F90];
        if (!(v15 >> 62))
        {
          goto LABEL_80;
        }

        goto LABEL_67;
      }
    }

    __break(1u);
    goto LABEL_103;
  }

  v17 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17 <= 4)
  {
    goto LABEL_79;
  }

LABEL_45:
  if ((v15 & 0xC000000000000001) == 0 || v17 == 4)
  {

    if (!v16)
    {
      goto LABEL_50;
    }

LABEL_53:

    v2 = _CocoaArrayWrapper.subscript.getter();
    v3 = v22;
    v21 = v23;
    if ((v23 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v1 = type metadata accessor for SuggestionViewModel();

  v18 = 4;
  do
  {
    v19 = v18 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v18);
    v18 = v19;
  }

  while (v17 != v19);
  if (v16)
  {
    goto LABEL_53;
  }

LABEL_50:
  v2 = (v15 & 0xFFFFFFFFFFFFFF8);
  v20 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = (2 * v17) | 1;
  v3 = 4;
  if ((v21 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_55:
  v1 = v20;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v21 >> 1, v3))
  {
    goto LABEL_99;
  }

  if (v26 != (v21 >> 1) - v3)
  {
    goto LABEL_100;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v21)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  if (v16)
  {
    goto LABEL_64;
  }

LABEL_61:
  for (j = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = __CocoaSet.count.getter())
  {
    if (j < 4)
    {
      goto LABEL_98;
    }

    v2 = &v47;
    specialized Array.replaceSubrange<A>(_:with:)(4, j);
    v15 = v47;
    if (v47 >> 62)
    {
LABEL_67:
      v28 = __CocoaSet.count.getter();
      if (v28 < 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
LABEL_80:
      v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 < 1)
      {
LABEL_68:

        if (!(v21 >> 62))
        {
          goto LABEL_91;
        }

        goto LABEL_69;
      }
    }

    v31 = ceil(vcvtd_n_f64_u64(v28, 1uLL));
    if (v31 == INFINITY)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_96;
    }

    v2 = v31;
    if ((v31 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_unknownObjectRelease();
    v20 = v1;
LABEL_54:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v20, v3, v21);
    v21 = v24;
LABEL_63:
    swift_unknownObjectRelease();
    if (!v16)
    {
      goto LABEL_61;
    }

LABEL_64:
    ;
  }

  if (v2)
  {
    v32 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v32 + 16) = v2;
    v33 = 32;
    do
    {
      v34 = v32 + v33;
      *v34 = xmmword_21659EE80;
      *(v34 + 16) = 513;
      v33 += 24;
      v2 = (v2 - 1);
    }

    while (v2);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v32);
  if (!(v21 >> 62))
  {
LABEL_91:
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_92;
    }

LABEL_70:

    goto LABEL_93;
  }

LABEL_69:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_70;
  }

LABEL_92:
  v35 = *((*(*v41 + 416))() + 16);

  v36 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v41 + v36);
  *(v41 + v36) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v35, isUniquelyReferenced_nonNull_native);
  *(v41 + v36) = v45;
  swift_endAccess();
LABEL_93:

  v38 = v49;
  *v46 = v8;
  v29 = specialized Array.append<A>(contentsOf:)(v15);
  v39 = *v46;
  *v42 = v38;
  v42[1] = v39;
LABEL_103:
  result.items._rawValue = v30;
  result.subgroups._rawValue = v29;
  return result;
}

uint64_t closure #1 in SuggestionCollectionViewModel.createRecentsSuggestionGroupForCompactWidth(viewModels:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(char *, char *))
{
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v28 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18 = *a1;
  v19 = *a2;
  outlined init with copy of DateInterval?(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v11, &_s10Foundation4DateVSgMd);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
    v21 = 0;
  }

  else
  {
    v27 = v3;
    v26 = *(v13 + 32);
    v26(v17, v11, v12);
    outlined init with copy of DateInterval?(v19 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v9, &_s10Foundation4DateVSgMd);
    if (v20(v9, 1, v12) == 1)
    {
      (*(v13 + 8))(v17, v12);
      outlined destroy of UTType?(v9, &_s10Foundation4DateVSgMd);
      v21 = 0;
    }

    else
    {
      v22 = v28;
      v26(v28, v9, v12);
      v21 = v29(v17, v22);
      v23 = *(v13 + 8);
      v23(v22, v12);
      v23(v17, v12);
    }
  }

  return v21 & 1;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.groupSuggestionViewModelsByDay()()
{
  v88 = type metadata accessor for Calendar();
  v94 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v84 = &v75 - v6;
  MEMORY[0x28223BE20](v5);
  v98 = &v75 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v75 - v15);
  MEMORY[0x28223BE20](v14);
  v90 = &v75 - v17;
  v18 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  swift_beginAccess();
  v19 = *(v0 + v18);
  *&v101 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
LABEL_37:
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v16;

  v21 = MEMORY[0x277D84F90];
  v83 = v0;
  v100 = v8;
  v77 = v9;
  if (v20)
  {
    v22 = 0;
    v16 = &OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180](v22, v19);
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v26 = v101;
          v0 = v83;
          v9 = v77;
          v21 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v9 = *(v19 + 8 * v22 + 32);

        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_19;
        }
      }

      v0 = v9;
      v24 = (*(*v9 + 256))();
      if (v24 && ((v0 = v24[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory], v24, v0 != 1) ? (v25 = v0 == 3) : (v25 = 1), v25))
      {
        v0 = &v101;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v8 = v100;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v22;
      if (v23 == v20)
      {
        goto LABEL_20;
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_22:

  *&v101 = v26;
  v27 = 0;
  specialized MutableCollection<>.sort(by:)(&v101, MEMORY[0x277CC94D0], MEMORY[0x277CC94D0]);
  v28 = v101;
  Date.init()();
  v102 = v21;
  v29 = *(*v0 + 432);
  v82 = *v0 + 432;
  v81 = v29;
  v30 = v29(&v101);
  *v31 = v21;

  v30(&v101, 0);
  v32 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
  swift_beginAccess();
  *(v0 + v32) = MEMORY[0x277D84F98];

  v33 = v28 >> 62;
  v34 = v98;
  if (!(v28 >> 62))
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_24:
    if ((v28 & 0xC000000000000001) != 0)
    {
      goto LABEL_80;
    }

    v35 = v97;
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v28;
      v36 = *(v28 + 32);

      goto LABEL_27;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v21 = v28;
  if (__CocoaSet.count.getter() > 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

LABEL_83:
  v46 = v21;
LABEL_41:
  v45 = __CocoaSet.count.getter();
  v33 = v84;
  while (v45)
  {
    if (v45 < 1)
    {
      __break(1u);
      goto LABEL_82;
    }

    v93 = v27;
    v47 = v9;
    v48 = 0;
    v9 = 0;
    v97 = v46 & 0xC000000000000001;
    v75 = v46 + 32;
    v96 = (v47 + 48);
    v86 = (v47 + 32);
    v85 = v94 + 1;
    v94 = (v47 + 8);
    v79 = (v47 + 16);
    v76 = v46 & 0xFFFFFFFFFFFFFF8;
    v98 = MEMORY[0x277D84F90];
    v89 = v46;
    v95 = v45;
    while (1)
    {
      if (v97)
      {
        v49 = MEMORY[0x21CE93180](v9, v46);
      }

      else
      {
        v49 = *(v46 + 8 * v9 + 32);
      }

      outlined init with copy of DateInterval?(v49 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v33, &_s10Foundation4DateVSgMd);
      v28 = *v96;
      if ((*v96)(v33, 1, v8) == 1)
      {

        outlined destroy of UTType?(v33, &_s10Foundation4DateVSgMd);
        goto LABEL_46;
      }

      v50 = *v86;
      (*v86)(v99, v33, v8);
      v34 = v87;
      static Calendar.current.getter();
      v8 = v90;
      v51 = Calendar.isDate(_:inSameDayAs:)();
      v27 = *v85;
      (*v85)(v34, v88);
      if (v51)
      {

        MEMORY[0x21CE92260](v52);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v53 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v98 = v102;
      }

      else
      {

        v102 = MEMORY[0x277D84F90];

        MEMORY[0x21CE92260](v54);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v55 = v100;
        (*v94)(v8, v100);
        v98 = v102;
        v53 = (*v79)(v8, v99, v55);
        v33 = v84;
      }

      if (__OFADD__(v48++, 1))
      {
        break;
      }

      if (v48 >= v95)
      {
        goto LABEL_68;
      }

      v92 = v27;
      if (v97)
      {
        v57 = MEMORY[0x21CE93180](v48, v89);
        v58 = v80;
      }

      else
      {
        v58 = v80;
        if (v48 >= *(v76 + 16))
        {
          goto LABEL_79;
        }

        v57 = *(v75 + 8 * v48);
      }

      outlined init with copy of DateInterval?(v57 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v58, &_s10Foundation4DateVSgMd);
      v59 = v100;
      if ((v28)(v58, 1, v100) == 1)
      {

        v53 = outlined destroy of UTType?(v58, &_s10Foundation4DateVSgMd);
        v33 = v84;
LABEL_68:
        v64 = v83;
        if ((*(*v83 + 848))(v53))
        {
          *&v101 = v98;

          v65 = v93;
          specialized MutableCollection<>.sort(by:)(&v101, &OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore);
          v93 = v65;
          (*(*v64 + 1008))(&v101, v101);
        }

        else
        {
          *&v101 = v98;

          v66 = v93;
          specialized MutableCollection<>.sort(by:)(&v101, &OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore);
          v93 = v66;
          (*(*v64 + 1000))(&v101, v101);
        }

        v91 = v101;
        v92 = v48;
        v67 = v81(&v101);
        v69 = v68;
        v70 = *v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v69 = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          *v69 = v70;
        }

        v72 = v89;
        v74 = *(v70 + 2);
        v73 = *(v70 + 3);
        if (v74 >= v73 >> 1)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v70);
          *v69 = v70;
        }

        *(v70 + 2) = v74 + 1;
        *&v70[16 * v74 + 32] = v91;
        v67(&v101, 0);

        v8 = v100;
        (*v94)(v99, v100);
        v45 = v95;
        v46 = v72;
        v48 = v92;
        goto LABEL_46;
      }

      v60 = v78;
      v50(v78, v58, v59);
      v61 = v87;
      static Calendar.current.getter();
      v62 = Calendar.isDate(_:inSameDayAs:)();

      v92(v61, v88);
      v63 = *v94;
      v53 = (*v94)(v60, v59);
      v33 = v84;
      if ((v62 & 1) == 0)
      {
        goto LABEL_68;
      }

      v8 = v100;
      v63(v99, v100);

      v46 = v89;
      v45 = v95;
LABEL_46:
      if (v45 == ++v9)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v21 = v28;
    v36 = MEMORY[0x21CE93180](0, v28);
    v35 = v97;
LABEL_27:
    outlined init with copy of DateInterval?(v36 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v34, &_s10Foundation4DateVSgMd);
    v37 = *(v9 + 48);
    v38 = v37(v34, 1, v8);
    v39 = v9;
    v40 = v34;
    if (v38 == 1)
    {
      v41 = v39;
      static Date.now.getter();
      if (v37(v40, 1, v8) != 1)
      {
        outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v41 = v39;
      (*(v39 + 32))(v35, v40, v8);
    }

    v42 = v90;
    v43 = static Date.< infix(_:_:)();

    v9 = v41;
    v44 = *(v41 + 8);
    if (v43)
    {
      v44(v42, v8);
      (*(v41 + 32))(v42, v35, v8);
      v28 = v21;
      if (v33)
      {
LABEL_40:
        v46 = v28;
        goto LABEL_41;
      }
    }

    else
    {
      v44(v35, v8);
      v28 = v21;
      if (v33)
      {
        goto LABEL_40;
      }
    }

LABEL_35:
    v45 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v84;
    v46 = v28;
  }

  v98 = MEMORY[0x277D84F90];
LABEL_77:

  (*(v77 + 8))(v90, v8);
}

unsigned __int8 *SuggestionViewModel.recentEligible.getter()
{
  result = (*(*v0 + 256))();
  if (result)
  {
    v2 = result[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory];

    if (v2 == 5)
    {
      return 0;
    }

    else
    {
      return (((v2 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0);
    }
  }

  return result;
}

Swift::Bool __swiftcall SuggestionCollectionViewModel.shouldShowShowMoreFooter(section:)(Swift::Int section)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
  swift_beginAccess();
  result = 0;
  if (*(*(v1 + v3) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(section);
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.showMoreForDaySection(section:)(Swift::Int section)
{
  v3 = (*(*v1 + 848))();
  v4 = *v1;
  if (v3)
  {
    v5 = *(v4 + 1048);
    v6 = section;
  }

  else
  {
    v5 = *(v4 + 1040);
    v6 = section;
  }

  v5(v6);
}

Swift::Void __swiftcall SuggestionCollectionViewModel.showMoreForDaySectionCompact(section:)(Swift::Int section)
{
  v3 = v1;
  v5 = (*(*v1 + 416))();
  if (section < 0 || *(v5 + 16) <= section)
  {

    return;
  }

  v32 = *(v5 + 16 * section + 32);
  v6 = *(v5 + 16 * section + 32);

  v7 = *(&v32 + 1);

  v34 = v32;
  v8 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(section), (v11 & 1) == 0))
  {

    goto LABEL_51;
  }

  v31 = *(*(v9 + 56) + 8 * v10);
  v12 = *(&v32 + 1) >> 62;
  if (!(*(&v32 + 1) >> 62))
  {
    v13 = *((*(&v32 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_25:
    v12 = v31;

    goto LABEL_26;
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_7:
  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    goto LABEL_53;
  }

  if ((*(&v32 + 1) & 0xC000000000000001) != 0)
  {
    goto LABEL_54;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v14 >= *((*(&v32 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_57;
  }

  while (2)
  {
    type metadata accessor for MosaicSuggestionViewModel();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v2 = v15;
      if (v12)
      {
        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      v12 = v31;
      if (!v17)
      {
        specialized Array.remove(at:)(v18);

        v33[0] = 1;
        MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(1, 1, 0, v33);
        MEMORY[0x21CE92260]();
        if (*((*(&v34 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v34 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_63;
        }

        goto LABEL_23;
      }

      goto LABEL_62;
    }

    v12 = v31;
    while (1)
    {
LABEL_26:
      if (v12 >> 62)
      {
        v7 = __CocoaSet.count.getter();
        if (!v7)
        {
LABEL_46:

          specialized Array.append<A>(contentsOf:)(v25);

          v6 = v34;
          goto LABEL_47;
        }
      }

      else
      {
        v7 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_46;
        }
      }

      v13 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        break;
      }

      v2 = v12 & 0xC000000000000001;
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_58;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_33;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_23:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    MEMORY[0x21CE93180](v13, v12);
LABEL_33:
    type metadata accessor for MosaicSuggestionViewModel();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      (*(*v19 + 400))(1);
    }

    specialized Array.append<A>(contentsOf:)(v20);
    if (v7 < 1)
    {
      goto LABEL_60;
    }

    v21 = 0;
    v12 = 24;
    do
    {
      if (v2)
      {
        MEMORY[0x21CE93180](v21, v31);
        swift_unknownObjectRelease();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
      }

      ++v21;
      *(v6 + 2) = v23 + 1;
      v24 = &v6[24 * v23];
      *(v24 + 2) = xmmword_21659EE80;
      *(v24 + 24) = 512;
    }

    while (v7 != v21);

    *&v34 = v6;
LABEL_47:
    v26 = *(&v34 + 1);
    v14 = (*(*v3 + 432))(v33);
    v7 = v27;
    v28 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
      *v7 = v28;
    }

    if (*(v28 + 2) <= section)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:

      MEMORY[0x21CE93180](v14, v7);
      continue;
    }

    break;
  }

  v30 = &v28[16 * section];
  *(v30 + 4) = v6;
  *(v30 + 5) = v26;

  (v14)(v33, 0);
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(section);
  swift_endAccess();
LABEL_51:
}

Swift::Void __swiftcall SuggestionCollectionViewModel.showMoreForDaySectionRegular(section:)(Swift::Int section)
{
  v2 = v1;
  v4 = (*(*v1 + 416))();
  if ((section & 0x8000000000000000) == 0 && *(v4 + 16) > section)
  {
    v21 = *(v4 + 16 * section + 32);

    v24 = v21;
    v5 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(section), (v8 & 1) == 0))
    {

LABEL_26:

      return;
    }

    v9 = *(*(v6 + 56) + 8 * v7);
    swift_bridgeObjectRetain_n();
    specialized Array.append<A>(contentsOf:)(v9);
    if (v9 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= 1)
    {
      v11 = ceil(vcvtd_n_f64_u64(v10, 1uLL));
      if (v11 == INFINITY)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v11 <= -9.22337204e18)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= 9.22337204e18)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v12 = v11;
      if (v11 < 0)
      {
LABEL_32:
        __break(1u);
        return;
      }

      if (v12)
      {
        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 16) = v12;
        v14 = 32;
        do
        {
          v15 = v13 + v14;
          *v15 = xmmword_21659EE80;
          *(v15 + 16) = 1;
          v14 += 24;
          --v12;
        }

        while (v12);
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v13);
    }

    v22 = v24;
    v16 = (*(*v2 + 432))(v23);
    v18 = v17;
    v19 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      *v18 = v19;
    }

    if (*(v19 + 2) > section)
    {
      *&v19[16 * section + 32] = v22;

      v16(v23, 0);
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(section);
      swift_endAccess();
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_29;
  }
}

Swift::Void __swiftcall SuggestionCollectionViewModel.createEvergreenGroupsForCompactWidth()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels);
  v2 = *(*v0 + 416);

  v4 = v2(v3);
  v5 = v4;
  v6 = v1 >> 62;
  v65 = *(v4 + 16);
  if (!v65)
  {

    v28 = 0;
    v9 = MEMORY[0x277D84F90];
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    if (!v6)
    {
      goto LABEL_34;
    }

LABEL_40:
    v32 = __CocoaSet.count.getter();
    if (v28 >= v32)
    {
      goto LABEL_43;
    }

    v30 = v32;
    if (__CocoaSet.count.getter() < v28)
    {
      goto LABEL_42;
    }

LABEL_36:
    if (v28 < 0)
    {
LABEL_69:
      __break(1u);
    }

    else
    {
      if (v6)
      {
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v31 >= v30)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          if ((v1 & 0xC000000000000001) == 0 || v28 == v30)
          {
            v33 = v28;
          }

          else
          {
            type metadata accessor for SuggestionViewModel();

            v33 = v28;
            v34 = v28;
            do
            {
              v35 = v34 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v34);
              v34 = v35;
            }

            while (v30 != v35);
          }

          if (v6)
          {
            _CocoaArrayWrapper.subscript.getter();
            v36 = v46;
            v33 = v47;
            v49 = v48;

            v38 = (v49 >> 1) - v33;
            v37 = (v49 >> 1) <= v33;
            if (v49 >> 1 != v33)
            {
LABEL_55:
              if (!v37)
              {
                v39 = (v36 + 8 * v33);
                do
                {
                  v40 = *v39;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMd);
                  v41 = swift_allocObject();
                  *(v41 + 16) = xmmword_21658CA50;
                  *(v41 + 32) = xmmword_21659EE80;
                  *(v41 + 48) = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                  v42 = swift_allocObject();
                  *(v42 + 16) = xmmword_21658E210;
                  *(v42 + 32) = v40;
                  swift_retain_n();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
                  }

                  v44 = *(v9 + 2);
                  v43 = *(v9 + 3);
                  if (v44 >= v43 >> 1)
                  {
                    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v9);
                  }

                  *(v9 + 2) = v44 + 1;
                  v45 = &v9[16 * v44];
                  *(v45 + 4) = v41;
                  *(v45 + 5) = v42;
                  ++v39;
                  --v38;
                }

                while (v38);
                goto LABEL_64;
              }

LABEL_72:
              __break(1u);
              return;
            }
          }

          else
          {
            v36 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
            v38 = v30 - v33;
            v37 = v30 <= v33;
            if (v30 != v33)
            {
              goto LABEL_55;
            }
          }

LABEL_64:
          swift_unknownObjectRelease();
          goto LABEL_65;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  v66 = 0;
  v62 = 0;
  v7 = 0;
  v64 = *(*v0 + 440);
  v63 = v4 + 32;
  v61 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 < 0)
  {
    v8 = v1;
  }

  else
  {
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  v60 = v1 & 0xC000000000000001;
  v9 = MEMORY[0x277D84F90];
  v56 = v1 + 32;
  v58 = v1 >> 62;
  v59 = v1;
  v57 = v4;
  do
  {
    if (v7 >= *(v5 + 16))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v11 = v8;
    v67 = *(v63 + 16 * v7);
    v12 = v7 + 1;

    v14 = *(v64(v13) + 16);

    if ((v14 == 0) | v62 & 1)
    {
      ++v7;
      goto LABEL_18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);
    if (v16 >= v15 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v9);
    }

    *(v9 + 2) = v16 + 1;
    *&v9[16 * v16 + 32] = v67;
    if (v12 == v65)
    {
      break;
    }

    if (v12 >= *(v5 + 16))
    {
      goto LABEL_66;
    }

    v67 = *(v63 + 16 * v12);

    v64(v17);

    v7 += 2;
    v62 = 1;
LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v8 = v11;
    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    v20 = v66;
    if (v19 >= v18 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
      v20 = v66;
      v9 = v26;
    }

    *(v9 + 2) = v19 + 1;
    *&v9[16 * v19 + 32] = v67;
    if (!v6)
    {
      if (v20 >= *(v61 + 16))
      {
        continue;
      }

LABEL_24:
      if (v60)
      {
        v21 = MEMORY[0x21CE93180](v20, v1);
      }

      else
      {
        if (v20 >= *(v61 + 16))
        {
          goto LABEL_68;
        }

        v21 = *(v56 + 8 * v20);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMd);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_21658CA50;
      *(v22 + 32) = xmmword_21659EE80;
      *(v22 + 48) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21658E210;
      *(v23 + 32) = v21;
      v24 = *(v9 + 2);
      v25 = *(v9 + 3);

      if (v24 >= v25 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1, v9);
      }

      v5 = v57;

      *(v9 + 2) = v24 + 1;
      v10 = &v9[16 * v24];
      *(v10 + 4) = v22;
      *(v10 + 5) = v23;
      ++v66;
      v6 = v58;
      v1 = v59;
      v8 = v11;
      continue;
    }

    v27 = __CocoaSet.count.getter();
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    v20 = v66;
    if (v66 < v27)
    {
      goto LABEL_24;
    }
  }

  while (v7 != v65);

  v28 = v66;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_40;
  }

LABEL_34:
  v30 = *(v29 + 16);
  if (v28 < v30)
  {
    if (v30 >= v28)
    {
      goto LABEL_36;
    }

LABEL_42:
    __break(1u);
  }

LABEL_43:

LABEL_65:
  v50 = MEMORY[0x277D84F90];
  v51 = (*v0 + 432);
  v52 = *v51;
  v53 = (*v51)(v68);
  *v54 = v50;

  v53(v68, 0);
  v55 = v52(v68);
  specialized Array.append<A>(contentsOf:)(v9);
  v55(v68, 0);
}

uint64_t SuggestionCollectionViewModel.init(suggestionViewModels:client:cloudManager:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a1;
  v33 = a4;
  v30 = a3;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateOGMd);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_options) = 0;
  v13 = v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_delegate;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_pendingDBChangesSubscription) = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_topLockupMaxSubgroupCount) = 2;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_suggestionGroupMaxSubgroupCount) = 3;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_evergreenGroupMaxSubgroupCount) = 1;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreListViewThresholdCompact) = 3;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreListViewThresholdRegular) = 4;
  v14 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_suggestionGroups) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_supplementarySuggestionGroups) = v14;
  v15 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels) = v14;
  v16 = v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentLoadedSnapshot;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentLoadedNumSuggestions;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel__shouldAllowVisualizationOfDraft;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = (v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_messagingGroup);
  *v19 = 0;
  v19[1] = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_messageViewModel) = 0;
  v20 = (v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_primaryDeviceID);
  *v20 = 0;
  v20[1] = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels) = v14;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_sortedSuggestionViewModels) = v14;
  type metadata accessor for IndexSet();
  v34 = v14;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_showMoreViewModelsDict;
  *(v5 + v21) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI19SuggestionViewModelCGTt0g5Tf4g_n(v14);
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSegmentType) = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentTraitCollection) = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_tipCoordinator) = 0;
  v22 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel__contentState;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  (*(v28 + 32))(v5 + v22, v8, v29);
  swift_beginAccess();
  swift_weakAssign();

  outlined init with take of Client(v31, v5 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_client);
  v23 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_options;
  swift_beginAccess();
  v24 = *(v5 + v23);
  *(v5 + v23) = v33;
  v25 = v32;

  if (v25)
  {
    swift_beginAccess();
    *(v5 + v15) = v25;
  }

  return v5;
}

uint64_t outlined copy of SuggestionGroup?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of SuggestionGroup?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(unint64_t a1)
{
  v2 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UUID();
  v69 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  if (one-time initialization token for uiRendering != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v11 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v11, static CommonSignposter.uiRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v12 = OSSignposter.logHandle.getter();
    v13 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v12, v13, v15, "UIService_FetchMosaicViewModels", "", v14, 2u);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    v16 = *(v67 + 16);
    v66 = v10;
    v16(v8, v10, v68);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v65 = OSSignpostIntervalState.init(id:isOpen:)();
    v81 = MEMORY[0x277D84F90];
    v17 = a1 >> 62 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      break;
    }

    v8 = MEMORY[0x277D84F90];
    v81 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

LABEL_21:
    if ((v8 & 0x4000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v23 = *(v8 + 16);
    if (!v23)
    {
      goto LABEL_41;
    }

LABEL_23:
    v24 = 0;
    v10 = (v8 & 0xC000000000000001);
    while (1)
    {
      if (v10)
      {
        v25 = MEMORY[0x21CE93180](v24, v8);
      }

      else
      {
        if (v24 >= *(v8 + 16))
        {
          goto LABEL_37;
        }

        v25 = *(v8 + 8 * v24 + 32);
      }

      a1 = v25;
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (*(v25 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType) == 8)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v24;
      if (v26 == v23)
      {
        v27 = v81;
        goto LABEL_42;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v8 = 0;
  v18 = MEMORY[0x277D85000];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CE93180](v8, a1);
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v19 = *(a1 + 8 * v8 + 32);
    }

    v20 = v19;
    v10 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v21 = (*((*v18 & *v19) + 0xA8))(v19);
    if (v21 && (v22 = v21[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory], v21, v22 == 4))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v8;
  }

  while (v10 != v17);
  v8 = v81;
  v81 = MEMORY[0x277D84F90];
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_40:
  v23 = __CocoaSet.count.getter();
  if (v23)
  {
    goto LABEL_23;
  }

LABEL_41:
  v27 = MEMORY[0x277D84F90];
LABEL_42:
  v77 = v27;

  v28 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  v29 = v76;
  swift_beginAccess();
  v30 = *(v29 + v28);

  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI19SuggestionViewModelCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v30 >> 62)
  {
    goto LABEL_68;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
LABEL_69:

    v80 = MEMORY[0x277D84F90];
    v53 = v77;
    if (v77 < 0 || (v77 & 0x4000000000000000) != 0)
    {
LABEL_89:
      v79 = __CocoaSet.count.getter();
      v53 = v77;
    }

    else
    {
      v79 = *(v77 + 16);
    }

    v54 = 0;
    v55 = v53 & 0xC000000000000001;
    v78 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v79 == v54)
      {

        $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v65, "UIService_FetchMosaicViewModels");

        (*(v67 + 8))(v66, v68);
        return v78;
      }

      if (v55)
      {
        v56 = MEMORY[0x21CE93180](v54, v53);
      }

      else
      {
        if (v54 >= *(v53 + 16))
        {
          goto LABEL_88;
        }

        v56 = *(v53 + 8 * v54 + 32);
      }

      v57 = v56;
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      type metadata accessor for MosaicSuggestionViewModel();
      v59 = *(*v76 + 320);
      v60 = v57;
      v61 = v75;
      v59(v60);
      v62 = MosaicSuggestionViewModel.__allocating_init(suggestion:client:)(v60, v61);
      if (v31[2] && (specialized __RawDictionaryStorage.find<A>(_:)(&v60[OBJC_IVAR____TtC9MomentsUI10Suggestion_id]), (v63 & 1) != 0))
      {

LABEL_82:
        MEMORY[0x21CE92260](v53);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v78 = v80;
        v54 = v58;
        v53 = v77;
      }

      else
      {

        ++v54;
        v53 = v77;
        if (v62)
        {
          goto LABEL_82;
        }
      }
    }
  }

LABEL_44:
  v33 = 0;
  v72 = v30 & 0xFFFFFFFFFFFFFF8;
  v73 = v30 & 0xC000000000000001;
  v74 = (v69 + 16);
  v70 = v30;
  v71 = (v69 + 8);
  while (1)
  {
    if (v73)
    {
      v34 = MEMORY[0x21CE93180](v33, v30);
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v33 >= *(v72 + 16))
      {
        goto LABEL_65;
      }

      v34 = *(v30 + 8 * v33 + 32);

      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v32 = __CocoaSet.count.getter();
        if (!v32)
        {
          goto LABEL_69;
        }

        goto LABEL_44;
      }
    }

    v36 = *v74;
    v37 = v79;
    (*v74)(v79, v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_id, v78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v31;
    v39 = v37;
    v30 = v31;
    v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
    v42 = v31[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_66;
    }

    v45 = v40;
    if (v31[3] < v44)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v80;
      if (v40)
      {
        goto LABEL_45;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v31 = v80;
      if (v45)
      {
LABEL_45:
        *(v31[7] + 8 * v41) = v34;

        (*v71)(v79, v78);
        goto LABEL_46;
      }
    }

LABEL_57:
    v31[(v41 >> 6) + 8] |= 1 << v41;
    v48 = v69;
    v30 = v78;
    v49 = v79;
    v36(v31[6] + *(v69 + 72) * v41, v79, v78);
    *(v31[7] + 8 * v41) = v34;

    (*(v48 + 8))(v49, v30);
    v50 = v31[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_67;
    }

    v31[2] = v52;
LABEL_46:
    ++v33;
    v30 = v70;
    if (v35 == v32)
    {
      goto LABEL_69;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
  if ((v45 & 1) == (v47 & 1))
  {
    v41 = v46;
    v31 = v80;
    if (v45)
    {
      goto LABEL_45;
    }

    goto LABEL_57;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewModel.convertSuggestionsToEvergreenViewModel(suggestions:)(unint64_t a1)
{
  v2 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v2 - 8);
  v74 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UUID();
  v68 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  isUniquelyReferenced_nonNull_native = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v63 - v9;
  if (one-time initialization token for uiRendering != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v11 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v11, static CommonSignposter.uiRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v12 = OSSignposter.logHandle.getter();
    v13 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v12, v13, v15, "UIService_FetchEvergreenViewModels", "", v14, 2u);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    v16 = *(v66 + 16);
    v65 = v10;
    v16(isUniquelyReferenced_nonNull_native, v10, v67);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v17 = OSSignpostIntervalState.init(id:isOpen:)();
    v64 = v17;
    v79 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      v17 = __CocoaSet.count.getter();
      v18 = v17;
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D85000];
    if (!v18)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CE93180](isUniquelyReferenced_nonNull_native, a1);
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v20 = *(a1 + 8 * isUniquelyReferenced_nonNull_native + 32);
      }

      v21 = v20;
      v10 = (isUniquelyReferenced_nonNull_native + 1);
      if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
      {
        break;
      }

      v22 = (*((*v19 & *v20) + 0xA8))();
      if (v22 && (v23 = v22[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory], v22, v23 == 4))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = specialized ContiguousArray._endMutation()();
      }

      ++isUniquelyReferenced_nonNull_native;
      if (v10 == v18)
      {
        isUniquelyReferenced_nonNull_native = v79;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
LABEL_20:
  v24 = (*(*v76 + 344))(v17);
  if (v24)
  {
    v25 = v24;
    v26 = (*((*v19 & *v24) + 0xE0))();

    v79 = v10;
    if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
    {
LABEL_70:
      v27 = __CocoaSet.count.getter();
      if (!v27)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v26 = 1;
    v79 = v10;
    if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }
  }

  if ((isUniquelyReferenced_nonNull_native & 0x4000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v27 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v27)
  {
    goto LABEL_39;
  }

LABEL_26:
  a1 = 0;
  v10 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
  while (v10)
  {
    v28 = MEMORY[0x21CE93180](a1, isUniquelyReferenced_nonNull_native);
    v29 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_37;
    }

LABEL_32:
    if (*(v28 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType) == 8 && (v26 & 1) != 0)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++a1;
    if (v29 == v27)
    {
      goto LABEL_38;
    }
  }

  if (a1 >= *(isUniquelyReferenced_nonNull_native + 16))
  {
    goto LABEL_63;
  }

  v28 = *(isUniquelyReferenced_nonNull_native + 8 * a1 + 32);
  v29 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  v10 = v79;
LABEL_39:

  v30 = *(v76 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels);

  a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI19SuggestionViewModelCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (!(v30 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v10;
    if (v31)
    {
      goto LABEL_41;
    }

LABEL_73:

    v79 = MEMORY[0x277D84F90];
    v49 = v75;
    if ((v75 & 0x8000000000000000) != 0 || (v75 & 0x4000000000000000) != 0)
    {
LABEL_93:
      v78 = __CocoaSet.count.getter();
    }

    else
    {
      v78 = *(v75 + 2);
    }

    v50 = 0;
    v51 = v49 & 0xC000000000000001;
    v77 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v78 == v50)
      {

        v79 = v77;
        specialized MutableCollection<>.sort(by:)(&v79, &OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore);
        v61 = v79;
        $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v64, "UIService_FetchEvergreenViewModels");

        (*(v66 + 8))(v65, v67);
        return v61;
      }

      if (v51)
      {
        v53 = MEMORY[0x21CE93180](v50, v49);
      }

      else
      {
        if (v50 >= *(v49 + 2))
        {
          goto LABEL_92;
        }

        v53 = *&v49[8 * v50 + 32];
      }

      v54 = v53;
      v55 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      type metadata accessor for EvergreenSuggestionViewModel();
      v56 = *(*v76 + 320);
      v57 = v54;
      v58 = v74;
      v56();
      v59 = EvergreenSuggestionViewModel.__allocating_init(suggestion:client:)(v57, v58);
      if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v57 + OBJC_IVAR____TtC9MomentsUI10Suggestion_id), (v60 & 1) != 0))
      {

        v49 = v75;
      }

      else
      {

        ++v50;
        v49 = v75;
        if (!v59)
        {
          continue;
        }
      }

      MEMORY[0x21CE92260](v52);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v77 = v79;
      v50 = v55;
    }
  }

  v31 = __CocoaSet.count.getter();
  v75 = v10;
  if (!v31)
  {
    goto LABEL_73;
  }

LABEL_41:
  v32 = 0;
  v71 = v30 & 0xFFFFFFFFFFFFFF8;
  v72 = v30 & 0xC000000000000001;
  v73 = (v68 + 16);
  v69 = v30;
  v70 = (v68 + 8);
  while (2)
  {
    if (v72)
    {
      v33 = MEMORY[0x21CE93180](v32, v30);
      v10 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v32 >= *(v71 + 16))
      {
        goto LABEL_65;
      }

      v33 = *(v30 + 8 * v32 + 32);

      v10 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        goto LABEL_64;
      }
    }

    v34 = *v73;
    v35 = v78;
    (*v73)(v78, v33 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_id, v77);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = a1;
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
    v38 = *(a1 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_66;
    }

    v41 = v36;
    if (*(a1 + 24) >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        a1 = v79;
        if ((v36 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      }

      specialized _NativeDictionary.copy()();
      a1 = v79;
      if (v41)
      {
        goto LABEL_42;
      }

LABEL_54:
      *(a1 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      isUniquelyReferenced_nonNull_native = v68;
      v44 = v77;
      v45 = v78;
      v34(*(a1 + 48) + *(v68 + 72) * v37, v78, v77);
      *(*(a1 + 56) + 8 * v37) = v33;

      (*(isUniquelyReferenced_nonNull_native + 8))(v45, v44);
      v46 = *(a1 + 16);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_67;
      }

      *(a1 + 16) = v48;
LABEL_43:
      ++v32;
      v30 = v69;
      if (v10 == v31)
      {
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
  v42 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
  if ((v41 & 1) == (v43 & 1))
  {
    v37 = v42;
    a1 = v79;
    if ((v41 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_42:
    *(*(a1 + 56) + 8 * v37) = v33;

    (*v70)(v78, v77);
    goto LABEL_43;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:)(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 104) = a1;
  v3 = type metadata accessor for OSSignpostID();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:), 0, 0);
}

uint64_t SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:)()
{
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v2, v3, v5, "UIService_FetchSuggestionViewModels", "", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);

  (*(v9 + 16))(v7, v6, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 80) = OSSignpostIntervalState.init(id:isOpen:)();
  v14 = (*(*v10 + 1120) + **(*v10 + 1120));
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:);
  v12 = *(v0 + 104);

  return v14(v12);
}

{
  v29 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[5];
    v3 = SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v0[12]);
    v4 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
    swift_beginAccess();
    *(v2 + v4) = v3;

    SuggestionCollectionViewModel.currentSuggestionViewModels.didset();
    v5 = SuggestionCollectionViewModel.convertSuggestionsToEvergreenViewModel(suggestions:)(v1);

    v6 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels;
    *(v2 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels) = v5;

    v28[0] = 6;
    (*(*v2 + 880))(v28);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static CommonLogger.viewModel);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      v11 = *(v2 + v4);
      if (v11 >> 62)
      {
        v26 = v10;
        v12 = __CocoaSet.count.getter();
        v10 = v26;
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 4) = v12;
      *(v10 + 12) = 2048;
      v13 = *(v2 + v6);
      if (v13 >> 62)
      {
        v27 = v10;
        v14 = __CocoaSet.count.getter();
        v10 = v27;
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 14) = v14;
      v15 = v10;

      _os_log_impl(&dword_21607C000, v8, v9, "[SuggestionCollectionViewModel] currentSuggestionViewModels = %ld, currentEvergreenViewModels = %ld", v15, 0x16u);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    else
    {
    }

    v22 = v0[9];
    v23 = v0[7];
    v24 = v0[6];
    $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v0[10], "UIService_FetchSuggestionViewModels");

    (*(v23 + 8))(v22, v24);

    v21 = v0[1];
  }

  else
  {
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[6];
    lazy protocol witness table accessor for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v17, "UIService_FetchSuggestionViewModels");

    (*(v18 + 8))(v16, v19);

    v21 = v0[1];
  }

  return v21();
}

uint64_t SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:)(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:), 0, 0);
}

uint64_t SuggestionCollectionViewModel.getDBManager()()
{
  v1[7] = v0;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_GGMd);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.getDBManager(), 0, 0);
}

{
  v1 = (*(**(v0 + 56) + 296))();
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = SuggestionCollectionViewModel.getDBManager();

    return CloudManager.getFastDBManager()();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(0);
  }
}

{
  if (v0[22])
  {

    v1 = v0[22];

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[23] = __swift_project_value_buffer(v4, static CommonLogger.viewModel);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21607C000, v5, v6, "[waitForSnapshot] waiting for DBManager creation", v7, 2u);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v8 = v0[20];

    return MEMORY[0x2822009F8](SuggestionCollectionViewModel.getDBManager(), v8, 0);
  }
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.getDBManager(), 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  MEMORY[0x21CE912F0](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = SuggestionCollectionViewModel.getDBManager();
  v10 = v0[17];

  return MEMORY[0x282200308](v0 + 5, v10, v8);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = SuggestionCollectionViewModel.getDBManager();
  }

  else
  {
    v2 = SuggestionCollectionViewModel.getDBManager();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 208) = *(v0 + 40);
  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.getDBManager(), 0, 0);
}

{
  v30 = v0;
  v1 = v0[26];
  if (v1)
  {
    if (v1 == 1)
    {
      (*(v0[18] + 8))(v0[19], v0[17]);

      v2 = 0;
    }

    else
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      outlined consume of DBManager??(v1);
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[19];
      v13 = v0[17];
      v14 = v0[18];
      if (v11)
      {
        v27 = v0[17];
        v28 = v0[19];
        v26 = v10;
        v16 = v0[9];
        v15 = v0[10];
        v17 = v0[8];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315138;
        (*(v16 + 16))(v15, v1 + OBJC_IVAR____TtC9MomentsUI9DBManager_uuid, v17);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        (*(v16 + 8))(v15, v17);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v29);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_21607C000, v9, v26, "[getDBManager] db manager created %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x21CE94770](v19, -1, -1);
        MEMORY[0x21CE94770](v18, -1, -1);

        (*(v14 + 8))(v28, v27);
      }

      else
      {

        (*(v14 + 8))(v12, v13);
      }

      v2 = v0[26];
    }

    v24 = v0[1];

    return v24(v2);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21607C000, v3, v4, "[getDBManager] nil db manager notified", v5, 2u);
      MEMORY[0x21CE94770](v5, -1, -1);
      outlined consume of DBManager??(0);
    }

    v6 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = SuggestionCollectionViewModel.getDBManager();
    v8 = v0[17];

    return MEMORY[0x282200308](v0 + 5, v8, v6);
  }
}

{
  *(v0 + 48) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t SuggestionCollectionViewModel.getDBManager()(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.getDBManager(), 0, 0);
}

uint64_t SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:)(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 59) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vys6UInt64V8sequence_AKSg11suggestionstSg_G_GMd);
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vys6UInt64V8sequence_AISg11suggestionstSg_GGMd);
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  *(v2 + 176) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMd);
  *(v2 + 184) = v5;
  *(v2 + 192) = *(v5 - 8);
  *(v2 + 200) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AMSg11suggestionstSg_GGSo17OS_dispatch_queueCGMd);
  *(v2 + 208) = v6;
  *(v2 + 216) = *(v6 - 8);
  *(v2 + 224) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd);
  *(v2 + 232) = v7;
  *(v2 + 240) = *(v7 - 8);
  *(v2 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:), 0, 0);
}

uint64_t SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:)()
{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = __swift_project_value_buffer(v1, static CommonLogger.viewModel);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[waitForContent.sink] waitForSnapshot", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  *(v0 + 264) = v5;

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:), v5, 0);
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:), 0, 0);
}

{
  v1 = *(v0 + 224);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v28 = *(v0 + 144);
  v24 = *(v0 + 96);
  v25 = *(v0 + 59);
  v29 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd);
  Publisher.removeDuplicates(by:)();
  type metadata accessor for OS_dispatch_queue();
  v6 = static OS_dispatch_queue.main.getter();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMd);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  outlined destroy of UTType?(v5, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v2 + 8))(v3, v4);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v25;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AMSg11suggestionstSg_GGSo17OS_dispatch_queueCGMd);
  v10 = Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v1, v26);
  *(v24 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_pendingDBChangesSubscription) = v10;

  v11 = (v28 + 16);
  v12 = *(v0 + 232);
  v13 = *(v0 + 136);
  if (v25 == 1)
  {
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    MEMORY[0x21CE912F0](v12, v29);
    (*v11)(v15, v14, v13);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vys6UInt64V8sequence_AISg11suggestionstSg_GGMd);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v16 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vys6UInt64V8sequence_AKSg11suggestionstSg_G_GMd);
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:);
    v18 = *(v0 + 104);
    v19 = v0 + 64;
  }

  else
  {
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    MEMORY[0x21CE912F0](v12, v29);
    (*v11)(v20, v21, v13);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vys6UInt64V8sequence_AISg11suggestionstSg_GGMd);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v16 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vys6UInt64V8sequence_AKSg11suggestionstSg_G_GMd);
    v22 = swift_task_alloc();
    *(v0 + 280) = v22;
    *v22 = v0;
    v22[1] = SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:);
    v18 = *(v0 + 104);
    v19 = v0 + 40;
  }

  return MEMORY[0x282200308](v19, v18, v16);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);
    v6 = v2 + 104;
    v4 = *(v2 + 104);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);
    v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v7 = SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  if ((*(v0 + 82) & 1) == 0 && ((v1 = *(v0 + 80), (v1 & 0x100) != 0) || (v1 & 1) != 0 || !*(v0 + 72)))
  {
    v13 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vys6UInt64V8sequence_AKSg11suggestionstSg_G_GMd);
    v14 = swift_task_alloc();
    *(v0 + 272) = v14;
    *v14 = v0;
    v14[1] = SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:);
    v15 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 64, v15, v13);
  }

  else
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    (*(v4 + 8))(v2, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21607C000, v5, v6, "[waitForSnapshot] finished waiting for snapshot", v7, 2u);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = *(v0 + 232);

    (*(v9 + 8))(v8, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[14];
    v3 = v2[15];
    v5 = v2[13];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  if ((*(v0 + 58) & 1) != 0 || (*(v0 + 56) & 0x100) == 0 && *(v0 + 40))
  {
    v2 = *(v0 + 144);
    v1 = *(v0 + 152);
    v3 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v2 + 8))(v1, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[waitForSnapshot] finished waiting for snapshot", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);

    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vys6UInt64V8sequence_AKSg11suggestionstSg_G_GMd);
    v13 = swift_task_alloc();
    *(v0 + 280) = v13;
    *v13 = v0;
    v13[1] = SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:);
    v14 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 40, v14, v12);
  }
}

uint64_t closure #2 in SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.viewModel);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    v12 = 999;
    if (!v7)
    {
      v12 = v5;
    }

    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    if (v7 & 1) != 0 || (v13 = v4, (v6))
    {
      v13 = 0;
    }

    *(v11 + 14) = v13;
    v14 = v10;
    v15 = v11;
    _os_log_impl(&dword_21607C000, v9, v14, "[waitForContent.sink] pending sequence: %llu, %llu", v11, 0x16u);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v7 & 1) == 0 && (v6 & 1) == 0)
    {
      v17 = result;
      v18 = (*(*result + 488))();
      if ((v19 & 1) == 0)
      {
        v20 = v18;
        if (v18 == v5)
        {
          v21 = v18;
          v22 = (*v17 + 512);
          v23 = *v22;
          v24 = (*v22)();
          if (v25)
          {
            v20 = v21;
            if (v4)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v20 = v21;
            if (v24 < v4)
            {
LABEL_17:

              v26 = Logger.logObject.getter();
              v27 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v26, v27))
              {
                v28 = swift_slowAlloc();
                *v28 = 134218752;
                *(v28 + 4) = v5;
                *(v28 + 12) = 2048;
                v29 = v23();
                if (v30)
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v29;
                }

                *(v28 + 14) = v31;

                *(v28 + 22) = 2048;
                *(v28 + 24) = v5;
                *(v28 + 32) = 2048;
                *(v28 + 34) = v4;
                _os_log_impl(&dword_21607C000, v26, v27, "[waitForContent.sink] should reload, old: (%llu,%llu, new: (%llu,%llu)", v28, 0x2Au);
                MEMORY[0x21CE94770](v28, -1, -1);
              }

              else
              {
              }

              (*(*v17 + 368))(v48, v32);
              if (v49)
              {
                outlined init with copy of DBObject(v48, v45);
                outlined destroy of UTType?(v48, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
                v40 = v46;
                v41 = v47;
                __swift_project_boxed_opaque_existential_1(v45, v46);
                (*(v41 + 16))(0, v40, v41);
LABEL_38:

                return __swift_destroy_boxed_opaque_existential_1(v45);
              }

LABEL_39:

              return outlined destroy of UTType?(v48, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
            }
          }
        }

        if (v20 < v5 && (a3 & 1) != 0)
        {
          v33 = v20;

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 134218752;
            *(v36 + 4) = v33;
            *(v36 + 12) = 2048;
            v37 = (*(*v17 + 512))();
            if (v38)
            {
              v39 = 0;
            }

            else
            {
              v39 = v37;
            }

            *(v36 + 14) = v39;

            *(v36 + 22) = 2048;
            *(v36 + 24) = v5;
            *(v36 + 32) = 2048;
            *(v36 + 34) = v4;
            _os_log_impl(&dword_21607C000, v34, v35, "[waitForContent.sink] should reload to new full snapshot, old: (%llu,%llu, new: (%llu,%llu)", v36, 0x2Au);
            MEMORY[0x21CE94770](v36, -1, -1);
          }

          else
          {
          }

          v42 = (*(*v17 + 544))(0);
          (*(*v17 + 368))(v48, v42);
          if (v49)
          {
            outlined init with copy of DBObject(v48, v45);
            outlined destroy of UTType?(v48, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
            v43 = v46;
            v44 = v47;
            __swift_project_boxed_opaque_existential_1(v45, v46);
            (*(v44 + 16))(1, v43, v44);
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }
    }
  }

  return result;
}

uint64_t SuggestionCollectionViewModel.runComputeAndWait()()
{
  v1[2] = v0;
  v1[3] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.runComputeAndWait(), 0, 0);
}

{
  v28 = v0;
  if ((*(v0[3] + 856))())
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewModel] downloading first snapshot", v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    v5 = v0[2];

    v27 = 5;
    v6 = (*(*v5 + 880))(&v27);
    v7 = (*(*v5 + 296))(v6);
    v0[5] = v7;
    if (v7)
    {
      v8 = swift_task_alloc();
      v0[6] = v8;
      *v8 = v0;
      v8[1] = SuggestionCollectionViewModel.runComputeAndWait();

      return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0xD000000000000013, 0x8000000216582170, 1055);
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.viewModel);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21607C000, v11, v12, "[SuggestionCollectionViewModel] generating snapshot", v13, 2u);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v14 = v0[2];

    v26 = 4;
    (*(*v14 + 880))(&v26);
    (*(*v14 + 544))(1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21607C000, v15, v16, "[SuggestionCollectionViewModel] calling refreshBundlesIfNecessary", v17, 2u);
      MEMORY[0x21CE94770](v17, -1, -1);
    }

    v18 = v0[4];

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewModel.runComputeAndWait(), v21);
  }

  v22 = v0[2];
  v23 = (*(*v22 + 536))(v7);
  v25 = (*(*v22 + 1104) + **(*v22 + 1104));
  v24 = swift_task_alloc();
  v0[7] = v24;
  *v24 = v0;
  v24[1] = SuggestionCollectionViewModel.runComputeAndWait();

  return v25(v23 & 1);
}

{

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.runComputeAndWait(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = (*(*v1 + 536))();
  v5 = (*(*v1 + 1104) + **(*v1 + 1104));
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = SuggestionCollectionViewModel.runComputeAndWait();

  return v5(v2 & 1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized CloudManagerProtocol.refresh(force:wait:_:_:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 73) = a2;
  *(v6 + 72) = a1;
  *(v6 + 48) = *v5;
  return MEMORY[0x2822009F8](specialized CloudManagerProtocol.refresh(force:wait:_:_:), 0, 0);
}

uint64_t specialized CloudManagerProtocol.refresh(force:wait:_:_:)()
{
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D839D8];
    *(v8 + 56) = MEMORY[0x277D839B0];
    *(v8 + 64) = v9;
    *(v8 + 32) = v7;
    v10 = MEMORY[0x277D837D0];
    v11 = MEMORY[0x277D83838];
    *(v8 + 16) = xmmword_21658E190;
    *(v8 + 96) = v10;
    *(v8 + 104) = v11;
    v12 = MEMORY[0x277D83B88];
    *(v8 + 72) = v6;
    *(v8 + 80) = v4;
    v13 = MEMORY[0x277D83BF8];
    *(v8 + 136) = v12;
    *(v8 + 144) = v13;
    *(v8 + 112) = v5;

    static CloudLog.LogBeginInfo(_:_:)(v8, "refresh(force:wait:_:_:)", 24, 2, v3, &protocol witness table for CloudManager);

    v14 = swift_task_alloc();
    *(v0 + 56) = v14;
    *v14 = v0;
    v14[1] = specialized CloudManagerProtocol.refresh(force:wait:_:_:);

    return CloudManager._waitForInitialization(_:_:)("refresh(force:wait:_:_:)", 24, 2, 2018);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = specialized CloudManagerProtocol.refresh(force:wait:_:_:);
  v4 = *(v1 + 73);
  v5 = *(v1 + 72);

  return CloudManager._refresh(force:wait:)(v5, v4);
}

{

  return MEMORY[0x2822009F8](specialized CloudManagerProtocol.refresh(force:wait:_:_:), 0, 0);
}

{
  $defer #1 () in CloudManager.refresh(force:wait:_:_:)(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = type metadata accessor for Client();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewModel.runComputeAndWait(), 0, 0);
}

uint64_t closure #1 in SuggestionCollectionViewModel.runComputeAndWait()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = v0[19], v3 = v0[20], (*(*Strong + 320))(Strong), , v4 = (v3 + *(v2 + 24)), v5 = *v4, v0[21] = *v4, v6 = v4[1], swift_unknownObjectRetain(), _s9MomentsUI6ClientVWOhTm_1(v3, type metadata accessor for Client), v5))
  {
    ObjectType = swift_getObjectType();
    v15 = (*(v6 + 32) + **(v6 + 32));
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = closure #1 in SuggestionCollectionViewModel.runComputeAndWait();

    return v15(ObjectType, v6);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.viewModel);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21607C000, v11, v12, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary completed", v13, 2u);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = closure #1 in SuggestionCollectionViewModel.runComputeAndWait();
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = closure #1 in SuggestionCollectionViewModel.runComputeAndWait();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.viewModel);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary completed", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

{

  specialized closure #1 in closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(v0 + 136, 3);
  swift_weakDestroy();

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewModel.runComputeAndWait(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  specialized closure #1 in closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(v0 + 128, 4);
  swift_weakDestroy();

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewModel.runComputeAndWait(), 0, 0);
}

{

  specialized closure #1 in closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(v0 + 120, 4);
  swift_weakDestroy();

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewModel.runComputeAndWait(), 0, 0);
}

{
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 216);
    switch(v3)
    {
      case 8:

        if (one-time initialization token for viewModel != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static CommonLogger.viewModel);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_21607C000, v31, v32, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary alreadyRunning error", v33, 2u);
          MEMORY[0x21CE94770](v33, -1, -1);
        }

        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        type metadata accessor for MainActor();
        *(v0 + 208) = static MainActor.shared.getter();
        v8 = dispatch thunk of Actor.unownedExecutor.getter();
        v10 = v34;
        v11 = closure #1 in SuggestionCollectionViewModel.runComputeAndWait();
        goto LABEL_28;
      case 10:

        if (one-time initialization token for viewModel != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static CommonLogger.viewModel);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_21607C000, v26, v27, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary notOnboarded error", v28, 2u);
          MEMORY[0x21CE94770](v28, -1, -1);
        }

        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        type metadata accessor for MainActor();
        *(v0 + 200) = static MainActor.shared.getter();
        v8 = dispatch thunk of Actor.unownedExecutor.getter();
        v10 = v29;
        v11 = closure #1 in SuggestionCollectionViewModel.runComputeAndWait();
        goto LABEL_28;
      case 13:

        if (one-time initialization token for viewModel != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, static CommonLogger.viewModel);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_21607C000, v5, v6, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary needUpgrade error", v7, 2u);
          MEMORY[0x21CE94770](v7, -1, -1);
        }

        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        type metadata accessor for MainActor();
        *(v0 + 192) = static MainActor.shared.getter();
        v8 = dispatch thunk of Actor.unownedExecutor.getter();
        v10 = v9;
        v11 = closure #1 in SuggestionCollectionViewModel.runComputeAndWait();
LABEL_28:

        return MEMORY[0x2822009F8](v11, v8, v10);
    }
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 184);
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static CommonLogger.viewModel);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 184);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v18;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_21607C000, v15, v16, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary unexpected error: %@", v19, 0xCu);
    outlined destroy of UTType?(v20, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v20, -1, -1);
    MEMORY[0x21CE94770](v19, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t specialized closure #1 in closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5[0] = a2;
    (*(*Strong + 880))(v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 544))(1);
  }

  return result;
}

uint64_t SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 408) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v2 + 144) = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

uint64_t SuggestionCollectionViewModel.fetchSuggestions(firstTime:)()
{
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v2, v3, v5, "UIService_FetchSuggestionsFromDB", "", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];

  (*(v9 + 16))(v7, v6, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[23] = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v10, static CommonLogger.viewModel);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21607C000, v11, v12, "[SuggestionCollectionViewModel] started fetching suggestions", v13, 2u);
    MEMORY[0x21CE94770](v13, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);

  return SuggestionCollectionViewModel.getDBManager()();
}

{
  if (v0[26])
  {
    v0[27] = type metadata accessor for MainActor();
    v0[28] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), v2, v1);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewModel] no suggestions from snapshot, no dbManager", v5, 2u);
      MEMORY[0x21CE94770](v5, -1, -1);
    }

    v6 = v0[23];

    $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v6, "UIService_FetchSuggestionsFromDB");

    (*(v0[20] + 8))(v0[22], v0[19]);

    v7 = v0[1];

    return v7(0);
  }
}

{

  *(v0 + 232) = DBManager.mainWriter.getter();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

{
  v1 = (**(v0 + 136) + 536);
  v2 = *v1;
  *(v0 + 240) = *v1;
  *(v0 + 248) = v1 & 0xFFFFFFFFFFFFLL | 0xA0C9000000000000;
  v3 = v2();
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  v5 = *(v0 + 408);

  return DBWriter.latestSuggestions(uiLaunch:allowDraft:)(v5, v3 & 1);
}

{
  v39 = v0;
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 409);
    v3 = *(v0 + 264);
    v4 = v1 >> 62;
    if (v1 >> 62)
    {
      goto LABEL_28;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while (1)
      {

        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134217984;
          if (v4)
          {
            v8 = __CocoaSet.count.getter();
          }

          else
          {
            v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v7 + 4) = v8;

          _os_log_impl(&dword_21607C000, v5, v6, "[SuggestionCollectionViewModel] mapped suggestions, n=%ld", v7, 0xCu);
          MEMORY[0x21CE94770](v7, -1, -1);
        }

        else
        {
        }

        v17 = *(v0 + 408);
        v18 = (*(**(v0 + 136) + 1128))(v1);
        if (v17 == 1)
        {
          v19 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
          if (v19 == 2 || (v19 & 1) != 0)
          {
            v20 = *(v0 + 144);
            static TaskPriority.background.getter();
            v21 = type metadata accessor for TaskPriority();
            (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
            v22 = swift_allocObject();
            swift_weakInit();
            v23 = swift_allocObject();
            v23[2] = 0;
            v23[3] = 0;
            v23[4] = v22;
            _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:), v23);

            outlined destroy of UTType?(v20, &_sScPSgMd);
          }
        }

        (*(**(v0 + 136) + 496))(v3, v2 & 1);
        if (!v4)
        {
          break;
        }

        v3 = __CocoaSet.count.getter();

        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        __break(1u);
LABEL_28:
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_29;
        }
      }

      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_21:
      v24 = *(v0 + 136);
      v25 = (*(*v24 + 520))(v3, 0);
      v26 = (*(*v24 + 488))(v25);
      if (((v27 & 1) != 0 || v26) && ((*(v0 + 240))(v26) & 1) == 0)
      {
        swift_beginAccess();
        static MomentsUIManager.userIsActivelyWaitingOnUI = 0;
      }

      v28 = *(v0 + 184);
    }

    else
    {
LABEL_29:

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21607C000, v29, v30, "[SuggestionCollectionViewModel] no suggestions from snapshot even after waiting", v31, 2u);
        MEMORY[0x21CE94770](v31, -1, -1);
      }

      v32 = *(v0 + 136);

      v33 = (*(*v32 + 848))();
      v34 = *(v0 + 136);
      if (v33)
      {
        v38 = 2;
        (*(*v34 + 880))(&v38);
      }

      else
      {
        v37 = 1;
        (*(*v34 + 880))(&v37);
      }

      v18 = 0;
      v28 = *(v0 + 184);
    }

    $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v28, "UIService_FetchSuggestionsFromDB");

    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    v35 = *(v0 + 8);

    return v35(v18);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[SuggestionCollectionViewModel] fetched nil suggestions, waiting for snapshot", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    v12 = *(v0 + 409);
    v13 = *(v0 + 264);
    v14 = *(v0 + 136);

    v36 = (*(*v14 + 1104) + **(*v14 + 1104));
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);

    return v36((v13 == 0) & ~v12);
  }
}

{

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[SuggestionCollectionViewModel] finished waiting for snapshot", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  *(v0 + 296) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), v5, v4);
}

{
  v1 = *(v0 + 208);

  *(v0 + 304) = *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter);

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

{
  v1 = (*(v0 + 240))();
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  v3 = *(v0 + 408);

  return DBWriter.latestSuggestions(uiLaunch:allowDraft:)(v3, v1 & 1);
}

{
  v31 = v0;
  v1 = *(v0 + 336);
  if (!v1)
  {
    goto LABEL_25;
  }

  v2 = *(v0 + 328);
  v3 = *(v0 + 410);
  v4 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

LABEL_25:
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21607C000, v21, v22, "[SuggestionCollectionViewModel] no suggestions from snapshot even after waiting", v23, 2u);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    v24 = *(v0 + 136);

    v25 = (*(*v24 + 848))();
    v26 = *(v0 + 136);
    if (v25)
    {
      v30 = 2;
      (*(*v26 + 880))(&v30);
    }

    else
    {
      v29 = 1;
      (*(*v26 + 880))(&v29);
    }

    v10 = 0;
    v20 = *(v0 + 184);
    goto LABEL_31;
  }

  while (1)
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      if (v4)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 4) = v8;

      _os_log_impl(&dword_21607C000, v5, v6, "[SuggestionCollectionViewModel] mapped suggestions, n=%ld", v7, 0xCu);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    else
    {
    }

    v9 = *(v0 + 408);
    v10 = (*(**(v0 + 136) + 1128))(v1);
    if (v9 == 1)
    {
      v11 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
      if (v11 == 2 || (v11 & 1) != 0)
      {
        v12 = *(v0 + 144);
        static TaskPriority.background.getter();
        v13 = type metadata accessor for TaskPriority();
        (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v14;
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:), v15);

        outlined destroy of UTType?(v12, &_sScPSgMd);
      }
    }

    (*(**(v0 + 136) + 496))(v2, v3 & 1);
    if (!v4)
    {
      break;
    }

    v2 = __CocoaSet.count.getter();

    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_23:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_16:
  v16 = *(v0 + 136);
  v17 = (*(*v16 + 520))(v2, 0);
  v18 = (*(*v16 + 488))(v17);
  if (((v19 & 1) != 0 || v18) && ((*(v0 + 240))(v18) & 1) == 0)
  {
    swift_beginAccess();
    static MomentsUIManager.userIsActivelyWaitingOnUI = 0;
  }

  v20 = *(v0 + 184);

LABEL_31:
  $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v20, "UIService_FetchSuggestionsFromDB");

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

  v27 = *(v0 + 8);

  return v27(v10);
}

{

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[SuggestionCollectionViewModel] reading snapshot after waiting", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  *(v0 + 360) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), v5, v4);
}

{
  v1 = *(v0 + 208);

  *(v0 + 368) = *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter);

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

{
  v1 = (*(v0 + 240))();
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  v2[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  v3 = *(v0 + 408);

  return DBWriter.latestSuggestions(uiLaunch:allowDraft:)(v3, v1 & 1);
}

{
  v31 = v0;
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 412);

  if (!v1)
  {
    goto LABEL_25;
  }

  v4 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

LABEL_25:
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21607C000, v21, v22, "[SuggestionCollectionViewModel] no suggestions from snapshot even after waiting", v23, 2u);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    v24 = *(v0 + 136);

    v25 = (*(*v24 + 848))();
    v26 = *(v0 + 136);
    if (v25)
    {
      v30 = 2;
      (*(*v26 + 880))(&v30);
    }

    else
    {
      v29 = 1;
      (*(*v26 + 880))(&v29);
    }

    v10 = 0;
    v20 = *(v0 + 184);
    goto LABEL_31;
  }

  while (1)
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      if (v4)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 4) = v8;

      _os_log_impl(&dword_21607C000, v5, v6, "[SuggestionCollectionViewModel] mapped suggestions, n=%ld", v7, 0xCu);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    else
    {
    }

    v9 = *(v0 + 408);
    v10 = (*(**(v0 + 136) + 1128))(v1);
    if (v9 == 1)
    {
      v11 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
      if (v11 == 2 || (v11 & 1) != 0)
      {
        v12 = *(v0 + 144);
        static TaskPriority.background.getter();
        v13 = type metadata accessor for TaskPriority();
        (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v14;
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:), v15);

        outlined destroy of UTType?(v12, &_sScPSgMd);
      }
    }

    (*(**(v0 + 136) + 496))(v2, v3 & 1);
    if (!v4)
    {
      break;
    }

    v2 = __CocoaSet.count.getter();

    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_23:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_16:
  v16 = *(v0 + 136);
  v17 = (*(*v16 + 520))(v2, 0);
  v18 = (*(*v16 + 488))(v17);
  if (((v19 & 1) != 0 || v18) && ((*(v0 + 240))(v18) & 1) == 0)
  {
    swift_beginAccess();
    static MomentsUIManager.userIsActivelyWaitingOnUI = 0;
  }

  v20 = *(v0 + 184);

LABEL_31:
  $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(v20, "UIService_FetchSuggestionsFromDB");

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

  v27 = *(v0 + 8);

  return v27(v10);
}

{
  v25 = v0;
  v1 = *(v0 + 272);
  *(v0 + 411) = 1;
  *(v0 + 344) = 0;

  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);

    swift_beginAccess();
    static MomentsUIManager.userIsActivelyWaitingOnUI = 1;
    v21 = (*(*v3 + 1112) + **(*v3 + 1112));
    v4 = swift_task_alloc();
    *(v0 + 352) = v4;
    *v4 = v0;
    v4[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);

    return v21();
  }

  else
  {

    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21607C000, v7, v8, "[SuggestionCollectionViewModel] fetch error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CE94770](v10, -1, -1);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    else
    {
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21607C000, v14, v15, "[SuggestionCollectionViewModel] no suggestions from snapshot even after waiting", v16, 2u);
      MEMORY[0x21CE94770](v16, -1, -1);
    }

    v17 = *(v0 + 136);

    v18 = (*(*v17 + 848))();
    v19 = *(v0 + 136);
    if (v18)
    {
      v23 = 2;
      (*(*v19 + 880))(&v23);
    }

    else
    {
      v22 = 1;
      (*(*v19 + 880))(&v22);
    }

    $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(*(v0 + 184), "UIService_FetchSuggestionsFromDB");

    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    v20 = *(v0 + 8);

    return v20(0);
  }
}

{
  v26 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  *(v0 + 411) = *(v0 + 409) & 1;
  *(v0 + 344) = v2;

  *(v0 + 112) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 136);

    swift_beginAccess();
    static MomentsUIManager.userIsActivelyWaitingOnUI = 1;
    v22 = (*(*v4 + 1112) + **(*v4 + 1112));
    v5 = swift_task_alloc();
    *(v0 + 352) = v5;
    *v5 = v0;
    v5[1] = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);

    return v22();
  }

  else
  {

    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21607C000, v8, v9, "[SuggestionCollectionViewModel] fetch error %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CE94770](v11, -1, -1);
      MEMORY[0x21CE94770](v10, -1, -1);
    }

    else
    {
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21607C000, v15, v16, "[SuggestionCollectionViewModel] no suggestions from snapshot even after waiting", v17, 2u);
      MEMORY[0x21CE94770](v17, -1, -1);
    }

    v18 = *(v0 + 136);

    v19 = (*(*v18 + 848))();
    v20 = *(v0 + 136);
    if (v19)
    {
      v24 = 2;
      (*(*v20 + 880))(&v24);
    }

    else
    {
      v23 = 1;
      (*(*v20 + 880))(&v23);
    }

    $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(*(v0 + 184), "UIService_FetchSuggestionsFromDB");

    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    v21 = *(v0 + 8);

    return v21(0);
  }
}

{
  v23 = v0;
  v1 = *(v0 + 384);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 384);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewModel] post wait fetch error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 384);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21607C000, v12, v13, "[SuggestionCollectionViewModel] no suggestions from snapshot even after waiting", v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  v15 = *(v0 + 136);

  v16 = (*(*v15 + 848))();
  v17 = *(v0 + 136);
  if (v16)
  {
    v21 = 2;
    (*(*v17 + 880))(&v21);
  }

  else
  {
    v20 = 1;
    (*(*v17 + 880))(&v20);
  }

  $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(*(v0 + 184), "UIService_FetchSuggestionsFromDB");

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

uint64_t SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 409) = a3;
  *(v6 + 264) = a2;
  *(v6 + 272) = v3;

  if (v3)
  {
    v7 = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  else
  {

    *(v6 + 280) = a1;
    v7 = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v8 = *v4;
  *(*v4 + 320) = v3;

  if (v3)
  {
    v9 = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  else
  {

    *(v8 + 410) = a3;
    *(v8 + 328) = a2;
    *(v8 + 336) = a1;
    v9 = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v8 = *v4;
  *(*v4 + 384) = v3;

  if (v3)
  {
    v9 = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  else
  {

    *(v8 + 412) = a3;
    *(v8 + 392) = a2;
    *(v8 + 400) = a1;
    v9 = SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t $defer #1 () in SuggestionCollectionViewModel.convertSuggestionsToSuggestionViewModel(suggestions:)(uint64_t a1, const char *a2)
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
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static CommonSignposter.uiRendering);
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

uint64_t closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for Client();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:), 0, 0);
}

uint64_t closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:)()
{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static CommonLogger.viewModel);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewModel] initiating soft refresh", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = v0[6], v7 = v0[7], (*(*Strong + 320))(Strong), , v8 = (v7 + *(v6 + 24)), v9 = *v8, v0[9] = *v8, v10 = v8[1], swift_unknownObjectRetain(), _s9MomentsUI6ClientVWOhTm_1(v7, type metadata accessor for Client), v9))
  {
    ObjectType = swift_getObjectType();
    v15 = (*(v10 + 32) + **(v10 + 32));
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:);

    return v15(ObjectType, v10);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewModel] refreshBundlesIfNecessary error=%@", v7, 0xCu);
    outlined destroy of UTType?(v8, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t SuggestionCollectionViewModel.allowedSuggestionsByEngagement(source:)(unint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Client();
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 320))(v8);
  v11 = &v10[*(v7 + 32)];
  v13 = *v11;
  v12 = *(v11 + 1);
  swift_unknownObjectRetain();
  _s9MomentsUI6ClientVWOhTm_1(v10, type metadata accessor for Client);
  if (v13)
  {
    ObjectType = swift_getObjectType();
    (*(v12 + 56))(v91, ObjectType, v12);
    v16 = v91[0];
    v89 = v91[1];
    v17 = a1 >> 62;
    if (a1 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v70[0] = v17;
      v70[1] = v13;
      v13 = 0;
      v84 = a1 & 0xC000000000000001;
      v80 = a1 & 0xFFFFFFFFFFFFFF8;
      v81 = a1;
      v79 = a1 + 32;
      v90 = v82 + 16;
      v19 = (v82 + 8);
      v86 = v16 + 56;
      v87 = v89 + 56;
      *&v15 = 136315138;
      v71 = v15;
      v88 = v16;
      v83 = i;
      while (1)
      {
        if (v84)
        {
          v21 = MEMORY[0x21CE93180](v13, v81);
        }

        else
        {
          if (v13 >= *(v80 + 16))
          {
            goto LABEL_40;
          }

          v21 = *(v79 + 8 * v13);
        }

        v16 = v21;
        if (__OFADD__(v13++, 1))
        {
          break;
        }

        v85 = v13;
        if (*(v89 + 16))
        {
          v23 = v89;
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v25 = -1 << *(v23 + 32);
          a1 = v24 & ~v25;
          if ((*(v87 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
          {
            v17 = ~v25;
            v26 = *(v82 + 72);
            v27 = *(v82 + 16);
            while (1)
            {
              v27(v5, *(v89 + 48) + v26 * a1, v3);
              lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v28 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v19)(v5, v3);
              if (v28)
              {
                break;
              }

              a1 = (a1 + 1) & v17;
              if (((*(v87 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            if (one-time initialization token for viewModel != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            __swift_project_value_buffer(v29, static CommonLogger.viewModel);
            v30 = v16;
            v17 = Logger.logObject.getter();
            v31 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v17, v31))
            {
              v32 = swift_slowAlloc();
              v77 = v32;
              v78 = swift_slowAlloc();
              v93[0] = v78;
              LODWORD(v32->isa) = v71;
              lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v33 = dispatch thunk of CustomStringConvertible.description.getter();
              v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v93);

              v36 = v77;
              *(v77 + 4) = v35;
              _os_log_impl(&dword_21607C000, v17, v31, "[SuggestionCollectionViewModel] removed everywhere, suggestion %s due to engagement deny list", v36, 0xCu);
              a1 = v78;
              __swift_destroy_boxed_opaque_existential_1(v78);
              MEMORY[0x21CE94770](a1, -1, -1);
              MEMORY[0x21CE94770](v36, -1, -1);
            }

            v37 = (*((*MEMORY[0x277D85000] & *v30) + 0xA8))();
            if (v37)
            {
              a1 = v30;
              v38 = *&v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
              v72 = v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore + 8];
              v17 = *&v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
              v39 = v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore + 8];
              v77 = *&v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
              v76 = v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];
              v75 = v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive];
              v74 = *&v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
              v73 = v37[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab + 8];
              v78 = v37;
              v40 = type metadata accessor for SuggestionRanking();
              v41 = objc_allocWithZone(v40);
              v42 = &v41[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
              *v42 = v38;
              v42[8] = v72;
              v43 = &v41[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
              *v43 = v17;
              v43[8] = v39;
              v41[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = 4;
              v44 = &v41[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
              *v44 = v77;
              v45 = v75;
              v44[8] = v76;
              v41[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = v45;
              v46 = &v41[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
              *v46 = v74;
              v46[8] = v73;
              v92.receiver = v41;
              v92.super_class = v40;
              v47 = objc_msgSendSuper2(&v92, sel_init);

              v48 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
              swift_beginAccess();
              v49 = *(a1 + v48);
              *(a1 + v48) = v47;
            }
          }
        }

LABEL_25:
        v50 = v88;
        if (*(v88 + 2) && (lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]), v51 = dispatch thunk of Hashable._rawHashValue(seed:)(), v52 = -1 << v50[32], a1 = v51 & ~v52, ((*&v86[(a1 >> 3) & 0xFFFFFFFFFFFFFF8] >> a1) & 1) != 0))
        {
          v17 = ~v52;
          v53 = *(v82 + 72);
          v54 = *(v82 + 16);
          while (1)
          {
            v54(v5, *(v88 + 6) + v53 * a1, v3);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v55 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v19)(v5, v3);
            if (v55)
            {
              break;
            }

            a1 = (a1 + 1) & v17;
            if (((*&v86[(a1 >> 3) & 0xFFFFFFFFFFFFFF8] >> a1) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v20 = v83;
          if (v16[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] != 8)
          {
            if (one-time initialization token for viewModel != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            __swift_project_value_buffer(v56, static CommonLogger.viewModel);
            a1 = v16;
            v17 = Logger.logObject.getter();
            v57 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v17, v57))
            {
              v58 = swift_slowAlloc();
              v77 = v17;
              v17 = v58;
              v78 = swift_slowAlloc();
              v93[0] = v78;
              *v17 = v71;
              lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v76 = v57;
              v59 = dispatch thunk of CustomStringConvertible.description.getter();
              v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v93);

              *(v17 + 4) = v61;
              v62 = v77;
              _os_log_impl(&dword_21607C000, v77, v76, "[SuggestionCollectionViewModel] suppressed from recommended, suggestion %s due to engagement deny list", v17, 0xCu);
              v63 = v78;
              __swift_destroy_boxed_opaque_existential_1(v78);
              MEMORY[0x21CE94770](v63, -1, -1);
              MEMORY[0x21CE94770](v17, -1, -1);
            }

            else
            {
            }

            v13 = v85;
            Suggestion.suppressFromRecommended()();
            v16 = a1;
            goto LABEL_7;
          }
        }

        else
        {
LABEL_5:
          v20 = v83;
        }

        v13 = v85;
LABEL_7:

        if (v13 == v20)
        {

          a1 = v81;
          v17 = v70[0];
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_43:
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static CommonLogger.viewModel);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      if (v17)
      {
        v68 = __CocoaSet.count.getter();
      }

      else
      {
        v68 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v67 + 4) = v68;

      _os_log_impl(&dword_21607C000, v65, v66, "[SuggestionCollectionViewModel] vetted suggestions, n=%ld", v67, 0xCu);
      MEMORY[0x21CE94770](v67, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t SuggestionCollectionViewModel.removeSuggestionViewModel(viewModel:)(uint64_t *a1)
{
  v38 = a1;
  v2 = type metadata accessor for UUID();
  i = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v37);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = v25 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  swift_beginAccess();
  v39 = *(v1 + v15);
  if (v39 >> 62)
  {
    goto LABEL_22;
  }

  for (result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = __CocoaSet.count.getter())
  {
    v31 = v10;
    v32 = result;
    v40 = v14;
    v25[1] = v15;
    v35 = v2;
    v25[2] = v1;
    v17 = *v38;
    v36 = v39 & 0xC000000000000001;
    v28 = v39 & 0xFFFFFFFFFFFFFF8;
    v18 = *(v17 + 184);
    v33 = v17 + 184;
    v34 = v18;
    v2 = (i + 48);
    v26 = (i + 32);
    v30 = (i + 8);

    for (i = 0; ; ++i)
    {
      if (v36)
      {
        v10 = MEMORY[0x21CE93180](i, v39);
      }

      else
      {
        if (i >= *(v28 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(v39 + 8 * i + 32);
      }

      v14 = v40;
      v19 = (*(*v10 + 184))();
      v20 = v41;
      v34(v19);
      v1 = *(v37 + 48);
      outlined init with copy of DateInterval?(v14, v6, &_s10Foundation4UUIDVSgMd);
      outlined init with copy of DateInterval?(v20, v1 + v6, &_s10Foundation4UUIDVSgMd);
      v21 = *v2;
      v15 = v35;
      if ((*v2)(v6, 1, v35) == 1)
      {

        outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
        outlined destroy of UTType?(v14, &_s10Foundation4UUIDVSgMd);
        if (v21(v1 + v6, 1, v15) == 1)
        {
          outlined destroy of UTType?(v6, &_s10Foundation4UUIDVSgMd);
LABEL_18:

          swift_beginAccess();
          specialized Array.remove(at:)(i);
          swift_endAccess();

          return SuggestionCollectionViewModel.currentSuggestionViewModels.didset();
        }

        goto LABEL_13;
      }

      v14 = v31;
      outlined init with copy of DateInterval?(v6, v31, &_s10Foundation4UUIDVSgMd);
      if (v21(v1 + v6, 1, v15) == 1)
      {

        outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
        outlined destroy of UTType?(v40, &_s10Foundation4UUIDVSgMd);
        (*v30)(v14, v15);
LABEL_13:
        outlined destroy of UTType?(v6, &_s10Foundation4UUIDVSg_ADtMd);
        goto LABEL_15;
      }

      v14 = v27;
      (*v26)(v27, v1 + v6, v15);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();

      v1 = v30;
      v22 = v2;
      v23 = *v30;
      (*v30)(v14, v15);
      outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
      outlined destroy of UTType?(v40, &_s10Foundation4UUIDVSgMd);
      v23(v31, v15);
      v2 = v22;
      outlined destroy of UTType?(v6, &_s10Foundation4UUIDVSgMd);
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_15:
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v24 == v32)
      {
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewModel.removeSupplementaryGroups()()
{
  v1 = (*(*v0 + 456))(v3);
  *v2 = MEMORY[0x277D84F90];

  v1(v3, 0);
}

uint64_t SuggestionCollectionViewModel.makeCurrentDevicePrimary()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.makeCurrentDevicePrimary(), 0, 0);
}

{
  v1 = (*(**(v0 + 40) + 296))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = SuggestionCollectionViewModel.makeCurrentDevicePrimary();

    return CloudManager.getDeviceDB()();
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.makeCurrentDevicePrimary(), 0, 0);
}

{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v3 = static CloudManager.currentID;
  v2 = qword_2811A6918;
  v4 = *(*v1 + 640);

  v4(v3, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SuggestionCollectionViewModel.makeCurrentDevicePrimary()(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(*v1 + 64) = a1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 72) = v5;
    *v5 = v4;
    v5[1] = SuggestionCollectionViewModel.makeCurrentDevicePrimary();

    return CloudDevicesDB.becomePrimary()();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t SuggestionCollectionViewModel.configureMessageViewModel()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[3] = swift_task_alloc();
  type metadata accessor for Client();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.configureMessageViewModel(), 0, 0);
}

{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = __swift_project_value_buffer(v1, static CommonLogger.viewModel);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewModel] configuring message", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = v0[2];

  if ((*(*v5 + 536))())
  {
    v6 = v0[4];
    v7 = v0[2];
    type metadata accessor for SuggestionCollectionViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v22._object = 0x800000021657E130;
    v10._object = 0x800000021657E100;
    v22._countAndFlagsBits = 0xD000000000000029;
    v10._countAndFlagsBits = 0xD000000000000021;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v22);

    (*(*v7 + 320))();
    type metadata accessor for MessageSuggestionViewModel();
    swift_allocObject();
    v13 = MessageSuggestionViewModel.init(message:style:client:)(v12._countAndFlagsBits, v12._object, 1, v6);
LABEL_14:

    v20 = v0[1];

    return v20(v13);
  }

  v14 = (*(*v0[2] + 296))();
  v0[6] = v14;
  if (!v14)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21607C000, v17, v18, "[SuggestionCollectionViewModel] nil cloudManager when configuring message", v19, 2u);
      MEMORY[0x21CE94770](v19, -1, -1);
    }

    v13 = 0;
    goto LABEL_14;
  }

  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = SuggestionCollectionViewModel.configureMessageViewModel();

  return CloudManager.getDeviceDB()();
}

{
  v1 = *(v0 + 64);
  if (v1)
  {

    return MEMORY[0x2822009F8](SuggestionCollectionViewModel.configureMessageViewModel(), v1, 0);
  }

  else
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewModel] nil deviceDB when configuring message", v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    else
    {
    }

    v5 = *(v0 + 8);

    return v5(0);
  }
}

{
  CloudDevicesDB.primaryDevice.getter(*(v0 + 24));

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.configureMessageViewModel(), 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for CloudDevice();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of UTType?(v1, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_5:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[SuggestionCollectionViewModel] nil primaryDeviceName when configuring message", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    else
    {
    }

    v8 = 0;
    goto LABEL_9;
  }

  v3 = (v1 + *(v2 + 32));
  v4 = *v3;
  v5 = v3[1];

  v6 = _s9MomentsUI6ClientVWOhTm_1(v1, type metadata accessor for CloudDevice);
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = *(v0 + 32);
  (*(**(v0 + 16) + 320))(v6);
  type metadata accessor for MessageSuggestionViewModel();
  swift_allocObject();
  v8 = MessageSuggestionViewModel.init(message:style:client:)(v4, v5, 0, v7);

LABEL_9:

  v12 = *(v0 + 8);

  return v12(v8);
}

uint64_t SuggestionCollectionViewModel.configureMessageViewModel()(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.configureMessageViewModel(), 0, 0);
}

uint64_t SuggestionCollectionViewModel.displayMessage()()
{
  *(v1 + 80) = v0;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = SuggestionCollectionViewModel.displayMessage();

  return SuggestionCollectionViewModel.configureMessageViewModel()();
}

{
  v1 = *(v0 + 96);
  if (!v1)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.viewModel);
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21607C000, v5, v9, "[SuggestionCollectionViewModel] cannot construct message", v10, 2u);
      MEMORY[0x21CE94770](v10, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = (*(**(v0 + 80) + 608))();
  if (v2)
  {
    v3 = (*(*v2 + 368))();
    if ((((*(*v1 + 368))() ^ v3) & 1) == 0)
    {
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static CommonLogger.viewModel);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_21607C000, v5, v6, "[SuggestionCollectionViewModel] same message group style", v7, 2u);
        MEMORY[0x21CE94770](v7, -1, -1);
      }

LABEL_13:

      goto LABEL_20;
    }

    (*(**(v0 + 80) + 1184))();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658CA50;
  *(v11 + 32) = xmmword_21659EE80;
  *(v11 + 48) = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21658E210;
  *(v12 + 32) = v1;
  v13 = one-time initialization token for viewModel;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static CommonLogger.viewModel);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21607C000, v15, v16, "[SuggestionCollectionViewModel] inserted message group", v17, 2u);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  v24 = *(v0 + 96);
  v18 = *(v0 + 80);

  v19 = (*(*v18 + 456))(v0 + 16);

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v11, v12);

  v19(v0 + 16, 0);
  v20 = (*(*v18 + 432))(v0 + 48);
  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v11, v12);

  v20(v0 + 48, 0);
  v21 = *(*v18 + 616);

  v21(v24);

LABEL_20:
  v22 = *(v0 + 8);

  return v22();
}

uint64_t SuggestionCollectionViewModel.displayMessage()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.displayMessage(), 0, 0);
}

Swift::Void __swiftcall SuggestionCollectionViewModel.removeMessage()()
{
  if (!(*(*v0 + 608))())
  {
    return;
  }

  (*(*v0 + 616))(0);
  v1 = (*(*v0 + 456))(v10);
  *v2 = MEMORY[0x277D84F90];

  v3 = v1(v10, 0);
  v4 = (*(*v0 + 416))(v3);
  if (!*(v4 + 16))
  {
LABEL_13:

    return;
  }

  v5 = *(v4 + 40);

  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CE93180](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

  type metadata accessor for MessageSuggestionViewModel();
  v6 = swift_dynamicCastClass();

  if (v6)
  {
    v7 = (*(*v0 + 432))(v10);
    if (*(*v8 + 16))
    {
      v9 = v7;
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      v9(v10, 0);
      return;
    }

    goto LABEL_17;
  }
}

Swift::Void __swiftcall SuggestionCollectionViewModel.configureTips()()
{
  v1 = v0;
  v2 = type metadata accessor for Client();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 320))(v3);
  type metadata accessor for MomentsTipCoordinator();
  swift_allocObject();
  v6 = MomentsTipCoordinator.init(client:)(v5);
  v7 = (*(*v0 + 824))(v6);
  v8 = (*(*v0 + 816))(v7);
  if (v8)
  {
    v9 = v8;
    v12[3] = type metadata accessor for SuggestionCollectionViewModel();
    v12[4] = &protocol witness table for SuggestionCollectionViewModel;
    v12[0] = v1;
    v10 = *(*v9 + 144);

    v10(v12);
  }
}

uint64_t SuggestionCollectionViewModel.displayTip(tip:)(uint64_t a1)
{
  v63 = a1;
  v67 = type metadata accessor for UUID();
  v60 = *(v67 - 8);
  v2 = v60;
  MEMORY[0x28223BE20](v67);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Client();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v72 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v71 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v58 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v64 = v22;
  v24(v22, 1, 1, v23);
  v62 = v20;
  v24(v20, 1, 1, v23);
  v59 = *(v2 + 56);
  v61 = v12;
  v25 = v67;
  v26 = v59(v12, 1, 1, v67);
  v27 = *(*v1 + 320);
  v28 = v66;
  v65 = v1;
  v27(v26);
  outlined init with copy of DBObject(v63, v76);
  type metadata accessor for TipSuggestionViewModel();
  v29 = swift_allocObject();
  v30 = v29 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  outlined init with copy of DBObject(v76, v73);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v73, v30, &_s6TipKit0A0_pSgMd);
  swift_endAccess();
  outlined init with copy of DateInterval?(v22, v69, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v20, v71, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v12, v68, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of Client(v28, v72);
  v31 = v70;
  UUID.init()();
  UUID.init()();
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v33 = v25;
  v59((v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID), 1, 1, v25);
  v34 = (v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v37 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v38 = v60;
  (*(v60 + 16))(v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v31, v33);
  swift_beginAccess();
  *v34 = 0;
  v34[1] = 0;
  swift_beginAccess();
  *v35 = 0;
  v35[1] = 0;
  v39 = v69;
  outlined init with copy of DateInterval?(v69, v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  v40 = v71;
  outlined init with copy of DateInterval?(v71, v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  v41 = v68;
  outlined assign with copy of UUID?(v68, v29 + v32);
  swift_endAccess();
  (*(v38 + 8))(v70, v67);
  outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v39, &_s10Foundation4DateVSgMd);
  __swift_destroy_boxed_opaque_existential_1(v76);
  _s9MomentsUI6ClientVWOhTm_1(v66, type metadata accessor for Client);
  outlined destroy of UTType?(v61, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v62, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v64, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  *(v29 + v37) = 0;

  *(v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = 13;
  *(v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = 65;
  swift_beginAccess();
  v42 = *(v29 + v36);
  *(v29 + v36) = 0;

  outlined init with take of Client(v72, v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v29 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_21658CA50;
  *(v43 + 32) = xmmword_21659EE80;
  *(v43 + 48) = 768;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21658E210;
  *(v44 + 32) = v29;
  v45 = one-time initialization token for viewModel;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static CommonLogger.viewModel);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_21607C000, v47, v48, "[SuggestionCollectionViewModel] inserted tip group", v49, 2u);
    MEMORY[0x21CE94770](v49, -1, -1);
  }

  v50 = v65;
  v51 = *((*(*v65 + 440))() + 16);

  if (v51)
  {
  }

  else
  {
    v53 = (*(*v50 + 456))(v76);

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v43, v44);

    v53(v76, 0);
    v54 = (*(*v50 + 432))(v76);
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v43, v44);

    v55 = v54(v76, 0);
    (*(*v50 + 368))(v76, v55);
    if (v76[3])
    {
      outlined init with copy of DBObject(v76, v73);
      outlined destroy of UTType?(v76, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
      v56 = v74;
      v57 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      (*(v57 + 8))(v56, v57);

      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {

      return outlined destroy of UTType?(v76, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
    }
  }
}

uint64_t SuggestionCollectionViewModel.removeTip(tip:)()
{
  v1 = (*(*v0 + 456))(v10);
  *v2 = MEMORY[0x277D84F90];

  v3 = v1(v10, 0);
  (*(*v0 + 368))(v10, v3);
  if (!v10[3])
  {
    return outlined destroy of UTType?(v10, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
  }

  outlined init with copy of DBObject(v10, v7);
  outlined destroy of UTType?(v10, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 8))(v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

double key path getter for CloudManager.primaryID : CloudManager@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.primaryID : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
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

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t (*a3)(char *, char *))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SuggestionViewModel();
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v9;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v12, v13, a1, v8, a2, a3);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v6, 1, a1, a2);
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SuggestionViewModel();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(char *, char *))
{
  v43 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v54 = type metadata accessor for Date();
  v14 = MEMORY[0x28223BE20](v54);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v51 = &v37 - v18;
  v38 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v52 = (v17 + 48);
    v20 = (v17 + 32);
    v44 = (v17 + 8);
    v47 = v19;
    v21 = (v19 + 8 * a3 - 8);
    v22 = a1 - a3;
    v45 = v13;
    v50 = (v17 + 32);
LABEL_6:
    v40 = v21;
    v41 = a3;
    v23 = *(v47 + 8 * a3);
    v39 = v22;
    v24 = v22;
    while (1)
    {
      v53 = *v21;
      outlined init with copy of DateInterval?(v23 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v13, &_s10Foundation4DateVSgMd);
      v25 = *v52;
      if ((*v52)(v13, 1, v54) == 1)
      {
        break;
      }

      v49 = v24;
      v26 = *v20;
      v27 = v54;
      v26(v51, v13, v54);
      v28 = v46;
      outlined init with copy of DateInterval?(v53 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v46, &_s10Foundation4DateVSgMd);
      if (v25(v28, 1, v27) == 1)
      {
        v36 = *v44;

        v36(v51, v54);
        outlined destroy of UTType?(v28, &_s10Foundation4DateVSgMd);

        v13 = v45;
        v20 = v50;
LABEL_5:
        a3 = v41 + 1;
        v21 = v40 + 1;
        v22 = v39 - 1;
        if (v41 + 1 == v38)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = v51;
      v30 = v54;
      v31 = v42;
      v26(v42, v28, v54);

      v48 = v43(v29, v31);
      v32 = *v44;
      (*v44)(v31, v30);
      v32(v29, v30);

      v13 = v45;
      v33 = v49;
      v20 = v50;
      if ((v48 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v47)
      {
        __break(1u);
        return result;
      }

      v34 = *v21;
      v23 = v21[1];
      *v21 = v23;
      v21[1] = v34;
      --v21;
      v35 = __CFADD__(v33, 1);
      v24 = v33 + 1;
      if (v35)
      {
        goto LABEL_5;
      }
    }

    result = outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
    goto LABEL_5;
  }

  return result;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v27 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = a1 - a3;
LABEL_6:
    v9 = *(v27 + 8 * v6);
    v10 = v8;
    v26 = v7;
    while (1)
    {
      v11 = *v7;
      v12 = *(*v9 + 256);

      v14 = v12(v13);
      if (!v14 || (v15 = &v14[*a5], v16 = *v15, v17 = *(v15 + 8), v14, (v17 & 1) != 0) || (v18 = (*(*v11 + 256))()) == 0)
      {

LABEL_5:
        ++v6;
        v7 = v26 + 1;
        --v8;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v19 = v18;
      v20 = v18 + *a5;
      v21 = *v20;
      v22 = *(v20 + 8);

      if ((v22 & 1) != 0 || v21 >= v16)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v23 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v23;
      --v7;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}