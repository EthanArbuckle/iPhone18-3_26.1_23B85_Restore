void DOCHierarchyController.locations.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    DOCHierarchyController.locations.setter(v4);
  }

  else
  {
    DOCHierarchyController.locations.setter(v3);
  }

  free(v2);
}

uint64_t DOCHierarchyController.effectiveLocations.getter()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v4 = *(v0 + v3);

  v5 = DOCHierarchyController.effectiveRootLocation.getter();
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = *(v0 + v3);

  v8 = specialized Collection<>.firstIndex(of:)(v6, v7, &lazy cache variable for type metadata for DOCConcreteLocation);
  v10 = v9;

  if (v10)
  {
LABEL_45:

    return v4;
  }

  v11 = *(v2 + v3);
  if (v11 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = *(v11 + 32);
  while (1)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    v1 = v6;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {

      return v4;
    }

LABEL_11:

    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + v3);
      v1 = (v4 >> 62);
      if (!(v4 >> 62))
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }
    }

    v10 = __CocoaSet.count.getter();
LABEL_14:
    if (v10 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    if (v10 < 0)
    {
      v14 = v8;
    }

    if (v8)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (v10 < v11)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v1)
    {
      if (v4 < 0)
      {
        v2 = v4;
      }

      else
      {
        v2 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (__CocoaSet.count.getter() < v11)
      {
        goto LABEL_57;
      }

      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 < v11)
      {
        goto LABEL_57;
      }
    }

    if (v15 < v10)
    {
      goto LABEL_58;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_59:
    __break(1u);
LABEL_60:

    v12 = MEMORY[0x24C1FC540](0, v11);
  }

  if ((v4 & 0xC000000000000001) == 0 || v11 == v10)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_40;
  }

  if (v11 >= v10)
  {
    goto LABEL_62;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  swift_bridgeObjectRetain_n();
  v16 = v11;
  do
  {
    v17 = v16 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v16);
    v16 = v17;
  }

  while (v10 != v17);
LABEL_40:

  if (v1)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    v8 = v18;
    v11 = v19;
    v10 = v20;

    if (v10)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v2 = v4 & 0xFFFFFFFFFFFFFF8;
  v8 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v10 = (2 * v10) | 1;
  if ((v10 & 1) == 0)
  {
LABEL_44:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v8, v11, v10, &lazy cache variable for type metadata for DOCConcreteLocation);
    v4 = v21;
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

LABEL_46:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v10 >> 1, v11))
  {
    goto LABEL_63;
  }

  if (v23 != (v10 >> 1) - v11)
  {
LABEL_64:
    swift_unknownObjectRelease_n();
    goto LABEL_44;
  }

  v4 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v4)
  {
    swift_unknownObjectRelease();
    v4 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  return v4;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for UIView);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for DOCConcreteLocation);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for FPItem);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for FPTag);
}

{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for DOCBrowserContainerController();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for FINode);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for DOCTag);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    for (i = (a2 + 40); ; i += 5)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    type metadata accessor for NSMutableAttributedString(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;
    if (*i <= 3)
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          if (a2 == 2)
          {
            v12 = *(i - 1);
            v13 = 2;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 2;
          goto LABEL_35;
        }

        if (v9 == 3)
        {
          if (a2 == 3)
          {
            v12 = *(i - 1);
            v13 = 3;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 3;
          goto LABEL_35;
        }
      }

      else
      {
        if (!v9)
        {
          if (!a2)
          {
            v12 = *(i - 1);
            v13 = 0;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 0;
          goto LABEL_35;
        }

        if (v9 == 1)
        {
          if (a2 == 1)
          {
            v12 = *(i - 1);
            v13 = 1;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 1;
          goto LABEL_35;
        }
      }
    }

    else if (v9 <= 5)
    {
      if (v9 == 4)
      {
        if (a2 == 4)
        {
          v12 = *(i - 1);
          v13 = 4;
          goto LABEL_53;
        }

        outlined copy of ColumnType(a1, a2);
        v10 = 4;
        goto LABEL_35;
      }

      if (v9 == 5)
      {
        if (a2 == 5)
        {
          v12 = *(i - 1);
          v13 = 5;
          goto LABEL_53;
        }

        outlined copy of ColumnType(a1, a2);
        v10 = 5;
        goto LABEL_35;
      }
    }

    else
    {
      switch(v9)
      {
        case 6:
          if (a2 == 6)
          {
            v12 = *(i - 1);
            v13 = 6;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 6;
          goto LABEL_35;
        case 7:
          if (a2 == 7)
          {
            v12 = *(i - 1);
            v13 = 7;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 7;
          goto LABEL_35;
        case 8:
          if (a2 == 8)
          {
            v12 = *(i - 1);
            v13 = 8;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 8;
          goto LABEL_35;
      }
    }

    if (a2 < 9)
    {
      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(v8, v9);
      v10 = v9;
LABEL_35:
      outlined consume of ColumnType(v8, v10);
      outlined consume of ColumnType(a1, a2);
      goto LABEL_36;
    }

    if (v8 == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a1, a2);
    outlined copy of ColumnType(v8, v9);
    outlined consume of ColumnType(v8, v9);
    outlined consume of ColumnType(a1, a2);
    if (v11)
    {
      return v6;
    }

LABEL_36:
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  outlined copy of ColumnType(a1, a2);
  outlined copy of ColumnType(a1, a2);
  v12 = a1;
  v13 = a2;
LABEL_53:
  outlined consume of ColumnType(v12, v13);
  outlined consume of ColumnType(a1, a2);
  return v6;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a2 + 32); ; i += 3)
  {
    v5 = i[1];
    v13 = *i;
    v14[0] = v5;
    *(v14 + 9) = *(i + 25);
    outlined init with copy of DOCSidebarItem(&v13, &v12);
    v6 = DOCSidebarItem.hashComparableValue.getter();
    v8 = v7;
    if (v6 == DOCSidebarItem.hashComparableValue.getter() && v8 == v9)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of DOCSidebarItem(&v13);
    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  outlined destroy of DOCSidebarItem(&v13);
  return v3;
}

{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for URL() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t DOCHierarchyController._lastBrowsedStateByTab.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCHierarchyController.defaultTab.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCHierarchyController.defaultTab.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCHierarchyController.endUpdateExpectation(_:)(uint64_t a1)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v49 = &v44 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v9, v10);
  v53 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v44 - v21;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  swift_beginAccess();
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v46 = *(updated - 8);
  v47 = updated;
  v25 = *(v46 + 48);
  v51 = v1;
  v26 = v25(v1 + v23, 1);
  v48 = v23;
  if (v26)
  {
    v27 = *(v6 + 56);
    v27(v22, 1, 1, v5);
    (*(v6 + 16))(v18, v52, v5);
  }

  else
  {
    v28 = *(v6 + 16);
    v28(v22, v51 + v23, v5);
    v27 = *(v6 + 56);
    v27(v22, 0, 1, v5);
    v28(v18, v52, v5);
  }

  v27(v18, 0, 1, v5);
  v29 = *(v9 + 48);
  v30 = v53;
  outlined init with copy of DOCGridLayout.Spec?(v22, v53, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v18, v30 + v29, &_s10Foundation4UUIDVSgMd);
  v31 = *(v6 + 48);
  if (v31(v30, 1, v5) != 1)
  {
    v52 = v22;
    v34 = v30;
    v33 = v30;
    v35 = v50;
    outlined init with copy of DOCGridLayout.Spec?(v34, v50, &_s10Foundation4UUIDVSgMd);
    if (v31(v33 + v29, 1, v5) != 1)
    {
      v37 = v33 + v29;
      v38 = v45;
      (*(v6 + 32))(v45, v37, v5);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v6 + 8);
      v40(v38, v5);
      outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CharacterSet?(v52, &_s10Foundation4UUIDVSgMd);
      v40(v35, v5);
      result = outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSgMd);
      if ((v39 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CharacterSet?(v52, &_s10Foundation4UUIDVSgMd);
    (*(v6 + 8))(v35, v5);
    return outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd);
  v32 = v22;
  v33 = v53;
  outlined destroy of CharacterSet?(v32, &_s10Foundation4UUIDVSgMd);
  if (v31(v33 + v29, 1, v5) != 1)
  {
    return outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSgMd);
LABEL_11:
  v41 = v49;
  (*(v46 + 56))(v49, 1, 1, v47);
  v42 = v48;
  v43 = v51;
  swift_beginAccess();
  outlined assign with take of DOCHierarchyController.UpdateExpectation?(v41, v43 + v42);
  return swift_endAccess();
}

BOOL DOCHierarchyController.hasPendingLocationChange.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v5, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v6 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  return v7;
}

uint64_t DOCHierarchyController.locationsBeingRestored.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationsBeingRestored;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v10, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    goto LABEL_5;
  }

  outlined init with take of DOCHierarchyController.FetchingOperationToken(v4, v9, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  if (v9[*(v5 + 20)])
  {
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v9, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_5:
    v11 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_6;
    }

LABEL_19:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = *&v9[*(v5 + 28)];

  outlined destroy of DOCHierarchyController.FetchingOperationToken(v9, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  if (v11 >> 62)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_7:
  v12 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  swift_beginAccess();
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  if (!(*(*(updated - 8) + 48))(v12, 1, updated))
  {
    v14 = *(v12 + *(updated + 20));

    v11 = v14;
  }

LABEL_9:
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_11:

    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v11 = *(v0 + v15);
  }

LABEL_12:
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x24C1FC540](0, v11);
    goto LABEL_17;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v11 + 32);
LABEL_17:
    v18 = v17;

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t DOCConcreteLocation.isRootOrTrash.getter()
{
  if ([v0 isRoot])
  {
    v1 = 1;
  }

  else
  {
    v2 = [v0 sourceIdentifier];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

void *DOCHierarchyController.effectiveRootLocationCandidate.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t key path setter for DOCHierarchyController.effectiveRootLocationCandidate : DOCHierarchyController(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  swift_getKeyPath();
  return _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
}

void DOCHierarchyController.effectiveRootLocationCandidate.setter(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
}

void (*DOCHierarchyController.effectiveRootLocationCandidate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCHierarchyController.effectiveRootLocationCandidate.modify;
}

void DOCHierarchyController.effectiveRootLocationCandidate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v3[4] = v6;
  v8 = v3 + 4;
  swift_getKeyPath();
  if (a2)
  {
    v9 = v5;
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v10 = *(v6 + v7);
    *(v6 + v7) = v5;
    v11 = v9;

    *v8 = v6;
    swift_getKeyPath();
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  }

  else
  {
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v12 = *(v6 + v7);
    *(v6 + v7) = v5;
    v13 = v5;

    *v8 = v6;
    swift_getKeyPath();
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  }

  free(v3);
}

char *DOCHierarchyController.lastLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(v2 + 8 * v4 + 32);
      }

      __break(1u);
      return result;
    }

    v5 = MEMORY[0x24C1FC540](v4, v2);

    return v5;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x24C1FC540](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v4 = *(v2 + 32);
  }

LABEL_8:
  result = DOCHierarchyController.effectiveLocations.getter();
  if (result >> 62)
  {
    v9 = result;
    v10 = __CocoaSet.count.getter();
    result = v9;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_19:

    if (v4)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_22:
    v8 = 0;
    return v8 & 1;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1FC540](0);
    goto LABEL_13;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
LABEL_13:
    v6 = v5;

    if (v4)
    {
      if (v6)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
        v7 = static NSObject.== infix(_:_:)();

        v8 = v7 ^ 1;
        return v8 & 1;
      }

      goto LABEL_20;
    }

    if (v6)
    {

LABEL_21:
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - v12;
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&v3[v14], v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v15 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&v3[v18], v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v17(v9, 1, v15) != 1)
    {
      outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v9, v13, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  if (v17(v13, 1, v15) == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  }

  else
  {
    v19 = v13[*(v15 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v13, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v19)
    {
      return;
    }
  }

  v20 = DOCHierarchyController.effectiveRootLocation.getter();
  if (v20)
  {
    v21 = v20;
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v23 = *&v3[v22];

    v24 = specialized Collection<>.firstIndex(of:)(v21, v23, &lazy cache variable for type metadata for DOCConcreteLocation);
    v26 = v25;

    if (v26)
    {
LABEL_24:

      return;
    }

    v49 = a2;
    v27 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(0xD00000000000002BLL, 0x8000000249BCC5E0);
    aBlock[0] = v3;
    swift_getKeyPath();
    v28 = MEMORY[0x277CC9DF8];
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
    swift_beginAccess();
    v30 = *&v3[v29];
    *&v3[v29] = 0;

    aBlock[0] = v3;
    swift_getKeyPath();
    v31 = aBlock;
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
    if (v24 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v31 = *&v3[v22];
      v28 = v31 >> 62;
      if (!(v31 >> 62))
      {
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }
    }

    if (__CocoaSet.count.getter() < 0)
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (__CocoaSet.count.getter() >= v24)
    {
LABEL_13:
      if ((v31 & 0xC000000000000001) != 0 && v24)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

        v32 = 0;
        do
        {
          v33 = v32 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v32);
          v32 = v33;
        }

        while (v24 != v33);
        if (!v28)
        {
          goto LABEL_18;
        }
      }

      else
      {

        if (!v28)
        {
LABEL_18:
          v34 = 0;
          v35 = v31 & 0xFFFFFFFFFFFFFF8;
          v36 = v35 + 32;
          v37 = (2 * v24) | 1;
          goto LABEL_21;
        }
      }

      v35 = _CocoaArrayWrapper.subscript.getter();
      v36 = v38;
      v34 = v39;
      v37 = v40;
LABEL_21:
      swift_endAccess();
      if (v34 != v37 >> 1)
      {
        if (v34 < (v37 >> 1))
        {
          v41 = *(v36 + 8 * v34);
          v42 = swift_allocObject();
          v42[2] = v3;
          v42[3] = v27;
          v42[4] = a1;
          v42[5] = v49;
          v42[6] = v35;
          v42[7] = v36;
          v42[8] = v34;
          v42[9] = v37;
          v48 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
          v43 = swift_allocObject();
          v43[2] = partial apply for closure #1 in DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:);
          v43[3] = v42;
          v43[4] = v41;
          aBlock[4] = partial apply for closure #1 in DOCHierarchyController.getSource(for:completion:);
          aBlock[5] = v43;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_11;
          v44 = _Block_copy(aBlock);
          v45 = v41;
          v46 = v3;

          swift_unknownObjectRetain();

          [v48 retrieveAllSourcesCompletionBlock_];
          _Block_release(v44);

          swift_unknownObjectRelease();

          goto LABEL_24;
        }

        goto LABEL_31;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t DOCHierarchyController.isFetchingLocations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v9, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v4, 1, v10) == 1)
  {
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v0 + v13, v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v12(v4, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v4, v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  if (v12(v8, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    return 0;
  }

  else
  {
    v14 = v8[*(v10 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  }

  return v14;
}

uint64_t DOCHierarchyController.preventImmediateChangeRequests(reason:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTime();
  v11 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.UI);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_2493AC000, v21, v22, "Suspending work (locationChangePreparationQueue) in hierarchy controller %@", v23, 0xCu);
    outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  type metadata accessor for DOCHierarchyController.PreventChangeAssertion(0);
  v26 = swift_allocObject();
  UUID.init()();
  v27 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active;
  *(v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated) = 0;
  v28 = (v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason);
  *v28 = a1;
  v28[1] = a2;
  *(v26 + v27) = 1;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions;
  swift_beginAccess();

  MEMORY[0x24C1FB090](v30);
  if (*((*(v20 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  dispatch_suspend(*(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v41 = v18;
  v42 = *(v11 + 8);
  v42(v14, v49);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v26;
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.preventImmediateChangeRequests(reason:);
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_883;
  v34 = _Block_copy(aBlock);

  v35 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v36 = v44;
  v37 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v41;
  MEMORY[0x24C1FB940](v41, v35, v36, v34);
  _Block_release(v34);

  (*(v47 + 8))(v36, v37);
  (*(v45 + 8))(v35, v46);
  v42(v38, v49);
  return v26;
}

void DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated;
  v6 = *(a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated);
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active;
  v8 = *(a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active);

  v9 = specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v8, v6, v6, a1);

  if (v9)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_2493AC000, v12, v13, "Resuming work (locationChangePreparationQueue) in hierarchy controller %@", v14, 0xCu);
      outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    *(a1 + v7) = 0;
    *(a1 + v5) = a2 & 1;
    v17 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions;
    swift_beginAccess();

    v18 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v11[v17]);

    v19 = *&v11[v17];
    if (v19 >> 62)
    {
      v20 = __CocoaSet.count.getter();
      if (v20 >= v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20 >= v18)
      {
LABEL_8:
        specialized Array.replaceSubrange<A>(_:with:)(v18, v20);
        swift_endAccess();
        dispatch_resume(*&v11[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue]);
        return;
      }
    }

    __break(1u);
    swift_endAccess();
    __break(1u);
  }
}

void closure #1 in DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a3, 0);
    a4(0);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a9)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v20 = a1;
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        v21 = MEMORY[0x277D84F90];
      }

      v22 = *(v21 + 16);

      if (__OFSUB__(a9 >> 1, a8))
      {
        __break(1u);
      }

      else if (v22 == (a9 >> 1) - a8)
      {
        if (!swift_dynamicCastClass())
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v18 = a1;
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(a6, a7, a8, a9, &lazy cache variable for type metadata for DOCConcreteLocation);
LABEL_14:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = a1;
    [v17 hierarchyController:a2 didReveal:isa source:v24];

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v19 = a1;
LABEL_15:
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a3, 0);
  a4(1);
}

uint64_t DOCHierarchyController.isResetBeingPerformed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCHierarchyController.isResetBeingPerformed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCHierarchyController.loadingDisabledOperation.setter(uint64_t a1, uint64_t *a2)
{
  v33 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - v18;
  v20 = *a2;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  swift_beginAccess();
  v21 = a1;
  outlined assign with copy of DOCHierarchyController.FetchingOperationToken?(a1, v2 + v20);
  swift_endAccess();
  v22 = *(v9 + 56);
  outlined init with copy of DOCGridLayout.Spec?(v19, v12, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v23 = v33;
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, &v12[v22], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v23) != 1)
  {
    v27 = v32;
    outlined init with copy of DOCGridLayout.Spec?(v12, v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v24(&v12[v22], 1, v23) != 1)
    {
      v28 = v31;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(&v12[v22], v31, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      static UUID.== infix(_:_:)();
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v28, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v27, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v26 = v12;
      v25 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd;
      return outlined destroy of CharacterSet?(v26, v25);
    }

    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v27, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    goto LABEL_6;
  }

  outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v24(&v12[v22], 1, v23) != 1)
  {
LABEL_6:
    v25 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd;
    v26 = v12;
    return outlined destroy of CharacterSet?(v26, v25);
  }

  v25 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd;
  v26 = v12;
  return outlined destroy of CharacterSet?(v26, v25);
}

