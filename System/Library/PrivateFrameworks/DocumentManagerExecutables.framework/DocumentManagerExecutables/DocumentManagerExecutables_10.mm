uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for DSLightweightTagInfo();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17DesktopServicesUI20DSLightweightTagInfoC_Tt1g5(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for DSLightweightTagInfo();
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = static Task.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v7);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v13;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v11, v7, isUniquelyReferenced_nonNull_native);
    *v13 = v15;
    *a1 = a2;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v26 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v25 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 7562856 : 1936093281;
      v10 = v8 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v11 = *(*(v4 + 48) + v7) ? 0x7461667865 : 0x736F64736DLL;
      v12 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v13 = *(*(v4 + 48) + v7) <= 1u ? 0xE500000000000000 : v10;
      v14 = v4;
      v15 = a2 == 2 ? 7562856 : 1936093281;
      v16 = a2 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v17 = a2 ? 0x7461667865 : 0x736F64736DLL;
      v18 = a2 <= 1u ? v17 : v15;
      v19 = a2 <= 1u ? 0xE500000000000000 : v16;
      if (v12 == v18 && v13 == v19)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_39;
      }

      v7 = (v7 + 1) & v25;
      v4 = v14;
      if (((*(v26 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    result = 0;
    LOBYTE(a2) = *(*(v14 + 48) + v7);
  }

  else
  {
LABEL_37:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v23;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v10 = 0x6E6F697461636F6CLL;
          v11 = 0xE900000000000073;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x73726576726573;
          }

          else
          {
            v10 = 1936154996;
          }

          if (v9 == 4)
          {
            v11 = 0xE700000000000000;
          }

          else
          {
            v11 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x796C746E65636572;
        }

        else
        {
          v10 = 0x657469726F766166;
        }

        if (v9 == 1)
        {
          v11 = 0xEC00000064657355;
        }

        else
        {
          v11 = 0xE900000000000073;
        }
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7368564;
      }

      v12 = 0x73726576726573;
      if (a2 != 4)
      {
        v12 = 1936154996;
      }

      v13 = 0xE700000000000000;
      if (a2 != 4)
      {
        v13 = 0xE400000000000000;
      }

      if (a2 == 3)
      {
        v12 = 0x6E6F697461636F6CLL;
        v13 = 0xE900000000000073;
      }

      v14 = 0x796C746E65636572;
      if (a2 != 1)
      {
        v14 = 0x657469726F766166;
      }

      v15 = 0xEC00000064657355;
      if (a2 != 1)
      {
        v15 = 0xE900000000000073;
      }

      if (!a2)
      {
        v14 = 7368564;
        v15 = 0xE300000000000000;
      }

      v16 = a2 <= 2u ? v14 : v12;
      v17 = a2 <= 2u ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_44;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL specialized Set._Variant.insert(_:)()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4)
{
  v9 = *v4;
  Hasher.init(_seed:)();
  v10 = MEMORY[0x24C1FAF70](a2, a3);
  MEMORY[0x24C1FCBD0](v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v9 + 48) + 24 * v13);
      v16 = *v15 == a2 && v15[1] == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = (*(v9 + 48) + 24 * v13);
    v20 = v19[1];
    v21 = v19[2];
    *a1 = *v19;
    a1[1] = v20;
    a1[2] = v21;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, _OWORD *a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 48 * v8);
      v11 = *(v10 + 25);
      v12 = v10[1];
      v31 = *v10;
      v32[0] = v12;
      *(v32 + 9) = v11;
      outlined init with copy of DOCSidebarItem(&v31, v30);
      v13 = DOCSidebarItem.hashComparableValue.getter();
      v15 = v14;
      if (v13 == DOCSidebarItem.hashComparableValue.getter() && v15 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v31);
      if (v17)
      {
        goto LABEL_9;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    outlined destroy of DOCSidebarItem(&v31);
LABEL_9:
    outlined destroy of DOCSidebarItem(a2);
    v21 = *(v5 + 48) + 48 * v8;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 32);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 24) = v25;
    *(a1 + 32) = v26;
    v27 = *(v21 + 40);
    *(a1 + 40) = v27;
    outlined copy of DOCSidebarItem(v22, v23, v24, v25, v26, v27);
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v28;
    outlined init with copy of DOCSidebarItem(a2, v30);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v28 = v29;
    v19 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v19;
    *(a1 + 25) = *(a2 + 25);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20UICollectionViewCellC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20UICollectionViewCellCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17DesktopServicesUI20DSLightweightTagInfoC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSLightweightTagInfo();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC26DocumentManagerExecutables21DOCItemCollectionCellC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DOCItemCollectionCell();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo7UITouchC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo7UITouchCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6FINodeC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6FINodeCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6DOCTagCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DSLightweightTagInfo();
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, int64_t a2, unint64_t a3, char a4)
{
  v6 = v4;
  v9 = result;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 > v10 && (a4 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_69;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v4;
  Hasher.init(_seed:)();
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      goto LABEL_27;
    }

    if (!a2)
    {
      v13 = 0;
      goto LABEL_27;
    }

    if (a2 == 1)
    {
      v13 = 2;
      goto LABEL_27;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v13 = 5;
      }

      else
      {
        v13 = 6;
      }

      goto LABEL_27;
    }

    switch(a2)
    {
      case 6:
        v13 = 7;
        goto LABEL_27;
      case 7:
        v13 = 8;
        goto LABEL_27;
      case 8:
        v13 = 9;
LABEL_27:
        MEMORY[0x24C1FCBD0](v13);
        goto LABEL_28;
    }
  }

  MEMORY[0x24C1FCBD0](1);
  String.hash(into:)();
LABEL_28:
  v4 = &v25;
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a3 = result & ~v14;
  if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 16 * a3);
      v4 = *v16;
      v5 = v16[1];
      if (v5 <= 3)
      {
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            if (a2 == 2)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 2;
          }

          else
          {
            if (a2 == 3)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 3;
          }

          goto LABEL_60;
        }

        if (!v5)
        {
          if (!a2)
          {
            goto LABEL_73;
          }

          outlined copy of ColumnType(v9, a2);
          v17 = 0;
          goto LABEL_60;
        }

        if (v5 == 1)
        {
          if (a2 == 1)
          {
            goto LABEL_73;
          }

          outlined copy of ColumnType(v9, a2);
          v17 = 1;
          goto LABEL_60;
        }
      }

      else
      {
        if (v5 <= 5)
        {
          if (v5 == 4)
          {
            if (a2 == 4)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 4;
          }

          else
          {
            if (a2 == 5)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 5;
          }

          goto LABEL_60;
        }

        switch(v5)
        {
          case 6:
            if (a2 == 6)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 6;
            goto LABEL_60;
          case 7:
            if (a2 == 7)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 7;
            goto LABEL_60;
          case 8:
            if (a2 == 8)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(v9, a2);
            v17 = 8;
            goto LABEL_60;
        }
      }

      if (a2 >= 9)
      {
        if (v4 == v9 && v5 == a2)
        {
          goto LABEL_76;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of ColumnType(v9, a2);
        outlined copy of ColumnType(v4, v5);
        outlined consume of ColumnType(v4, v5);
        result = outlined consume of ColumnType(v9, a2);
        if (v19)
        {
          goto LABEL_75;
        }

        goto LABEL_61;
      }

      outlined copy of ColumnType(v9, a2);
      outlined copy of ColumnType(v4, v5);
      v17 = v5;
LABEL_60:
      outlined consume of ColumnType(v4, v17);
      result = outlined consume of ColumnType(v9, a2);
LABEL_61:
      a3 = (a3 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_69:
  v20 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v9;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_73:
    a2 = v5;
    while (1)
    {
      outlined consume of ColumnType(v4, a2);
      outlined consume of ColumnType(v9, a2);
LABEL_75:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_76:
      outlined copy of ColumnType(v9, a2);
      outlined copy of ColumnType(v9, a2);
      v4 = v9;
    }
  }

  *(v20 + 16) = v24;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      outlined init with copy of AnyHashable(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x24C1FC430](v19, v6);
      result = outlined destroy of AnyHashable(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v4 & 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd);

      v11 = static Task.== infix(_:_:)();

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v16;
  *(*v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v5 + 8), *(v5 + 32));
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v8 + 48) + 56 * a2, v22);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      dispatch thunk of Hashable.hash(into:)();
      v11 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1((v5 + 8), *(v5 + 32));
      dispatch thunk of Hashable.hash(into:)();
      v12 = Hasher._finalize()();
      result = outlined destroy of DOCIdentityHashableLocation(v22);
      if (v11 == v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 56 * a2;
  v15 = *v5;
  v16 = *(v5 + 16);
  v17 = *(v5 + 32);
  *(v14 + 48) = *(v5 + 48);
  *(v14 + 16) = v16;
  *(v14 + 32) = v17;
  *v14 = v15;
  v18 = *(v13 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v13 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_44;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v7 = 0x736F64736DLL;
  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v30 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v29 = ~v9;
    do
    {
      v10 = *(*(v8 + 48) + a2);
      v11 = v10 == 2 ? 7562856 : 1936093281;
      v12 = v10 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v13 = *(*(v8 + 48) + a2) ? 0x7461667865 : v7;
      v14 = *(*(v8 + 48) + a2) <= 1u ? v13 : v11;
      v15 = *(*(v8 + 48) + a2) <= 1u ? 0xE500000000000000 : v12;
      v16 = v31 == 2 ? 7562856 : 1936093281;
      v17 = v31 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v18 = v7;
      v19 = v31 ? 0x7461667865 : v7;
      v20 = v31 <= 1u ? v19 : v16;
      v21 = v31 <= 1u ? 0xE500000000000000 : v17;
      v22 = v8;
      if (v14 == v20 && v15 == v21)
      {
        goto LABEL_47;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_48;
      }

      a2 = (a2 + 1) & v29;
      v7 = v18;
      v8 = v22;
    }

    while (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_44:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v31;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_47:

LABEL_48:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v25 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_48;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
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

      else if (*(*(v7 + 48) + a2))
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
      if (v25 == 4)
      {
        v14 = 0xE700000000000000;
      }

      else
      {
        v13 = 1936154996;
        v14 = 0xE400000000000000;
      }

      if (v25 == 3)
      {
        v13 = 0x6E6F697461636F6CLL;
        v14 = 0xE900000000000073;
      }

      v15 = 0x796C746E65636572;
      if (v25 != 1)
      {
        v15 = 0x657469726F766166;
      }

      v16 = 0xEC00000064657355;
      if (v25 != 1)
      {
        v16 = 0xE900000000000073;
      }

      if (!v25)
      {
        v15 = 7368564;
        v16 = 0xE300000000000000;
      }

      v17 = v25 <= 2u ? v15 : v13;
      v18 = v25 <= 2u ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        goto LABEL_51;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_14;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = (*(v8 + 48) + 48 * a2);
      v12 = *(v11 + 25);
      v13 = v11[1];
      v26 = *v11;
      v27[0] = v13;
      *(v27 + 9) = v12;
      outlined init with copy of DOCSidebarItem(&v26, &v25);
      v14 = DOCSidebarItem.hashComparableValue.getter();
      v16 = v15;
      if (v14 == DOCSidebarItem.hashComparableValue.getter() && v16 == v17)
      {
        goto LABEL_17;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = outlined destroy of DOCSidebarItem(&v26);
      if (v18)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v20 = (*(v19 + 48) + 48 * a2);
  v21 = v5[1];
  *v20 = *v5;
  v20[1] = v21;
  *(v20 + 25) = *(v5 + 25);
  v22 = *(v19 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v19 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_17:

  outlined destroy of DOCSidebarItem(&v26);
LABEL_18:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_51;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v10 > v9)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_51;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v24, v8, a2);
  result = Hasher._finalize()();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      result = *v16;
      v17 = v16[1];
      if (v17 <= 4)
      {
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (a2 == 2)
            {
              goto LABEL_50;
            }
          }

          else if (v17 == 3)
          {
            if (a2 == 3)
            {
              goto LABEL_50;
            }
          }

          else if (a2 == 4)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }

        if (!v17)
        {
          if (!a2)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }

        if (v17 == 1)
        {
          if (a2 == 1)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }
      }

      else
      {
        if (v17 <= 7)
        {
          if (v17 == 5)
          {
            if (a2 == 5)
            {
              goto LABEL_50;
            }
          }

          else if (v17 == 6)
          {
            if (a2 == 6)
            {
              goto LABEL_50;
            }
          }

          else if (a2 == 7)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }

        switch(v17)
        {
          case 8:
            if (a2 == 8)
            {
              goto LABEL_50;
            }

            goto LABEL_11;
          case 9:
            if (a2 == 9)
            {
              goto LABEL_50;
            }

            goto LABEL_11;
          case 10:
            if (a2 == 10)
            {
              goto LABEL_50;
            }

            goto LABEL_11;
        }
      }

      if (a2 >= 0xB)
      {
        v18 = result == v8 && v17 == a2;
        if (v18 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
LABEL_50:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

LABEL_11:
      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_51:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v14 = *v3;
  lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for DOCItemCollectionCell();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v8 = v7;
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v13 = a5;
    a4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = a7();
      goto LABEL_16;
    }

    v13 = a5;
    a6(v11 + 1);
  }

  v14 = *v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v15 = Hasher._finalize()();

  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v13(0);
    do
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {
        goto LABEL_19;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v24 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = v10;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  type metadata accessor for DSLightweightTagInfo();
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v6 = *v2;
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](0);
      result = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    specialized _NativeSet.copy()();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  v13 = MEMORY[0x24C1FAF70](v9, a2);
  MEMORY[0x24C1FCBD0](v13);
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 24 * a4);
      if (*v16 == v9 && v16[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_16:
  v18 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = (*(v18 + 48) + 24 * a4);
  *v19 = v9;
  v19[1] = a2;
  v19[2] = a3;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

id _s26DocumentManagerExecutables11LaunchUtilsV28bundleIdentifierOfDefaultApp3for4nodeSSSg10Foundation3URLV_So7DOCNode_ptFZTf4nen_nSo6FPItemC_Tt1g5(uint64_t a1, void *a2)
{
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (&v45[-1] - v5);
  v7 = [objc_opt_self() defaultPermission];
  [v7 dataOwnerStateForNode_];

  v8 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v9 = [v8 isEnabled];

  if (v9)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v10 = [a2 providerDomainID];
    v37 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v10, 1);

    if (v37)
    {
      v38 = [v37 topLevelBundleIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = type metadata accessor for URL();
      (*(*(v39 - 8) + 56))(v6, 1, 1, v39);
      v11 = _s26DocumentManagerExecutables11LaunchUtilsV29_appContainerBundleIdentifier33_785CBA6FF492D1A84D3A93B2D10ABBABLL2of3urlSSSgSo7DOCNode_p_10Foundation3URLVSgtFZTf4enn_nSo6FPItemC_Tt1g5(a2, v6);
      v12 = v40;

      outlined destroy of CharacterSet?(v6, &_s10Foundation3URLVSgMd);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, v44, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v6, a2, v11, v12, 1, v46, 0);

  outlined destroy of CharacterSet?(v6, &_s10Foundation3URLVSgMd);
  if (!v46[0])
  {
    if (one-time initialization token for DocumentsAppIdentifier != -1)
    {
      swift_once();
    }

    v16 = static LaunchUtils.DocumentsAppIdentifier;
LABEL_23:

    return v16;
  }

  if (v46[0] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    if (one-time initialization token for DocumentsAppIdentifier != -1)
    {
      swift_once();
    }

    v16 = static LaunchUtils.DocumentsAppIdentifier;
    v17 = *algn_27EEF1808;
    *(inited + 32) = static LaunchUtils.DocumentsAppIdentifier;
    *(inited + 40) = v17;
    *(inited + 48) = 0xD000000000000031;
    *(inited + 56) = 0x8000000249BCBC40;
    v18 = objc_opt_self();

    v19 = [v18 mainBundle];
    v20 = [v19 bundleIdentifier];

    if (v20)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v45[0] = v23;
    v45[1] = v25;
    MEMORY[0x28223BE20](v21, v22);
    v43 = v45;
    v41 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v44 - 4), inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    swift_arrayDestroy();

    if ((v41 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

  v16 = v46[1];
  v26 = v46[2];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.UI);
  v28 = a2;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45[0] = v32;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BCBC10, v45);
    *(v31 + 12) = 2080;
    v45[10] = v28;
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v45);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v26, v45);
    _os_log_impl(&dword_2493AC000, v29, v30, "%s should open node: %s in: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v31, -1, -1);
  }

  return v16;
}