uint64_t DOCHierarchyController.isLoadingDisabled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v9, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v4, 1, v10) == 1)
  {
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v0 + v13, v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v12(v4, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v4, v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  if (v12(v8, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v14 = 0;
  }

  else
  {
    v15 = v8[*(v10 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v14 = v15 ^ 1;
  }

  return v14 & 1;
}

Swift::Void __swiftcall DOCHierarchyController.invalidateAllAssertions()()
{
  v0 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v0 + 144))(v0);
}

void *DOCHierarchyController.loadingDisabledAssertions.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCAssertionCollection();
    v2 = swift_allocObject();
    v2[5] = 0x44676E6964616F4CLL;
    v2[6] = 0xEF64656C62617369;
    v2[2] = MEMORY[0x277D84F90];
    v2[3] = partial apply for closure #1 in DOCHierarchyController.loadingDisabledAssertions.getter;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t DOCHierarchyController.registerLoadingDisabledAssertion(_:)(uint64_t a1)
{
  v2 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v2 + 136))(a1, 0, 1);
}

void closure #1 in DOCHierarchyController.loadingDisabledAssertions.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCHierarchyController.loadingDisabledAssertionsStateDidChange()();
  }
}

uint64_t DOCHierarchyController.loadingDisabledAssertionsStateDidChange()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v17 - v4;
  v6 = DOCHierarchyController.loadingDisabledAssertions.getter(v3);
  v7 = (*(*v6 + 152))(v6);

  if (v7)
  {
    UUID.init()();
    v8 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v5[v8[5]] = 0;
    v5[v8[6]] = 0;
    *&v5[v8[7]] = MEMORY[0x277D84F90];
    (*(*(v8 - 1) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  DOCHierarchyController.loadingDisabledOperation.setter(v5, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation);
  v10 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions) + 152);

  LOBYTE(v10) = v10(v11);

  if ((v10 & 1) == 0)
  {
    v13 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    v14 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    if (v14)
    {

      v14(v15);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14);
      v16 = *v13;
      *v13 = 0;
      v13[1] = 0;
      return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16);
    }
  }

  return result;
}

uint64_t DOCHierarchyController.performWhilePreventingLoading(_:)(void (*a1)(uint64_t))
{
  type metadata accessor for DOCAssertion();
  v2 = swift_allocObject();
  *(v2 + 32) = 1;
  *(v2 + 40) = MEMORY[0x277D84F90];
  *(v2 + 16) = 0xD00000000000001DLL;
  *(v2 + 24) = 0x8000000249BCC630;
  v3 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v3 + 136))(v2, 0, 1);

  a1(v4);
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v5 == 1)
  {
    DOCAssertion.notifyObservers()();
  }
}

uint64_t DOCHierarchyController.shouldForceChangeInPreparationQueue.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCHierarchyController.shouldForceChangeInPreparationQueue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCHierarchyController.performWhileForcingChangeInPreparationQueue(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = 1;
  result = a1(v4);
  *(v1 + v3) = v5;
  return result;
}

void closure #1 in DOCHierarchyController.preventImmediateChangeRequests(reason:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a2 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active);

    specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)((v5 & 1) == 0, 1, 1, a2, 0xD000000000000011, 0x8000000249BCDCB0);

    if (v5)
    {
      DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a2, 1);
    }
  }
}

uint64_t DOCHierarchyController.PreventChangeAssertion.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCHierarchyController.PreventChangeAssertion()
{
  v1 = *v0;
  _StringGuts.grow(_:)(26);

  MEMORY[0x24C1FAEA0](*(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason), *(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason + 8));
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

void *DOCHierarchyController.sourceObserverContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCHierarchyController.sourceObserverContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCHierarchyController.userDefaultsObservedContent.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent);
  }

  else
  {
    type metadata accessor for DOCHierarchyController.UserDefaultsObservedContent();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = MEMORY[0x277D84F90];
    *(v2 + 32) = 1;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 40) = 0;
    *(v2 + 64) = 0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*DOCHierarchyController.userDefaultsObservedContent.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = DOCHierarchyController.userDefaultsObservedContent.getter();
  return DOCHierarchyController.userDefaultsObservedContent.modify;
}

void *DOCHierarchyController.pickerContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCHierarchyController.pickerContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCHierarchyController.__allocating_init(configuration:sourceObserver:minParentLocations:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [objc_opt_self() defaultManager];
  v9 = [objc_opt_self() sharedStore];
  v10 = objc_allocWithZone(v3);
  v11 = DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(a1, a2, a3, v8, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

char *DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() defaultManager];
  v8 = [objc_opt_self() sharedStore];
  v9 = objc_allocWithZone(ObjectType);
  v10 = DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(a1, a2, a3, v7, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

char *DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v72 = a2;
  v73 = a5;
  v69 = a1;
  v70 = a4;
  v68 = a3;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v10);
  v76 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16 - 8, v17);
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab] = MEMORY[0x277D84F98];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab] = 2;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  (*(*(updated - 8) + 56))(&v5[v19], 1, 1, updated);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationsBeingRestored] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed] = 0;
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  v22 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v23 = *(*(v22 - 8) + 56);
  v23(&v6[v21], 1, 1, v22);
  v23(&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation], 1, 1, v22);
  v24 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock];
  *v24 = 0;
  v24[1] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue] = 0;
  v62 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v61 = static OS_dispatch_queue.main.getter();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = v18;
  v60 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  v74 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  v59 = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v58 = *MEMORY[0x277D85260];
  v63 = *(v63 + 104);
  v25 = v64;
  (v63)(v76);
  *&v6[v62] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v62 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_nodeResolvingQueue;
  v61 = "chyControllerQueue";
  v26 = v65;
  v27 = v66;
  v28 = v67;
  (*(v66 + 13))(v65, *MEMORY[0x277D851B8], v67);
  v57[1] = static OS_dispatch_queue.global(qos:)();
  (*(v27 + 1))(v26, v28);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  v57[0] = v15;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v76;
  v30 = v63;
  (v63)(v76, v58, v25);
  *&v6[v62] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v66 = "ue.nodeResolving";
  v67 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_lastVisitedLocationSavingQueue;
  v30(v29, *MEMORY[0x277D85268], v25);
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v6[v67] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions] = v31;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext] = 0;
  v32 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeOrInflightAppend];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  *v33 = 0;
  v33[8] = 1;
  v34 = v69;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_minParentLocations] = v68;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] = v34;
  v35 = v70;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager] = v70;
  v37 = v72;
  v36 = v73;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver] = v72;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_userInterfaceStateStore] = v36;
  v78.receiver = v6;
  v78.super_class = ObjectType;
  v38 = v34;
  v39 = v35;
  v40 = v37;
  v41 = v36;
  v42 = objc_msgSendSuper2(&v78, sel_init);
  v43 = *&v42[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_13;
  v45 = _Block_copy(aBlock);
  v46 = v42;
  v47 = v43;

  v48 = [v40 addSubscriberForConfiguration:v47 usingBlock:v45];
  _Block_release(v45);

  v49 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  v50 = *&v46[v49];
  *&v46[v49] = v48;

  v51 = objc_opt_self();
  v52 = [v51 defaultCenter];
  [v52 addObserver:v46 selector:sel_tagsDidChangeWithNotification_ name:*MEMORY[0x277D061D0] object:0];

  v53 = [v51 defaultCenter];
  v54 = v46;
  v55 = MEMORY[0x24C1FAD20](0xD00000000000001FLL, 0x8000000249BCC720);
  [v53 addObserver:v54 selector:sel_receiveInvalidateLocationsNotification name:v55 object:0];

  return v54;
}

uint64_t closure #1 in DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCHierarchyController.updateLocationFromSourceChange(sources:)(a2);
  }
}

void DOCHierarchyController.updateLocationFromSourceChange(sources:)(unint64_t a1)
{
  v2 = v1;
  rawValue = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v5 = *(rawValue + v1);
  if (v5 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    v32 = *(rawValue + v2);
    if (v32 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      if (!v33)
      {
        return;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        return;
      }
    }

    v34 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
      __break(1u);
    }

    else if ((v32 & 0xC000000000000001) == 0)
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v32 + 8 * v34 + 32);
LABEL_48:
        rawValue = [v35 sourceIdentifier];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
        {
          goto LABEL_63;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v41)
        {
          goto LABEL_53;
        }

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
        if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
        {
LABEL_63:

          return;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_53;
        }

        if (a1 >> 62)
        {
          goto LABEL_117;
        }

        v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v111._rawValue = rawValue;
        if (v48)
        {
          goto LABEL_62;
        }

LABEL_118:
        v94 = MEMORY[0x277D84F90];
LABEL_119:
        if (v94 < 0 || (v94 & 0x4000000000000000) != 0)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_122;
          }
        }

        else if (*(v94 + 16))
        {
LABEL_122:
          if ((v94 & 0xC000000000000001) != 0)
          {
            v95 = MEMORY[0x24C1FC540](0, v94);
          }

          else
          {
            if (!*(v94 + 16))
            {
              __break(1u);
              return;
            }

            v95 = *(v94 + 32);
          }

          v96 = v95;

          v97 = DOCDocumentSource.representedLocation.getter();
          DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v97, 0, 0, 1, 0, 0, 0);

LABEL_53:
          return;
        }

        v98 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
        v99 = DOCTabIdentifier.tab.getter();
        v101 = v100;

        if (v101)
        {
          v102 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
          swift_beginAccess();
          v99 = *(v2 + v102);
          rawValue = v111._rawValue;
        }

        v103 = DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(v99);
        v105 = v104;

        DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v103, 0, 0, 1, 0, 0, 0);
        goto LABEL_53;
      }

      __break(1u);
      goto LABEL_112;
    }

    v35 = MEMORY[0x24C1FC540](v34, v32);

    goto LABEL_48;
  }

LABEL_3:
  v6 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
  v7 = DOCTabIdentifier.tab.getter();
  v9 = v8;

  v111._rawValue = rawValue;
  if (v9)
  {
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v7 = *(v2 + v10);
  }

  v11 = DOCHierarchyController._defaultBrowsedState(forTab:checkPersistentStorage:checkLiveCachedStorage:)(v7, 1, 1);
  v112 = v12;
  v114 = v13;
  v116 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v27 = v11;
    v14 = __CocoaSet.count.getter();
    v11 = v27;
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v113 = v11;
  v115 = v2;
  rawValue = MEMORY[0x277D84F90];
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_21:
    if ((v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_37;
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_38:

    v21 = MEMORY[0x277D84F90];
LABEL_39:
    v28 = v113;
    v29 = [v113 sourceIdentifier];
    v116 = v29;
    MEMORY[0x28223BE20](v29, v30);
    v106[2] = &v116;
    v31 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v106, v21);

    v2 = v115;
    if ((v31 & 1) == 0)
    {
      DOCHierarchyController.clearLastVisitedBrowseState(clearPersistentStorage:clearLiveCachedStorage:)(1, 1);

      return;
    }

    rawValue = v111._rawValue;
    goto LABEL_41;
  }

  v15 = 0;
  rawValue = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1FC540](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    v2 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_41;
      }

      goto LABEL_3;
    }

    if (([v16 status] | 2) == 2)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v15;
  }

  while (v2 != v14);
  v18 = v116;
  rawValue = MEMORY[0x277D84F90];
  if ((v116 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_37:
  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_38;
  }

LABEL_23:
  v116 = rawValue;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v116;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v20, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 identifier];

      v116 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v21 = v116;
      }

      ++v20;
      *(v21 + 16) = v26 + 1;
      *(v21 + 8 * v26 + 32) = v24;
    }

    while (v19 != v20);

    goto LABEL_39;
  }

LABEL_112:
  __break(1u);
  while (2)
  {
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      v48 = __CocoaSet.count.getter();
      v111._rawValue = rawValue;
      if (!v48)
      {
        goto LABEL_118;
      }

LABEL_62:
      v49 = 0;
      v114 = (a1 & 0xC000000000000001);
      v115 = v2;
      v112 = v48;
      v113 = (a1 & 0xFFFFFFFFFFFFFF8);
LABEL_67:
      if (v114)
      {
        v50 = MEMORY[0x24C1FC540](v49, a1);
      }

      else
      {
        if (v49 >= *(v113 + 2))
        {
          continue;
        }

        v50 = *(a1 + 8 * v49 + 32);
      }

      break;
    }

    v2 = v50;
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      continue;
    }

    break;
  }

  v52 = [v50 identifier];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;
  if (v53 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v55 != v56)
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_83;
    }

    v59 = type metadata accessor for DOCFileProviderSource();
    v60 = swift_dynamicCastClass();
    if (v60)
    {
      v61 = *(v60 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v61)
      {
        v62 = v61;
        v63 = v2;
        if (DOCProviderDomainIsSharedServerDomain())
        {
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v65;
          v109 = v64;
          v66 = v59;
          v67 = [v63 identifier];
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v63;
          v69 = v68;
          v71 = v70;

          v59 = v66;
          v72._countAndFlagsBits = v69;
          v72._object = v71;
          LOBYTE(v69) = String.hasPrefix(_:)(v72);

          v48 = v112;

          if (v69)
          {
            goto LABEL_83;
          }
        }

        else
        {
        }
      }
    }

    ++v49;
    if (v51 != v48)
    {
      goto LABEL_67;
    }

    v2 = 0;
    v116 = MEMORY[0x277D84F90];
    v110 = v59;
    while (2)
    {
      if (v114)
      {
        v82 = MEMORY[0x24C1FC540](v2, a1);
      }

      else
      {
        if (v2 >= *(v113 + 2))
        {
          goto LABEL_116;
        }

        v82 = *(a1 + 8 * v2 + 32);
      }

      v83 = v82;
      v84 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        goto LABEL_115;
      }

      v85 = swift_dynamicCastClass();
      if (v85)
      {
        v86 = v85;
        v87 = *(v85 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v87)
        {
          v88 = v83;
          v89 = v87;
          rawValue = v111._rawValue;
          v90 = FPProviderDomain.matches(iCloudSourceIdentifier:)(v111);

          if (v90)
          {

            goto LABEL_101;
          }
        }

        else
        {
          v91 = v83;
          rawValue = v111._rawValue;
        }

        v92 = [v86 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = specialized Sequence<>.starts<A>(with:)();

        if (v93)
        {
LABEL_101:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v48 = v112;
      }

      else
      {
      }

      ++v2;
      if (v84 == v48)
      {
        v94 = v116;
        v2 = v115;
        goto LABEL_119;
      }

      continue;
    }
  }

LABEL_83:
  if ([v2 status] != 1)
  {

    goto LABEL_53;
  }

  v73 = v115;
  DOCHierarchyController.clearLastVisitedBrowseState(clearPersistentStorage:clearLiveCachedStorage:)(1, 1);
  v74 = [*(v73 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
  v75 = DOCTabIdentifier.tab.getter();
  v77 = v76;

  if (v77)
  {
    v78 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v75 = *(v73 + v78);
  }

  v79 = DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(v75);
  v81 = v80;

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v79, 0, 0, 1, 0, 0, 0);
}

id DOCHierarchyController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_51;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v39 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue;

  if (v4)
  {
    v5 = 0;
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = v3 & 0xC000000000000001;
    v41 = v2;
    v37 = v3;
    v38 = v1;
    v40 = v4;
    while (1)
    {
      if (v43)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v5 >= *(v42 + 16))
        {
          goto LABEL_46;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v4 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v9 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active;
      v10 = *(v7 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active);

      specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)((v10 & 1) == 0, 1, 1, v7, 0x696E696564206E69, 0xE900000000000074);

      if (v10)
      {
        break;
      }

LABEL_9:

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_42;
      }
    }

    v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated;
    v12 = *(v7 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated);
    v13 = *(v7 + v9);

    v14 = specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v13, v12, v12, v7);

    if ((v14 & 1) == 0)
    {
LABEL_8:
      v4 = v40;
      goto LABEL_9;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v38;
      v21 = v16;
      _os_log_impl(&dword_2493AC000, v17, v18, "Resuming work (locationChangePreparationQueue) in hierarchy controller %@", v19, 0xCu);
      outlined destroy of CharacterSet?(v20, &_sSo8NSObjectCSgMd);
      v22 = v20;
      v1 = v38;
      MEMORY[0x24C1FE850](v22, -1, -1);
      v23 = v19;
      v2 = v41;
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    *(v7 + v9) = 0;
    *(v7 + v11) = 1;
    swift_beginAccess();

    v24 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v1[v2]);

    v2 = *&v1[v2];
    v25 = v2 >> 62;
    if (v2 >> 62)
    {
      v3 = __CocoaSet.count.getter();
      v26 = v3 - v24;
      if (v3 < v24)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v3 - v24;
      if (v3 < v24)
      {
        goto LABEL_41;
      }
    }

    if (v24 < 0)
    {
      goto LABEL_47;
    }

    if (v25)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27 < v3)
    {
      goto LABEL_48;
    }

    v28 = __OFSUB__(0, v26);
    v29 = -v26;
    if (v28)
    {
      goto LABEL_49;
    }

    if (v25)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = __OFADD__(v30, v29);
    v31 = v30 + v29;
    if (v28)
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v41] = v2;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v25)
      {
        if (v31 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = v41;
          goto LABEL_7;
        }

LABEL_6:
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v41;
        *&v1[v41] = v2;
LABEL_7:
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v24, v3, 0, type metadata accessor for DOCHierarchyController.PreventChangeAssertion);
        *&v1[v6] = v2;
        swift_endAccess();
        dispatch_resume(*&v1[v39]);
        v2 = v6;
        v3 = v37;
        goto LABEL_8;
      }
    }

    else if (!v25)
    {
      goto LABEL_6;
    }

    __CocoaSet.count.getter();
    goto LABEL_6;
  }

LABEL_42:

  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  if (*&v1[v33])
  {
    [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver] removeSubscriberForToken_];
  }

  v34 = [objc_opt_self() defaultCenter];
  [v34 removeObserver_];

  v44.receiver = v1;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, sel_dealloc);
}

uint64_t DOCHierarchyController.dismissSearch(withCompletion:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1();
  }

  v6 = Strong;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19_1;
  v8 = _Block_copy(aBlock);

  [v6 hierarchyController:v2 prepareByDismissingSearchWithCompletion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

id DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = [Strong hierarchyChangeTransitionCoordinator], swift_unknownObjectRelease(), !v1))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    v1 = [v2 _definiteTransitionCoordinator];
  }

  return v1;
}

Swift::Void __swiftcall DOCHierarchyController.resetWithDefaultLocation(animated:)(Swift::Bool animated)
{
  swift_getObjectType();
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
  v4 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
  v5 = DOCTabIdentifier.tab.getter();
  v7 = v6;

  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v5 = *&v1[v8];
  }

  v9 = [objc_opt_self() sharedManager];
  v10 = [v3 hostIdentifier];
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x24C1FAD20](v11);
  }

  [v9 setHostIdentifier_];

  v12 = [objc_opt_self() defaultPermission];
  v13 = [v3 hostIdentifier];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  [v12 setHostIdentifier_];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = animated;
    v21 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_2493AC000, v17, v18, "0. Will reset initially selected location (browser: %@)", v19, 0xCu);
    outlined destroy of CharacterSet?(v21, &_sSo8NSObjectCSgMd);
    v23 = v21;
    animated = v20;
    MEMORY[0x24C1FE850](v23, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  v24 = [v3 defaultLocation];
  if (v24)
  {
    v25 = v24;
    if ([v3 allowsDisplaying_])
    {
      v26 = v16;
      v27 = v25;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412546;
        *(v30 + 4) = v26;
        *(v30 + 12) = 2112;
        *(v30 + 14) = v27;
        *v31 = v26;
        v31[1] = v25;
        v32 = v26;
        v33 = v27;
        _os_log_impl(&dword_2493AC000, v28, v29, "1. Will reset to configuration's defaultLocation (browser: %@, location: %@)", v30, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v31, -1, -1);
        MEMORY[0x24C1FE850](v30, -1, -1);
      }

      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v27, 0, animated, 0, 1, 0, 0);
      return;
    }
  }

  if (![v3 isPickerUI])
  {
    DOCHierarchyController.resetToDefaultBrowsedStateForEffectiveTab(animated:)(animated);
    return;
  }

  v34 = v16;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = animated;
    v39 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&dword_2493AC000, v35, v36, "2 Will reset using picker strategy (browser: %@)", v37, 0xCu);
    outlined destroy of CharacterSet?(v39, &_sSo8NSObjectCSgMd);
    v41 = v39;
    animated = v38;
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v37, -1, -1);
  }

  if (![v3 isPickerUI] || (UsedOpenSave = DOCHierarchyController.getLastUsedOpenSaveLocation()()) == 0)
  {
LABEL_35:
    v60 = v34;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v60;
      *v64 = v60;
      v65 = v60;
      _os_log_impl(&dword_2493AC000, v61, v62, "2.2 lastUsedOpenSaveLocation couldn't be found or used. Will fetch from getSaveLocation (browser: %@)", v63, 0xCu);
      outlined destroy of CharacterSet?(v64, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v64, -1, -1);
      MEMORY[0x24C1FE850](v63, -1, -1);
    }

    v66 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
    v67 = DOCTabIdentifier.tab.getter();
    v69 = v68;

    if (v69)
    {
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_2493AC000, v70, v71, "WARNING: expected configuration.defaultEffectiveTabForLocationRestore to be set at this point", v72, 2u);
        MEMORY[0x24C1FE850](v72, -1, -1);
      }

      v73 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
      swift_beginAccess();
      v67 = 2;
      *&v60[v73] = 2;
      v74 = MEMORY[0x277D061B0];
    }

    else
    {
      v75 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
      swift_beginAccess();
      *&v60[v75] = v67;
      if (v67 > 2)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v74 = qword_278FA2C68[v67];
    }

    v76 = *v74;
    [v3 setDefaultEffectiveTabIdentifierForLocationRestore_];

    v77 = swift_allocObject();
    *(v77 + 16) = v67;
    *(v77 + 24) = v3;
    *(v77 + 32) = v60;
    *(v77 + 40) = animated;
    v78 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v79 = *&v60[v78];
    if (v79 >> 62)
    {
      v80 = __CocoaSet.count.getter();
      if (v80)
      {
LABEL_45:
        v81 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          __break(1u);
        }

        else if ((v79 & 0xC000000000000001) == 0)
        {
          if ((v81 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v81 < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v82 = *(v79 + 8 * v81 + 32);
            v83 = v60;
            v84 = v3;
            v85 = v82;
            goto LABEL_50;
          }

          __break(1u);
          goto LABEL_64;
        }

        v100 = v60;
        v101 = v3;

        v85 = MEMORY[0x24C1FC540](v81, v79);

LABEL_50:
        v86 = [v85 fileProviderItem];
        if (v86)
        {
          v87 = v86;
          v88 = animated;
          v89 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA0290;
          *(inited + 32) = v87;
          v91 = v87;
          LOBYTE(v89) = specialized static DOCActionManager.canPerform(_:on:)(v89, inited);
          swift_setDeallocating();
          swift_arrayDestroy();

          if (v89)
          {
            v92 = v85;
            specialized closure #1 in DOCHierarchyController.resetWithDefaultLocation(animated:)(v85, v67, v3, v60, v88);

LABEL_59:

            return;
          }
        }

LABEL_58:
        v95 = *&v60[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
        v96 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
        swift_beginAccess();
        v97 = *&v60[v96];
        v98 = swift_allocObject();
        *(v98 + 16) = partial apply for specialized closure #1 in DOCHierarchyController.resetWithDefaultLocation(animated:);
        *(v98 + 24) = v77;
        v99 = v97;

        static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v3, v95, v97, partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:), v98);

        goto LABEL_59;
      }
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v80)
      {
        goto LABEL_45;
      }
    }

    v93 = v60;
    v94 = v3;
    goto LABEL_58;
  }

  v43 = UsedOpenSave;
  v102 = animated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_249BA0290;
  *(v44 + 32) = v43;
  v45 = v43;
  v46 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v44, 0);
  v48 = v47;

  if (!v46)
  {
LABEL_65:
    __break(1u);
    return;
  }

  if (v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = v46;
  }

  if (v5 != [v49 effectiveTabSwitcherTab] || !objc_msgSend(v46, sel_canBeRestored) || !objc_msgSend(v3, sel_allowsDisplaying_, v46))
  {

    animated = v102;
    goto LABEL_35;
  }

  v50 = v46;
  v51 = v34;
  v52 = v50;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412546;
    *(v55 + 4) = v51;
    *(v55 + 12) = 2112;
    *(v55 + 14) = v52;
    *v56 = v51;
    v56[1] = v46;
    v57 = v51;
    v58 = v52;
    _os_log_impl(&dword_2493AC000, v53, v54, "2.1 Will reset to lastUsedOpenSaveLocation (browser: %@, location: %@)", v55, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v56, -1, -1);
    MEMORY[0x24C1FE850](v55, -1, -1);
  }

  if ([v3 isPickerUI])
  {
    v59 = DOCHierarchyController.getLastUsedOpenSaveLocation()();
  }

  else
  {
    v59 = 0;
  }

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v52, v59, v102, 0, 1, 0, 0);
}

uint64_t DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(void *a1, void *a2, int a3, int a4, int a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v116 = a7;
  v115 = a6;
  v112 = a5;
  LODWORD(v110) = a4;
  v113 = a3;
  v111 = a2;
  v114 = a1;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v9);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchQoS();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v11);
  v104 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13, v15);
  v100 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v103 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v99 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v102 = &v99 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v99 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v99 - v33;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  if (v7[v35] == 1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v35;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2493AC000, v37, v38, "Attempt to reset locations, while a reset is already in progress", v40, 2u);
      v41 = v40;
      v35 = v39;
      MEMORY[0x24C1FE850](v41, -1, -1);
    }
  }

  v101 = v35;
  v8[v35] = 1;
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&v8[v42], v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v43 = v14;
  v44 = *(v14 + 48);
  if (v44(v30, 1, v13) == 1)
  {
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v46 = &v8[v45];
    v43 = v14;
    outlined init with copy of DOCGridLayout.Spec?(v46, v34, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v44(v30, 1, v13) != 1)
    {
      outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v30, v34, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v14 + 56))(v34, 0, 1, v13);
  }

  if (v44(v34, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  }

  else
  {
    v47 = v34[v13[6]];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v34, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v47)
    {
LABEL_15:
      v49 = swift_allocObject();
      v50 = v114;
      *(v49 + 16) = v8;
      *(v49 + 24) = v50;
      v51 = v115;
      v52 = v116;
      *(v49 + 32) = v115;
      *(v49 + 40) = v52;
      *(v49 + 48) = v113 & 1;
      *(v49 + 49) = v110 & 1;
      *(v49 + 50) = v112 & 1;
      v53 = v111;
      *(v49 + 56) = v111;
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_37;
      v54 = _Block_copy(aBlock);
      v55 = v53;
      v56 = v50;
      v57 = v8;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v51);
      v58 = v104;
      static DispatchQoS.unspecified.getter();
      v118 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v59 = v106;
      v60 = v109;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v58, v59, v54);
      _Block_release(v54);
      (*(v108 + 8))(v59, v60);
      (*(v105 + 8))(v58, v107);
    }
  }

  v48 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  if (v8[v48])
  {
    goto LABEL_15;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v8[v42], v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v44(v23, 1, v13) == 1)
  {
    v61 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v62 = v102;
    outlined init with copy of DOCGridLayout.Spec?(&v8[v61], v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v63 = v44(v23, 1, v13);
    v64 = v103;
    if (v63 != 1)
    {
      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    v62 = v102;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v23, v102, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v43 + 56))(v62, 0, 1, v13);
    v64 = v103;
  }

  if (v44(v62, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v62, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v65 = 1;
  }

  else
  {
    v66 = *(v62 + v13[6]);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v62, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v65 = v66 ^ 1;
  }

  v67 = v114;
  v68 = v8;
  specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v65 & 1, 1, 1, v67, v68);

  v70 = *(v43 + 56);
  v69 = v43 + 56;
  v114 = v70;
  (v70)(v64, 1, 1, v13);
  DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v118 = 0x203A7465736572;
  v119 = 0xE700000000000000;
  v71 = [v67 shortDescription];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  MEMORY[0x24C1FAEA0](v72, v74);

  v75 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v118, v119);

  if ([*&v68[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] allowsDisplaying_])
  {
    v76 = swift_allocObject();
    v77 = v111;
    *(v76 + 16) = v111;
    *(v76 + 24) = v68;
    LODWORD(v109) = v110 & 1;
    *(v76 + 32) = v110 & 1;
    v78 = v115;
    *(v76 + 40) = v75;
    *(v76 + 48) = v78;
    *(v76 + 56) = v116;
    v110 = swift_allocBox();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v81 = swift_allocObject();
    v108 = v69;
    v82 = v81;
    *(v81 + 16) = xmmword_249BA0290;
    *(v81 + 32) = v67;
    v83 = v77;
    v111 = v75;

    v84 = v67;
    v85 = v68;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v78);
    UUID.init()();
    *(v80 + v13[5]) = 0;
    *(v80 + v13[6]) = 1;
    *(v80 + v13[7]) = v82;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v80, v64, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (v114)(v64, 0, 1, v13);
    DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v86 = v113;
    if (v112)
    {
      v87 = v100;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v80, v100, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(v87, v84, v86 & 1);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v87, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    }

    v88 = swift_allocObject();
    v89 = v110;
    *(v88 + 16) = v85;
    *(v88 + 24) = v89;
    *(v88 + 32) = partial apply for closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
    *(v88 + 40) = v76;
    *(v88 + 48) = v86 & 1;
    *(v88 + 49) = v109;
    v90 = v85;

    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v84, 1, v90, partial apply for closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:), v88);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.UI);
    v92 = v67;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412290;
      *(v95 + 4) = v92;
      *v96 = v92;
      v97 = v92;
      _os_log_impl(&dword_2493AC000, v93, v94, "Tried to reset with location %@, which is not allowed by the configuration", v95, 0xCu);
      outlined destroy of CharacterSet?(v96, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v96, -1, -1);
      MEMORY[0x24C1FE850](v95, -1, -1);
    }

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v75, 0);
    v8[v101] = 0;
    if (v115)
    {
      v115();
    }
  }
}

id DOCHierarchyController.lastUsedOpenSaveLocation.getter()
{
  if (![*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) isPickerUI])
  {
    return 0;
  }

  return DOCHierarchyController.getLastUsedOpenSaveLocation()();
}

void specialized closure #1 in DOCHierarchyController.resetWithDefaultLocation(animated:)(void *a1, id a2, void *a3, void *a4, char a5)
{
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = [objc_opt_self() defaultLocation];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249BA0290;
  *(v11 + 32) = v10;
  v12 = v10;
  v13 = a1;
  v14 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v11, 0);
  v35 = v15;

  if (v14)
  {

    v16 = v35;
    if (!v35)
    {
      v16 = v14;
    }

    if ([v16 effectiveTabSwitcherTab] == a2 && objc_msgSend(v14, sel_canBeRestored) && (objc_msgSend(a3, sel_allowsDisplaying_, v14) & 1) != 0)
    {
      v17 = one-time initialization token for UI;
      v18 = v14;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);
      v20 = a4;
      v21 = v18;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412546;
        *(v24 + 4) = v20;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *v25 = v20;
        v25[1] = v14;
        v26 = v20;
        v27 = v21;
        _os_log_impl(&dword_2493AC000, v22, v23, "2.2.2 Will use getSaveLocation's suggested location (browser: %@, location: %@)", v24, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v25, -1, -1);
        MEMORY[0x24C1FE850](v24, -1, -1);
      }

      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v21, 0, a5 & 1, 0, 1, 0, 0);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.UI);
      v29 = a4;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_2493AC000, v30, v31, "2.2.1 Location from getSaveLocation isn't appropriate, falling back to standard restore (browse: %@)", v32, 0xCu);
        outlined destroy of CharacterSet?(v33, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v33, -1, -1);
        MEMORY[0x24C1FE850](v32, -1, -1);
      }

      DOCHierarchyController.resetToDefaultBrowsedStateForEffectiveTab(animated:)(a5 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void DOCHierarchyController.resetToDefaultBrowsedStateForEffectiveTab(animated:)(char a1)
{
  v3 = DOCHierarchyController.browseStateForResetToDefaultLocation.getter();
  if (v3)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] setRestoreLastVisitedLocation_];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    v10 = v8;
    v11 = v1;
    v32 = v6;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v29 = v11;
      *(v14 + 12) = 2080;
      v15 = v11;
      v16 = v32;

      v31 = v10;
      v17 = v10;
      v18 = DOCHierarchyController.BrowsedState.debugDescription.getter(v16, v7, v8);
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v33);

      *(v14 + 14) = v21;
      v10 = v31;
      _os_log_impl(&dword_2493AC000, v12, v13, "3. Using last visited information to perform restoration (browser:%@, restoreState: %s)", v14, 0x16u);
      outlined destroy of CharacterSet?(v29, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    DOCHierarchyController.BrowsedState.restore(to:animated:)(v11, 0, v32, v7, v8);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_2493AC000, v24, v25, "4. Will use emptyLocation as initially selected location since no other cases are valid (browser:%@)", v26, 0xCu);
      outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    v32 = [objc_opt_self() emptyLocation];
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v32, 0, a1 & 1, 1, 1, 0, 0);
  }
}

void DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)(void (*a1)(id), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_12:
    v17 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
    v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver);
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
    swift_beginAccess();
    v20 = *(v3 + v19);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    v22 = v20;

    static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v17, v18, v20, closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply, v21);

    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_3:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v10 = MEMORY[0x24C1FC540](v9, v7);

LABEL_8:
    v11 = [v10 fileProviderItem];
    if (v11)
    {
      v12 = v11;
      v13 = *MEMORY[0x277CC6028];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v12;
      v15 = v12;
      LOBYTE(v13) = specialized static DOCActionManager.canPerform(_:on:)(v13, inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      if (v13)
      {
        v16 = v10;
        a1(v10);

        return;
      }
    }

    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

DOCConcreteLocation *DOCHierarchyController.browseStateForResetToDefaultLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v2 = [v1 defaultEffectiveTabIdentifierForLocationRestore];
  v3 = DOCTabIdentifier.tab.getter();
  v5 = v4;

  if (v5)
  {
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v3 = *(v0 + v6);
  }

  v7 = DOCHierarchyController._defaultBrowsedState(forTab:checkPersistentStorage:checkLiveCachedStorage:)(v3, [v1 restoreLastVisitedLocation], 1);
  v9 = v8;
  if (![v1 allowsDisplaying_] || (v10 = objc_msgSend(objc_opt_self(), sel_sharedManager), v11 = DOCAppProtectionManager.hostAppCanNavigate(to:)(v7), v10, !v11))
  {

    return 0;
  }

  return v7;
}

void DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = DOCHierarchyController.loadingDisabledAssertions.getter();
  v11 = (*(*v10 + 152))(v10);

  if (v11)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    *(v13 + 32) = a2 & 1;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    v14 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    v15 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    *v14 = partial apply for closure #1 in DOCHierarchyController.resetFromRoot(with:animated:completionHandler:);
    v14[1] = v13;

    v16 = a1;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v15);

    return;
  }

  v17 = [a1 fileProviderItem];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 providerDomainID];

    v21 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v19 node:0];
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, v21, a2 & 1, 1, 0, a3, a4);

    v20 = v21;
LABEL_8:

    return;
  }

  v20 = [a1 fileProviderItem];
  if (v20)
  {
    goto LABEL_8;
  }

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, a1, a2 & 1, 1, 0, a3, a4);
}

void closure #1 in DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(a2, a3 & 1, a4, a5);
  }
}

uint64_t closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(char a1, void *a2, char *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v16 = *&a3[v15];
    if (v16 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
LABEL_6:
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_31;
        }

        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v16 + 32);
          goto LABEL_11;
        }

        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_6;
      }
    }

    v18 = 0;
    goto LABEL_11;
  }

  aBlock[0] = a3;
  swift_getKeyPath();
  v11 = a2;
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v13 = *&a3[v12];
  *&a3[v12] = a2;
  v14 = v11;

  aBlock[0] = a3;
  swift_getKeyPath();
  while (1)
  {
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();

LABEL_13:
    v21 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v16 = *&a3[v21];
    if (v16 >> 62)
    {
      v22 = __CocoaSet.count.getter();
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    v23 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
      break;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_27;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v16 + 8 * v23 + 32);
      if (a4)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_31:

    v18 = MEMORY[0x24C1FC540](0, v16);

LABEL_11:
    aBlock[0] = a3;
    swift_getKeyPath();
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
    swift_beginAccess();
    v20 = *&a3[v19];
    *&a3[v19] = v18;
    v14 = v18;

    aBlock[0] = a3;
    swift_getKeyPath();
  }

  __break(1u);
LABEL_27:

  v24 = MEMORY[0x24C1FC540](v23, v16);

  if (a4)
  {
    goto LABEL_22;
  }

LABEL_20:
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v26 = *&a3[v25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249BA0290;
  *(v27 + 32) = v24;
  v28 = v26;
  v29 = v24;
  v30 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v27, v26);
  v32 = v31;
  v24 = v33;

  if (!v30)
  {
    goto LABEL_33;
  }

  DOCHierarchyController.sendDelegateDidUpdateLastDisplayedLocationPath(browsedState:)(v30, v32, v24);

LABEL_22:
LABEL_23:
  v34 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v35 = swift_allocObject();
  v35[2] = a3;
  v35[3] = a5;
  v35[4] = a6;
  v35[5] = a7;
  aBlock[4] = partial apply for closure #1 in closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  aBlock[3] = &block_descriptor_869;
  v36 = _Block_copy(aBlock);
  v37 = a3;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a6);

  [v34 animateAlongsideTransition:0 completion:v36];
  _Block_release(v36);
  return swift_unknownObjectRelease();
}