uint64_t _s26DocumentManagerExecutables11LaunchUtilsV29_appContainerBundleIdentifier33_785CBA6FF492D1A84D3A93B2D10ABBABLL2of3urlSSSgSo7DOCNode_p_10Foundation3URLVSgtFZTf4enn_nSo6FPItemC_Tt1g5(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = one-time initialization token for UI;
  v6 = a1;
  if (!v4)
  {
    if (v5 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.UI);
    v27 = v6;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
      *(v31 + 12) = 2112;
      *(v31 + 14) = v27;
      *v32 = v27;
      v34 = v27;
      _os_log_impl(&dword_2493AC000, v29, v30, "%s no fetching appID for FPItem: %@", v31, 0x16u);
      outlined destroy of CharacterSet?(v32, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    v18 = specialized _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:)(v27, a2);
LABEL_14:

    return v18;
  }

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v4;
    *v12 = v4;
    v14 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s fetching appID for FINode: %@", v11, 0x16u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v15 = [objc_opt_self() appLibraryNodeForNode_];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 appIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v8;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v22, v23))
    {

      return v18;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v24 = 136315650;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v43);
    *(v24 + 22) = 2112;
    *(v24 + 24) = v4;
    *v25 = v4;
    v27 = v21;
    _os_log_impl(&dword_2493AC000, v22, v23, "%s fetched appID: %s for FINode: %@", v24, 0x20u);
    outlined destroy of CharacterSet?(v25, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v26, -1, -1);
    MEMORY[0x24C1FE850](v24, -1, -1);

    goto LABEL_14;
  }

  v35 = v8;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v38 = 136315394;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
    *(v38 + 12) = 2112;
    *(v38 + 14) = v4;
    *v39 = v4;
    v41 = v35;
    _os_log_impl(&dword_2493AC000, v36, v37, "%s no appID for FINode: %@", v38, 0x16u);
    outlined destroy of CharacterSet?(v39, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v38, -1, -1);
  }

  else
  {
  }

  return 0;
}

void specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, int a2, int a3, int a4, void *a5, void *a6)
{
  v243 = a6;
  v240 = a4;
  v229 = a3;
  LODWORD(v239) = a2;
  v245 = a1;
  v253 = *MEMORY[0x277D85DE8];
  v228 = type metadata accessor for URL();
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228, v7);
  v226 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v223, v9);
  v222 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v224 = &v221 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v225 = &v221 - v16;
  v236 = type metadata accessor for DOCDragPasteboardType();
  MEMORY[0x28223BE20](v236, v17);
  v242 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for UTType();
  v19 = *(v237 - 1);
  MEMORY[0x28223BE20](v237, v20);
  v22 = &v221 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v241 = static DOCLog.UI;
  LODWORD(v235) = static os_log_type_t.debug.getter();
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA08D0;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = v24;
  v26 = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 64) = v26;
  *(v23 + 32) = 0xD00000000000005BLL;
  *(v23 + 40) = 0x8000000249BCBBB0;
  v238 = 0x8000000249BCBBB0;
  v231 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider);
  *(v23 + 96) = v231;
  v230 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSItemProvider and conformance NSObject, &lazy cache variable for type metadata for NSItemProvider);
  *(v23 + 104) = v230;
  *(v23 + 72) = a5;
  v244 = a5;
  v27 = v245;
  v28 = [v245 displayName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v23 + 136) = v25;
  *(v23 + 144) = v26;
  *(v23 + 112) = v29;
  *(v23 + 120) = v31;
  v32 = [v27 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = UTType.identifier.getter();
  v35 = v34;
  v36 = *(v19 + 8);
  v37 = v237;
  v36(v22, v237);
  *(v23 + 176) = MEMORY[0x277D837D0];
  *(v23 + 184) = v26;
  v232 = v26;
  *(v23 + 152) = v33;
  *(v23 + 160) = v35;
  os_log(_:dso:log:type:_:)();

  v38 = [v27 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = UTType.identifier.getter();
  v41 = String.isFolderUTI.getter(v39, v40);

  v235 = v19 + 8;
  v234 = v36;
  v36(v22, v37);
  v42 = v22;
  if (v41)
  {
    LODWORD(v43) = v239;
    v44 = v242;
    v45 = v244;
    if (v239 == 2)
    {
      v46 = [v245 cachedDomain];
      if (v46)
      {
        v47 = v46;
        LODWORD(v43) = [v46 supportsPickingFolders];
      }

      else
      {
        LODWORD(v43) = 0;
      }
    }
  }

  else
  {
    LODWORD(v43) = 0;
    v44 = v242;
    v45 = v244;
  }

  [v45 setPreferredPresentationStyle_];
  if (DOCNode.isFINode.getter())
  {
    *v44 = (v41 & 1) != 0;
  }

  else
  {
    *v44 = (v41 & 1) != 0;
  }

  swift_storeEnumTagMultiPayload();
  v48 = DOCDragPasteboardType.typeIdentifier.getter();
  v49 = MEMORY[0x24C1FAD20](v48);

  v50 = swift_allocObject();
  *(v50 + 16) = v245;
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for closure #1 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
  *(v51 + 24) = v50;
  v251 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v252 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v248 = 1107296256;
  v249 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v250 = &block_descriptor_145;
  v52 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v45 registerDataRepresentationForTypeIdentifier:v49 visibility:1 loadHandler:v52];
  _Block_release(v52);

  if ((v240 & 1) == 0)
  {
    v236 = 0;
    goto LABEL_41;
  }

  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v63 = v62;
      swift_unknownObjectRetain();
      v64 = [v63 fileURL];
      if (v64)
      {
        v65 = v226;
        v66 = v64;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = objc_opt_self();
        URL._bridgeToObjectiveC()(v68);
        v70 = v69;
        aBlock = 0;
        v71 = [v67 archivedDataWithRootObject:v69 requiringSecureCoding:1 error:&aBlock];

        v72 = aBlock;
        if (v71)
        {
          v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v73;

          swift_unknownObjectRelease();
          (*(v227 + 8))(v65, v228);
          goto LABEL_19;
        }

        v184 = v72;
        v75 = _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_unknownObjectRelease();
        (*(v227 + 8))(v65, v228);
LABEL_34:
        v236 = 0;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        __swift_project_value_buffer(v90, static Logger.UI);
        v91 = v75;
        v77 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v77, v92))
        {

          goto LABEL_40;
        }

        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        LODWORD(v239) = v43;
        v95 = v94;
        aBlock = v94;
        *v93 = 136315394;
        *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v238, &aBlock);
        *(v93 + 12) = 2080;
        v246 = v75;
        v96 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v97 = String.init<A>(describing:)();
        v99 = v41;
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &aBlock);

        *(v93 + 14) = v100;
        v41 = v99;
        _os_log_impl(&dword_2493AC000, v77, v92, "%s, failed to encode node for teamData error: %s", v93, 0x16u);
        swift_arrayDestroy();
        LODWORD(v43) = v239;
        MEMORY[0x24C1FE850](v95, -1, -1);
        MEMORY[0x24C1FE850](v93, -1, -1);

        goto LABEL_38;
      }

      swift_unknownObjectRelease();
    }

    v88 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v89 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
    v75 = [v88 initWithDomain:v89 code:1003 userInfo:0];

    swift_willThrow();
    goto LABEL_34;
  }

  v54 = v53;
  v55 = objc_opt_self();
  swift_unknownObjectRetain();
  v56 = [v54 itemID];
  aBlock = 0;
  v57 = [v55 archivedDataWithRootObject:v56 requiringSecureCoding:1 error:&aBlock];

  v58 = aBlock;
  if (!v57)
  {
    v74 = v58;
    v75 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  swift_unknownObjectRelease();

LABEL_19:
  NSItemProvider.doc_setTeamDataSafely(_:)(v59, v61);
  v236 = 0;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Logger.UI);
  swift_unknownObjectRetain();
  outlined copy of Data._Representation(v59, v61);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  outlined consume of Data._Representation(v59, v61);
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    aBlock = v239;
    *v79 = 136315650;
    *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v238, &aBlock);
    LODWORD(v226) = v78;
    *(v79 + 12) = 2080;
    outlined copy of Data._Representation(v59, v61);
    v80 = Data.description.getter();
    v82 = v81;
    outlined consume of Data._Representation(v59, v61);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &aBlock);

    *(v79 + 14) = v83;
    *(v79 + 22) = 2080;
    v246 = v245;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v84 = String.init<A>(describing:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &aBlock);

    *(v79 + 24) = v86;
    v37 = v237;
    _os_log_impl(&dword_2493AC000, v77, v226, "%s, encoded teamData: %s for node: %s", v79, 0x20u);
    v87 = v239;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v87, -1, -1);
    MEMORY[0x24C1FE850](v79, -1, -1);
    outlined consume of Data._Representation(v59, v61);