void DOCHierarchyController.sendDelegateDidUpdateLastDisplayedLocationPath(browsedState:)(id a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v8 = [a3 effectiveTabSwitcherTab];
  }

  else
  {
    v8 = [a1 effectiveTabSwitcherTab];
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab;
  swift_beginAccess();
  v11 = a1;

  v12 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v4 + v10);
  *(v4 + v10) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3, v9, isUniquelyReferenced_nonNull_native);
  *(v4 + v10) = v26;
  swift_endAccess();
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (v15 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_20:

    v18 = MEMORY[0x24C1FC540](v17, v15);

    goto LABEL_11;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v18 = *(v15 + 8 * v17 + 32);
LABEL_11:
  v19 = [v18 sourceIdentifier];

  v20 = [*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver) sourceForIdentifier_];
  if (v20)
  {
    v21 = v20;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = DOCHierarchyController.effectiveRootLocation.getter();
      [v23 hierarchyController:v4 didUpdateLastDisplayedLocationPath:isa anchorLocation:v25 source:v21];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a3, 0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  result = swift_beginAccess();
  *(a2 + v6) = 0;
  if (a4)
  {
    return a4(result);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, int a5, int a6, int a7, void *a8)
{
  v75 = a8;
  v76 = a7;
  v77 = a5;
  LODWORD(v74) = a6;
  v78 = a4;
  v79 = a3;
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10, v12);
  v73 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v71 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = v71 - v24;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(a1 + v26, v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v27 = *(v11 + 48);
  if (v27(v21, 1, v10) == 1)
  {
    v28 = v11;
    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v30 = a1 + v29;
    v11 = v28;
    outlined init with copy of DOCGridLayout.Spec?(v30, v25, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v27(v21, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v21, v25, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v25, 0, 1, v10);
  }

  if (v27(v25, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v25, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v31 = 1;
  }

  else
  {
    v32 = v25[v10[6]];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v25, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v31 = v32 ^ 1;
  }

  v33 = v17;
  v34 = a2;
  v35 = a1;
  specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v31 & 1, 1, 1, v34, v35);

  v38 = *(v11 + 56);
  v36 = v11 + 56;
  v37 = v38;
  v38(v33, 1, 1, v10);
  DOCHierarchyController.loadingDisabledOperation.setter(v33, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v80 = 0x203A7465736572;
  v81 = 0xE700000000000000;
  v39 = [v34 shortDescription];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  MEMORY[0x24C1FAEA0](v40, v42);

  v43 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v80, v81);

  if ([*&v35[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] allowsDisplaying_])
  {
    v44 = swift_allocObject();
    v45 = v75;
    *(v44 + 16) = v75;
    *(v44 + 24) = v35;
    v72 = v74 & 1;
    *(v44 + 32) = v74 & 1;
    v47 = v78;
    v46 = v79;
    *(v44 + 40) = v43;
    *(v44 + 48) = v46;
    *(v44 + 56) = v47;
    v74 = swift_allocBox();
    v71[1] = v36;
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v50 = swift_allocObject();
    v71[0] = v37;
    v51 = v33;
    v52 = v50;
    *(v50 + 16) = xmmword_249BA0290;
    *(v50 + 32) = v34;
    v53 = v45;
    v75 = v43;

    v54 = v34;
    v55 = v35;
    v56 = v77;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v79);
    UUID.init()();
    *(v49 + v10[5]) = 0;
    *(v49 + v10[6]) = 1;
    *(v49 + v10[7]) = v52;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v49, v51, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (v71[0])(v51, 0, 1, v10);
    DOCHierarchyController.loadingDisabledOperation.setter(v51, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    if (v76)
    {
      v57 = v73;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v49, v73, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(v57, v54, v56 & 1);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v57, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    }

    v58 = swift_allocObject();
    v59 = v74;
    *(v58 + 16) = v55;
    *(v58 + 24) = v59;
    *(v58 + 32) = closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)partial apply;
    *(v58 + 40) = v44;
    *(v58 + 48) = v56 & 1;
    *(v58 + 49) = v72;
    v60 = v55;

    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v54, 1, v60, closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:)partial apply, v58);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.UI);
    v62 = v34;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v62;
      *v66 = v62;
      v67 = v62;
      _os_log_impl(&dword_2493AC000, v63, v64, "Tried to reset with location %@, which is not allowed by the configuration", v65, 0xCu);
      outlined destroy of CharacterSet?(v66, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v66, -1, -1);
      MEMORY[0x24C1FE850](v65, -1, -1);
    }

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v43, 0);
    v68 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
    v69 = swift_beginAccess();
    v35[v68] = 0;
    if (v79)
    {
      v79(v69);
    }
  }
}

void DOCHierarchyController.revealLocation(_:animated:completion:)(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v66[-v13];
  v15 = [a1 fileProviderItem];
  v71 = v14;
  if (v15)
  {
    v16 = v15;
    v74 = [v15 parentItemID];
  }

  else
  {
    v74 = 0;
  }

  v17 = DOCHierarchyController.effectiveLocations.getter();
  v18 = v17;
  v72 = a1;
  v73 = v4;
  v70 = v9;
  if (v17 >> 62)
  {
    goto LABEL_23;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v74; v19; i = v74)
  {
    v21 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 fileProviderItem];
      if (v25 && (v26 = v25, v27 = [v25 itemID], v26, v27))
      {
        if (i)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
          v28 = i;
          v29 = static NSObject.== infix(_:_:)();

          i = v74;
          if (v29)
          {
LABEL_20:

            v31 = v72;
            v30 = v73;
            v33 = v70;
            v32 = v71;
            goto LABEL_39;
          }
        }

        else
        {
        }
      }

      else if (!i)
      {
        goto LABEL_20;
      }

      ++v21;
      if (v24 == v19)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v19 = __CocoaSet.count.getter();
  }

LABEL_24:

  v30 = v73;
  v34 = DOCHierarchyController.effectiveLocations.getter();
  if (v34 >> 62)
  {
    v65 = v34;
    v35 = __CocoaSet.count.getter();
    v34 = v65;
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v71;
  v31 = v72;
  v33 = v70;
  if (!v35)
  {

LABEL_38:
    v23 = 0;
LABEL_39:
    v46 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    if (*(v30 + v46) >> 62 && __CocoaSet.count.getter() < 0 || !v23)
    {
      goto LABEL_62;
    }

    v47 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v30 + v47, v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v48 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);
    if (v50(v33, 1, v48) == 1)
    {
      v51 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      outlined init with copy of DOCGridLayout.Spec?(v30 + v51, v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      LODWORD(v51) = v50(v33, 1, v48);
      v52 = v23;
      if (v51 != 1)
      {
        outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      }
    }

    else
    {
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v33, v32, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      (*(v49 + 56))(v32, 0, 1, v48);
      v53 = v23;
    }

    if (v50(v32, 1, v48) == 1)
    {

      outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }

    else
    {
      v54 = *(v32 + *(v48 + 24));
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v32, type metadata accessor for DOCHierarchyController.FetchingOperationToken);

      if (v54)
      {
        goto LABEL_62;
      }
    }

    v55 = [v23 fileProviderItem];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 itemID];
    }

    else
    {
      v57 = 0;
    }

    v58 = [v31 fileProviderItem];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 itemID];

      if (v57)
      {
        if (v60)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
          v61 = static NSObject.== infix(_:_:)();

          if (v61)
          {
            goto LABEL_62;
          }

LABEL_60:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_249BA0290;
          *(v62 + 32) = v31;
          v63 = v23;
          v64 = v31;
          DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(v62, v23, 0, 1, 1, 0, v68, v69);

LABEL_63:
          return;
        }

        goto LABEL_57;
      }

      if (v60)
      {
        goto LABEL_59;
      }
    }

    else if (v57)
    {
LABEL_57:
      v60 = v57;
LABEL_59:

      goto LABEL_60;
    }

LABEL_62:
    DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(v31, v67 & 1, v68, v69);
    goto LABEL_63;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x24C1FC540](0);
    goto LABEL_30;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_30:
    v23 = v36;

    v37 = [v23 sourceIdentifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    v43 = [v31 fileProviderItem];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 isTopLevelSharedItem];

      if (v45)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  __break(1u);
}

uint64_t DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(unint64_t a1, void *a2, int a3, int a4, uint64_t a5, int a6, void (*a7)(void), uint64_t a8)
{
  v210 = a8;
  v211 = a7;
  v205 = a6;
  v204 = a4;
  LODWORD(v206) = a3;
  v214 = a2;
  v216 = a1;
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v189 = &v183[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v201, v14);
  v191 = &v183[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v196 = &v183[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v188 = &v183[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v23);
  v197 = &v183[-v24];
  MEMORY[0x28223BE20](v25, v26);
  v192 = &v183[-v27];
  MEMORY[0x28223BE20](v28, v29);
  v190 = &v183[-v30];
  MEMORY[0x28223BE20](v31, v32);
  v198 = &v183[-v33];
  MEMORY[0x28223BE20](v34, v35);
  v195 = &v183[-v36];
  MEMORY[0x28223BE20](v37, v38);
  v199 = &v183[-v39];
  MEMORY[0x28223BE20](v40, v41);
  v207 = &v183[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v183[-v45];
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v183[-v49];
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v209 = (v51 + 16);
  v52 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v52 = a5;
  v200 = v52;
  v52[8] = 0;
  v53 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v194 = v53;
  outlined init with copy of DOCGridLayout.Spec?(&v8[v53], v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v54 = v11 + 48;
  v55 = *(v11 + 48);
  v56 = v55(v46, 1, v10);
  v212 = v11;
  if (v56 == 1)
  {
    v57 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&v8[v57], v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v55(v46, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v46, v50, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v50, 0, 1, v10);
  }

  v58 = v55(v50, 1, v10);
  v215 = v8;
  v213 = v51;
  if (v58 == 1)
  {
    outlined destroy of CharacterSet?(v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v59 = v214;
    goto LABEL_13;
  }

  v60 = v50[*(v10 + 24)];
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v50, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v59 = v214;
  if ((v60 & 1) == 0)
  {
LABEL_13:
    v202 = v55;
    v208 = v10;
    v219 = 0;
    v220 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v219 = 0xD00000000000001DLL;
    v220 = 0x8000000249BCC750;
    v66 = v216;
    if (v216 >> 62)
    {
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = MEMORY[0x277D84F90];
    v203 = v54;
    if (v67)
    {
      v218 = MEMORY[0x277D84F90];
      v69 = &v218;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        goto LABEL_76;
      }

      v70 = 0;
      v68 = v218;
      v71 = v66;
      do
      {
        if ((v66 & 0xC000000000000001) != 0)
        {
          v72 = MEMORY[0x24C1FC540](v70, v71);
        }

        else
        {
          v72 = *(v71 + 8 * v70 + 32);
        }

        v73 = v72;
        v74 = [v72 shortDescription];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v218 = v68;
        v79 = *(v68 + 16);
        v78 = *(v68 + 24);
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v68 = v218;
        }

        ++v70;
        *(v68 + 16) = v79 + 1;
        v80 = v68 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v71 = v216;
      }

      while (v67 != v70);
      v66 = v216;
      v59 = v214;
    }

    v81 = MEMORY[0x24C1FB0D0](v68, MEMORY[0x277D837D0]);
    v83 = v82;

    MEMORY[0x24C1FAEA0](v81, v83);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v69 = v215;
    v84 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v219, v220);

    *v209 = v84;

    v85 = v208;
    v55 = swift_allocBox();
    v87 = v86;

    UUID.init()();
    v88 = v85[5];
    v89 = v85[6];
    *(v87 + v85[7]) = v66;
    *(v87 + v88) = 1;
    *(v87 + v89) = (v206 & 1) == 0;
    v90 = v207;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v87, v207, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v91 = *(v212 + 56);
    v212 += 56;
    v91(v90, 0, 1, v85);
    DOCHierarchyController.loadingDisabledOperation.setter(v90, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v54 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v92 = *(v69 + v54);
    if (v92 >> 62)
    {
      v93 = __CocoaSet.count.getter();
    }

    else
    {
      v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v193 = v91;
    v186 = v54;
    v187 = v87;
    if (v93 < 2)
    {
      v94 = 0;
      goto LABEL_39;
    }

    v95 = *(v69 + v54);
    if (!(v95 >> 62))
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v96 - 2;
      if (!__OFSUB__(v96, 2))
      {
        goto LABEL_31;
      }

      goto LABEL_78;
    }

LABEL_76:
    v182 = __CocoaSet.count.getter();
    v97 = v182 - 2;
    if (!__OFSUB__(v182, 2))
    {
LABEL_31:
      swift_beginAccess();
      v98 = *(v69 + v54);
      if ((v98 & 0xC000000000000001) == 0)
      {
        if ((v97 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v97 < *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v99 = *(v98 + 8 * v97 + 32);
LABEL_35:
          v100 = v99;
          swift_endAccess();
          if (v59)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
            v101 = v59;
            v94 = static NSObject.== infix(_:_:)();

            v100 = v101;
          }

          else
          {
            v94 = 0;
          }

LABEL_39:
          v102 = swift_allocObject();
          *(v102 + 16) = v215;
          *(v102 + 24) = v55;
          v103 = v211;
          *(v102 + 32) = v213;
          *(v102 + 40) = v103;
          *(v102 + 48) = v210;
          v104 = v204 & 1;
          *(v102 + 56) = v104;
          v105 = v94 & 1;
          *(v102 + 57) = v94 & 1;
          v206 = v55;
          v106 = v205 & 1;
          *(v102 + 58) = v106;
          v107 = v214;
          *(v102 + 64) = v214;
          v217 = v216;
          v108 = swift_allocObject();
          v109 = v108;
          *(v108 + 16) = MEMORY[0x277D84F90];
          if (v67)
          {
            v110 = v107;

            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v103);

            v111 = v215;
            v112 = v109;
            specialized RangeReplaceableCollection.removeFirst()();
            v114 = v113;
            v115 = v217;
            v116 = swift_allocObject();
            *(v116 + 16) = v112;
            *(v116 + 24) = v111;
            *(v116 + 32) = v115;
            *(v116 + 40) = 1;
            *(v116 + 48) = partial apply for closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
            *(v116 + 56) = v102;
            v117 = v111;

            specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v114, 1, v117, partial apply for specialized closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:), v116);

LABEL_71:
          }

          v184 = v106;
          v204 = v105;
          v205 = v104;
          v216 = v108;
          v118 = v215;
          v119 = v195;
          outlined init with copy of DOCGridLayout.Spec?(v215 + v194, v195, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          v120 = v208;
          v121 = v202;
          v122 = v202(v119, 1, v208);
          v185 = v102;
          if (v122 == 1)
          {
            v123 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
            swift_beginAccess();
            v124 = v199;
            outlined init with copy of DOCGridLayout.Spec?(v118 + v123, v199, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            LODWORD(v123) = v121(v119, 1, v120);
            v125 = v214;
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v211);

            v126 = v118;
            v127 = v196;
            v128 = v198;
            v129 = v193;
            v130 = v187;
            if (v123 != 1)
            {
              outlined destroy of CharacterSet?(v119, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            }
          }

          else
          {
            v124 = v199;
            outlined init with take of DOCHierarchyController.FetchingOperationToken(v119, v199, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v129 = v193;
            v193(v124, 0, 1, v120);
            v131 = v214;
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v211);

            v132 = v118;
            v127 = v196;
            v128 = v198;
            v130 = v187;
          }

          swift_beginAccess();
          outlined init with copy of DOCHierarchyController.FetchingOperationToken(v130, v128, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v129(v128, 0, 1, v120);
          v133 = *(v201 + 48);
          outlined init with copy of DOCGridLayout.Spec?(v124, v127, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          outlined init with copy of DOCGridLayout.Spec?(v128, v127 + v133, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          v134 = v124;
          v135 = v202;
          v136 = v202(v127, 1, v120);
          v137 = v197;
          if (v136 == 1)
          {
            outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            outlined destroy of CharacterSet?(v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            if (v135(v127 + v133, 1, v120) == 1)
            {
              outlined destroy of CharacterSet?(v127, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_58:
              *(v130 + v120[6]) = 0;
              v153 = v215;

              v155 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v154);

              v156 = swift_allocObject();
              v157 = MEMORY[0x277D84F90];
              *(v156 + 16) = MEMORY[0x277D84F90];
              *(v156 + 24) = v153;
              v158 = v213;
              *(v156 + 32) = v206;
              *(v156 + 40) = v158;
              v159 = v211;
              v160 = v210;
              *(v156 + 48) = v211;
              *(v156 + 56) = v160;
              *(v156 + 64) = v204;
              *(v156 + 65) = v184;
              v161 = v214;
              *(v156 + 72) = v214;
              type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
              v162 = swift_allocObject();
              *(v162 + 40) = DOCGridLayout.specIconWidth.modify;
              *(v162 + 48) = 0;
              *(v162 + 56) = v157;
              *(v162 + 64) = 0;
              *(v162 + 16) = v153;
              *(v162 + 24) = v157;
              *(v162 + 32) = v205;
              *(v162 + 33) = v155;
              v163 = swift_allocObject();
              swift_weakInit();
              v164 = swift_allocObject();
              v164[2] = v163;
              v164[3] = partial apply for closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
              v164[4] = v156;
              v212 = *(v162 + 64);
              *(v162 + 64) = v162;
              v165 = v161;
              v166 = v153;
              outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v159);

              v167 = v166;

              swift_unknownObjectRelease();
              v168 = swift_allocObject();
              swift_weakInit();
              v169 = swift_allocObject();
              v169[2] = partial apply for closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:);
              v169[3] = v164;
              v169[4] = v168;
              *(v162 + 40) = partial apply for closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:);
              *(v162 + 48) = v169;

              tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

              goto LABEL_71;
            }
          }

          else
          {
            v138 = v190;
            outlined init with copy of DOCGridLayout.Spec?(v127, v190, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            if (v135(v127 + v133, 1, v120) != 1)
            {
              v149 = v127 + v133;
              v150 = v189;
              outlined init with take of DOCHierarchyController.FetchingOperationToken(v149, v189, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v151 = v138;
              v152 = static UUID.== infix(_:_:)();
              outlined destroy of DOCHierarchyController.FetchingOperationToken(v150, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              outlined destroy of CharacterSet?(v198, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined destroy of CharacterSet?(v199, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined destroy of DOCHierarchyController.FetchingOperationToken(v151, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v137 = v197;
              v120 = v208;
              outlined destroy of CharacterSet?(v127, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              if (v152)
              {
                goto LABEL_58;
              }

LABEL_51:
              v139 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
              v140 = v215;
              swift_beginAccess();
              v141 = v140 + v139;
              v142 = v192;
              outlined init with copy of DOCGridLayout.Spec?(v141, v192, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined init with copy of DOCHierarchyController.FetchingOperationToken(v130, v137, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v143 = v120;
              v193(v137, 0, 1, v120);
              v144 = *(v201 + 48);
              v145 = v191;
              outlined init with copy of DOCGridLayout.Spec?(v142, v191, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined init with copy of DOCGridLayout.Spec?(v137, &v145[v144], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              v146 = v202;
              if (v202(v145, 1, v143) == 1)
              {
                outlined destroy of CharacterSet?(v137, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                outlined destroy of CharacterSet?(v142, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                v147 = v143;
                if (v146(&v145[v144], 1, v143) == 1)
                {
                  outlined destroy of CharacterSet?(v145, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_65:
                  v176 = v207;
                  v193(v207, 1, 1, v147);
                  DOCHierarchyController.loadingDisabledOperation.setter(v176, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
                  goto LABEL_66;
                }
              }

              else
              {
                v148 = v188;
                outlined init with copy of DOCGridLayout.Spec?(v145, v188, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                v147 = v143;
                if (v146(&v145[v144], 1, v143) != 1)
                {
                  v174 = v189;
                  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v145[v144], v189, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                  v175 = static UUID.== infix(_:_:)();
                  outlined destroy of DOCHierarchyController.FetchingOperationToken(v174, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                  outlined destroy of CharacterSet?(v137, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                  outlined destroy of CharacterSet?(v192, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                  outlined destroy of DOCHierarchyController.FetchingOperationToken(v148, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                  outlined destroy of CharacterSet?(v145, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                  if (v175)
                  {
                    goto LABEL_65;
                  }

LABEL_66:
                  v177 = v200;
                  *v200 = 0;
                  v177[8] = 1;
                  v178 = v209;
                  v179 = swift_beginAccess();
                  if (*v178)
                  {

                    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v180, 0);
                  }

                  if (v211)
                  {
                    v211(v179);
                  }

                  goto LABEL_71;
                }

                outlined destroy of CharacterSet?(v137, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                outlined destroy of CharacterSet?(v192, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                outlined destroy of DOCHierarchyController.FetchingOperationToken(v148, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              }

              outlined destroy of CharacterSet?(v145, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
              goto LABEL_66;
            }

            outlined destroy of CharacterSet?(v198, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            outlined destroy of CharacterSet?(v199, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v138, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          }

          outlined destroy of CharacterSet?(v127, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_82;
      }

LABEL_79:
      v99 = MEMORY[0x24C1FC540](v97);
      goto LABEL_35;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!DOCIsInternalBuild())
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_10:
      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.UI);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v219 = v65;
        *v64 = 136315138;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000249BCC770, &v219);
        _os_log_impl(&dword_2493AC000, v62, v63, "assertion failure: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x24C1FE850](v65, -1, -1);
        MEMORY[0x24C1FE850](v64, -1, -1);
      }

      goto LABEL_60;
    }

LABEL_82:
    swift_once();
    goto LABEL_10;
  }

LABEL_60:
  v170 = v200;
  *v200 = 0;
  v170[8] = 1;
  v171 = v209;
  v172 = swift_beginAccess();
  if (*v171)
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v173, 0);
  }

  if (v211)
  {
    v211(v172);
  }
}

Swift::Void __swiftcall DOCHierarchyController.reset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v9 - v4;
  v6 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  DOCHierarchyController.loadingDisabledOperation.setter(v5, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v9[1] = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *(v1 + v7) = 0;

  v9[0] = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(MEMORY[0x277D84F90], 0, DOCGridLayout.specIconWidth.modify, 0);
}

uint64_t DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(unint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_39:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  v41 = a3;
  if (!v10)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  aBlock[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v40 = v9;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = *(MEMORY[0x24C1FC540]() + 16);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v14;
      }

      while (v10 != v14);
    }

    else
    {
      v17 = (a1 + 32);
      v18 = v10;
      do
      {
        v19 = *v17++;
        v20 = *(v19 + 16);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v18;
      }

      while (v18);
    }

    v16 = aBlock[0];
    aBlock[0] = v11;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v9 = v40;
      do
      {
        v22 = v21 + 1;
        v23 = *(MEMORY[0x24C1FC540]() + 24);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v21 = v22;
      }

      while (v10 != v22);
    }

    else
    {
      v24 = (a1 + 32);
      v9 = v40;
      do
      {
        v25 = *v24++;
        v26 = *(v25 + 24);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v10;
      }

      while (v10);
    }

LABEL_18:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v28 hierarchyController:v5 willSet:isa animated:a2 & 1];

      swift_unknownObjectRelease();
    }

    DOCHierarchyController.locations.setter(v16);
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v31 hierarchyController:v5 didSet:v32 animated:a2 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (![objc_opt_self() protectedAppsEnabled])
    {
      goto LABEL_37;
    }

    if (v9)
    {
      v33 = __CocoaSet.count.getter();
      if (!v33)
      {
LABEL_37:
        v37 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        *(v38 + 24) = a4;
        aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        aBlock[3] = &block_descriptor_458;
        v39 = _Block_copy(aBlock);

        [v37 animateAlongsideTransition:0 completion:v39];
        _Block_release(v39);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_37;
      }
    }

    v34 = 0;
    v9 = 0;
    a3 = a1 & 0xC000000000000001;
    while (1)
    {
      if (a3)
      {
        v35 = MEMORY[0x24C1FC540](v34, a1);
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      else
      {
        if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v35 = *(a1 + 8 * v34 + 32);

        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_36;
        }
      }

      aBlock[0] = v35;
      specialized closure #3 in DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(aBlock);

      ++v34;
      if (v36 == v33)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
  return result;
}

id DOCHierarchyController.appendOneLocation(_:viewController:animated:)(id a1, void *a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong hierarchyController:v3 willAppend:a2 animated:a3 & 1];
    swift_unknownObjectRelease();
  }

  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else if ((v10 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v10 + 8 * v12 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_31;
  }

  v13 = MEMORY[0x24C1FC540](v12, v10);

LABEL_10:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    v32 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249B9FA70;
    *(v14 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    *(v14 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation);
    *(v14 + 32) = a1;
    v15 = *(v4 + v9);
    *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19DOCConcreteLocationCGMd);
    *(v14 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCConcreteLocation] and conformance [A], &_sSaySo19DOCConcreteLocationCGMd);
    *(v14 + 72) = v15;
    v16 = a1;

    os_log(_:dso:log:type:_:)();

    a3 = v32;
  }

  else
  {
  }

LABEL_15:
  v33 = *(v4 + v9);
  a1 = a1;

  MEMORY[0x24C1FB090](v17);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  DOCHierarchyController.locations.setter(v33);
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    [v18 hierarchyController:v4 didAppend:a2 animated:a3 & 1];
    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() protectedAppsEnabled];
  if (result)
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_21:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.UI);
      v21 = a1;
      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v27;
        *v25 = 136315650;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BCD710, &v33);
        *(v25 + 12) = 2080;
        [v21 node];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
        v28 = String.init<A>(describing:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v33);

        *(v25 + 14) = v30;
        *(v25 + 22) = 2112;
        *(v25 + 24) = v22;
        *v26 = v22;
        v31 = v22;
        _os_log_impl(&dword_2493AC000, v23, v24, "[PROTECTED APPS] %s start authentication for node: %s viewController: %@", v25, 0x20u);
        outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v26, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);
      }

      specialized DOCHierarchyController.authenticateViewController(node:viewController:)([v21 node], v22);
      return swift_unknownObjectRelease();
    }

LABEL_31:
    swift_once();
    goto LABEL_21;
  }

  return result;
}

uint64_t closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t (*a7)(void))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  DOCHierarchyController.loadingDisabledOperation.setter(v16, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v31 = *(a1 + v18);

  specialized RangeReplaceableCollection<>.removeLast(_:)(a2, v19, v20);
  DOCHierarchyController.locations.setter(v31);
  v31 = *(a1 + v18);

  specialized Array.append<A>(contentsOf:)(a3);
  DOCHierarchyController.locations.setter(v31);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v22 hierarchyController:a1 didReplaceTrailingLocations:a2 with:isa animated:a5 & 1];

    swift_unknownObjectRelease();
  }

  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (a6 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v25 = 0;
      while ((a6 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C1FC540](v25, a6);
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        v30 = v26;
        specialized closure #1 in closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(&v30);

        ++v25;
        if (v27 == i)
        {
          return a7();
        }
      }

      if (v25 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v26 = *(a6 + 8 * v25 + 32);

      v27 = v25 + 1;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }
  }

  return a7();
}

void DOCHierarchyController.removeTrailingLocations(_:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  if (a1 >= 1)
  {
    v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    DOCHierarchyController.loadingDisabledOperation.setter(v9, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v15 = *(v3 + v11);

    specialized RangeReplaceableCollection<>.removeLast(_:)(a1, v12, v13);
    DOCHierarchyController.locations.setter(v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong hierarchyController:v3 didPopLocations:a1 animated:a2 & 1];
      swift_unknownObjectRelease();
    }
  }
}

void DOCHierarchyController.loadParentIfNeeded()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    v5 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v5 & 0x8000000000000000) != 0 || v5 < *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_minParentLocations])
  {
    v10 = firstInfo #1 () in DOCHierarchyController.loadParentIfNeeded()(v0);
    if (v10)
    {
      v12 = v10;
      v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager];
      v14 = v11;
      v15 = [v11 itemID];
      v16 = swift_allocObject();
      v16[2] = v12;
      v16[3] = v14;
      v16[4] = v0;
      v16[5] = v1;
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.loadParentIfNeeded();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_409;
      v17 = _Block_copy(aBlock);
      v18 = v12;
      v19 = v14;
      v20 = v0;

      [v13 fetchParentsForItemID:v15 recursively:1 completionHandler:v17];
      _Block_release(v17);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2493AC000, v7, v8, "Parent loading limit reached.", v9, 2u);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }
}

Swift::Void __swiftcall DOCHierarchyController.saveLastVisitedLocationIfNeeded()()
{
  v1 = DOCHierarchyController.effectiveRootLocation.getter();
  swift_beginAccess();

  v3 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v2, v1);
  v5 = v4;
  v7 = v6;

  if (!v3)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.DocumentManager);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2493AC000, v11, v12, "Not storing last visited location: invalid browsedState", v13, 2u);
      MEMORY[0x24C1FE850](v13, -1, -1);
      outlined consume of DOCHierarchyController.BrowsedState?(0, v5, v7);
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = v3;

  DOCHierarchyController.sendDelegateDidUpdateLastDisplayedLocationPath(browsedState:)(v9, v5, v7);
  if (![v9 canBeRestored])
  {
    outlined consume of DOCHierarchyController.BrowsedState?(v3, v5, v7);
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.DocumentManager);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Not storing last visited location: not available, or cannot be restored.";
    goto LABEL_17;
  }

  if (![*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) saveLastVisitedLocation])
  {
    outlined consume of DOCHierarchyController.BrowsedState?(v3, v5, v7);
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.DocumentManager);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Not storing last visited location: opted out.";
LABEL_17:
    _os_log_impl(&dword_2493AC000, v11, v15, v17, v16, 2u);
    MEMORY[0x24C1FE850](v16, -1, -1);
LABEL_18:

LABEL_19:

    goto LABEL_20;
  }

  DOCHierarchyController.persistBrowsedState(_:isCurrent:)(v9, v5, v7, 1);

  outlined consume of DOCHierarchyController.BrowsedState?(v3, v5, v7);
LABEL_20:
}