LABEL_38:

    goto LABEL_40;
  }

  outlined consume of Data._Representation(v59, v61);
LABEL_40:
  v45 = v244;
LABEL_41:
  v101 = [v245 displayName];
  if (!v101)
  {
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = MEMORY[0x24C1FAD20](v102);
  }

  [v45 setSuggestedName_];

  if ((v41 & 1) == 0)
  {
    v117 = DOCNode.fpfs_syncFetchFPItem()();
    if (!v117)
    {
LABEL_48:
      static os_log_type_t.debug.getter();
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_249B9FA70;
      v124 = v232;
      *(v123 + 56) = MEMORY[0x277D837D0];
      *(v123 + 64) = v124;
      *(v123 + 32) = 0xD00000000000005BLL;
      *(v123 + 40) = v238;
      v125 = v230;
      *(v123 + 96) = v231;
      *(v123 + 104) = v125;
      *(v123 + 72) = v45;
      v126 = v45;
      os_log(_:dso:log:type:_:)();

      v127 = v245;
      v128 = [v245 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      v129 = UTType.identifier.getter();
      v131 = v130;
      v234(v42, v37);
      v132 = MEMORY[0x24C1FAD20](v129, v131);

      v133 = swift_allocObject();
      *(v133 + 16) = v127;
      *(v133 + 24) = v117;
      v134 = swift_allocObject();
      *(v134 + 16) = partial apply for closure #4 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
      *(v134 + 24) = v133;
      v251 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
      v252 = v134;
      aBlock = MEMORY[0x277D85DD0];
      v248 = 1107296256;
      v249 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
      v250 = &block_descriptor_154;
      v135 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v136 = v117;

      [v126 registerFileRepresentationForTypeIdentifier:v132 fileOptions:1 visibility:0 loadHandler:v135];
      _Block_release(v135);

      if ((v240 & 1) != 0 || (v137 = [objc_opt_self() foldersInDock], v138 = objc_msgSend(v137, sel_isEnabled), v137, (v138 & 1) == 0) || (DOCDeviceIsPad() & 1) == 0 || (DOCNode.canBeAddedToDock.getter() & 1) == 0)
      {
        outlined destroy of DOCDragPasteboardType(v242);

        return;
      }

      v139 = [v245 nodeURL];
      if (v139)
      {
        v140 = v224;
        v141 = v139;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v142 = 0;
        v143 = v228;
        v144 = v225;
      }

      else
      {
        v142 = 1;
        v143 = v228;
        v144 = v225;
        v140 = v224;
      }

      v185 = v227;
      v186 = v227 + 56;
      v244 = *(v227 + 56);
      (v244)(v140, v142, 1, v143);
      outlined init with take of URL?(v140, v144);
      if ((*(v185 + 48))(v144, 1, v143) == 1)
      {
        outlined destroy of CharacterSet?(v144, &_s10Foundation3URLVSgMd);
LABEL_85:
        v215 = *MEMORY[0x277D06180];
        v216 = swift_allocObject();
        *(v216 + 16) = v245;
        *(v216 + 24) = v117;
        v217 = swift_allocObject();
        *(v217 + 16) = partial apply for closure #5 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
        *(v217 + 24) = v216;
        v251 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?)partial apply;
        v252 = v217;
        aBlock = MEMORY[0x277D85DD0];
        v248 = 1107296256;
        v249 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
        v250 = &block_descriptor_164;
        v218 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v219 = v136;
        v220 = v215;

        [v126 registerFileRepresentationForTypeIdentifier:v220 fileOptions:1 visibility:1 loadHandler:v218];
        _Block_release(v218);

        v166 = v242;
        goto LABEL_86;
      }

      v241 = v186;
      URL._bridgeToObjectiveC()(&v254);
      v188 = v187;
      (*(v185 + 8))(v144, v143);
      v189 = objc_opt_self();
      aBlock = 0;
      v190 = [v189 archivedDataWithRootObject:v188 requiringSecureCoding:1 error:&aBlock];
      v191 = aBlock;
      if (v190)
      {
        v192 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v194 = v193;

        v195 = v236;
        NSItemProvider.doc_setTeamDataSafely(_:)(v192, v194);
        if (!v195)
        {

          outlined consume of Data._Representation(v192, v194);
          goto LABEL_85;
        }

        v243 = v188;
        v196 = v195;
        outlined consume of Data._Representation(v192, v194);
        v143 = v228;
      }

      else
      {
        v243 = v188;
        v197 = v191;
        v198 = _convertNSErrorToError(_:)();

        v196 = v198;
        swift_willThrow();
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v199 = type metadata accessor for Logger();
      __swift_project_value_buffer(v199, static Logger.UI);
      swift_unknownObjectRetain();
      v200 = v196;
      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v201, v202))
      {
        v240 = v202;
        v203 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        aBlock = v239;
        *v203 = 136315650;
        *(v203 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v238, &aBlock);
        *(v203 + 12) = 2080;
        v204 = [v245 nodeURL];
        if (v204)
        {
          v205 = v204;
          v206 = v222;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v207 = 0;
        }

        else
        {
          v207 = 1;
          v206 = v222;
        }

        (v244)(v206, v207, 1, v143);
        v208 = String.init<A>(describing:)();
        v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v209, &aBlock);

        *(v203 + 14) = v210;
        *(v203 + 22) = 2112;
        v211 = v196;
        v212 = _swift_stdlib_bridgeErrorToNSError();
        *(v203 + 24) = v212;
        v213 = v237;
        *v237 = v212;
        _os_log_impl(&dword_2493AC000, v201, v240, "%s: failed to encode URL: %s as data: %@", v203, 0x20u);
        outlined destroy of CharacterSet?(v213, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v213, -1, -1);
        v214 = v239;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v214, -1, -1);
        MEMORY[0x24C1FE850](v203, -1, -1);
      }

      else
      {
      }

      goto LABEL_85;
    }

LABEL_47:
    v118 = swift_allocObject();
    *(v118 + 16) = v45;
    *(v118 + 24) = v117;
    v251 = partial apply for closure #3 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    v252 = v118;
    aBlock = MEMORY[0x277D85DD0];
    v248 = 1107296256;
    v249 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v250 = &block_descriptor_170_0;
    v119 = _Block_copy(&aBlock);
    v120 = v117;
    v121 = v45;
    v122 = v120;

    [v122 fetchURL_];
    _Block_release(v119);

    goto LABEL_48;
  }

  v103 = objc_opt_self();
  aBlock = 0;
  v104 = [v103 archivedDataWithRootObject:v245 requiringSecureCoding:1 error:&aBlock];
  v105 = aBlock;
  if (v104)
  {
    v106 = v43;
    v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    LODWORD(v239) = v106;
    v109 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
    v110 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6090);
    v111 = [v109 initWithActivityType_];

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:));
    outlined destroy of String(&unk_285C7FFB8);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v111 setRequiredUserInfoKeys_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    aBlock = 0xD000000000000019;
    v248 = 0x8000000249BC5EE0;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v43;
    *(inited + 80) = v108;
    v114 = v43;
    outlined copy of Data._Representation(v43, v108);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_ss11AnyHashableV_yptMd);
    v115 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v111 addUserInfoEntriesFromDictionary_];

    [v111 setEligibleForSearch_];
    [v111 setEligibleForHandoff_];
    [v111 setEligibleForPrediction_];
    [v111 setEligibleForPublicIndexing_];
    v116 = v244;
    [v244 sbui:*MEMORY[0x277D06118] setRequiredApplicationBundleIdentifier:?];
    LOBYTE(v43) = v239;
    [v116 registerObject:v111 visibility:0];

    outlined consume of Data._Representation(v114, v108);
  }

  else
  {
    v145 = v105;
    v146 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v147 = type metadata accessor for Logger();
    __swift_project_value_buffer(v147, static Logger.UI);
    v148 = v45;
    v149 = v146;
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      aBlock = v239;
      *v152 = 136315650;
      *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v238, &aBlock);
      *(v152 + 12) = 2080;
      v153 = v37;
      v154 = v148;
      v155 = [v154 description];
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v237) = v151;
      v158 = v157;

      v37 = v153;
      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, &aBlock);

      *(v152 + 14) = v159;
      *(v152 + 22) = 2080;
      v246 = v146;
      v160 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v161 = String.init<A>(describing:)();
      v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, &aBlock);

      *(v152 + 24) = v163;
      _os_log_impl(&dword_2493AC000, v150, v237, "%s: %s, failed to register NSUserActivity for folder. Error: %s", v152, 0x20u);
      v164 = v239;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v164, -1, -1);
      MEMORY[0x24C1FE850](v152, -1, -1);
    }

    else
    {
    }

    v236 = 0;
  }

  v165 = DOCNode.fpfs_syncFetchFPItem()();
  v117 = v165;
  if (v43)
  {
    v45 = v244;
    if (!v165)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v166 = v242;
  if (v117)
  {
    if (v229)
    {
      outlined destroy of DOCDragPasteboardType(v242);

      return;
    }

    v167 = v242;
    v168 = v117;
    static os_log_type_t.debug.getter();
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_249B9FA70;
    v170 = v232;
    *(v169 + 56) = MEMORY[0x277D837D0];
    *(v169 + 64) = v170;
    *(v169 + 32) = 0xD00000000000005BLL;
    *(v169 + 40) = v238;
    v171 = v230;
    *(v169 + 96) = v231;
    *(v169 + 104) = v171;
    v172 = v244;
    *(v169 + 72) = v244;
    v173 = v172;
    os_log(_:dso:log:type:_:)();

    v174 = v245;
    v175 = [v245 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v176 = UTType.identifier.getter();
    v178 = v177;
    v234(v42, v37);
    v179 = MEMORY[0x24C1FAD20](v176, v178);

    v180 = swift_allocObject();
    *(v180 + 16) = v174;
    *(v180 + 24) = v168;
    v181 = swift_allocObject();
    *(v181 + 16) = partial apply for closure #2 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    *(v181 + 24) = v180;
    v251 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed @callee_guaranteed (@guaranteed FPItem?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
    v252 = v181;
    aBlock = MEMORY[0x277D85DD0];
    v248 = 1107296256;
    v249 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed FPItem?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
    v250 = &block_descriptor_179;
    v182 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v183 = v168;

    [v173 registerFileProviderItemForTypeIdentifier:v179 visibility:0 loadHandler:v182];
    _Block_release(v182);

    v166 = v167;
  }

LABEL_86:
  outlined destroy of DOCDragPasteboardType(v166);
}

uint64_t specialized static FPItem.sessionContainsDOCNode(_:)(void *a1, void (*a2)(char *, uint64_t, uint64_t))
{
  if (specialized static FPItem.sessionContainsLocations(_:)(a1, a2))
  {
    return 1;
  }

  return specialized static FPItem.sessionContainsFile(_:)(a1, a2);
}

uint64_t specialized static FPItem.sessionContainsLocations(_:)(id a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v68 = &v60 - v5;
  v73 = type metadata accessor for UTType();
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v7);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v60 - v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v60 - v16;
  v18 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_57;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v67 = v17;
  v63 = a1;
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v24 = v19 + 32;
  v25 = 0x8000000249BC5F70;
  v69 = v19 & 0xC000000000000001;
  v70 = v20;
  v65 = (v19 & 0xFFFFFFFFFFFFFF8);
  v61 = v19 + 32;
  v62 = v6;
  v71 = v19;
  while (1)
  {
    if (!v22)
    {
      if (v21 >= *(v23 + 16))
      {
        __break(1u);
LABEL_59:
        v38 = __CocoaSet.count.getter();
        if (!v38)
        {
          goto LABEL_52;
        }

LABEL_31:
        v17 = 0;
        v71 = v25 & 0xFFFFFFFFFFFFFF8;
        v72 = (v25 & 0xC000000000000001);
        v65 = (v6 + 6);
        v66 = v12;
        v62 = v6 + 4;
        v69 = v38;
        v70 = v25;
        v74 = v20;
        while (1)
        {
          if (v72)
          {
            v19 = MEMORY[0x24C1FC540](v17, v25);
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v17 >= *(v71 + 16))
            {
              goto LABEL_56;
            }

            v19 = *(v25 + 8 * v17 + 32);
            swift_unknownObjectRetain();
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v20 = __CocoaSet.count.getter();
              goto LABEL_3;
            }
          }

          v40 = [v19 contentType];
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = UTType.identifier.getter();
          v43 = v42;
          if (one-time initialization token for folderUTICache != -1)
          {
            swift_once();
          }

          a1 = folderUTICache;
          v44 = MEMORY[0x24C1FAD20](v41, v43);
          v45 = [a1 objectForKey_];

          if (v45)
          {

            v39 = [v45 BOOLValue];
            swift_unknownObjectRelease();

            (v74)(v12, v73);
            if (v39)
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          }

          v46 = v68;
          UTType.init(_:)();
          v47 = v73;
          if ((*v65)(v46, 1, v73) == 1)
          {
            outlined destroy of CharacterSet?(v46, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
          }

          else
          {
            v48 = v64;
            (*v62)(v64, v46, v47);
            v49 = v67;
            static UTType.folder.getter();
            v50 = UTType.conforms(to:)();
            (v74)(v49, v47);
            if (v50)
            {
              static UTType.package.getter();
              v51 = UTType.conforms(to:)();
              v52 = v49;
              v53 = v74;
              (v74)(v52, v47);
              (v53)(v48, v47);
              v54 = v51 ^ 1;
              goto LABEL_46;
            }

            (v74)(v48, v47);
          }

          v54 = 0;
LABEL_46:
          v55 = folderUTICache;
          v56 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          a1 = v55;
          v57 = [v56 initWithBool_];
          v58 = MEMORY[0x24C1FAD20](v41, v43);

          [a1 setObject:v57 forKey:v58];
          swift_unknownObjectRelease();

          v12 = v66;
          (v74)();
          if (v54)
          {
LABEL_51:
            v36 = 1;
            goto LABEL_53;
          }

LABEL_33:
          ++v17;
          v25 = v70;
          if (v6 == v69)
          {
            goto LABEL_52;
          }
        }
      }

      v26 = *(v24 + 8 * v21);
      v27 = __OFADD__(v21++, 1);
      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v26 = MEMORY[0x24C1FC540](v21, v19);
    v27 = __OFADD__(v21++, 1);
    if (v27)
    {
LABEL_23:
      __break(1u);
LABEL_24:

      v36 = 0;
      goto LABEL_28;
    }

LABEL_8:
    v72 = v26;
    v28 = [v26 itemProvider];
    v29 = [v28 registeredTypeIdentifiers];

    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = (v30 + 40);
    v32 = *(v30 + 16) + 1;
LABEL_10:
    if (--v32)
    {
      break;
    }

    v20 = v70;
    v19 = v71;
    v6 = v62;
    a1 = v63;
    v17 = v67;
    v22 = v69;
    v23 = v65;
    v24 = v61;
    if (v21 == v70)
    {
      goto LABEL_24;
    }
  }

  v34 = *(v31 - 1);
  v33 = *v31;
  v35 = v34 == 0xD000000000000029 && 0x8000000249BC5F70 == v33;
  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_27;
  }

  if (v34 != 0xD000000000000029 || 0x8000000249BC5FD0 != v33)
  {
    v31 += 2;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_27:
  v36 = 1;
  v6 = v62;
  a1 = v63;
  v17 = v67;
LABEL_28:
  v75 = &unk_285DA8400;
  v37 = swift_dynamicCastObjCProtocolConditional();
  if (!v37)
  {
    return v36;
  }

  v19 = v37;
  LODWORD(v61) = v36;
  swift_unknownObjectRetain();
  static UTType.item.getter();
  swift_getObjectType();
  v25 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v19, v17);
  v20 = v6[1];
  (v20)(v17, v73);
  if (v25 >> 62)
  {
    goto LABEL_59;
  }

  v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
    goto LABEL_31;
  }

LABEL_52:
  v36 = v61;
LABEL_53:

  swift_unknownObjectRelease();
  return v36;
}

uint64_t specialized static FPItem.sessionContainsFile(_:)(id a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v68 = &v60 - v5;
  v73 = type metadata accessor for UTType();
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v7);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v60 - v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v60 - v16;
  v18 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_57;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v67 = v17;
  v63 = a1;
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v24 = v19 + 32;
  v25 = 0x8000000249BC5F40;
  v69 = v19 & 0xC000000000000001;
  v70 = v20;
  v65 = (v19 & 0xFFFFFFFFFFFFFF8);
  v61 = v19 + 32;
  v62 = v6;
  v71 = v19;
  while (1)
  {
    if (!v22)
    {
      if (v21 >= *(v23 + 16))
      {
        __break(1u);
LABEL_59:
        v38 = __CocoaSet.count.getter();
        if (!v38)
        {
          goto LABEL_52;
        }

LABEL_31:
        v17 = 0;
        v71 = v25 & 0xFFFFFFFFFFFFFF8;
        v72 = (v25 & 0xC000000000000001);
        v65 = (v6 + 6);
        v66 = v12;
        v62 = v6 + 4;
        v69 = v38;
        v70 = v25;
        v74 = v20;
        while (1)
        {
          if (v72)
          {
            v19 = MEMORY[0x24C1FC540](v17, v25);
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v17 >= *(v71 + 16))
            {
              goto LABEL_56;
            }

            v19 = *(v25 + 8 * v17 + 32);
            swift_unknownObjectRetain();
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v20 = __CocoaSet.count.getter();
              goto LABEL_3;
            }
          }

          v40 = [v19 contentType];
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = UTType.identifier.getter();
          v43 = v42;
          if (one-time initialization token for folderUTICache != -1)
          {
            swift_once();
          }

          a1 = folderUTICache;
          v44 = MEMORY[0x24C1FAD20](v41, v43);
          v45 = [a1 objectForKey_];

          if (v45)
          {

            v39 = [v45 BOOLValue];
            swift_unknownObjectRelease();

            (v74)(v12, v73);
            if (!v39)
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          }

          v46 = v68;
          UTType.init(_:)();
          v47 = v73;
          if ((*v65)(v46, 1, v73) == 1)
          {
            outlined destroy of CharacterSet?(v46, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
          }

          else
          {
            v48 = v64;
            (*v62)(v64, v46, v47);
            v49 = v67;
            static UTType.folder.getter();
            v50 = UTType.conforms(to:)();
            (v74)(v49, v47);
            if (v50)
            {
              static UTType.package.getter();
              v51 = UTType.conforms(to:)();
              v52 = v49;
              v53 = v74;
              (v74)(v52, v47);
              (v53)(v48, v47);
              v54 = v51 ^ 1;
              goto LABEL_46;
            }

            (v74)(v48, v47);
          }

          v54 = 0;
LABEL_46:
          v55 = folderUTICache;
          v56 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          a1 = v55;
          v57 = [v56 initWithBool_];
          v58 = MEMORY[0x24C1FAD20](v41, v43);

          [a1 setObject:v57 forKey:v58];
          swift_unknownObjectRelease();

          v12 = v66;
          (v74)();
          if ((v54 & 1) == 0)
          {
LABEL_51:
            v36 = 1;
            goto LABEL_53;
          }

LABEL_33:
          ++v17;
          v25 = v70;
          if (v6 == v69)
          {
            goto LABEL_52;
          }
        }
      }

      v26 = *(v24 + 8 * v21);
      v27 = __OFADD__(v21++, 1);
      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v26 = MEMORY[0x24C1FC540](v21, v19);
    v27 = __OFADD__(v21++, 1);
    if (v27)
    {
LABEL_23:
      __break(1u);
LABEL_24:

      v36 = 0;
      goto LABEL_28;
    }

LABEL_8:
    v72 = v26;
    v28 = [v26 itemProvider];
    v29 = [v28 registeredTypeIdentifiers];

    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = (v30 + 40);
    v32 = *(v30 + 16) + 1;
LABEL_10:
    if (--v32)
    {
      break;
    }

    v20 = v70;
    v19 = v71;
    v6 = v62;
    a1 = v63;
    v17 = v67;
    v22 = v69;
    v23 = v65;
    v24 = v61;
    if (v21 == v70)
    {
      goto LABEL_24;
    }
  }

  v34 = *(v31 - 1);
  v33 = *v31;
  v35 = v34 == 0xD000000000000025 && 0x8000000249BC5F40 == v33;
  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_27;
  }

  if (v34 != 0xD000000000000025 || 0x8000000249BC5FA0 != v33)
  {
    v31 += 2;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_27:
  v36 = 1;
  v6 = v62;
  a1 = v63;
  v17 = v67;
LABEL_28:
  v75 = &unk_285DA8400;
  v37 = swift_dynamicCastObjCProtocolConditional();
  if (!v37)
  {
    return v36;
  }

  v19 = v37;
  LODWORD(v61) = v36;
  swift_unknownObjectRetain();
  static UTType.item.getter();
  swift_getObjectType();
  v25 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v19, v17);
  v20 = v6[1];
  (v20)(v17, v73);
  if (v25 >> 62)
  {
    goto LABEL_59;
  }

  v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
    goto LABEL_31;
  }

LABEL_52:
  v36 = v61;
LABEL_53:

  swift_unknownObjectRelease();
  return v36;
}

void specialized static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v61 = a4;
  v71 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v74)
  {
    return;
  }

  v56 = v12;
  v73 = swift_allocObject();
  *(v73 + 16) = MEMORY[0x277D84F90];
  v72 = dispatch_group_create();
  v60 = v6;
  v59 = v7;
  v58 = v11;
  v57 = v10;
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_22:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v46 = static OS_dispatch_queue.main.getter();
    v47 = swift_allocObject();
    v48 = v61;
    v49 = v62;
    v47[2] = v61;
    v47[3] = v49;
    v47[4] = v73;
    v81 = partial apply for closure #2 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v82 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v80 = &block_descriptor_113;
    v50 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v48);

    v51 = v63;
    static DispatchQoS.unspecified.getter();
    v76 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v52 = v57;
    v53 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v54 = v72;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v50);

    (*(v59 + 8))(v52, v53);
    (*(v56 + 8))(v51, v58);

    return;
  }