void closure #1 in DOCHierarchyController.removeTrailingLocationCount(_:animated:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    v7 = v9 - 1;
    if (!__OFSUB__(v9, 1))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  DOCHierarchyController.removeTrailingLocations(_:animated:)(v8, 0);
  DOCHierarchyController.loadParentIfNeeded()();
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
}

Swift::Bool __swiftcall DOCHierarchyController.canRemove(after:)(DOCConcreteLocation *after)
{
  v2 = DOCHierarchyController.effectiveLocations.getter();
  v5 = after;
  v4[2] = &v5;
  LOBYTE(after) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v2);

  return after & 1;
}

void DOCHierarchyController.remove(after:animated:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v11 = *&v5[v10];

  v12 = specialized Collection<>.firstIndex(of:)(a1, v11, &lazy cache variable for type metadata for DOCConcreteLocation);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    v64 = a2;
    v65 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v62 = v12;
      v63 = a4;
      v23 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v71[0] = v61;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BCC800, v71);
      *(v23 + 12) = 2080;
      v24 = v20;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v71);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      v30 = [v24 node];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 displayName];
        swift_unknownObjectRelease();
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      *&aBlock = v31;
      *(&aBlock + 1) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v71);

      *(v23 + 24) = v37;
      _os_log_impl(&dword_2493AC000, v21, v22, "[PROTECTED APPS] %s Location needs auth location: %s node: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v61, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);

      v12 = v62;
      a4 = v63;
    }

    else
    {
    }

    v38 = *&v5[v10];
    if (v38 >> 62)
    {
      v39 = __CocoaSet.count.getter();
      v40 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
LABEL_18:
        v41 = v39 - v40;
        if (!__OFSUB__(v39, v40))
        {
          _StringGuts.grow(_:)(17);

          strcpy(&aBlock, "remove(after: ");
          HIBYTE(aBlock) = -18;
          v42 = [v20 shortDescription];
          v43 = a4;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = v44;
          v48 = v43;
          MEMORY[0x24C1FAEA0](v47, v46);

          MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
          v49 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(aBlock, *(&aBlock + 1));

          v50 = swift_allocObject();
          *(v50 + 16) = v5;
          *(v50 + 24) = v41;
          v51 = v64 & 1;
          *(v50 + 32) = v51;
          *(v50 + 40) = v49;
          *(v50 + 48) = v65;
          *(v50 + 56) = v48;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v53 = Strong;
            v54 = swift_allocObject();
            *(v54 + 16) = partial apply for closure #1 in DOCHierarchyController.remove(after:animated:completion:);
            *(v54 + 24) = v50;
            v69 = thunk for @callee_guaranteed () -> ()partial apply;
            v70 = v54;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v67 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v68 = &block_descriptor_86;
            v55 = _Block_copy(&aBlock);
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65);
            v56 = v5;

            [v53 hierarchyController:v56 willPopLocations:v41 animated:v51 completion:v55];
          }

          else
          {
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65);
            v57 = v5;

            DOCHierarchyController.removeTrailingLocations(_:animated:)(v41, v51);
            DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
            v58 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
            v59 = swift_allocObject();
            v59[2] = v57;
            v59[3] = v49;
            v59[4] = v65;
            v59[5] = v48;
            v69 = partial apply for closure #1 in closure #1 in DOCHierarchyController.remove(after:animated:completion:);
            v70 = v59;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v67 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v68 = &block_descriptor_80;
            v55 = _Block_copy(&aBlock);
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65);
            v60 = v57;

            [v58 animateAlongsideTransition:0 completion:v55];
          }

          _Block_release(v55);

          swift_unknownObjectRelease();
          return;
        }

LABEL_27:
        __break(1u);
        return;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2493AC000, v16, v17, "Cannot remove the location after a location that is not in the locations array", v18, 2u);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t closure #1 in DOCHierarchyController.remove(after:animated:completion:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DOCHierarchyController.removeTrailingLocations(_:animated:)(a2, a3);
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
  v10 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v15[4] = partial apply for closure #1 in closure #1 in DOCHierarchyController.remove(after:animated:completion:);
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v15[3] = &block_descriptor_388;
  v12 = _Block_copy(v15);
  v13 = a1;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

  [v10 animateAlongsideTransition:0 completion:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void DOCHierarchyController.goToEnclosing(location:animated:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v8 = DOCHierarchyController.effectiveLocations.getter();
  v11 = a1;
  v10[2] = &v11;
  v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, v8);

  if (v9)
  {
    DOCHierarchyController.remove(after:animated:completion:)(a1, a2 & 1, a3, a4);
  }

  else
  {
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, a1, a2 & 1, 1, 0, a3, a4);
  }
}

Swift::Void __swiftcall DOCHierarchyController.discardPendingOperations(forScheduleHierarchyOperation:)(DocumentManagerExecutables::DOCHierarchyController::DOCHierarchyOperationType forScheduleHierarchyOperation)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  v8 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8) && *(v7 + *(v8 + 20)) == (forScheduleHierarchyOperation & 1))
  {
    (*(v9 + 56))(v6, 1, 1, v8);
    DOCHierarchyController.loadingDisabledOperation.setter(v6, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  }
}

uint64_t DOCHierarchyController.activeSemanticNavigationOperation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  return *v1;
}