LABEL_21:
  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_4:
  v16 = 0;
  v69 = a1 & 0xFFFFFFFFFFFFFF8;
  v70 = a1 & 0xC000000000000001;
  v68 = 0x8000000249BCBD70;
  v64 = &v79;
  v67 = xmmword_249B9FA70;
  v65 = v15;
  v66 = a1;
  while (1)
  {
    if (v70)
    {
      v18 = MEMORY[0x24C1FC540](v16, a1);
      v17 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v16 >= *(v69 + 16))
      {
        goto LABEL_20;
      }

      v18 = *(a1 + 8 * v16 + 32);
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v20 = [v18 v17[370]];
    v21 = NSItemProvider.typeToRequest.getter();
    v23 = v22;

    if (!v23)
    {
      break;
    }

    v75 = v19;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = v67;
    v25 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    v26 = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = 0xD00000000000003CLL;
    *(v24 + 40) = v68;
    *(v24 + 96) = v25;
    *(v24 + 104) = v26;
    *(v24 + 64) = v26;
    *(v24 + 72) = v21;
    *(v24 + 80) = v23;

    os_log(_:dso:log:type:_:)();

    v27 = v72;
    dispatch_group_enter(v72);
    v28 = [v18 v17[370]];
    v29 = MEMORY[0x24C1FAD20](v21, v23);
    v30 = swift_allocObject();
    v31 = v18;
    v32 = v71;
    v30[2] = v27;
    v30[3] = v32;
    v30[4] = v31;
    v30[5] = v21;
    v30[6] = v23;
    v34 = v73;
    v33 = v74;
    v30[7] = v74;
    v30[8] = v34;
    v81 = partial apply for closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v82 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
    v80 = &block_descriptor_107;
    v35 = _Block_copy(&aBlock);

    v36 = v27;
    v37 = v32;
    v38 = v31;
    v39 = v33;

    v40 = [v28 loadInPlaceFileRepresentationForTypeIdentifier:v29 completionHandler:v35];
    _Block_release(v35);

    ++v16;
    a1 = v66;
    if (v75 == v65)
    {
      goto LABEL_22;
    }
  }

  v41 = [v18 v17[370]];
  v42 = [v41 registeredTypeIdentifiers];

  v43 = MEMORY[0x277D837D0];
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = v67;
  *(v45 + 56) = v43;
  *(v45 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v45 + 32) = 0xD00000000000003CLL;
  *(v45 + 40) = v68;
  *(v45 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  *(v45 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  *(v45 + 72) = v44;
  os_log(_:dso:log:type:_:)();
}

void _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(unint64_t a1, char *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for DOCOperationItem();
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v74 = &v66 - v17;
  if (![a2 canPerform_])
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  v19 = a1 >> 62;
  v71 = a5;
  v72 = a4;
  v70 = a3;
  v73 = (a1 >> 62);
  if (!v18)
  {
    v80 = MEMORY[0x277D84F90];
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

    goto LABEL_90;
  }

  v80 = MEMORY[0x277D84F90];
  if (v19)
  {
    v65 = v18;
    v20 = __CocoaSet.count.getter();
    v18 = v65;
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v68 = v18;
  v69 = a2;
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_33:
    v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(v27);

    v80 = v23;
    v37 = *MEMORY[0x277CC6048];

    v38 = specialized Set.contains(_:)(v37, v23);

    if (v38)
    {
      v66 = v37;
      v67 = v23;
      v79 = v21;
      if (v20)
      {
        v76 = a1 & 0xC000000000000001;
        v23 = a1 & 0xFFFFFFFFFFFFFF8;
        v39 = 0;
        if ((a1 & 0xC000000000000001) == 0)
        {
          goto LABEL_40;
        }

LABEL_48:
        while (2)
        {
          MEMORY[0x24C1FC540](v39, a1);
          v40 = v39 + 1;
          if (!__OFADD__(v39, 1))
          {
            while (1)
            {
              swift_getObjectType();
              v41 = DOCNode.fpfs_syncFetchFINode()();
              if (v42)
              {
                break;
              }

              v5 = v41;
              v43 = swift_unknownObjectRelease();
              if (!v5)
              {
                goto LABEL_38;
              }

              MEMORY[0x24C1FB090](v43);
              if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v21 = v79;
              if (v40 == v20)
              {
                goto LABEL_51;
              }

              v39 = v40;
              if (v76)
              {
                goto LABEL_48;
              }

LABEL_40:
              if (v39 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_85;
              }

              swift_unknownObjectRetain();
              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_84;
              }
            }

            swift_unknownObjectRelease();
LABEL_38:
            ++v39;
            if (v40 == v20)
            {
              goto LABEL_51;
            }

            if (v76)
            {
              continue;
            }

            goto LABEL_40;
          }

          break;
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        swift_once();
        while (1)
        {
          v46 = static DOCLog.UI;
          static os_log_type_t.debug.getter();
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v47 = swift_allocObject();
          v68 = xmmword_249B9A480;
          *(v47 + 16) = xmmword_249B9A480;
          v28 = 0x8000000249BCBB20;
          *(v47 + 56) = MEMORY[0x277D837D0];
          v66 = lazy protocol witness table accessor for type String and conformance String();
          v67 = 0x8000000249BCBB20;
          *(v47 + 64) = v66;
          *(v47 + 32) = 0xD000000000000044;
          *(v47 + 40) = 0x8000000249BCBB20;
          os_log(_:dso:log:type:_:)();

          v76 = v46;
          v48 = v5 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v49 = MEMORY[0x277D84F90];
          if (!v48)
          {
            break;
          }

          v80 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 & ~(v48 >> 63), 0);
          if ((v48 & 0x8000000000000000) == 0)
          {
            v50 = v23;
            v51 = a2;
            v49 = v80;
            if ((a1 & 0xC000000000000001) != 0)
            {
              v52 = 0;
              v53 = v77;
              v54 = v75;
              do
              {
                *v54 = MEMORY[0x24C1FC540](v52, a1);
                swift_storeEnumTagMultiPayload();
                v80 = v49;
                v56 = *(v49 + 16);
                v55 = *(v49 + 24);
                if (v56 >= v55 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1);
                  v53 = v77;
                  v49 = v80;
                }

                ++v52;
                *(v49 + 16) = v56 + 1;
                outlined init with take of DOCDragPasteboardType(v54, v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56, type metadata accessor for DOCOperationItem);
              }

              while (v48 != v52);
            }

            else
            {
              v57 = (a1 + 32);
              v58 = v74;
              do
              {
                *v58 = *v57;
                swift_storeEnumTagMultiPayload();
                v80 = v49;
                v59 = *(v49 + 16);
                v60 = *(v49 + 24);
                swift_unknownObjectRetain();
                if (v59 >= v60 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v59 + 1, 1);
                  v49 = v80;
                }

                *(v49 + 16) = v59 + 1;
                outlined init with take of DOCDragPasteboardType(v58, v49 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v59, type metadata accessor for DOCOperationItem);
                ++v57;
                --v48;
              }

              while (v48);
            }

            a2 = v51;
            v23 = v50;
            break;
          }

          __break(1u);
LABEL_90:
          v29 = __CocoaSet.count.getter();
LABEL_19:
          v23 = a1 & 0xC000000000000001;
          v76 = a2;
          v30 = a2;
          v31 = 0;
          v69 = 0;
          v5 = MEMORY[0x277D84F90];
          while (v29 != v31)
          {
            if (v23)
            {
              MEMORY[0x24C1FC540](v31, a1);
              a2 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_82;
              }
            }

            else
            {
              if (v31 >= *(v28 + 16))
              {
                goto LABEL_83;
              }

              swift_unknownObjectRetain();
              a2 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_82;
              }
            }

            swift_getObjectType();
            v32 = DOCNode.fpfs_syncFetchFPItem()();
            v33 = swift_unknownObjectRelease();
            ++v31;
            if (v32)
            {
              MEMORY[0x24C1FB090](v33);
              if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v5 = v80;
              v31 = a2;
            }
          }

          v34 = [objc_opt_self() defaultManager];
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v36 = [v34 eligibleActionsForDroppingItems:isa underItem:v30];

          type metadata accessor for FPAction(0);
          lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
          v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          a2 = v76;
LABEL_54:
          v5 = v73;
          if (one-time initialization token for UI != -1)
          {
            goto LABEL_86;
          }
        }

        v61 = [objc_opt_self() defaultManager];
        if (specialized Set.contains(_:)(*MEMORY[0x277CC6078], v23))
        {

          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v49, a2, 0, 0, 1, v70, v72, v71);
        }

        else if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v23))
        {

          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v49, a2, 0, 0, 1, v70, v72, v71);
        }

        else
        {
          v62 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v23);

          if ((v62 & 1) == 0)
          {

            static os_log_type_t.debug.getter();
            v63 = swift_allocObject();
            *(v63 + 16) = v68;
            v64 = v66;
            *(v63 + 56) = MEMORY[0x277D837D0];
            *(v63 + 64) = v64;
            *(v63 + 32) = 0xD000000000000044;
            *(v63 + 40) = v67;
            os_log(_:dso:log:type:_:)();

            if (v72)
            {
              v72(0);
            }

            goto LABEL_77;
          }

          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(1u, v49, a2, 0, 0, 1, v70, v72, v71);
        }

LABEL_77:

        return;
      }

LABEL_51:
      v44 = isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v68, v21);

      v23 = v67;
      if ((v44 & 1) == 0)
      {
        v45 = specialized Set._Variant.remove(_:)();

        v23 = v80;
        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  v76 = a2;
  v22 = 0;
  v23 = a1 & 0xC000000000000001;
  a2 = (a1 & 0xFFFFFFFFFFFFFF8);
  v5 = &lazy protocol witness table cache variable for type FPAction and conformance FPAction;
  while (1)
  {
    if (!v23)
    {
      if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      a4 = *(a1 + 8 * v22 + 32);
      swift_unknownObjectRetain();
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      goto LABEL_10;
    }

    a4 = MEMORY[0x24C1FC540](v22, a1);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

LABEL_10:
    v25 = [a4 doc_eligibleActions];
    type metadata accessor for FPAction(0);
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
    v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    specialized Array.append<A>(contentsOf:)(v26);
    ++v22;
    if (v24 == v20)
    {
      v27 = v80;
      a2 = v76;
      v21 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_15:
  if (a4)
  {
    a4(0);
  }
}

void specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v67 = a3;
  v10 = type metadata accessor for DOCOperationItem();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v65 = &v59 - v16;
  if (![a2 canPerform_])
  {
    goto LABEL_15;
  }

  v63 = a4;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = (a1 >> 62);
  v19 = MEMORY[0x277D84F90];
  v68 = a2;
  v64 = (a1 >> 62);
  *&v61 = v17;
  if (!v17)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v73 = v19;
      v62 = a5;
      v20 = v25;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v18)
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_20;
      }

      goto LABEL_93;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v73 = MEMORY[0x277D84F90];
  if (v18)
  {
    a4 = __CocoaSet.count.getter();
  }

  else
  {
    a4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_unknownObjectRetain();
  v20 = MEMORY[0x277D84F90];
  if (!a4)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v62 = a5;
  v21 = 0;
  a5 = a1 & 0xFFFFFFFFFFFFFF8;
  v18 = &lazy protocol witness table cache variable for type FPAction and conformance FPAction;
  while (1)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v22 = *(a1 + 8 * v21 + 32);
      swift_unknownObjectRetain();
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      goto LABEL_10;
    }

    v22 = MEMORY[0x24C1FC540](v21, a1);
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

LABEL_10:
    v23 = [v22 doc_eligibleActions];
    type metadata accessor for FPAction(0);
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    specialized Array.append<A>(contentsOf:)(v5);
    ++v21;
    if (v20 == a4)
    {
      v24 = v73;
      a5 = v62;
      v18 = v64;
      v20 = MEMORY[0x277D84F90];
LABEL_34:
      v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(v24);

      v73 = v5;
      v33 = *MEMORY[0x277CC6048];

      v34 = specialized Set.contains(_:)(v33, v5);

      if ((v34 & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      v59 = v33;
      v60 = v5;
      v72 = v20;
      if (!a4)
      {
LABEL_53:
        v39 = isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v61, v20);

        v5 = v60;
        if (v39)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = specialized Set._Variant.remove(_:)();
          swift_unknownObjectRelease();

          v5 = v73;
        }

        goto LABEL_56;
      }

      v69 = a1 & 0xC000000000000001;
      v35 = 0;
      if ((a1 & 0xC000000000000001) == 0)
      {
        goto LABEL_41;
      }

LABEL_49:
      while (2)
      {
        MEMORY[0x24C1FC540](v35, a1);
        v5 = v35 + 1;
        if (!__OFADD__(v35, 1))
        {
          while (1)
          {
            swift_getObjectType();
            v36 = DOCNode.fpfs_syncFetchFINode()();
            if (v37)
            {
              break;
            }

            v18 = v36;
            v38 = swift_unknownObjectRelease();
            if (!v18)
            {
              goto LABEL_39;
            }

            MEMORY[0x24C1FB090](v38);
            if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v20 = v72;
            if (v5 == a4)
            {
              goto LABEL_53;
            }

            v35 = v5;
            if (v69)
            {
              goto LABEL_49;
            }

LABEL_41:
            if (v35 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            swift_unknownObjectRetain();
            v5 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_87;
            }
          }

          swift_unknownObjectRelease();
LABEL_39:
          ++v35;
          if (v5 == a4)
          {
            goto LABEL_53;
          }

          if (v69)
          {
            continue;
          }

          goto LABEL_41;
        }

        break;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      swift_once();
      while (1)
      {
        v41 = static DOCLog.UI;
        static os_log_type_t.debug.getter();
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v42 = swift_allocObject();
        v61 = xmmword_249B9A480;
        *(v42 + 16) = xmmword_249B9A480;
        *(v42 + 56) = MEMORY[0x277D837D0];
        v59 = lazy protocol witness table accessor for type String and conformance String();
        v60 = 0x8000000249BCBB20;
        *(v42 + 64) = v59;
        *(v42 + 32) = 0xD000000000000044;
        *(v42 + 40) = 0x8000000249BCBB20;
        os_log(_:dso:log:type:_:)();

        v43 = v18 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = MEMORY[0x277D84F90];
        v69 = v41;
        if (!v43)
        {
          break;
        }

        v73 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 & ~(v43 >> 63), 0);
        if ((v43 & 0x8000000000000000) == 0)
        {
          v45 = v5;
          v46 = a5;
          v44 = v73;
          if ((a1 & 0xC000000000000001) != 0)
          {
            v47 = 0;
            v48 = v66;
            do
            {
              *v48 = MEMORY[0x24C1FC540](v47, a1);
              swift_storeEnumTagMultiPayload();
              v73 = v44;
              v50 = *(v44 + 16);
              v49 = *(v44 + 24);
              if (v50 >= v49 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
                v44 = v73;
              }

              ++v47;
              *(v44 + 16) = v50 + 1;
              outlined init with take of DOCDragPasteboardType(v48, v44 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v50, type metadata accessor for DOCOperationItem);
            }

            while (v43 != v47);
          }

          else
          {
            v51 = (a1 + 32);
            v52 = v65;
            do
            {
              *v52 = *v51;
              swift_storeEnumTagMultiPayload();
              v73 = v44;
              v53 = *(v44 + 16);
              v54 = *(v44 + 24);
              swift_unknownObjectRetain();
              if (v53 >= v54 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v53 + 1, 1);
                v44 = v73;
              }

              *(v44 + 16) = v53 + 1;
              outlined init with take of DOCDragPasteboardType(v52, v44 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v53, type metadata accessor for DOCOperationItem);
              ++v51;
              --v43;
            }

            while (v43);
          }

          a5 = v46;
          v5 = v45;
          break;
        }

        __break(1u);
LABEL_93:
        v26 = __CocoaSet.count.getter();
LABEL_20:
        swift_unknownObjectRetain();
        v27 = 0;
        v69 = 0;
        v18 = MEMORY[0x277D84F90];
        while (v26 != v27)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v27, a1);
            a5 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v27 >= *(v5 + 16))
            {
              goto LABEL_86;
            }

            swift_unknownObjectRetain();
            a5 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_85;
            }
          }

          swift_getObjectType();
          v28 = DOCNode.fpfs_syncFetchFPItem()();
          v29 = swift_unknownObjectRelease();
          ++v27;
          if (v28)
          {
            MEMORY[0x24C1FB090](v29);
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v73;
            v27 = a5;
          }
        }

        v30 = [objc_opt_self() defaultManager];
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v32 = [v30 eligibleActionsForDroppingItems:isa underItem:v20];

        type metadata accessor for FPAction(0);
        lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
        v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        a5 = v62;
LABEL_56:
        v18 = v64;
LABEL_57:
        if (one-time initialization token for UI != -1)
        {
          goto LABEL_89;
        }
      }

      v55 = [objc_opt_self() defaultManager];
      if (specialized Set.contains(_:)(*MEMORY[0x277CC6078], v5))
      {

        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v44, v68, 0, 0, 1, v67, v63, a5);
      }

      else if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v5))
      {

        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v44, v68, 0, 0, 1, v67, v63, a5);
      }

      else
      {
        v56 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v5);

        if ((v56 & 1) == 0)
        {

          static os_log_type_t.debug.getter();
          v57 = swift_allocObject();
          *(v57 + 16) = v61;
          v58 = v59;
          *(v57 + 56) = MEMORY[0x277D837D0];
          *(v57 + 64) = v58;
          *(v57 + 32) = 0xD000000000000044;
          *(v57 + 40) = v60;
          os_log(_:dso:log:type:_:)();

          if (v63)
          {
            v63(0);
          }

          goto LABEL_80;
        }

        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(1u, v44, v68, 0, 0, 1, v67, v63, a5);
      }

LABEL_80:

      return;
    }
  }

  __break(1u);
LABEL_15:
  if (a4)
  {
    a4(0);
  }
}

uint64_t specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v6 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 40;
    do
    {
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v3;
    }

    while (v3);

    return v6;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  v34 = type metadata accessor for UTType();
  v4 = *(v34 - 8);
  v6 = MEMORY[0x28223BE20](v34, v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 localDragSession])
  {
    return;
  }

  swift_unknownObjectRelease();
  v8 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x277D84F90]);
  v12 = [a1 items];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_32:

    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_6:
  if (v14 >= 1)
  {
    v32 = v11;
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v17 = (v4 + 8);
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x24C1FC540](v15, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      if ([v18 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      v38 = v36;
      v39 = v37;
      outlined init with copy of DOCGridLayout.Spec?(&v38, &v36, &_sypSgMd);
      if (*(&v37 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCast())
        {
          outlined destroy of CharacterSet?(&v38, &_sypSgMd);
LABEL_22:
          v20 = v35;
          v21 = [v35 contentType];
          v22 = v33;
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v21) = UTType.conforms(to:)();
          (*v17)(v22, v34);
          if (v21)
          {
            v23 = v17;
            v24 = v13;
            v25 = v14;
            v26 = v16;
            v27 = a2;
            v29 = *(v32 + 2);
            v28 = *(v32 + 3);
            if (v29 >= v28 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v32);
            }

            v30 = v32;
            *(v32 + 2) = v29 + 1;
            v31 = &v30[16 * v29];
            *(v31 + 4) = v19;
            *(v31 + 5) = v20;
            a2 = v27;
            v16 = v26;
            v14 = v25;
            v13 = v24;
            v17 = v23;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          goto LABEL_9;
        }
      }

      else
      {
        outlined destroy of CharacterSet?(&v36, &_sypSgMd);
      }

      v36 = v38;
      v37 = v39;
      if (*(&v39 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        if (swift_dynamicCast())
        {
          goto LABEL_22;
        }
      }

      else
      {

        outlined destroy of CharacterSet?(&v36, &_sypSgMd);
      }

LABEL_9:
      if (v14 == ++v15)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

void specialized static FPItem.sessionContainsFavorites(_:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = v2 + 32;
  v7 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  while (2)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v4, v2);
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        break;
      }

      v8 = *(v6 + 8 * v4);
    }

    v9 = v8;
    if (!__OFADD__(v4++, 1))
    {
      v11 = [v8 v7[370]];
      v12 = [v11 registeredTypeIdentifiers];

      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        if (*(v14 - 1) != 0xD000000000000029 || 0x8000000249BC6000 != *v14)
        {
          v14 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v6 = v2 + 32;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v4 != v3)
      {
        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  __break(1u);
}

uint64_t specialized static FPItem.sessionContainsFolder(_:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v48 - v4;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v48 - v17;
  v61 = &unk_285DA8400;
  v19 = swift_dynamicCastObjCProtocolConditional();
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  swift_unknownObjectRetain();
  static UTType.item.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v21 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v20, v18);
  swift_unknownObjectRelease();
  v59 = v7[1];
  v60 = v6;
  v22 = v6;
  v23 = v7 + 1;
  v59(v18, v22);
  if (v21 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v50 = v18;
    v51 = v10;
    v53 = v14;
    v54 = v5;
    v18 = 0;
    v57 = v21 & 0xFFFFFFFFFFFFFF8;
    v58 = v21 & 0xC000000000000001;
    v52 = (v7 + 6);
    v48 = a1;
    v49 = (v7 + 4);
    v55 = i;
    v56 = v21;
    while (v58)
    {
      v7 = MEMORY[0x24C1FC540](v18, v21);
      v5 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v26 = [v7 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = UTType.identifier.getter();
      v29 = v28;
      if (one-time initialization token for folderUTICache != -1)
      {
        swift_once();
      }

      v10 = folderUTICache;
      a1 = MEMORY[0x24C1FAD20](v27, v29);
      v30 = [v10 objectForKey_];

      if (v30)
      {

        v25 = [v30 BOOLValue];
        swift_unknownObjectRelease();

        v59(v14, v60);
        if (v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v31 = v23;

        v32 = v54;
        UTType.init(_:)();
        v33 = v60;
        if ((*v52)(v32, 1, v60) == 1)
        {
          outlined destroy of CharacterSet?(v32, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
          v10 = 0;
          v23 = v31;
        }

        else
        {
          v34 = v51;
          (*v49)(v51, v32, v33);
          v35 = v50;
          static UTType.folder.getter();
          v36 = UTType.conforms(to:)();
          v37 = v33;
          v23 = v31;
          v38 = v59;
          v59(v35, v37);
          if (v36)
          {
            static UTType.package.getter();
            v39 = UTType.conforms(to:)();
            v40 = v35;
            v41 = v60;
            v38(v40, v60);
            v38(v34, v41);
            v10 = (v39 ^ 1u);
          }

          else
          {
            v38(v34, v60);
            v10 = 0;
          }
        }

        v14 = v53;
        v42 = folderUTICache;
        v43 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        a1 = v42;
        v44 = [v43 initWithBool_];
        v45 = MEMORY[0x24C1FAD20](v27, v29);

        [a1 setObject:v44 forKey:v45];
        swift_unknownObjectRelease();

        v59(v14, v60);
        if (v10)
        {
LABEL_24:
          v46 = 1;
          goto LABEL_30;
        }
      }

      ++v18;
      v21 = v56;
      if (v5 == v55)
      {
        v46 = 0;
        goto LABEL_30;
      }
    }

    if (v18 >= *(v57 + 16))
    {
      goto LABEL_27;
    }

    v7 = *(v21 + 8 * v18 + 32);
    swift_unknownObjectRetain();
    v5 = (v18 + 1);
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v46 = 0;
LABEL_30:

  swift_unknownObjectRelease();
  return v46;
}

void specialized static DOCDocumentSource.sourcesFromDropSession(_:)(void *a1, unint64_t *a2, uint64_t a3)
{
  v6 = [a1 localDragSession];
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return;
  }

  swift_unknownObjectRelease();
  v27 = v7;
  v8 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_22:

    return;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    v22 = v10;
    do
    {
      if (v12)
      {
        v14 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      if ([v14 v13[369]])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, a2);
        if (swift_dynamicCast())
        {
          v16 = v9;
          v17 = v12;
          v18 = v13;
          v19 = a2;
          v20 = a3;
          v21 = v23;
          MEMORY[0x24C1FB090]();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a3 = v20;
          a2 = v19;
          v13 = v18;
          v12 = v17;
          v9 = v16;
          v10 = v22;
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of CharacterSet?(v26, &_sypSgMd);
      }

      ++v11;
    }

    while (v10 != v11);
  }
}

uint64_t specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = a3;
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = [v12 itemProvider];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v11);
    a3 = v17;
    v9 = v18;
  }

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;

  v16 = a2;
  _sSo14NSItemProviderC26DocumentManagerExecutablesE30nodesFromItemProvidersWithInfo_12itemContexts15alertPresenting04loadG4URLs17completionHandlerySayABG_SayxGSo16UIViewControllerCSgSbySayx0L7Context_So7DOCNode_p4nodetGctlFZSo06UIDragH0C_Tt4g5(v9, a1, a2, 1, partial apply for closure #2 in static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:), v15);
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v32 = a2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for implicit closure #2 in implicit closure #1 in DOCTag.dropOnto(dropSession:alertPresenting:);
  *(v12 + 24) = v11;
  v31 = v12;
  v30[0] = a4;
  v30[2] = v11;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v10);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30[1] = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249BA08C0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = 0xD000000000000041;
  *(v15 + 40) = 0x8000000249BCBA40;
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  v18 = *(v14 + 16);
  *(v15 + 96) = MEMORY[0x277D83B88];
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  v19 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v21;
  os_log(_:dso:log:type:_:)();

  v22 = [a1 items];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 == v24)
  {
    if (v18)
    {
      v33 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 += 16;
        --v18;
      }

      while (v18);

      v26 = v33;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    DOCTag.setTags(for:alertPresenting:)(v26, v32);
  }

  else
  {

    v27 = [a1 items];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v28, v32, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v31);
  }
}