uint64_t closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, int a7, int a8, char a9, int *a10)
{
  v95 = a8;
  v96 = a7;
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v97 = a1;
  v12 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v99 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v111, v16);
  v102 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v92 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v93 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v94 = &v92 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v105 = &v92 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v101 = &v92 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v100 = &v92 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v92 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v92 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v92 - v47;
  v98 = a3;
  v112 = swift_projectBox();
  v49 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a2[v49], v44, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v50 = *(v13 + 48);
  v51 = v50(v44, 1, v12);
  v110 = v50;
  v106 = a2;
  if (v51 == 1)
  {
    v52 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a2[v52], v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v50(v44, 1, v12) != 1)
    {
      outlined destroy of CharacterSet?(v44, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v44, v48, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v13 + 56))(v48, 0, 1, v12);
  }

  v53 = v112;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v53, v40, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v54 = *(v13 + 56);
  v104 = v13 + 56;
  v103 = v54;
  v54(v40, 0, 1, v12);
  v55 = v111[12];
  outlined init with copy of DOCGridLayout.Spec?(v48, v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v40, &v21[v55], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v56 = v110;
  if (v110(v21, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v56(&v21[v55], 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      v57 = v106;
LABEL_18:
      v111 = a10;
      v69 = v112;
      swift_beginAccess();
      *(v69 + *(v12 + 24)) = 0;
      swift_beginAccess();

      v71 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v70);

      v72 = swift_allocObject();
      v73 = v97;
      *(v72 + 16) = v97;
      *(v72 + 24) = v57;
      v74 = v107;
      *(v72 + 32) = v98;
      *(v72 + 40) = v74;
      v75 = v108;
      v76 = v109;
      *(v72 + 48) = v108;
      *(v72 + 56) = v76;
      *(v72 + 64) = v95 & 1;
      *(v72 + 65) = a9 & 1;
      *(v72 + 72) = a10;
      type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
      v77 = swift_allocObject();
      *(v77 + 40) = DOCGridLayout.specIconWidth.modify;
      *(v77 + 48) = 0;
      *(v77 + 56) = MEMORY[0x277D84F90];
      *(v77 + 64) = 0;
      *(v77 + 16) = v57;
      *(v77 + 24) = v73;
      *(v77 + 32) = v96 & 1;
      *(v77 + 33) = v71;
      v78 = swift_allocObject();
      swift_weakInit();
      v79 = swift_allocObject();
      v79[2] = v78;
      v79[3] = closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)partial apply;
      v79[4] = v72;
      *(v77 + 64) = v77;
      swift_bridgeObjectRetain_n();
      v80 = v57;

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v75);
      v81 = v111;

      swift_unknownObjectRelease();
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v83[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      v83[3] = v79;
      v83[4] = v82;
      *(v77 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      *(v77 + 48) = v83;

      tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
    }

    goto LABEL_10;
  }

  v58 = v100;
  outlined init with copy of DOCGridLayout.Spec?(v21, v100, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v56(&v21[v55], 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v58, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_10:
    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    v57 = v106;
    goto LABEL_11;
  }

  v67 = v99;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v21[v55], v99, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v68 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v67, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v58, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v57 = v106;
  if (v68)
  {
    goto LABEL_18;
  }

LABEL_11:
  v59 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  v60 = v101;
  outlined init with copy of DOCGridLayout.Spec?(&v57[v59], v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v61 = v112;
  swift_beginAccess();
  v62 = v105;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v61, v105, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v103(v62, 0, 1, v12);
  v63 = v111[12];
  v64 = v102;
  outlined init with copy of DOCGridLayout.Spec?(v60, v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v62, v64 + v63, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v65 = v110;
  if (v110(v64, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v62, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v65(v64 + v63, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_20:
      v88 = v93;
      v103(v93, 1, 1, v12);
      DOCHierarchyController.loadingDisabledOperation.setter(v88, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v66 = v94;
  outlined init with copy of DOCGridLayout.Spec?(v64, v94, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v65(v64 + v63, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v105, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v66, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_16:
    outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    goto LABEL_21;
  }

  v85 = v64 + v63;
  v86 = v99;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(v85, v99, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v87 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v86, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v105, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v66, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v87)
  {
    goto LABEL_20;
  }

LABEL_21:
  v89 = &v57[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v89 = 0;
  v89[8] = 1;
  v90 = v107;
  result = swift_beginAccess();
  if (*(v90 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v91, 0);
  }

  if (v108)
  {
    return v108(result);
  }

  return result;
}

uint64_t closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, int a8, char a9, void *a10)
{
  v104 = a8;
  v106 = a7;
  v109 = a6;
  v111 = a5;
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v113 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v102 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v108, v16);
  v18 = &v102 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v103 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v105 = &v102 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v102 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v102 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v102 - v35;
  v107 = swift_projectBox();
  v37 = *(a2 + 16);
  v38 = MEMORY[0x277D84F90];
  v112 = a3;
  if (v37)
  {
    v110 = a1;
    aBlock = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v39 = (a2 + 32);
    do
    {
      v40 = *v39;
      v39 += 2;
      v41 = v40;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v37;
    }

    while (v37);
    v38 = aBlock;
    a3 = v112;
    a1 = v110;
  }

  v110 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(v38, a1);

  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a3[v42], v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v43 = v113;
  v44 = *(v113 + 48);
  if (v44(v32, 1, v13) == 1)
  {
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a3[v45], v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v46 = v44(v32, 1, v13);
    v47 = v108;
    if (v46 != 1)
    {
      outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v32, v36, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v43 + 56))(v36, 0, 1, v13);
    v47 = v108;
  }

  v48 = v107;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v48, v28, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v49 = *(v43 + 56);
  v113 = v43 + 56;
  v49(v28, 0, 1, v13);
  v50 = *(v47 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v36, v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v28, &v18[v50], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v44(v18, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v44(&v18[v50], 1, v13) == 1)
    {
      outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      v51 = v109;
      v52 = v110;
      v53 = v112;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v108 = v49;
  v54 = v105;
  outlined init with copy of DOCGridLayout.Spec?(v18, v105, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v44(&v18[v50], 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v54, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_14:
    outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    v51 = v109;
    v53 = v112;
    goto LABEL_15;
  }

  v59 = v102;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v18[v50], v102, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v60 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v59, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v54, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v51 = v109;
  v52 = v110;
  v53 = v112;
  v49 = v108;
  if (v60)
  {
LABEL_20:
    v61 = swift_allocObject();
    v62 = v111;
    v61[2] = v53;
    v61[3] = v62;
    v63 = v106;
    v61[4] = v51;
    v61[5] = v63;
    v64 = v103;
    v49(v103, 1, 1, v13);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v51);

    v65 = v53;
    DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    if (v104)
    {

      specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(1, v52, a9 & 1, v65, partial apply for closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:), v61);
    }

    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
    *(v66 + 24) = v61;
    if (v52 >> 62)
    {
      v67 = __CocoaSet.count.getter();
      if (v67 >= 1)
      {
LABEL_24:
        v68 = &_sSo9NSCopying_pMd;
        if (a10)
        {
          v69 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
          v70 = swift_beginAccess();
          v51 = *&v65[v69];
          aBlock = a10;
          MEMORY[0x28223BE20](v70, v71);
          *(&v102 - 2) = &aBlock;
          swift_retain_n();

          v72 = a10;
          v73 = specialized BidirectionalCollection.lastIndex(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v102 - 4), v51);
          v75 = v74;

          v76 = *&v65[v69];
          v77 = v76 >> 62;
          if (v75)
          {
            if (v77)
            {
              v78 = __CocoaSet.count.getter();
            }

            else
            {
              v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v52 = v110;
            v68 = &_sSo9NSCopying_pMd;
LABEL_39:
            v81 = v68[276];
            swift_beginAccess();
            v82 = *&v65[v81];
            if (v82 >> 62)
            {
              if (v78 == __CocoaSet.count.getter())
              {
                goto LABEL_41;
              }
            }

            else if (v78 == *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_41:
              DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v52, a9 & 1, thunk for @callee_guaranteed () -> ()partial apply, v66);
            }

            specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(v78, v52, a9 & 1, v65, partial apply for closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:), v61);
          }

          if (v77)
          {
            v79 = __CocoaSet.count.getter();
          }

          else
          {
            v79 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v68 = &_sSo9NSCopying_pMd;

          v80 = v79 - v73;
          if (!__OFSUB__(v79, v73))
          {
            v78 = v80 - 1;
            v52 = v110;
            if (!__OFSUB__(v80, 1))
            {
              goto LABEL_39;
            }

            __break(1u);
LABEL_38:
            swift_retain_n();
            v78 = 0;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_63;
        }

        if (v67 != 1)
        {
          goto LABEL_38;
        }

        if (v52 >> 62)
        {
          result = __CocoaSet.count.getter();
        }

        else
        {
          result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result)
        {
          if ((v52 & 0xC000000000000001) == 0)
          {
            if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v83 = *(v52 + 32);
            v84 = *(v83 + 16);
            swift_retain_n();
            v85 = v84;

            goto LABEL_47;
          }
        }

        else
        {
          __break(1u);
        }

        swift_retain_n();
        v85 = *(MEMORY[0x24C1FC540](0, v52) + 16);
        swift_unknownObjectRelease();
        v83 = MEMORY[0x24C1FC540](0, v52);
LABEL_47:

        v86 = *(v83 + 24);

        DOCHierarchyController.appendOneLocation(_:viewController:animated:)(v85, v86, a9 & 1);

        DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
        v87 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
        v88 = swift_allocObject();
        v89 = v111;
        v88[2] = v65;
        v88[3] = v89;
        v88[4] = v51;
        v90 = v51;
        v88[5] = v106;
        v118 = closure #1 in closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)partial apply;
        v119 = v88;
        aBlock = MEMORY[0x277D85DD0];
        v115 = 1107296256;
        v91 = &block_descriptor_483;
LABEL_55:
        v116 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v117 = v91;
        v100 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v90);

        v101 = v65;

        [v87 animateAlongsideTransition:0 completion:v100];
        _Block_release(v100);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v67 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67 >= 1)
      {
        goto LABEL_24;
      }
    }

    swift_retain_n();

    if (DOCIsInternalBuild())
    {
LABEL_54:
      DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
      v87 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
      v98 = swift_allocObject();
      v99 = v111;
      v98[2] = v65;
      v98[3] = v99;
      v98[4] = v51;
      v90 = v51;
      v98[5] = v106;
      v118 = partial apply for closure #1 in closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
      v119 = v98;
      aBlock = MEMORY[0x277D85DD0];
      v115 = 1107296256;
      v91 = &block_descriptor_476;
      goto LABEL_55;
    }

    if (one-time initialization token for UI == -1)
    {
LABEL_51:
      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.UI);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock = v96;
        *v95 = 136315138;
        *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BCD680, &aBlock);
        _os_log_impl(&dword_2493AC000, v93, v94, "assertion failure: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        v97 = v96;
        v51 = v109;
        MEMORY[0x24C1FE850](v97, -1, -1);
        MEMORY[0x24C1FE850](v95, -1, -1);
      }

      goto LABEL_54;
    }

LABEL_63:
    swift_once();
    goto LABEL_51;
  }

LABEL_15:

  v55 = &v53[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v55 = 0;
  v55[8] = 1;
  v56 = v111;
  result = swift_beginAccess();
  if (*(v56 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v58, 0);
  }

  if (v51)
  {
    return v51(result);
  }

  return result;
}

uint64_t _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!(a2 >> 62))
    {
LABEL_3:
      if (v4 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

LABEL_26:
      if ((DOCIsInternalBuild() & 1) == 0)
      {
        if (one-time initialization token for UI == -1)
        {
LABEL_28:
          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.UI);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = v27;
            *v26 = 136315138;
            *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BCD7D0, &v28);
            _os_log_impl(&dword_2493AC000, v24, v25, "assertion failure: %s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x24C1FE850](v27, -1, -1);
            MEMORY[0x24C1FE850](v26, -1, -1);
          }

          return MEMORY[0x277D84F90];
        }

LABEL_34:
        swift_once();
        goto LABEL_28;
      }

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  if (v4 != __CocoaSet.count.getter())
  {
    goto LABEL_26;
  }

LABEL_4:
  v28 = MEMORY[0x277D84F90];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0 && v4 > *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  if (((a2 | a1) & 0xC000000000000001) != 0)
  {
    for (i = 4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](i - 4, a1);
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = *(a1 + 8 * i);
        if (!v5)
        {
LABEL_14:
          v8 = *(a2 + 8 * i);
          goto LABEL_15;
        }
      }

      v8 = MEMORY[0x24C1FC540](i - 4, a2);
LABEL_15:
      v9 = v8;
      type metadata accessor for LocationPairedViewController();
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      *(v10 + 24) = v9;
      v11 = v7;
      v12 = v9;
      MEMORY[0x24C1FB090]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!--v4)
      {
        return v28;
      }
    }
  }

  v13 = (a1 + 32);
  v14 = (a2 + 32);
  type metadata accessor for LocationPairedViewController();
  do
  {
    v15 = *v13;
    v16 = *v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = v15;
    v19 = v16;
    v20 = v18;
    v21 = v19;
    MEMORY[0x24C1FB090]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v14;
    ++v13;
    --v4;
  }

  while (v4);
  return v28;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  *v6 = 0;
  *(v6 + 8) = 1;
  result = swift_beginAccess();
  if (*(a3 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v8, 0);
  }

  if (a4)
  {
    return a4(result);
  }

  return result;
}

void DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(unint64_t a1, void *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v246 = a7;
  v247 = a6;
  LODWORD(v238) = a5;
  v237 = a4;
  LODWORD(v240) = a3;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v9 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v10);
  v224 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v212 - v14;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v233, v16);
  v229 = &v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v232 = &v212 - v20;
  v249 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v251 = *(v249 - 8);
  MEMORY[0x28223BE20](v249, v21);
  v23 = &v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v239 = &v212 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v27, v28);
  v230 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v228 = &v212 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v241 = &v212 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v212 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v40 - 8, v41);
  MEMORY[0x28223BE20](v42, v43);
  MEMORY[0x28223BE20](v44, v45);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v212 - v48;
  MEMORY[0x28223BE20](v50, v51);
  MEMORY[0x28223BE20](v53, &v212 - v52);
  v231 = &v212 - v54;
  MEMORY[0x28223BE20](v55, v56);
  MEMORY[0x28223BE20](v57, v58);
  v242 = &v212 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v212 - v62;
  MEMORY[0x28223BE20](v64, v65);
  v72 = &v212 - v71;
  v73 = a1 >> 62;
  if (a1 >> 62)
  {
    v214 = v68;
    v218 = v69;
    v217 = v70;
    v220 = v67;
    v221 = v66;
    v227 = a1 >> 62;
    v74 = __CocoaSet.count.getter();
    v73 = v227;
    v66 = v221;
    v67 = v220;
    v70 = v217;
    v69 = v218;
    v68 = v214;
    if (v74)
    {
LABEL_3:
      v227 = v73;
      v225 = v74;
      v221 = v66;
      v220 = v67;
      v215 = v49;
      v217 = v70;
      v218 = v69;
      v214 = v68;
      v216 = v23;
      v234 = a2;
      v213 = v15;
      v244 = swift_allocBox();
      v223 = v9;
      v75 = *(v9 + 56);
      v236 = v76;
      v226 = v75;
      v75(v76, 1, 1, updated);
      v77 = swift_allocObject();
      v245 = v77;
      *(v77 + 16) = 0;
      v235 = (v77 + 16);
      v78 = v250;
      v79 = &v250[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
      swift_beginAccess();
      v80 = *v79;
      if (v79[8])
      {
        v80 = 0;
      }

      *v79 = v80;
      v222 = v79;
      v79[8] = 0;
      v81 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
      swift_beginAccess();
      v219 = v81;
      outlined init with copy of DOCGridLayout.Spec?(&v78[v81], v63, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      v82 = v251;
      v84 = v251 + 6;
      isa = v251[6].isa;
      v85 = v249;
      v86 = (isa)(v63, 1, v249);
      v243 = v84;
      if (v86 == 1)
      {
        v87 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
        swift_beginAccess();
        outlined init with copy of DOCGridLayout.Spec?(&v78[v87], v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
        v88 = isa;
        if ((isa)(v63, 1, v85) != 1)
        {
          outlined destroy of CharacterSet?(v63, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
        }
      }

      else
      {
        outlined init with take of DOCHierarchyController.FetchingOperationToken(v63, v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        (v82[7].isa)(v72, 0, 1, v85);
        v88 = isa;
      }

      if ((v88)(v72, 1, v85) == 1)
      {
        outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      }

      else
      {
        v89 = v72[*(v85 + 24)];
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        if ((v89 & 1) == 0)
        {
          v150 = DOCIsInternalBuild();
          v93 = v247;
          v96 = v230;
          if (v150)
          {
LABEL_40:
            if ((v222[8] & 1) == 0 && !*v222)
            {
              v222[8] = 1;
            }

            v157 = v235;
            swift_beginAccess();
            if (*v157)
            {

              DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v158, 0);
            }

            v159 = v236;
            swift_beginAccess();
            outlined init with copy of DOCGridLayout.Spec?(v159, v96, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            if ((*(v223 + 48))(v96, 1, updated) == 1)
            {
              v160 = outlined destroy of CharacterSet?(v96, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            }

            else
            {
              v180 = v224;
              outlined init with take of DOCHierarchyController.FetchingOperationToken(v96, v224, type metadata accessor for DOCHierarchyController.UpdateExpectation);
              DOCHierarchyController.endUpdateExpectation(_:)(v180);
              v160 = outlined destroy of DOCHierarchyController.FetchingOperationToken(v180, type metadata accessor for DOCHierarchyController.UpdateExpectation);
            }

            if (v93)
            {
              v93(v160);
            }

            goto LABEL_79;
          }

          if (one-time initialization token for UI == -1)
          {
LABEL_37:
            v151 = type metadata accessor for Logger();
            __swift_project_value_buffer(v151, static Logger.UI);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v254 = v155;
              *v154 = 136315138;
              *(v154 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x8000000249BCC850, &v254);
              _os_log_impl(&dword_2493AC000, v152, v153, "assertion failure: %s", v154, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v155);
              v156 = v155;
              v93 = v247;
              MEMORY[0x24C1FE850](v156, -1, -1);
              MEMORY[0x24C1FE850](v154, -1, -1);
            }

            goto LABEL_40;
          }

LABEL_93:
          swift_once();
          goto LABEL_37;
        }
      }

      UUID.init()();
      v90 = updated;
      *&v39[*(updated + 20)] = a1;
      v91 = v241;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v39, v241, type metadata accessor for DOCHierarchyController.UpdateExpectation);
      v92 = v226;
      v226(v91, 0, 1, v90);
      v93 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
      v94 = v250;
      swift_beginAccess();
      outlined assign with take of DOCHierarchyController.UpdateExpectation?(v91, v93 + v94);
      swift_endAccess();
      v92(v39, 0, 1, v90);
      outlined assign with take of DOCHierarchyController.UpdateExpectation?(v39, v236);
      v254 = 0;
      v255 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v254 = 0xD00000000000001ALL;
      v255 = 0x8000000249BCC830;
      if (v227)
      {
        v95 = __CocoaSet.count.getter();
      }

      else
      {
        v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v96 = v247;
      v97 = MEMORY[0x277D84F90];
      v230 = v88;
      if (!v95)
      {
        goto LABEL_25;
      }

      v252 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95 & ~(v95 >> 63), 0);
      if ((v95 & 0x8000000000000000) == 0)
      {
        v98 = 0;
        v97 = v252;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x24C1FC540](v98, a1);
          }

          else
          {
            v99 = *(a1 + 8 * v98 + 32);
          }

          v100 = v99;
          v101 = [v99 shortDescription];
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          v252 = v97;
          v106 = *(v97 + 16);
          v105 = *(v97 + 24);
          if (v106 >= v105 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
            v97 = v252;
          }

          ++v98;
          *(v97 + 16) = v106 + 1;
          v107 = v97 + 16 * v106;
          *(v107 + 32) = v102;
          *(v107 + 40) = v104;
        }

        while (v95 != v98);
        v96 = v247;
        v94 = v250;
LABEL_25:
        v108 = MEMORY[0x24C1FB0D0](v97, MEMORY[0x277D837D0]);
        v110 = v109;

        MEMORY[0x24C1FAEA0](v108, v110);

        MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
        v111 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v254, v255);

        *v235 = v111;

        v112 = v249;
        v113 = swift_allocBox();
        v115 = v114;

        UUID.init()();
        v116 = v112[5];
        v117 = v112[6];
        *(v115 + v112[7]) = a1;
        *(v115 + v116) = 0;
        *(v115 + v117) = (v240 & 1) == 0;
        v118 = v242;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v115, v242, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v119 = v251[7].isa;
        v251 += 7;
        v240 = v119;
        (v119)(v118, 0, 1, v112);
        DOCHierarchyController.loadingDisabledOperation.setter(v118, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
        v120 = v239;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v115, v239, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v121 = v225 - 1;
        if (__OFSUB__(v225, 1))
        {
          __break(1u);
        }

        else
        {
          v227 = v115;
          if ((a1 & 0xC000000000000001) == 0)
          {
            if ((v121 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v121 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v122 = *(a1 + 8 * v121 + 32);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_91;
          }
        }

        v122 = MEMORY[0x24C1FC540](v121, a1);
LABEL_30:
        v123 = v122;
        DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(v120, v122, 0);

        outlined destroy of DOCHierarchyController.FetchingOperationToken(v120, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v124 = swift_allocObject();
        *(v124 + 16) = v94;
        *(v124 + 24) = v113;
        v241 = v113;
        v125 = v244;
        *(v124 + 32) = v245;
        *(v124 + 40) = v125;
        v126 = v246;
        *(v124 + 48) = v96;
        *(v124 + 56) = v126;
        v127 = v234;
        *(v124 + 64) = v234;
        v128 = v237 & 1;
        *(v124 + 72) = v128;
        *(v124 + 80) = a1;
        v129 = v238 & 1;
        *(v124 + 88) = v238 & 1;
        v253 = a1;
        v130 = swift_allocObject();
        v131 = v96;
        v132 = v130;
        *(v130 + 16) = MEMORY[0x277D84F90];
        if (v95)
        {
          v133 = v127;
          swift_bridgeObjectRetain_n();
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v131);

          v134 = v94;
          specialized RangeReplaceableCollection.removeFirst()();
          v136 = v135;
          v137 = v253;
          v138 = swift_allocObject();
          *(v138 + 16) = v132;
          *(v138 + 24) = v134;
          *(v138 + 32) = v137;
          *(v138 + 40) = 1;
          *(v138 + 48) = partial apply for closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
          *(v138 + 56) = v124;
          v139 = v134;

          specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v136, 1, v139, closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)specialized partial apply, v138);

LABEL_79:

          return;
        }

        LODWORD(v226) = v129;
        v237 = v128;
        v238 = v130;
        v239 = v124;
        v140 = v231;
        outlined init with copy of DOCGridLayout.Spec?(v94 + v219, v231, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
        v141 = v249;
        v142 = v230;
        if ((v230)(v140, 1, v249) == 1)
        {
          v143 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
          swift_beginAccess();
          v144 = v220;
          outlined init with copy of DOCGridLayout.Spec?(v94 + v143, v220, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          LODWORD(v143) = v142(v140, 1, v141);
          v145 = v234;

          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v247);

          v146 = v94;
          v147 = v143 == 1;
          v148 = v232;
          v149 = v227;
          if (!v147)
          {
            outlined destroy of CharacterSet?(v140, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          }
        }

        else
        {
          v144 = v220;
          outlined init with take of DOCHierarchyController.FetchingOperationToken(v140, v220, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v240(v144, 0, 1, v141);
          v161 = v234;

          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v247);

          v162 = v94;
          v148 = v232;
          v149 = v227;
        }

        swift_beginAccess();
        v163 = v221;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v149, v221, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v240(v163, 0, 1, v141);
        v164 = *(v233 + 48);
        outlined init with copy of DOCGridLayout.Spec?(v144, v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
        outlined init with copy of DOCGridLayout.Spec?(v163, v148 + v164, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
        v165 = v230;
        if ((v230)(v148, 1, v141) == 1)
        {
          outlined destroy of CharacterSet?(v163, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          outlined destroy of CharacterSet?(v144, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          if (v165(v148 + v164, 1, v141) == 1)
          {
            outlined destroy of CharacterSet?(v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_65:
            *(v227 + *(v249 + 24)) = 0;
            v183 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(a1);
            v184 = swift_allocObject();
            v185 = MEMORY[0x277D84F90];
            v186 = v250;
            *(v184 + 16) = MEMORY[0x277D84F90];
            *(v184 + 24) = v186;
            v187 = v245;
            *(v184 + 32) = v241;
            *(v184 + 40) = v187;
            v188 = v247;
            *(v184 + 48) = v244;
            *(v184 + 56) = v188;
            v189 = v234;
            *(v184 + 64) = v246;
            *(v184 + 72) = v189;
            *(v184 + 80) = v226;
            *(v184 + 88) = v185;
            type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
            v190 = swift_allocObject();
            *(v190 + 40) = DOCGridLayout.specIconWidth.modify;
            *(v190 + 48) = 0;
            *(v190 + 56) = v185;
            *(v190 + 64) = 0;
            *(v190 + 16) = v186;
            *(v190 + 24) = v185;
            *(v190 + 32) = v237;
            *(v190 + 33) = v183;
            v191 = swift_allocObject();
            swift_weakInit();
            v192 = swift_allocObject();
            v192[2] = v191;
            v192[3] = partial apply for closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
            v192[4] = v184;
            *(v190 + 64) = v190;
            v193 = v186;
            v194 = v189;
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v188);

            v195 = v193;

            swift_unknownObjectRelease();
            v196 = swift_allocObject();
            swift_weakInit();
            v197 = swift_allocObject();
            v197[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
            v197[3] = v192;
            v197[4] = v196;
            *(v190 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
            *(v190 + 48) = v197;

            tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

            goto LABEL_79;
          }
        }

        else
        {
          v166 = v215;
          outlined init with copy of DOCGridLayout.Spec?(v148, v215, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          v167 = v165(v148 + v164, 1, v141);
          v168 = v216;
          if (v167 != 1)
          {
            outlined init with take of DOCHierarchyController.FetchingOperationToken(v148 + v164, v216, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v182 = static UUID.== infix(_:_:)();
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v168, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            outlined destroy of CharacterSet?(v221, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            outlined destroy of CharacterSet?(v220, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v166, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            outlined destroy of CharacterSet?(v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            v169 = v229;
            if (v182)
            {
              goto LABEL_65;
            }

LABEL_54:
            v170 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
            v171 = v250;
            swift_beginAccess();
            v172 = v218;
            outlined init with copy of DOCGridLayout.Spec?(&v171[v170], v218, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            v173 = v217;
            outlined init with copy of DOCHierarchyController.FetchingOperationToken(v227, v217, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v174 = v249;
            v240(v173, 0, 1, v249);
            v175 = *(v233 + 48);
            outlined init with copy of DOCGridLayout.Spec?(v172, v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            outlined init with copy of DOCGridLayout.Spec?(v173, v169 + v175, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
            v176 = v230;
            if ((v230)(v169, 1, v174) == 1)
            {
              outlined destroy of CharacterSet?(v173, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined destroy of CharacterSet?(v172, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              v177 = v176(v169 + v175, 1, v174);
              v178 = v228;
              if (v177 == 1)
              {
                outlined destroy of CharacterSet?(v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                v179 = v247;
LABEL_67:
                v201 = v242;
                v240(v242, 1, 1, v174);
                DOCHierarchyController.loadingDisabledOperation.setter(v201, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
LABEL_68:
                if ((v222[8] & 1) == 0 && !*v222)
                {
                  v222[8] = 1;
                }

                v202 = v235;
                swift_beginAccess();
                if (*v202)
                {

                  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v203, 0);
                }

                v204 = v236;
                swift_beginAccess();
                outlined init with copy of DOCGridLayout.Spec?(v204, v178, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                if ((*(v223 + 48))(v178, 1, updated) == 1)
                {
                  v205 = outlined destroy of CharacterSet?(v178, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                }

                else
                {
                  v206 = v178;
                  v207 = v213;
                  outlined init with take of DOCHierarchyController.FetchingOperationToken(v206, v213, type metadata accessor for DOCHierarchyController.UpdateExpectation);
                  DOCHierarchyController.endUpdateExpectation(_:)(v207);
                  v205 = outlined destroy of DOCHierarchyController.FetchingOperationToken(v207, type metadata accessor for DOCHierarchyController.UpdateExpectation);
                }

                if (v179)
                {
                  v179(v205);
                }

                goto LABEL_79;
              }
            }

            else
            {
              v181 = v214;
              outlined init with copy of DOCGridLayout.Spec?(v169, v214, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              if (v176(v169 + v175, 1, v174) != 1)
              {
                v198 = v169 + v175;
                v199 = v216;
                outlined init with take of DOCHierarchyController.FetchingOperationToken(v198, v216, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                v200 = static UUID.== infix(_:_:)();
                outlined destroy of DOCHierarchyController.FetchingOperationToken(v199, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                outlined destroy of CharacterSet?(v217, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                outlined destroy of CharacterSet?(v218, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                outlined destroy of DOCHierarchyController.FetchingOperationToken(v181, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                v174 = v249;
                outlined destroy of CharacterSet?(v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
                v179 = v247;
                v178 = v228;
                if ((v200 & 1) == 0)
                {
                  goto LABEL_68;
                }

                goto LABEL_67;
              }

              outlined destroy of CharacterSet?(v217, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined destroy of CharacterSet?(v218, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
              outlined destroy of DOCHierarchyController.FetchingOperationToken(v181, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v178 = v228;
            }

            outlined destroy of CharacterSet?(v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
            v179 = v247;
            goto LABEL_68;
          }

          outlined destroy of CharacterSet?(v221, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          outlined destroy of CharacterSet?(v220, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v166, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        }

        outlined destroy of CharacterSet?(v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
        v169 = v229;
        goto LABEL_54;
      }

      __break(1u);
      goto LABEL_93;
    }
  }

  else
  {
    v74 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_3;
    }
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_91:
    swift_once();
  }

  v208 = type metadata accessor for Logger();
  __swift_project_value_buffer(v208, static Logger.UI);
  v251 = Logger.logObject.getter();
  v209 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v251, v209))
  {
    v210 = swift_slowAlloc();
    *v210 = 0;
    _os_log_impl(&dword_2493AC000, v251, v209, "Unexpected: got call to applyUpdate() with empty locations array", v210, 2u);
    MEMORY[0x24C1FE850](v210, -1, -1);
  }

  v211 = v251;
}

uint64_t DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(uint64_t a1, void *a2, int a3)
{
  v7 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v12 = *&v3[v11];
  if (v12 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }
  }

  v37 = a3;
  v14 = swift_allocObject();
  v39 = v14;
  v40 = 1;
  *(v14 + 16) = 1;
  v38 = v14 + 16;
  v15 = [a2 placeholderLocation];
  v16 = [a2 sourceIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v19 != v20)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(a1, &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v24 + v22, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v25 = v39;
  *(v24 + v23) = v39;
  v26 = v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v15;
  *(v26 + 8) = v37 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249B9A480;
  *(v27 + 32) = v15;
  *(v27 + 40) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:);
  *(v28 + 24) = v24;
  type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
  v29 = swift_allocObject();
  *(v29 + 40) = DOCGridLayout.specIconWidth.modify;
  *(v29 + 48) = 0;
  *(v29 + 56) = MEMORY[0x277D84F90];
  *(v29 + 64) = 0;
  *(v29 + 16) = v3;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  *(v29 + 33) = v40 & 1;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v31[4] = v28;
  *(v29 + 64) = v29;
  v32 = v15;

  v33 = v3;

  swift_unknownObjectRelease();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v35[3] = v31;
  v35[4] = v34;
  *(v29 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  *(v29 + 48) = v35;

  tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

  swift_beginAccess();
  *(v25 + 16) = 0;
}

uint64_t closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8, unsigned __int8 a9, unint64_t a10, unsigned __int8 a11)
{
  v135 = a8;
  v139 = a7;
  v140 = a6;
  v136 = a5;
  v137 = a4;
  v123 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v131 = &v117[-v15];
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v129 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v16);
  v121 = &v117[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v125 = &v117[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v141, v22);
  v128 = &v117[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v117[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v119 = &v117[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31, v32);
  v120 = &v117[-v33];
  MEMORY[0x28223BE20](v34, v35);
  v134 = &v117[-v36];
  MEMORY[0x28223BE20](v37, v38);
  v127 = &v117[-v39];
  MEMORY[0x28223BE20](v40, v41);
  v126 = &v117[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v117[-v45];
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v117[-v49];
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v117[-v53];
  v124 = a3;
  v142 = swift_projectBox();
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v56 = v19;
  outlined init with copy of DOCGridLayout.Spec?(a2 + v55, v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v57 = *(v19 + 48);
  v58 = v57(v50, 1, v18);
  v138 = a2;
  if (v58 == 1)
  {
    v59 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(a2 + v59, v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v57(v50, 1, v18) != 1)
    {
      outlined destroy of CharacterSet?(v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v50, v54, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v56 + 56))(v54, 0, 1, v18);
  }

  v60 = v142;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v60, v46, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v61 = *(v56 + 56);
  v132 = v56 + 56;
  v133 = v61;
  v61(v46, 0, 1, v18);
  v62 = *(v141 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v54, v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v46, &v27[v62], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v57(v27, 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v57(&v27[v62], 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v63 = v126;
  outlined init with copy of DOCGridLayout.Spec?(v27, v126, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v57(&v27[v62], 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v63, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_10:
    v122 = v57;
    outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    goto LABEL_11;
  }

  v122 = v57;
  v73 = v125;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v27[v62], v125, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v118 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v73, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v63, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v118)
  {
LABEL_18:
    LODWORD(v141) = a11;
    v74 = a9;
    v75 = v142;
    swift_beginAccess();
    *(v75 + *(v18 + 24)) = 0;
    v76 = v123;
    if (v135)
    {
      LODWORD(v142) = a9;
      v77 = *(v123 + 16);
      v78 = v135;
      if (v77)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
        v79 = 0;
        v80 = 0;
        while (1)
        {
          v81 = v76 + 8 * v79;
          v82 = *(v81 + 32);
          v83 = *(v81 + 40);
          v84 = v82;
          v85 = static NSObject.== infix(_:_:)();

          if (v85)
          {
            break;
          }

          ++v80;
          v79 += 2;
          if (v77 == v80)
          {
            goto LABEL_23;
          }
        }

        specialized _copyCollectionToContiguousArray<A>(_:)(v113, v76 + 32, 0, v79 + 1);
        v86 = v114;
        v87 = v138;
        if (v80)
        {
          specialized _copyCollectionToContiguousArray<A>(_:)(v76, v76 + 32, v80, (2 * v77) | 1);
          v116 = v115;

          v76 = v116;
        }

        v74 = v142;

        goto LABEL_25;
      }

LABEL_23:

      v74 = v142;
    }

    swift_bridgeObjectRetain_n();
    v86 = MEMORY[0x277D84F90];
    v87 = v138;
LABEL_25:
    v88 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(a10);
    v89 = swift_allocObject();
    *(v89 + 16) = v76;
    *(v89 + 24) = v87;
    v90 = v76;
    v91 = v137;
    *(v89 + 32) = v124;
    *(v89 + 40) = v91;
    v92 = v140;
    *(v89 + 48) = v136;
    *(v89 + 56) = v92;
    v93 = v135;
    *(v89 + 64) = v139;
    *(v89 + 72) = v93;
    *(v89 + 80) = v141 & 1;
    *(v89 + 88) = v86;
    type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
    v94 = swift_allocObject();
    *(v94 + 40) = DOCGridLayout.specIconWidth.modify;
    *(v94 + 48) = 0;
    *(v94 + 56) = MEMORY[0x277D84F90];
    *(v94 + 64) = 0;
    *(v94 + 16) = v87;
    *(v94 + 24) = v90;
    *(v94 + 32) = v74 & 1;
    *(v94 + 33) = v88;
    v95 = swift_allocObject();
    swift_weakInit();
    v96 = swift_allocObject();
    v96[2] = v95;
    v96[3] = closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)partial apply;
    v96[4] = v89;
    *(v94 + 64) = v94;
    v97 = v87;
    v98 = v93;
    v99 = v97;

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v140);

    swift_unknownObjectRelease();
    v100 = swift_allocObject();
    swift_weakInit();
    v101 = swift_allocObject();
    v101[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
    v101[3] = v96;
    v101[4] = v100;
    *(v94 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
    *(v94 + 48) = v101;

    tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
  }

LABEL_11:
  v64 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  v65 = v138;
  swift_beginAccess();
  v66 = v127;
  outlined init with copy of DOCGridLayout.Spec?(v65 + v64, v127, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v67 = v142;
  swift_beginAccess();
  v68 = v134;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v67, v134, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v133(v68, 0, 1, v18);
  v69 = *(v141 + 48);
  v70 = v128;
  outlined init with copy of DOCGridLayout.Spec?(v66, v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v68, &v70[v69], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v71 = v122;
  if (v122(v70, 1, v18) != 1)
  {
    v72 = v120;
    outlined init with copy of DOCGridLayout.Spec?(v70, v120, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v71(&v70[v69], 1, v18) != 1)
    {
      v103 = v125;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(&v70[v69], v125, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v104 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v103, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      if ((v104 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    outlined destroy of CharacterSet?(v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_16:
    outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    goto LABEL_28;
  }

  outlined destroy of CharacterSet?(v68, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v71(&v70[v69], 1, v18) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_27:
  v105 = v119;
  v133(v119, 1, 1, v18);
  DOCHierarchyController.loadingDisabledOperation.setter(v105, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
LABEL_28:
  v106 = swift_projectBox();
  v107 = v65 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  if ((*(v107 + 8) & 1) == 0 && !*v107)
  {
    *(v107 + 8) = 1;
  }

  v108 = v137;
  swift_beginAccess();
  if (*(v108 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v109, 0);
  }

  swift_beginAccess();
  v110 = v131;
  outlined init with copy of DOCGridLayout.Spec?(v106, v131, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if ((*(v129 + 48))(v110, 1, updated) == 1)
  {
    result = outlined destroy of CharacterSet?(v110, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  }

  else
  {
    v111 = v110;
    v112 = v121;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v111, v121, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    DOCHierarchyController.endUpdateExpectation(_:)(v112);
    result = outlined destroy of DOCHierarchyController.FetchingOperationToken(v112, type metadata accessor for DOCHierarchyController.UpdateExpectation);
  }

  if (v140)
  {
    return v140(result);
  }

  return result;
}

void closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(unint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11)
{
  v86 = a8;
  v98 = a7;
  v94 = a6;
  v96 = a5;
  v91 = a2;
  v95 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v89 = &v82 - v14;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v87 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v15);
  v85 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v84 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v92, v21);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v83 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v93 = &v82 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v82 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v82 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v82 - v40;
  v90 = swift_projectBox();
  v95 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSayAA012DOCHierarchyG0C08ResolvedD4InfoACLLVG_SaySo06UIViewG0CGtFZAD_Tt1g5(v91, v95);
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a3[v42], v37, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v43 = *(v18 + 48);
  v44 = v43(v37, 1, v17);
  v97 = a3;
  if (v44 == 1)
  {
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a3[v45], v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v46 = v41;
    if (v43(v37, 1, v17) != 1)
    {
      outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v37, v41, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v18 + 56))(v41, 0, 1, v17);
    v46 = v41;
  }

  v47 = v90;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v47, v33, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v49 = *(v18 + 56);
  v48 = v18 + 56;
  v91 = v49;
  v49(v33, 0, 1, v17);
  v50 = *(v92 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v46, v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v33, &v23[v50], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v51 = v43(v23, 1, v17);
  v52 = v93;
  if (v51 != 1)
  {
    v92 = v46;
    outlined init with copy of DOCGridLayout.Spec?(v23, v93, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v43(&v23[v50], 1, v17) != 1)
    {
      v90 = v17;
      v82 = v48;
      v56 = v84;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(&v23[v50], v84, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v57 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v56, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of CharacterSet?(v92, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      v54 = v97;
      v55 = v95;
      if ((v57 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v92, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v54 = v97;
LABEL_10:
    outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    goto LABEL_20;
  }

  outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v53 = v43(&v23[v50], 1, v17);
  v54 = v97;
  v55 = v95;
  if (v53 != 1)
  {
    goto LABEL_10;
  }

  v90 = v17;
  v82 = v48;
  outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_12:
  if (v55 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_14;
    }
  }

  else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    v58 = swift_allocObject();
    v59 = v96;
    v58[2] = v54;
    v58[3] = v59;
    v60 = v98;
    v58[4] = v94;
    v58[5] = v60;
    v58[6] = v86;
    v61 = v83;
    v91(v83, 1, 1, v90);
    v62 = v54;

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v60);
    DOCHierarchyController.loadingDisabledOperation.setter(v61, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v63 = a9;
    if (a9)
    {
LABEL_18:
      LODWORD(v98) = a10;
      LODWORD(v97) = a9 == 0;
      v100 = v62;
      swift_getKeyPath();
      v65 = v55;
      v66 = v63;
      v67 = a9;
      _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
      v68 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
      swift_beginAccess();
      v69 = *&v62[v68];
      *&v62[v68] = v63;
      v70 = v66;

      v99 = v62;
      swift_getKeyPath();
      _KeyValueCodingAndObserving.didChangeValue<A>(for:)();

      v71 = swift_allocObject();
      *(v71 + 16) = a11;
      *(v71 + 24) = v62;
      *(v71 + 32) = partial apply for closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
      *(v71 + 40) = v58;
      *(v71 + 48) = v97;
      v72 = v62;

      DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v65, v98 & 1, partial apply for specialized closure #2 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:), v71);

      return;
    }

    if ((v55 & 0xC000000000000001) != 0)
    {
      v63 = *(MEMORY[0x24C1FC540](0, v55) + 16);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(*(v55 + 32) + 16);
      v64 = v63;
      goto LABEL_18;
    }

    __break(1u);
    return;
  }

LABEL_20:

  v73 = swift_projectBox();
  v74 = &v54[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  if ((v74[8] & 1) == 0 && !*v74)
  {
    v74[8] = 1;
  }

  v75 = v96;
  swift_beginAccess();
  if (*(v75 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v76, 0);
  }

  swift_beginAccess();
  v77 = v89;
  outlined init with copy of DOCGridLayout.Spec?(v73, v89, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if ((*(v87 + 48))(v77, 1, updated) == 1)
  {
    v78 = outlined destroy of CharacterSet?(v77, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v79 = v98;
    if (!v98)
    {
      return;
    }
  }

  else
  {
    v80 = v77;
    v81 = v85;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v80, v85, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    DOCHierarchyController.endUpdateExpectation(_:)(v81);
    v78 = outlined destroy of DOCHierarchyController.FetchingOperationToken(v81, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    v79 = v98;
    if (!v98)
    {
      return;
    }
  }

  v79(v78);
}

uint64_t _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSayAA012DOCHierarchyG0C08ResolvedD4InfoACLLVG_SaySo06UIViewG0CGtFZAD_Tt1g5(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    v3 = v11;
    a2 = v5;
  }

  v9 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(v3, a2);

  return v9;
}

uint64_t closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
  v10 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v15[4] = partial apply for closure #1 in closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v15[3] = &block_descriptor_367;
  v12 = _Block_copy(v15);
  v13 = a1;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);

  [v10 animateAlongsideTransition:0 completion:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v13 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_projectBox();
  v18 = a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  if ((*(v18 + 8) & 1) == 0 && !*v18)
  {
    *(v18 + 8) = 1;
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v19, 0);
  }

  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v17, v11, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if ((*(v13 + 48))(v11, 1, updated) != 1)
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v11, v16, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    DOCHierarchyController.endUpdateExpectation(_:)(v16);
    result = outlined destroy of DOCHierarchyController.FetchingOperationToken(v16, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    if (!a5)
    {
      return result;
    }

    return a5(result);
  }

  result = outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t specialized closure #2 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    swift_beginAccess();
    v9 = (a1 + 16 * v6 + 24);
    while (1)
    {
      v12 = *(v9 - 1);
      v13 = *v9;
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = v13;
      if (Strong)
      {
        [Strong hierarchyController:a2 willPrepend:v12 source:v15];
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = v12;
      }

      v23 = *(a2 + v8);
      if (v23 >> 62)
      {
        if (__CocoaSet.count.getter() < 0)
        {
          break;
        }
      }

      v11 = v12;

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v11);

      DOCHierarchyController.locations.setter(v23);
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        [v17 hierarchyController:a2 didPrepend:v11 source:v15];
        swift_unknownObjectRelease();
        v10 = v15;
      }

      else
      {
        v10 = v11;
        v11 = v15;
      }

      --v6;
      v9 -= 2;

      if (!v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

LABEL_13:
  result = a3();
  if (a5)
  {
    swift_getKeyPath();
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
    swift_beginAccess();
    v20 = *(a2 + v19);
    *(a2 + v19) = 0;

    swift_getKeyPath();
    return _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  }

  return result;
}

void DOCHierarchyController.applyUpdate(popToLocation:animated:completion:)(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v51 = a4;
  v49 = a2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a1;
    v13 = swift_slowAlloc();
    v53[0] = v13;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000249BCC890, v53);
    _os_log_impl(&dword_2493AC000, v9, v10, "[PROTECTED APPS] BTBT: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v14 = v13;
    a1 = v12;
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v15 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v15 = 2;
  v15[8] = 0;
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a3;
  v50 = v16;
  v16[4] = v51;
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v18 = *&v4[v17];
  v19 = v4;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);
  v20 = specialized Collection<>.firstIndex(of:)(a1, v18, &lazy cache variable for type metadata for DOCConcreteLocation);
  v22 = v21;

  if (v22)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2493AC000, v23, v24, "Cannot pop to a location not present in the locations array", v25, 2u);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    *v15 = 0;
    v15[8] = 1;
    if (a3)
    {
      a3();
    }

    return;
  }

  v26 = DOCHierarchyController.effectiveLocations.getter();
  v27 = &v48;
  v52 = a1;
  MEMORY[0x28223BE20](v26, v28);
  v47[2] = &v52;
  v29 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v47, v26);

  if (v29)
  {
    v31 = v50;

    DOCHierarchyController.remove(after:animated:completion:)(a1, v49 & 1, partial apply for closure #1 in DOCHierarchyController.applyUpdate(popToLocation:animated:completion:), v31);

    return;
  }

  i = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((i & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    if (v27 < 0)
    {
      v5 = v27;
    }

    else
    {
      v5 = v30;
    }

    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
      return;
    }

    if (__CocoaSet.count.getter() >= i)
    {
      goto LABEL_17;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = *&v4[v17];
  v30 = v27 & 0xFFFFFFFFFFFFFF8;
  v26 = v27 >> 62;
  if (v27 >> 62)
  {
    goto LABEL_46;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < i)
  {
    goto LABEL_51;
  }

LABEL_17:
  if ((v27 & 0xC000000000000001) == 0 || v20 == -1)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    swift_bridgeObjectRetain_n();
    v33 = 0;
    do
    {
      v34 = v33 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v33);
      v33 = v34;
    }

    while (i != v34);
  }

  if (v26)
  {
    v22 = _CocoaArrayWrapper.subscript.getter();
    v17 = v35;
    v5 = v36;
    i = v37;

    if ((i & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v5 = 0;
    v22 = v27 & 0xFFFFFFFFFFFFFF8;
    v17 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
    i = (2 * i) | 1;
    if ((i & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
    v39 = MEMORY[0x277D84F90];
  }

  v40 = *(v39 + 16);

  if (__OFSUB__(i >> 1, v5))
  {
    goto LABEL_59;
  }

  if (v40 != (i >> 1) - v5)
  {
    goto LABEL_60;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_35;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v38)
  {
    swift_unknownObjectRelease();
LABEL_35:

    v41 = *(i + 16);
    if (!v41)
    {
      goto LABEL_53;
    }

LABEL_38:
    v42 = __OFSUB__(v41, 1);
    v43 = v41 - 1;
    if (v42)
    {
      __break(1u);
LABEL_56:
      v44 = MEMORY[0x24C1FC540](v43, i);
LABEL_43:
      v45 = v44;
      goto LABEL_54;
    }

    if ((i & 0xC000000000000001) != 0)
    {
      goto LABEL_56;
    }

    if ((v43 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v43 < *(i + 16))
    {
      v44 = *(i + 8 * v43 + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_unknownObjectRelease_n();
LABEL_27:
    specialized _copyCollectionToContiguousArray<A>(_:)(v22, v17, v5, i, &lazy cache variable for type metadata for DOCConcreteLocation);
  }

LABEL_52:
  v41 = __CocoaSet.count.getter();
  if (v41)
  {
    goto LABEL_38;
  }

LABEL_53:
  v45 = 0;
LABEL_54:
  v46 = v50;

  DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(i, v45, 1, 1, v49 & 1, partial apply for closure #1 in DOCHierarchyController.applyUpdate(popToLocation:animated:completion:), v46);
}

void closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:)(unint64_t a1, void (*a2)(void))
{
  v2 = a2;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:

      goto LABEL_18;
    }

    v5 = *(a1 + 32);
  }

  a2 = v5;
  v7 = v5;
  if (v4)
  {
    v6 = __CocoaSet.count.getter();
    a2 = v7;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != 1)
  {
    goto LABEL_17;
  }

  v2(a2);
}

uint64_t closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    a2(v4);
  }

  return result;
}

uint64_t closure #1 in DOCHierarchyController.___prepareControllers(for:_:isUserInteraction:isBrowsingTrash:completion:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v6 = a2;
  v8 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != __CocoaSet.count.getter())
      {
LABEL_43:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_44:
        swift_once();
        goto LABEL_7;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if (![objc_opt_self() protectedAppsEnabled])
    {
      return a4(a1);
    }

    v41 = a4;
    v42 = v8;
    Current = CFAbsoluteTimeGetCurrent();
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_44;
    }

LABEL_7:
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      break;
    }

    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_11:
    v17 = __CocoaSet.count.getter();
    if (!v17)
    {
      goto LABEL_30;
    }

LABEL_16:
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1 & 0xC000000000000001;
    v46 = v6 & 0xC000000000000001;
    v43 = v6 & 0xFFFFFFFFFFFFFF8;
    v18 = 4;
    v44 = v17;
    v45 = v6;
    while (1)
    {
      a4 = (v18 - 4);
      if (v48)
      {
        v19 = MEMORY[0x24C1FC540](v18 - 4, a1);
      }

      else
      {
        if (a4 >= *(v47 + 16))
        {
          goto LABEL_39;
        }

        v19 = *(a1 + 8 * v18);
      }

      v20 = v19;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v49 = v18 - 3;
      if (v46)
      {
        v21 = MEMORY[0x24C1FC540](v18 - 4, v6);
      }

      else
      {
        if (a4 >= *(v43 + 16))
        {
          goto LABEL_40;
        }

        v21 = *(v6 + 8 * v18);
      }

      v8 = v21;
      v22 = [objc_opt_self() sharedManager];
      v23 = [v22 nodeRequiresAuthentication:objc_msgSend(v8 Sync:sel_node)];

      swift_unknownObjectRelease();
      specialized DOCHierarchyController.resetProtectedAppAuthenticationState(on:requiresAuthentication:)(v20, v23);
      v24 = v8;
      v25 = v20;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = a1;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v50[0] = v8;
        *v29 = 136315906;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDAD0, v50);
        *(v29 + 12) = 1024;
        *(v29 + 14) = v23;
        *(v29 + 18) = 2112;
        *(v29 + 20) = v24;
        *(v29 + 28) = 2112;
        *(v29 + 30) = v25;
        *v30 = v24;
        v30[1] = v25;
        v31 = v24;
        v32 = v25;
        _os_log_impl(&dword_2493AC000, v26, v27, "[PROTECTED APPS] %s requiresAuthentication: %{BOOL}d location: %@ viewController: %@", v29, 0x26u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C1FE850](v8, -1, -1);
        v33 = v29;
        a1 = v28;
        MEMORY[0x24C1FE850](v33, -1, -1);
      }

      else
      {
      }

      v6 = v45;
      ++v18;
      if (v49 == v44)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v14 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v50[0] = v8;
  *v14 = 136315394;
  *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDAD0, v50);
  *(v14 + 12) = 2048;
  if (v42)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 14) = v15;

  _os_log_impl(&dword_2493AC000, v12, v13, "[PROTECTED APPS] %s Checking if %ld locations need auth authentication.", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x24C1FE850](v8, -1, -1);
  MEMORY[0x24C1FE850](v14, -1, -1);

  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_15:
  v17 = *(v16 + 16);
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_30:
  v34 = CFAbsoluteTimeGetCurrent();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v37 = 136315650;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDAD0, v50);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v34 - Current;
    *(v37 + 22) = 2048;
    if (v42)
    {
      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 24) = v39;

    _os_log_impl(&dword_2493AC000, v35, v36, "[PROTECTED APPS] %s check took %f sec for %ld locations", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1FE850](v38, -1, -1);
    MEMORY[0x24C1FE850](v37, -1, -1);
  }

  else
  {
  }

  a4 = v41;
  return a4(a1);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [UIViewController]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:)(void *a1, void *a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v47 - v14;
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v52 = 0xD000000000000011;
  v53 = 0x8000000249BCC8C0;
  v16 = [a1 shortDescription];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  MEMORY[0x24C1FAEA0](v17, v19);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v20 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v52, v53);

  v21 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v22 = swift_allocBox();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_249BA0290;
  *(v25 + 32) = a1;
  v26 = a1;
  UUID.init()();
  v27 = v21[5];
  v28 = v21[6];
  *(v24 + v21[7]) = v25;
  *(v24 + v27) = 1;
  *(v24 + v28) = a3 ^ 1;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v24, v15, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  (*(*(v21 - 1) + 56))(v15, 0, 1, v21);
  DOCHierarchyController.loadingDisabledOperation.setter(v15, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v30 = *&v8[v29];
  if (v30 >> 62)
  {
    if (__CocoaSet.count.getter() < 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_3:
    v31 = 0;
    v32 = v49;
LABEL_15:
    v41 = swift_allocObject();
    *(v41 + 16) = v8;
    *(v41 + 24) = v22;
    v43 = v50;
    v42 = v51;
    *(v41 + 32) = v20;
    *(v41 + 40) = v43;
    *(v41 + 48) = v42;
    *(v41 + 56) = v48 & 1;
    *(v41 + 57) = v31 & 1;
    *(v41 + 58) = v32 & 1;
    *(v41 + 64) = a2;
    v44 = a2;

    v45 = v8;

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v43);
    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v26, 1, v45, partial apply for closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v41);
  }

  v33 = *&v8[v29];
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v34 - 2;
    if (!__OFSUB__(v34, 2))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = __CocoaSet.count.getter();
  v35 = v46 - 2;
  if (__OFSUB__(v46, 2))
  {
    goto LABEL_18;
  }

LABEL_7:
  result = swift_beginAccess();
  v37 = *&v8[v29];
  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v38 = MEMORY[0x24C1FC540](v35);
    goto LABEL_11;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 8 * v35 + 32);
LABEL_11:
    v39 = v38;
    swift_endAccess();
    if (a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
      v40 = a2;
      v31 = static NSObject.== infix(_:_:)();

      v39 = v40;
    }

    else
    {
      v31 = 0;
    }

    v32 = v49;

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, int a8, char a9, char a10, char *a11)
{
  v108 = a8;
  v119 = a7;
  v120 = a5;
  v121 = a6;
  v111 = a2;
  v109 = a1;
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v112 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
  MEMORY[0x28223BE20](v122, v17);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v125 = &v106 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v106 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v107 = &v106 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v114 = &v106 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v115 = &v106 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v113 = &v106 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v106 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v106 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v106 - v48;
  v110 = a4;
  v124 = swift_projectBox();
  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v51 = v14;
  outlined init with copy of DOCGridLayout.Spec?(a3 + v50, v45, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v52 = *(v14 + 48);
  v53 = v52(v45, 1, v13);
  v123 = v52;
  v118 = a3;
  if (v53 == 1)
  {
    v54 = v19;
    v55 = v51;
    v56 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v57 = a3 + v56;
    v51 = v55;
    v19 = v54;
    outlined init with copy of DOCGridLayout.Spec?(v57, v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v58 = v52(v45, 1, v13);
    v59 = v13;
    if (v58 != 1)
    {
      outlined destroy of CharacterSet?(v45, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v45, v49, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v51 + 56))(v49, 0, 1, v13);
    v59 = v13;
  }

  v60 = v124;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v60, v41, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v61 = *(v51 + 56);
  v117 = v51 + 56;
  v116 = v61;
  v61(v41, 0, 1, v59);
  v62 = v122;
  v63 = *(v122 + 48);
  v64 = v125;
  outlined init with copy of DOCGridLayout.Spec?(v49, v125, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v41, &v64[v63], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v65 = v123;
  if (v123(v64, 1, v59) == 1)
  {
    outlined destroy of CharacterSet?(v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v66 = v65(&v125[v63], 1, v59);
    v64 = v125;
    if (v66 == 1)
    {
      outlined destroy of CharacterSet?(v125, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_18:
      v125 = a11;
      v78 = v124;
      swift_beginAccess();
      *(v78 + *(v59 + 24)) = 0;
      v79 = v118;
      swift_beginAccess();

      v81 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v80);

      v82 = swift_allocObject();
      v83 = v110;
      *(v82 + 16) = v79;
      *(v82 + 24) = v83;
      v84 = v109;
      v85 = v120;
      v86 = v121;
      *(v82 + 32) = v109;
      *(v82 + 40) = v85;
      v87 = v119;
      *(v82 + 48) = v86;
      *(v82 + 56) = v87;
      *(v82 + 64) = a9 & 1;
      *(v82 + 65) = a10 & 1;
      *(v82 + 72) = a11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_249B9A480;
      v89 = v111;
      *(v88 + 32) = v84;
      *(v88 + 40) = v89;
      v90 = swift_allocObject();
      *(v90 + 16) = partial apply for closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:);
      *(v90 + 24) = v82;
      type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
      v91 = swift_allocObject();
      *(v91 + 40) = DOCGridLayout.specIconWidth.modify;
      *(v91 + 48) = 0;
      *(v91 + 56) = MEMORY[0x277D84F90];
      *(v91 + 64) = 0;
      *(v91 + 16) = v79;
      *(v91 + 24) = v88;
      *(v91 + 32) = v108 & 1;
      *(v91 + 33) = v81;
      v92 = swift_allocObject();
      swift_weakInit();
      v93 = swift_allocObject();
      v93[2] = v92;
      v93[3] = partial apply for closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:);
      v93[4] = v90;
      *(v91 + 64) = v91;
      v94 = v79;
      v95 = v84;
      v96 = v94;

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v121);
      v97 = v125;
      v98 = v89;

      swift_unknownObjectRelease();
      v99 = swift_allocObject();
      swift_weakInit();
      v100 = swift_allocObject();
      v100[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      v100[3] = v93;
      v100[4] = v99;
      *(v91 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      *(v91 + 48) = v100;

      tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

      return;
    }

    goto LABEL_10;
  }

  v67 = v113;
  outlined init with copy of DOCGridLayout.Spec?(v64, v113, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v65(&v64[v63], 1, v59) == 1)
  {
    outlined destroy of CharacterSet?(v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v67, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v62 = v122;
LABEL_10:
    outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    goto LABEL_11;
  }

  v76 = v112;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v64[v63], v112, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v77 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v76, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v67, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v62 = v122;
  if (v77)
  {
    goto LABEL_18;
  }

LABEL_11:
  v68 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  v69 = v118;
  swift_beginAccess();
  v70 = v115;
  outlined init with copy of DOCGridLayout.Spec?(v69 + v68, v115, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v71 = v124;
  swift_beginAccess();
  v72 = v114;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v71, v114, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v116(v72, 0, 1, v59);
  v73 = *(v62 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v70, v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v72, &v19[v73], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v74 = v123;
  if (v123(v19, 1, v59) != 1)
  {
    v75 = v107;
    outlined init with copy of DOCGridLayout.Spec?(v19, v107, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    if (v74(&v19[v73], 1, v59) != 1)
    {
      v101 = &v19[v73];
      v102 = v112;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v101, v112, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v103 = v72;
      v104 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v102, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v103, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v75, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      if ((v104 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v75, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_16:
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd);
    goto LABEL_21;
  }

  outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  if (v74(&v19[v73], 1, v59) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
LABEL_20:
  v105 = v106;
  v116(v106, 1, 1, v59);
  DOCHierarchyController.loadingDisabledOperation.setter(v105, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
LABEL_21:
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v120, 0);
  if (v121)
  {
    v121();
  }
}