uint64_t outlined init with copy of DOCDragPasteboardType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCDragPasteboardType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCDragPasteboardType(uint64_t a1)
{
  v2 = type metadata accessor for DOCDragPasteboardType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode()
{
  result = lazy protocol witness table cache variable for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode;
  if (!lazy protocol witness table cache variable for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FPAction and conformance FPAction(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v41 = a2;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v36 = a5;
  v15[4] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #3 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
  *(v16 + 24) = v15;
  v40 = v16;
  v35 = a4;
  swift_unknownObjectRetain();
  v37 = a6;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v14);
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v39 = static DOCLog.UI;
  v38 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA08C0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = 0xD000000000000041;
  *(v19 + 40) = 0x8000000249BCBA40;
  v20 = MEMORY[0x277D83B88];
  v21 = MEMORY[0x277D83C10];
  v22 = *(v18 + 16);
  *(v19 + 96) = MEMORY[0x277D83B88];
  *(v19 + 104) = v21;
  *(v19 + 72) = v22;
  v23 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  *(v19 + 112) = v25;
  os_log(_:dso:log:type:_:)();

  v26 = [a1 items];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 == v28)
  {
    if (v22)
    {
      v42 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v29 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 += 16;
        --v22;
      }

      while (v22);

      v30 = v42;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v34 = v35;
    swift_getObjectType();
    specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v30, v34, v41, v36, v37);
  }

  else
  {

    v31 = [a1 items];
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v32, v41, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v40);
  }
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a2;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v43 = a5;
  v15[4] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in FavoritesSectionManager.performDrop(session:onto:alertPresenting:completion:);
  *(v16 + 24) = v15;
  v45 = v16;
  v48 = a4;
  v42 = a6;

  v46 = v15;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v14);
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (one-time initialization token for UI != -1)
  {
LABEL_30:
    swift_once();
  }

  v47 = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA08C0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = 0xD000000000000041;
  *(v19 + 40) = 0x8000000249BCBA40;
  v20 = MEMORY[0x277D83B88];
  v21 = MEMORY[0x277D83C10];
  v22 = *(v18 + 16);
  *(v19 + 96) = MEMORY[0x277D83B88];
  *(v19 + 104) = v21;
  *(v19 + 72) = v22;
  v23 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  *(v19 + 112) = v25;
  os_log(_:dso:log:type:_:)();

  v26 = [a1 items];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 != v28)
  {

    v31 = [a1 items];
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v32, v44, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v45);
  }

  v29 = MEMORY[0x277D84F90];
  if (v22)
  {
    v49 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v30 = 40;
    do
    {
      swift_unknownObjectRetain();
      a1 = &v49;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 += 16;
      --v22;
    }

    while (v22);

    v18 = v49;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v49 = v29;
  if (v18 >> 62)
  {
    v34 = __CocoaSet.count.getter();
    if (v34)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v34 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_15:
      v35 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v35, v18);
          v36 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v35 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_30;
          }

          swift_unknownObjectRetain();
          v36 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            v40 = v49;
            if ((v49 & 0x8000000000000000) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_39;
          }
        }

        swift_getObjectType();
        v37 = DOCNode.fpfs_syncFetchFPItem()();
        if (v37 && (v38 = v37, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem), v39 = v48, a1 = static NSObject.== infix(_:_:)(), v38, v39, (a1 & 1) != 0))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          a1 = &v49;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v35;
        if (v36 == v34)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  if ((v40 & 0x4000000000000000) != 0)
  {
LABEL_39:
    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*(v40 + 16) >= 1)
  {
LABEL_37:
    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(v40, v48, v44, 0, 0);
  }

LABEL_38:

  v43(v41);
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:performDropWith:);
  *(v11 + 24) = a4;
  v30 = v11;
  v32 = a4;
  swift_retain_n();
  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v10);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v29[1] = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA08C0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = 0xD000000000000041;
  *(v14 + 40) = 0x8000000249BCBA40;
  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  v17 = *(v13 + 16);
  *(v14 + 96) = MEMORY[0x277D83B88];
  *(v14 + 104) = v16;
  *(v14 + 72) = v17;
  v18 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = v20;
  os_log(_:dso:log:type:_:)();

  v21 = [a1 items];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17 == v23)
  {
    if (v17)
    {
      v33 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v24 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v24 += 16;
        --v17;
      }

      while (v17);

      v25 = v33;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    closure #1 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(v25, v31);
  }

  else
  {

    v26 = [a1 items];
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v27, v31, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v30);
  }
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #2 in DOCItemCollectionViewController.collectionView(_:performDropWith:);
  *(v14 + 24) = v13;
  v37 = v14;
  v33 = a4;

  v34 = a5;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v12);
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v36 = static DOCLog.UI;
  v35 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = 0xD000000000000041;
  *(v17 + 40) = 0x8000000249BCBA40;
  v18 = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D83C10];
  v20 = *(v16 + 16);
  *(v17 + 96) = MEMORY[0x277D83B88];
  *(v17 + 104) = v19;
  *(v17 + 72) = v20;
  v21 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = v23;
  os_log(_:dso:log:type:_:)();

  v24 = [a1 items];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    v26 = __CocoaSet.count.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 == v26)
  {
    if (v20)
    {
      v39 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v27 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 += 16;
        --v20;
      }

      while (v20);

      v28 = v39;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    closure #2 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(v28, v38, v33, v34);
  }

  else
  {

    v29 = [a1 items];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v30, v38, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v37);
  }
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v37[0] = a2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #2 in DOCSidebarViewController.performDrop(in:with:);
  *(v12 + 24) = v11;
  v38 = v12;
  v40 = a4;
  v37[1] = v11;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v10);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (one-time initialization token for UI != -1)
  {
LABEL_30:
    swift_once();
  }

  v39 = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249BA08C0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = 0xD000000000000041;
  *(v15 + 40) = 0x8000000249BCBA40;
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  v18 = *(v14 + 16);
  *(v15 + 96) = MEMORY[0x277D83B88];
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  v19 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v21;
  os_log(_:dso:log:type:_:)();

  v22 = [a1 items];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 == v24)
  {
    v25 = MEMORY[0x277D84F90];
    if (v18)
    {
      v41 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v26 = 40;
      do
      {
        swift_unknownObjectRetain();
        a1 = &v41;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 += 16;
        --v18;
      }

      while (v18);

      v14 = v41;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v41 = v25;
    if (v14 >> 62)
    {
      v29 = __CocoaSet.count.getter();
      if (v29)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_15:
        v30 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v30, v14);
            v31 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v30 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_30;
            }

            swift_unknownObjectRetain();
            v31 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              v35 = v41;
              if ((v41 & 0x8000000000000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_40;
            }
          }

          swift_getObjectType();
          v32 = DOCNode.fpfs_syncFetchFPItem()();
          if (v32 && (v33 = v32, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem), v34 = v40, a1 = static NSObject.== infix(_:_:)(), v33, v34, (a1 & 1) != 0))
          {
            swift_unknownObjectRelease();
          }

          else
          {
            a1 = &v41;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v30;
          if (v31 == v29)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

LABEL_35:
    if ((v35 & 0x4000000000000000) != 0)
    {
LABEL_40:
      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_38;
      }
    }

    else if (*(v35 + 16) < 1)
    {
LABEL_38:
    }

    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(v35, v40, v37[0], 0, 0);
    goto LABEL_38;
  }

  v27 = [a1 items];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v28, v37[0], closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v38);
}

uint64_t outlined init with take of DOCDragPasteboardType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)()
{
  type metadata accessor for URL();
  if (*(v0 + 16) == 1)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

void partial apply for closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSLightweightTagInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void partial apply for closure #1 in presentFPErrorAlert(error:alertPresenting:)()
{
  v0 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

UIImage_optional __swiftcall DOCSymbolImageBarButtonItem.Descriptor.loadImage()()
{
  v3 = v1;
  v4 = v0;
  v5 = [objc_opt_self() configurationWithScale_];
  v6 = MEMORY[0x24C1FAD20](v4, v3);
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v9 = v7;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

BOOL static DOCSymbolImageBarButtonItem.Descriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t DOCSymbolImageBarButtonItem.symbolDescriptor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor);

  return v1;
}

id DOCSymbolImageBarButtonItem.init(symbolDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor];
  *v7 = a1;
  *(v7 + 1) = a2;
  *(v7 + 2) = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for DOCSymbolImageBarButtonItem();

  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 configurationWithScale_];
  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  [v10 setImage_];
  [v10 setStyle_];

  return v10;
}

id DOCSymbolImageBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCSymbolImageBarButtonItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v32);
  if (!v33)
  {
    outlined destroy of Any?(v32);
    return 0;
  }

  v3 = type metadata accessor for DOCSymbolImageBarButtonItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  outlined init with copy of Any?(a1, v32);
  v5 = v33;
  if (v33)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6, v6);
    v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v11 = 0;
  }

  v30.receiver = v1;
  v30.super_class = v3;
  v13 = objc_msgSendSuper2(&v30, sel_isEqual_, v11);
  swift_unknownObjectRelease();
  if (v13)
  {

    return 1;
  }

  v14 = [v1 target];
  v15 = [v4 target];
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:
    swift_unknownObjectRelease();

    return 0;
  }

  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14 != v16)
  {
    goto LABEL_35;
  }

LABEL_16:
  v17 = [v1 action];
  v18 = [v4 action];
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_22;
    }

LABEL_35:

    return 0;
  }

  if (!v18 || (static Selector.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v19 = [v1 primaryAction];
  v20 = [v4 primaryAction];
  v21 = v20;
  if (v19)
  {
    if (!v20)
    {
LABEL_31:

      return 0;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v22 = static NSObject.== infix(_:_:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v20)
  {
LABEL_33:

    return 0;
  }

  v19 = [v1 menu];
  v23 = [v4 menu];
  v21 = v23;
  if (!v19)
  {
    if (!v23)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!v23)
  {
    goto LABEL_31;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v24 = static NSObject.== infix(_:_:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  v25 = [v1 isEnabled];
  if (v25 != [v4 isEnabled])
  {
    goto LABEL_35;
  }

  v26 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 16];
  v27 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 16];
  if (*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor] == *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor] && *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 8] == *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 8])
  {

    return v26 == v27;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v28)
  {
    return v26 == v27;
  }

  return result;
}

id DOCSymbolImageBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSymbolImageBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSymbolImageBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DOCSymbolImageBarButtonItem.Descriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DOCSymbolImageBarButtonItem.Descriptor(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

DocumentManagerExecutables::NavigationDirection_optional __swiftcall NavigationDirection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NavigationDirection.init(rawValue:), v3);

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

uint64_t NavigationDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0x64726177726F66;
  }

  else
  {
    return 1801675106;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationDirection(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64726177726F66;
  }

  else
  {
    v3 = 1801675106;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64726177726F66;
  }

  else
  {
    v5 = 1801675106;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationDirection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NavigationDirection()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationDirection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NavigationDirection@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NavigationDirection.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance NavigationDirection(uint64_t *a1@<X8>)
{
  v2 = 1801675106;
  if (*v1)
  {
    v2 = 0x64726177726F66;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance NavigationDirection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance NavigationDirection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t key path getter for NavigateHistoryIntent.direction : NavigateHistoryIntent@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for NavigateHistoryIntent.direction : NavigateHistoryIntent()
{

  IntentParameter.wrappedValue.setter();
}

void (*NavigateHistoryIntent.direction.modify(uint64_t *a1))(void *a1)
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

void NavigateHistoryIntent.direction.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t NavigateHistoryIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38 = 0;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();
  result = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  *v37 = result;
  return result;
}

uint64_t NavigateHistoryIntent.init(direction:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for InputConnectionBehavior();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v37 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v36 = &v32 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v33 = type metadata accessor for LocalizedStringResource();
  v24 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v25);
  v35 = *a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = *MEMORY[0x277CC9110];
  v27 = *(v16 + 104);
  v27(v19, v26, v15);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27(v19, v26, v15);
  v28 = v36;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v24 + 56))(v28, 0, 1, v33);
  v44 = 0;
  v29 = type metadata accessor for IntentDialog();
  v30 = *(*(v29 - 8) + 56);
  v30(v37, 1, 1, v29);
  v30(v38, 1, 1, v29);
  (*(v40 + 104))(v39, *MEMORY[0x277CBA308], v41);
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();
  *v42 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v43 = v35;
  return IntentParameter.wrappedValue.setter();
}

uint64_t one-time initialization function for title()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static NavigateHistoryIntent.title);
  __swift_project_value_buffer(v9, static NavigateHistoryIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static GetContentOfFolderIntent.title);
  __swift_project_value_buffer(v9, static GetContentOfFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static NavigateQuickLookIntent.title);
  __swift_project_value_buffer(v9, static NavigateQuickLookIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static SetGroupingModeIntent.title);
  __swift_project_value_buffer(v9, static SetGroupingModeIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static RevealItemsIntent.title);
  __swift_project_value_buffer(v9, static RevealItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static QuickLookFileIntent.title);
  __swift_project_value_buffer(v9, static QuickLookFileIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static SaveToFilesIntent.title);
  __swift_project_value_buffer(v9, static SaveToFilesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static SetFilenameExtensionVisibilityIntent.title);
  __swift_project_value_buffer(v9, static SetFilenameExtensionVisibilityIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static GetFilesIntent.title);
  __swift_project_value_buffer(v9, static GetFilesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static DuplicateItemsIntent.title);
  __swift_project_value_buffer(v9, static DuplicateItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static FavoriteFoldersIntent.title);
  __swift_project_value_buffer(v9, static FavoriteFoldersIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v9, static CompressItemsIntent.title);
  __swift_project_value_buffer(v9, static CompressItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t one-time initialization function for description()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static NavigateHistoryIntent.description);
  __swift_project_value_buffer(v15, static NavigateHistoryIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static GetContentOfFolderIntent.description);
  v27 = __swift_project_value_buffer(v18, static GetContentOfFolderIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static NavigateQuickLookIntent.description);
  __swift_project_value_buffer(v15, static NavigateQuickLookIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v21 = &v19 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v20 = type metadata accessor for LocalizedStringResource();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v13);
  v14 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v14, static SetGroupingModeIntent.description);
  v19 = __swift_project_value_buffer(v14, static SetGroupingModeIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v4 + 104);
  v16(v7, v15, v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v15, v3);
  v17 = v21;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v12 + 56))(v17, 0, 1, v20);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static RevealItemsIntent.description);
  __swift_project_value_buffer(v15, static RevealItemsIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static QuickLookFileIntent.description);
  __swift_project_value_buffer(v15, static QuickLookFileIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static SaveToFilesIntent.description);
  v27 = __swift_project_value_buffer(v18, static SaveToFilesIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v21 = &v19 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v20 = type metadata accessor for LocalizedStringResource();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v13);
  v14 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v14, static SetFilenameExtensionVisibilityIntent.description);
  v19 = __swift_project_value_buffer(v14, static SetFilenameExtensionVisibilityIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v4 + 104);
  v16(v7, v15, v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v15, v3);
  v17 = v21;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v12 + 56))(v17, 0, 1, v20);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static GetFilesIntent.description);
  v27 = __swift_project_value_buffer(v18, static GetFilesIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static DuplicateItemsIntent.description);
  v27 = __swift_project_value_buffer(v18, static DuplicateItemsIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static FavoriteFoldersIntent.description);
  __swift_project_value_buffer(v15, static FavoriteFoldersIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v26 - v5;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v26[0] = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v27 = type metadata accessor for LocalizedStringResource();
  v16 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v17);
  v26[1] = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v19, static CompressItemsIntent.description);
  v28 = __swift_project_value_buffer(v19, static CompressItemsIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v8 + 104);
  v21(v11, v20, v7);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v22 = *(v16 + 56);
  v23 = v27;
  v22(v6, 1, 1, v27);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v11, v20, v26[0]);
  v24 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v22(v24, 0, 1, v23);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

uint64_t NavigateHistoryIntent.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();

  return __swift_project_value_buffer(v0, static NavigateHistoryIntent.description);
}

uint64_t static NavigateHistoryIntent.title.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static NavigateHistoryIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21NavigateHistoryIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21NavigateHistoryIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BCC3D0;
  v4._countAndFlagsBits = 0xD000000000000026;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21NavigateHistoryIntentV10AppIntents0H9ParameterCyAC19NavigationDirectionOGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t one-time initialization function for authenticationPolicy()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static NavigateHistoryIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static NavigateHistoryIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static GetContentOfFolderIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static GetContentOfFolderIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static NavigateQuickLookIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static NavigateQuickLookIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static TrashItemsIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static TrashItemsIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static RenameItemIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static RenameItemIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static CreateFolderIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static CreateFolderIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static SaveToFilesIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static SaveToFilesIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static GetFilesIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static GetFilesIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static DuplicateItemsIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static DuplicateItemsIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static MoveItemsIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static MoveItemsIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static NavigateHistoryIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NavigateHistoryIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NavigateHistoryIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static NavigateHistoryIntent.authenticationPolicy : NavigateHistoryIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static NavigateHistoryIntent.authenticationPolicy : NavigateHistoryIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t NavigateHistoryIntent.perform()()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance NavigateHistoryIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance NavigateHistoryIntent()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21NavigateHistoryIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21NavigateHistoryIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BCC3D0;
  v4._countAndFlagsBits = 0xD000000000000026;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21NavigateHistoryIntentV10AppIntents0H9ParameterCyAC19NavigationDirectionOGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance NavigateHistoryIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t specialized static NavigationDirection.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v41 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v31 - v5;
  v44 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for LocalizedStringResource();
  v32 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtGMd);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtMd);
  v43 = v16;
  v17 = *(v16 - 8);
  v39 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v34 = v19;
  *(v19 + 16) = xmmword_249B9FA70;
  v42 = v19 + v18;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v31 = v9;
  v20(v9);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v45 + 56);
  v45 += 56;
  v33 = v21;
  v22 = v40;
  v21(v40, 1, 1, v14);
  v23 = type metadata accessor for DisplayRepresentation.Image();
  v24 = *(*(v23 - 8) + 56);
  v25 = v41;
  v24(v41, 1, 1, v23);
  v26 = v42;
  v27 = v25;
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = (v26 + v39);
  v39 = *(v43 + 48);
  *v28 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38(v31, v36, v44);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v33(v22, 1, 1, v32);
  v24(v27, 1, 1, v23);
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v29;
}

unint64_t lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection()
{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent()
{
  result = lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent;
  if (!lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent;
  if (!lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent;
  if (!lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigateHistoryIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NavigateHistoryIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall SYDocumentAttributes.performReturnToDocumentRequest()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D6B7C0]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D6B7E0]) init];
  [v2 setDocumentAttributes_];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v6[4] = partial apply for closure #1 in SYDocumentAttributes.performReturnToDocumentRequest();
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_10;
  v4 = _Block_copy(v6);
  v5 = v2;

  [v1 performRequest:v5 completion:v4];
  _Block_release(v4);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void closure #1 in SYDocumentAttributes.performReturnToDocumentRequest()(char a1, void *a2, void *a3, SEL *a4, const char *a5)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    v10 = a3;
    v11 = a2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v13 = 138412546;
      v16 = [v10 *a4];
      *(v13 + 4) = v16;
      *v14 = v16;
      *(v13 + 12) = 2080;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_2493AC000, oslog, v12, a5, v13, 0x16u);
      outlined destroy of NSObject?(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    else
    {
    }
  }
}

void specialized SYDocumentAttributes.performReplyToSenderRequest(with:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277D6B7A0]);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithFileURL_];

  if (v11)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D6B7C0]) init];
    v13 = [objc_allocWithZone(MEMORY[0x277D6B7E8]) init];
    [v13 setDocument_];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = partial apply for closure #1 in SYDocumentAttributes.performReplyToSenderRequest(with:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_6_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    [v12 performRequest:v16 completion:v15];
    _Block_release(v15);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    (*(v3 + 16))(v6, a1, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v3 + 8))(v6, v2);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2493AC000, v18, v19, "Could not create SYDocument from URL %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DOCConfiguration.copy.getter()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
  swift_dynamicCast();
  return v2;
}

Swift::Int DOCHierarchyController.DOCHierarchyOperationType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

void *DOCHierarchyController.FetchingOperationToken.debugDescription.getter()
{
  _StringGuts.grow(_:)(81);
  MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BCD2B0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0x7974202020200A2CLL, 0xEB000000003A6570);
  v2 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BCD2D0);
  if (*(v0 + *(v2 + 24)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v3, v4);

  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BCD2F0);
  v5 = *(v0 + *(v2 + 28));
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_21:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v21 = MEMORY[0x24C1FB0D0](v7, v20);
    v23 = v22;

    MEMORY[0x24C1FAEA0](v21, v23);

    MEMORY[0x24C1FAEA0](10506, 0xE200000000000000);
    return 0;
  }

  v24 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v24;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 displayName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      ++v9;
      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v9);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t DOCHierarchyController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCHierarchyController.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t DOCHierarchyController.locations.getter()
{
  return DOCHierarchyController.locations.getter();
}

{
  swift_beginAccess();
}

uint64_t DOCHierarchyController.locations.setter(uint64_t a1)
{
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v7 = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v3 = MEMORY[0x24C1FAD20](0x61636F4C7473616CLL, 0xEC0000006E6F6974);
  [v1 willChangeValueForKey_];

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  *&v1[v4] = a1;

  v5 = MEMORY[0x24C1FAD20](0x61636F4C7473616CLL, 0xEC0000006E6F6974);
  [v7 didChangeValueForKey_];

  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  swift_getKeyPath();
  return _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
}

uint64_t key path getter for DOCHierarchyController.locations : DOCHierarchyController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t DOCHierarchyController.effectiveRootLocation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  swift_beginAccess();
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  if ((*(*(updated - 8) + 48))(v1, 1, updated))
  {
    v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations);
    swift_beginAccess();
  }

  else
  {
    v3 = (v1 + *(updated + 20));
  }

  v4 = *v3;

  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_22:

      return 0;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  if ([v6 isRoot])
  {
    goto LABEL_17;
  }

  v8 = [v7 sourceIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

LABEL_17:

    goto LABEL_18;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  v16 = swift_beginAccess();
  if (!*(v0 + v15))
  {
    goto LABEL_22;
  }

  v23 = *(v0 + v15);
  MEMORY[0x28223BE20](v16, v17);
  v22[2] = &v23;
  v19 = v18;
  v20 = v18;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, v4);

  result = v19;
  if (v21)
  {
    return result;
  }

  return 0;
}

void (*DOCHierarchyController.locations.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return DOCHierarchyController.locations.modify;
}