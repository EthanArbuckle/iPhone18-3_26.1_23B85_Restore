uint64_t specialized Set._Variant.insert(_:)(char *a1, char a2)
{
  v5 = *v2;
  specialized RawRepresentable<>._rawHashValue(seed:)();
  OUTLINED_FUNCTION_16_7();
  v8 = v7 & ~v6;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v6;
    while (1)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {
        break;
      }

      OUTLINED_FUNCTION_157();
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_11;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    a2 = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_164();
  return specialized Set._Variant.insert(_:)();
}

{
  OUTLINED_FUNCTION_163_1();
  return specialized Set._Variant.insert(_:)();
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8TUHandleC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      result = NSObject._rawHashValue(seed:)(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo25TUConversationParticipantC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25TUConversationParticipantCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      result = NSObject._rawHashValue(seed:)(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20TUConversationMemberC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20TUConversationMemberCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      result = NSObject._rawHashValue(seed:)(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMd);
    OUTLINED_FUNCTION_45_1();
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for CoupledHUDActivity(0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      Hasher.init(_seed:)();
      HUDActivity.hash(into:)();
      result = Hasher._finalize()();
      v4 = -1 << *(v14 + 32);
      v5 = result & ~v4;
      v6 = v5 >> 6;
      if (((-1 << v5) & ~*(v14 + 56 + 8 * (v5 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_15:
      OUTLINED_FUNCTION_218_2(v7);
      *(v11 + 8 * v12) = v13;
      ++*(v14 + 16);
    }

    v8 = 0;
    v9 = (63 - v4) >> 6;
    while (++v6 != v9 || (v8 & 1) == 0)
    {
      v10 = v6 == v9;
      if (v6 == v9)
      {
        v6 = 0;
      }

      v8 |= v10;
      if (*(v14 + 56 + 8 * v6) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo5SGURLC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo5SGURLCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      result = NSObject._rawHashValue(seed:)(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CNComposeRecipientC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CNComposeRecipientCGMd);
    OUTLINED_FUNCTION_45_1();
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      OUTLINED_FUNCTION_158();
      type metadata accessor for NSObject(v3, v4);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v16;
      result = NSObject._rawHashValue(seed:)(*(v16 + 40));
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_15:
      OUTLINED_FUNCTION_218_2(v9);
      *(v13 + 8 * v14) = v15;
      ++*(v16 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      if (*(v16 + 56 + 8 * v8) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo34TUConversationInvitationPreferenceC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo34TUConversationInvitationPreferenceCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v2 = v14;
      result = NSObject._rawHashValue(seed:)(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      HUDActivity.hash(into:)();
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for CoupledHUDActivity(0);

        v16 = static HUDActivity.== infix(_:_:)(v15, a1);

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v12 = *v3;
      v13 = MEMORY[0x1BFB22620](*(*v3 + 40), a1);
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](a1);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v5);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for CNKGameControllerButton(0);
        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v15 = *v3;
      Hasher.init(_seed:)();
      ConversationControlsType.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        outlined init with copy of ConversationControlsType(*(v15 + 48) + 48 * a2, v18);
        v17 = static ConversationControlsType.== infix(_:_:)(v18, v6);
        outlined destroy of ConversationControlsType(v18);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = (*(v9 + 48) + 48 * a2);
  v11 = v6[1];
  *v10 = *v6;
  v10[1] = v11;
  *(v10 + 25) = *(v6 + 25);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_17_1();
  v9 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_5();
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (v5 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_242_1(v11);
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_242_1(v11);
    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v14, v15);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v7 = v17 & ~v16;
  if ((*(v13 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v18 = ~v16;
    do
    {
      OUTLINED_FUNCTION_22_42();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      static Participant.State.== infix(_:_:)();
      if ((v19 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v0 + *(v9 + 28)) == 0) == (*(v2 + *(v9 + 28)) == 0))
      {
        v20 = *(v9 + 24);
        v21 = (v2 + v20);
        v22 = *(v2 + v20);
        v23 = (v0 + v20);
        if (v22 == *v23 && ((v21[1] ^ v23[1]) & 1) == 0 && ((v21[2] ^ v23[2]) & 1) == 0 && ((v21[3] ^ v23[3]) & 1) == 0 && ((v21[4] ^ v23[4]) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_50_18();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v7 = (v7 + 1) & v18;
      OUTLINED_FUNCTION_239_1();
    }

    while (((*(v13 + 56 + v24) >> v7) & 1) != 0);
  }

LABEL_19:
  v25 = *v3;
  *(*v3 + 8 * (v7 >> 6) + 56) |= 1 << v7;
  OUTLINED_FUNCTION_49_18();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_50_18();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v12 > v11)
      {
        result = specialized _NativeSet.copy()();
        goto LABEL_24;
      }

      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v13 = *v5;
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v10);
    if (a3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v14 = v13 + 56;
    v15 = -1 << *(v13 + 32);
    a4 = result & ~v15;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v16 = ~v15;
      v17 = *(v13 + 48);
      do
      {
        v18 = (v17 + 24 * a4);
        if (*v18 == v10)
        {
          v19 = *(v18 + 2);
          if (v19)
          {
            if (a3)
            {
              if (*(v18 + 1) == a2 && v19 == a3)
              {
                goto LABEL_27;
              }

              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (result)
              {
                goto LABEL_27;
              }
            }
          }

          else if (!a3)
          {
            goto LABEL_27;
          }
        }

        a4 = (a4 + 1) & v16;
      }

      while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_24:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_27:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](v5);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()(&_ss11_SetStorageCy15ConversationKit11BezelEffectOGMd);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(char a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy15ConversationKit13VideoReactionOGMd);
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v7 = *v3;
  v8 = specialized RawRepresentable<>._rawHashValue(seed:)();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v11 = OUTLINED_FUNCTION_242_1(v9);
      v12(v11);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      OUTLINED_FUNCTION_242_1(v9);
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v17 = *v6;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](a1);
      Hasher._finalize()();
      OUTLINED_FUNCTION_86_5();
      while (1)
      {
        a2 = v18 & v20;
        if (((*(v19 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v17 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v18 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()(a6);
  }

LABEL_7:
  v13 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void specialized _NativeSet.copy()()
{
  specialized _NativeSet.copy()();
}

{
  OUTLINED_FUNCTION_50_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_27_40();
    while (v3)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      v16 = (v15 + 16 * v14);
      v17 = v16[1];
      v18 = (v0[6] + 16 * v14);
      *v18 = *v16;
      v18[1] = v17;
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v11)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_129();
  v3 = type metadata accessor for Participant(v2);
  v4 = OUTLINED_FUNCTION_9_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11ParticipantVGMd);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_35_22();
    OUTLINED_FUNCTION_210_0();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_39_18();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93();
LABEL_15:
        OUTLINED_FUNCTION_236_2();
        OUTLINED_FUNCTION_22_42();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        OUTLINED_FUNCTION_49_18();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_237_2();
      if (v19)
      {
        OUTLINED_FUNCTION_7_1();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v6;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_27_40();
    for (; v3; *(v17 + 16) = v19)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      v15 = 5 * v14;
      outlined init with copy of CallGameController.GameControllerEventBox(v16 + 40 * v14, v20);
      v17 = v0[6] + 8 * v15;
      v18 = v20[0];
      v19 = v20[1];
      *(v17 + 32) = v21;
      *v17 = v18;
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v11)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

{
  OUTLINED_FUNCTION_50_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMd);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_27_40();
    while (v3)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      *(v0[6] + 8 * v14) = *(v15 + 8 * v14);
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v11)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_49();
  }
}

{
  specialized _NativeSet.copy()();
}

{
  OUTLINED_FUNCTION_50_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_11_80();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_194_3(v6, v7);
    }

    OUTLINED_FUNCTION_27_40();
    for (; v3; v18 = v17)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      v17 = *(v16 + 8 * v15);
      *(v0[6] + 8 * v15) = v17;
    }

    v11 = v1;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v12)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_129();
  v3 = type metadata accessor for CountdownVoucher(v2);
  v4 = OUTLINED_FUNCTION_9_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit16CountdownVoucherVGMd);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_35_22();
    OUTLINED_FUNCTION_210_0();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_39_18();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93();
LABEL_15:
        OUTLINED_FUNCTION_236_2();
        OUTLINED_FUNCTION_33_30();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        OUTLINED_FUNCTION_93_5();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_237_2();
      if (v19)
      {
        OUTLINED_FUNCTION_7_1();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v6;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_11_80();
    if (v5)
    {
      v6 = v2 >= v4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_194_3(v2, v3);
    }

    OUTLINED_FUNCTION_28_41();
    if (v9)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        OUTLINED_FUNCTION_129_1();
      }

      while (v12);
    }

    v10 = v7;
    while (!__OFADD__(v10, 1))
    {
      if (v10 + 1 >= v8)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v11)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_129();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  v10 = *v0;
  v11 = static _SetStorage.copy(original:)();
  if (v10[2])
  {
    v28 = v0;
    v12 = OUTLINED_FUNCTION_35_22();
    v14 = (v13 + 63) >> 6;
    if (v11 != v10 || v12 >= &v10[v14 + 7])
    {
      memmove(v12, v10 + 7, 8 * v14);
    }

    v16 = 0;
    *(v11 + 16) = v10[2];
    OUTLINED_FUNCTION_39_18();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    v29 = v5 + 32;
    v30 = v5 + 16;
    if ((v18 & v17) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_15:
        v26 = *(v5 + 72) * (v22 | (v16 << 6));
        (*(v5 + 16))(v8, v10[6] + v26, v3);
        (*(v5 + 32))(*(v11 + 48) + v26, v8, v3);
      }

      while (v19);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v0 = v28;
        goto LABEL_19;
      }

      ++v23;
      if (v10[v16 + 7])
      {
        OUTLINED_FUNCTION_7_1();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v0 = v11;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMd);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_11_80();
    if (v5)
    {
      v6 = v2 >= v4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_194_3(v2, v3);
    }

    OUTLINED_FUNCTION_28_41();
    if (v9)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        OUTLINED_FUNCTION_129_1();
      }

      while (v12);
    }

    v10 = v7;
    while (!__OFADD__(v10, 1))
    {
      if (v10 + 1 >= v8)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v11)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23CNKGameControllerButtonVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMd);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 3 * v17;
        result = outlined init with copy of ConversationControlsType(*(v2 + 48) + 48 * v17, &v22);
        v19 = (*(v4 + 48) + 16 * v18);
        v20 = v22;
        v21 = v23[0];
        *(v19 + 25) = *(v23 + 9);
        *v19 = v20;
        v19[1] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + 8 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMd);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

void specialized _NativeSet.copy()(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_11_80();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_194_3(v4, v5);
    }

    OUTLINED_FUNCTION_28_41();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        *(v1[6] + v13) = *(*(v2 + 48) + v13);
      }

      while (v12);
    }

    v14 = v9;
    while (!__OFADD__(v14, 1))
    {
      if (v14 + 1 >= v10)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v15)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v1;
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_11_80();
    if (v6)
    {
      v7 = v3 >= v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_194_3(v3, v4);
    }

    OUTLINED_FUNCTION_28_41();
    if (v10)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        OUTLINED_FUNCTION_129_1();
      }

      while (v13);
    }

    v11 = v8;
    while (!__OFADD__(v11, 1))
    {
      if (v11 + 1 >= v9)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v12)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v1;
  }
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v37 = MEMORY[0x1E69E7CD0];
  __CocoaSet.makeIterator()();
  while (1)
  {
LABEL_3:
    if (!__CocoaSet.Iterator.next()())
    {

      return v3;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    swift_dynamicCast();
    v4 = *a2;

    v5 = [v36 value];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (*(v4 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v9 = Hasher._finalize()();
      v10 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = (*(v4 + 48) + 16 * v11);
        if (*v12 != v6 || v12[1] != v8)
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v9 = v11 + 1;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

LABEL_27:

        goto LABEL_3;
      }
    }

    v15 = *a2;

    v16 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v36);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    if (*(v15 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = ~(-1 << *(v15 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v15 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(v15 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v19)
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    if (*(v3 + 24) <= *(v3 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    v3 = v37;
    result = NSObject._rawHashValue(seed:)(*(v37 + 40));
    v27 = v37 + 56;
    v28 = -1 << *(v37 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v37 + 56 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v37 + 56 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_39:
    *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    *(*(v37 + 48) + 8 * v31) = v36;
    ++*(v37 + 16);
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v27 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v48 = a2;
  v4 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v43[2] = v3;
    v43[0] = v43;
    MEMORY[0x1EEE9AC00](a1);
    v43[1] = v6;
    v44 = v43 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v44);
    v45 = 0;
    v6 = 0;
    v3 = v4 + 56;
    v8 = 1 << *(v4 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v47 = v4;
LABEL_6:
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v49 = (v10 - 1) & v10;
LABEL_13:
      v15 = v12 | (v6 << 6);
      v16 = *(v4 + 48);
      v46 = v15;
      v17 = *v48;
      v18 = *(v16 + 8 * v15);

      v50 = v18;
      v19 = [v18 value];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v21;

      if (*(v17 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v22 = Hasher._finalize()();
        v23 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v24 = v22 & v23;
          if (((*(v17 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = (*(v17 + 48) + 16 * v24);
          if (*v25 != v20 || v25[1] != v7)
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v22 = v24 + 1;
            if ((v27 & 1) == 0)
            {
              continue;
            }
          }

LABEL_36:
          v10 = v49;

          v4 = v47;
          goto LABEL_6;
        }
      }

      v28 = *v48;

      v29 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v50);
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v7 = v30;
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      if (*(v28 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = ~(-1 << *(v28 + 32));
        while (1)
        {
          v34 = v32 & v33;
          if (((*(v28 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
          {
            break;
          }

          v35 = (*(v28 + 48) + 16 * v34);
          if (*v35 != v31 || v35[1] != v7)
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v32 = v34 + 1;
            if ((v37 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_36;
        }
      }

      v4 = v47;
      *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v38 = __OFADD__(v45++, 1);
      v10 = v49;
      if (v38)
      {
        __break(1u);
LABEL_40:
        specialized _NativeSet.extractSubset(using:count:)();
        return v39;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_40;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v49 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_43:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v42 = swift_slowAlloc();
  v40 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0150_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSbpI7CXEfU0_ShySSGTf1nnc_n(v42, v6, v4, v48);

  MEMORY[0x1BFB23DF0](v42, -1, -1);
  return v40;
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
LABEL_5:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v42 = (v8 - 1) & v8;
LABEL_12:
    v39 = v10 | (v4 << 6);
    v13 = *a4;
    v14 = *(*(a3 + 48) + 8 * v39);

    v15 = [v14 value];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (*(v13 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v13 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v13 + 48) + 16 * v21);
        if (*v22 != v16 || v22[1] != v18)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

LABEL_35:
        v8 = v42;

        goto LABEL_5;
      }
    }

    v25 = *a4;

    v26 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v14);
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    if (*(v25 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = ~(-1 << *(v25 + 32));
      while (1)
      {
        v32 = v30 & v31;
        if (((*(v25 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
        {
          break;
        }

        v33 = (*(v25 + 48) + 16 * v32);
        if (*v33 != v28 || v33[1] != v29)
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v30 = v32 + 1;
          if ((v35 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_35;
      }
    }

    *(a1 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v36 = __OFADD__(v38++, 1);
    v8 = v42;
    if (v36)
    {
      __break(1u);
LABEL_39:

      specialized _NativeSet.extractSubset(using:count:)();
      return;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_39;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0150_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSbpI7CXEfU0_ShySSGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc TUConversationLink.linkName.getter(void *a1)
{
  v1 = [a1 linkName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc IMAccount.aliases.getter(void *a1)
{
  v2 = [a1 aliases];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Set.endIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void specialized Set.hash(into:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    Set.Iterator.init(_cocoa:)();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v7)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v15)));
    for (i = v17; ; i = v17)
    {
      v16 = NSObject._rawHashValue(seed:)(v3);

      v11 ^= v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_20;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      swift_dynamicCast();
    }
  }

  v14 = v6;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
LABEL_20:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      MEMORY[0x1BFB22640](v11);
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v14;
    if (v7)
    {
      v6 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t specialized Set.hash(into:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1BFB22640](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = (*(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v9 << 6)));
        v12 = *v11;
        v13 = *(v11 + 2);
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v12);
        if (v13)
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 &= v5 - 1;
        v14 = Hasher._finalize()();

        v8 ^= v14;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with take of RecentsCallItemType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItemType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError()
{
  result = lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError;
  if (!lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError;
  if (!lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError);
  }

  return result;
}

uint64_t partial apply for closure #1 in RecentsCallItem.saveVideoMessage(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #1 in RecentsCallItem.saveVideoMessage(_:)(a1, v9, v10, v11, v1 + v7, v13, v14);
}

unint64_t lazy protocol witness table accessor for type RecentsCallHandleType and conformance RecentsCallHandleType()
{
  result = lazy protocol witness table cache variable for type RecentsCallHandleType and conformance RecentsCallHandleType;
  if (!lazy protocol witness table cache variable for type RecentsCallHandleType and conformance RecentsCallHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallHandleType and conformance RecentsCallHandleType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsCallHandleType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsCallItem.VideoMessageError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SkipHashableMessage and conformance SkipHashableMessage()
{
  result = lazy protocol witness table cache variable for type SkipHashableMessage and conformance SkipHashableMessage;
  if (!lazy protocol witness table cache variable for type SkipHashableMessage and conformance SkipHashableMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SkipHashableMessage and conformance SkipHashableMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsState and conformance InCallControlsState()
{
  result = lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState;
  if (!lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState;
  if (!lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID()
{
  result = lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID;
  if (!lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID;
  if (!lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID);
  }

  return result;
}

id OUTLINED_FUNCTION_140_4()
{

  return v0;
}

id OUTLINED_FUNCTION_143_3()
{

  return v0;
}

Swift::Int OUTLINED_FUNCTION_146_1()
{
  v2 = *(v0 + 40);

  return NSObject._rawHashValue(seed:)(v2);
}

void OUTLINED_FUNCTION_166_2()
{

  Hasher._combine(_:)(1u);
}

void *OUTLINED_FUNCTION_194_3@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_215_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_248()
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

void *OUTLINED_FUNCTION_250_0()
{
  v2 = *v0;

  return outlined consume of ConversationLink?(v2);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, type metadata accessor for Participant, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v3;
  return result;
}

{
  v2 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_22(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, MEMORY[0x1E6969C28], specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v5;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7);
  *a1 = v3;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

uint64_t ClarityUIContactsList.__allocating_init()()
{
  v0 = swift_allocObject();
  ClarityUIContactsList.init()();
  return v0;
}

uint64_t ClarityUIContactsList.allContactIdentifiers.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v0, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

ConversationKit::ClarityUIContact __swiftcall ClarityUIContactsList.contact(for:)(Swift::String a1)
{
  v3 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = v1;
  v108 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - v16;

  ClarityUIContactsList.contactCache.getter(v17);
  v103 = countAndFlagsBits;
  v104 = object;
  Cache.subscript.getter();

  v18 = *(v9 + 8);
  v99 = v9 + 8;
  v100 = v7;
  v98 = v18;
  v18(v17, v7);
  if (v105)
  {
    outlined consume of ClarityUIContact?(v105, v106);
    goto LABEL_47;
  }

  v19 = ClarityUIContactsList.allContactIdentifiers.getter();
  v90 = countAndFlagsBits;
  v91 = object;
  v20 = specialized Collection<>.firstIndex(of:)(countAndFlagsBits, object, v19);
  v22 = v21;

  if (v22)
  {
    if (one-time initialization token for clarityUI == -1)
    {
LABEL_5:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, &static Log.clarityUI);
      v24 = v91;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_42();
        v28 = swift_slowAlloc();
        v105 = v28;
        *v27 = 136315138;
        countAndFlagsBits = v90;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v24, &v105);
        _os_log_impl(&dword_1BBC58000, v25, v26, "Unable to find index of identifier %s.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_27();

        object = v24;
        goto LABEL_47;
      }

      object = v24;
      goto LABEL_46;
    }

LABEL_51:
    OUTLINED_FUNCTION_0_158();
    goto LABEL_5;
  }

  v89 = v6;
  v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_maximumNumberOfContactsPerFetch) / 2;
  if (__OFSUB__(v20, v6))
  {
    __break(1u);
    goto LABEL_53;
  }

  v30 = *(ClarityUIContactsList.allContactIdentifiers.getter() + 16);

  if (__OFADD__(v20, v6))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    OUTLINED_FUNCTION_0_158();
LABEL_16:
    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, &static Log.clarityUI);

    v20 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134218496;
      *(v42 + 4) = specialized Array.count.getter(v14);

      *(v42 + 12) = 2048;
      *(v42 + 14) = v96;
      *(v42 + 22) = 2048;
      *(v42 + 24) = countAndFlagsBits;
      _os_log_impl(&dword_1BBC58000, v20, v41, "Fetched %ld contacts within range [%ld..<%ld].", v42, 0x20u);
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
    }

    v68 = specialized Array.count.getter(v14);
    object = v91;
    countAndFlagsBits = v90;
    if (!v68)
    {

      goto LABEL_47;
    }

    if (v68 >= 1)
    {
      v69 = 0;
      v93 = v14 & 0xC000000000000001;
      v94 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
      v95 = v68;
      v96 = v14;
      do
      {
        if (v93)
        {
          v70 = MEMORY[0x1BFB22010](v69, v14);
        }

        else
        {
          v70 = *(v14 + 8 * v69 + 32);
        }

        v71 = v70;
        ++v69;
        v72 = [v70 identifier];
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = v71;
        v77 = v97;
        v78 = v97;
        v79 = [v76 identifier];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v105 = v76;
        *&v106 = v77;
        *(&v106 + 1) = v80;
        v107 = v82;
        v101 = v73;
        v102 = v75;
        swift_getKeyPath();
        v103 = v3;
        OUTLINED_FUNCTION_0_170();
        lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type ClarityUIContactsList and conformance ClarityUIContactsList, v83);
        OUTLINED_FUNCTION_5_117();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v103 = v3;
        swift_getKeyPath();
        OUTLINED_FUNCTION_5_117();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        Cache.subscript.setter();
        swift_endAccess();
        v103 = v3;
        swift_getKeyPath();
        OUTLINED_FUNCTION_5_117();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v14 = v96;
      }

      while (v95 != v69);

      v6 = v89;
      goto LABEL_45;
    }

    goto LABEL_57;
  }

  v29 = v20 - v6;
  v31 = v29 & ~(v29 >> 63);
  if (v20 + v6 >= v30)
  {
    countAndFlagsBits = v30;
  }

  else
  {
    countAndFlagsBits = v20 + v6;
  }

  if (countAndFlagsBits < v31)
  {
    goto LABEL_54;
  }

  v96 = v29 & ~(v29 >> 63);
  if (v31 == countAndFlagsBits)
  {
LABEL_14:
    v32 = *(v3 + 24);
    v33 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = [v33 predicateForContactsWithIdentifiers_];

    static ClarityUIContact.requiredDescriptors(for:)(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    v36 = Array._bridgeToObjectiveC()().super.isa;

    v105 = 0;
    v97 = v32;
    v37 = [v32 unifiedContactsMatchingPredicate:v35 keysToFetch:v36 error:&v105];

    v38 = v105;
    if (!v37)
    {
      v59 = v105;
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v6 = v89;
      if (one-time initialization token for clarityUI == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v6 = v89;
    if (one-time initialization token for clarityUI == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

  if (v31 < countAndFlagsBits)
  {
    v6 = 16 * v31;
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v44 = ClarityUIContactsList.allContactIdentifiers.getter();
      if (v31 >= *(v44 + 16))
      {
        break;
      }

      v45 = *(v44 + v6 + 32);
      v46 = *(v44 + v6 + 40);
      swift_bridgeObjectRetain_n();

      ClarityUIContactsList.contactCache.getter(v14);
      v103 = v45;
      v104 = v46;
      v47 = v100;
      Cache.subscript.getter();

      v98(v14, v47);
      v48 = v105;
      if (v105)
      {
        v97 = v107;
        v49 = v14;
        v50 = v43;
        v51 = v3;
        v52 = countAndFlagsBits;
        v53 = v106;

        v54 = v53;
        countAndFlagsBits = v52;
        v3 = v51;
        v43 = v50;
        v14 = v49;
        outlined consume of ClarityUIContact?(v48, v54);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v43 = v57;
        }

        v55 = *(v43 + 16);
        if (v55 >= *(v43 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v43 = v58;
        }

        *(v43 + 16) = v55 + 1;
        v56 = v43 + 16 * v55;
        *(v56 + 32) = v45;
        *(v56 + 40) = v46;
      }

      ++v31;
      v6 += 16;
      if (countAndFlagsBits == v31)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  OUTLINED_FUNCTION_0_158();
LABEL_32:
  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, &static Log.clarityUI);
  v61 = v20;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_42();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    v66 = v20;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v64 + 4) = v67;
    *v65 = v67;
    _os_log_impl(&dword_1BBC58000, v62, v63, "Unable to enumerate contacts: %@", v64, 0xCu);
    outlined destroy of CallControlsService?(v65, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

LABEL_45:
  object = v91;
LABEL_46:
  countAndFlagsBits = v90;
LABEL_47:

  v84 = v92;
  ClarityUIContactsList.contactCache.getter(v92);
  v103 = countAndFlagsBits;
  v104 = object;
  v85 = v100;
  Cache.subscript.getter();

  v86.cnContact.super.isa = (v98)(v84, v85);
  if (!v105)
  {
    return ClarityUIContact.init(cnContact:contactStore:)([objc_allocWithZone(MEMORY[0x1E695CD58]) init], *(v3 + 24));
  }

  v87 = v107;
  v88 = v106;
  *v6 = v105;
  *(v6 + 8) = v88;
  *(v6 + 24) = v87;
  return v86;
}

uint64_t key path getter for ClarityUIContactsList.allContactIdentifiers : ClarityUIContactsList@<X0>(uint64_t *a1@<X8>)
{
  result = ClarityUIContactsList.allContactIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t ClarityUIContactsList.allContactIdentifiers.setter(uint64_t a1)
{
  swift_beginAccess();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5();
  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t ClarityUIContactsList.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ClarityUIContactsList.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*ClarityUIContactsList.allContactIdentifiers.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_170();
  v3[5] = lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v4, v5);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return ClarityUIContactsList.allContactIdentifiers.modify;
}

void ClarityUIContactsList.allContactIdentifiers.modify(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t ClarityUIContactsList.contactStoreDidUpdateTask.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type ClarityUIContactsList and conformance ClarityUIContactsList, type metadata accessor for ClarityUIContactsList);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ClarityUIContactsList.contactStoreDidUpdateTask.setter(uint64_t a1)
{

  v4 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)();
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

uint64_t closure #1 in ClarityUIContactsList.contactStoreDidUpdateTask.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

uint64_t ClarityUIContactsList.contactCache.init@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ClarityUIContactsList.contactCache.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type ClarityUIContactsList and conformance ClarityUIContactsList, type metadata accessor for ClarityUIContactsList);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path setter for ClarityUIContactsList.contactCache : ClarityUIContactsList(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return ClarityUIContactsList.contactCache.setter(v5);
}

uint64_t ClarityUIContactsList.contactCache.setter(uint64_t a1)
{
  swift_getKeyPath();
  specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t closure #1 in ClarityUIContactsList.contactCache.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void *ClarityUIContactsList.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v1[4] = 0;
  Cache.init(countLimit:)();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache, v10, v5);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_fetchDelay) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_maximumNumberOfContactsPerFetch) = 100;
  v11 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_favoritesList;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v1 + v11) = static ClarityUIFavoritesList.shared;

  ObservationRegistrar.init()();
  ClarityUIContactsList.updateFromContactStore()();
  v12 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;

  v17 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ClarityUIContactsList.contactStoreDidUpdateTask.setter(v17);
  return v1;
}

uint64_t type metadata accessor for ClarityUIContactsList()
{
  result = type metadata singleton initialization cache for ClarityUIContactsList;
  if (!type metadata singleton initialization cache for ClarityUIContactsList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClarityUIContactsList.updateFromContactStore()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  ClarityUIContactsList.contactCache.getter(&v14 - v7);
  Cache.removeAllObjects()();
  (*(v6 + 8))(v8, v5);
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ClarityUIContactsList.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSSGMd);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSS_GMd);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v9, v8);
}

uint64_t closure #1 in ClarityUIContactsList.init()()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = [objc_opt_self() defaultCenter];
  v5 = NSNotificationCenter.notifications(named:object:)();

  v0[11] = v5;
  type metadata accessor for NSNotificationCenter.Notifications();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications and conformance NSNotificationCenter.Notifications, MEMORY[0x1E6969F08]);
  AsyncMapSequence.init(_:transform:)();
  MEMORY[0x1BFB221C0](v3);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v6 = static MainActor.shared.getter();
  v0[30] = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_3_130(v9, v7);

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[30];
  v0[33] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x1E6969EF8]);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[34] = v2;
  *v2 = v3;
  v2[1] = closure #1 in ClarityUIContactsList.init();
  v4 = v0[14];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v4, v1, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;

  if (v0)
  {
    v6 = *(v3 + 248);
    v7 = *(v3 + 256);
    v8 = closure #1 in ClarityUIContactsList.init();
  }

  else
  {
    (*(v3 + 264))();
    v6 = *(v3 + 248);
    v7 = *(v3 + 256);
    v8 = closure #1 in ClarityUIContactsList.init();
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v2 = v0[14];
  v1 = v0[15];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {

    outlined destroy of CallControlsService?(v2, &_s10Foundation12NotificationVSgMd);
    v3 = v0[28];
    v4 = v0[29];

    return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v3, v4);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[35] = v6;
    v11 = (v5 + *v5);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    v0[36] = v7;
    *v7 = v8;
    v7[1] = closure #1 in ClarityUIContactsList.init();
    v9 = v0[17];

    return (v11)(v0 + 9, v9);
  }
}

{
  return (*(v0 + 264))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  v7 = *(v1 + 256);
  v8 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v8, v7);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v1, v2);
}

{
  OUTLINED_FUNCTION_9();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, &static Log.clarityUI);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BBC58000, v2, v3, "Contact store did change.", v4, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    ClarityUIContactsList.updateFromContactStore()();

    v5 = static MainActor.shared.getter();
    v0[30] = v5;
    if (v5)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v10 = OUTLINED_FUNCTION_3_130(v5, v6, v7);

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    OUTLINED_FUNCTION_11_81();

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_11_81();

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t closure #1 in closure #1 in ClarityUIContactsList.init()()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_13();
  return v2();
}

uint64_t closure #1 in ClarityUIContactsList.updateFromContactStore()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = closure #1 in ClarityUIContactsList.updateFromContactStore();

  return ClarityUIContactsList.fetchContactIdentifiers()();
}

uint64_t closure #1 in ClarityUIContactsList.updateFromContactStore()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  *(v4 + 48) = v3;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.updateFromContactStore(), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);

  ClarityUIContactsList.allContactIdentifiers.setter(v1);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ClarityUIContactsList.fetchContactIdentifiers()()
{
  *(v1 + 72) = v0;
  type metadata accessor for MainActor();
  *(v1 + 80) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ClarityUIContactsList.fetchContactIdentifiers(), v3, v2);
}

{
  v48 = v0;
  v47[2] = *MEMORY[0x1E69E9840];
  v0[8] = MEMORY[0x1E69E7CC8];
  v1 = v0 + 8;
  v2 = v0[9];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContactFetchRequest);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v3 = static CNContact.requiredDescriptorsForClarityUIDisplayName.getter();
  v4.super.super.isa = CNContactFetchRequest.__allocating_init(keysToFetch:)(v3).super.super.isa;
  [(objc_class *)v4.super.super.isa setUnifyResults:1];
  [(objc_class *)v4.super.super.isa setSortOrder:0];
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0 + 8;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ClarityUIContactsList.fetchContactIdentifiers();
  *(v7 + 24) = v6;
  v0[6] = partial apply for thunk for @callee_guaranteed (@guaranteed CNContact, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed CNContact, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v0[5] = &block_descriptor_75;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  v0[2] = 0;
  v10 = [v5 enumerateContactsWithFetchRequest:v4.super.super.isa error:v0 + 2 usingBlock:v8];
  _Block_release(v8);
  v11 = v0[2];
  v12 = v11;
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
LABEL_28:
    OUTLINED_FUNCTION_0_158();
    goto LABEL_4;
  }

  v9 = &one-time initialization token for shopTogether;
  if (v10)
  {
    goto LABEL_7;
  }

  v11 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for clarityUI != -1)
  {
    goto LABEL_28;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, &static Log.clarityUI);
  v14 = v11;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_42();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Unable to enumerate contact identifiers: %@", v17, 0xCu);
    outlined destroy of CallControlsService?(v18, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

LABEL_7:

  v47[0] = specialized _copyCollectionToContiguousArray<A>(_:)(v21);
  specialized MutableCollection<>.sort(by:)(v47);

  v22 = v47[0];
  if (v9[48] != -1)
  {
    OUTLINED_FUNCTION_0_158();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Log.clarityUI);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  isa = v4.super.super.isa;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_42();
    *v26 = 134217984;
    *(v26 + 4) = *(v22 + 16);

    _os_log_impl(&dword_1BBC58000, v24, v25, "Number of contacts: %ld", v26, 0xCu);
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v27 = *(v22 + 16);
  if (v27)
  {
    v45 = v0;
    v28 = (v22 + 40);
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = *v1;
      if (*(*v1 + 16))
      {
        v31 = *(v28 - 1);
        v32 = *v28;

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
        v35 = v34;

        if (v35)
        {
          v36 = (*(v30 + 56) + 16 * v33);
          v38 = *v36;
          v37 = v36[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v41;
          }

          v39 = *(v29 + 16);
          if (v39 >= *(v29 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v42;
          }

          *(v29 + 16) = v39 + 1;
          v40 = v29 + 16 * v39;
          *(v40 + 32) = v38;
          *(v40 + 40) = v37;
        }
      }

      v28 += 2;
      --v27;
    }

    while (v27);

    v0 = v45;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v43 = v0[1];

  return v43(v29);
}

uint64_t closure #1 in ClarityUIContactsList.fetchContactIdentifiers()(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = ClarityUIFavoritesList.favorites.getter();
  v27 = -*(v4 + 16);
  v29 = v4;
  v5 = (v4 + 40);
  v6 = -1;
  while (v27 + v6 != -1)
  {
    if (++v6 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = v5[2];
    v10 = v5[3];

    v30 = v9;
    v11 = v10;

    v12 = [a1 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v7 == v15)
    {

LABEL_18:
    }

    v5 += 7;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_18;
    }
  }

  if (one-time initialization token for shared == -1)
  {
    goto LABEL_11;
  }

LABEL_22:
  swift_once();
LABEL_11:
  if (ClarityUIOutgoingCallActionProvider.areEmailAddressesRelevant.getter() & 1) != 0 && (v18 = [a1 emailAddresses], __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd), v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v18, v20 = specialized Array.count.getter(v19), , v20) || (result = ClarityUIOutgoingCallActionProvider.arePhoneNumbersRelevant.getter(), (result) && (v22 = objc_msgSend(a1, sel_phoneNumbers), __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd), v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v22, v24 = specialized Array.count.getter(v23), result = , v24))
  {
    CNContact.clarityUIDisplayName.getter();
    v25 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_isUniquelyReferenced_nonNull_native();
    v31 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *a4 = v31;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CNContact, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t ClarityUIContactsList.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ClarityUIContactsList.__deallocating_deinit()
{
  ClarityUIContactsList.deinit();

  return swift_deallocClassInstance();
}

void *outlined consume of ClarityUIContact?(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in ClarityUIContactsList.init()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ClarityUIContactsList.init()(v3, v4, v5, v6);
}

void type metadata completion function for ClarityUIContactsList()
{
  type metadata accessor for Cache<String, ClarityUIContact>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Cache<String, ClarityUIContact>()
{
  if (!lazy cache variable for type metadata for Cache<String, ClarityUIContact>)
  {
    v0 = type metadata accessor for Cache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Cache<String, ClarityUIContact>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in ClarityUIContactsList.updateFromContactStore()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ClarityUIContactsList.updateFromContactStore()(v3, v4, v5, v6);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
    while (2)
    {
      v14 = v7;
      v9 = v8;
      do
      {
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        if (result != -1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 1);
        *(v9 - 1) = v11;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v8 += 2;
      v7 = v14 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 40 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 48);
        result = *(v12 + 56);
        v15 = *(v12 + 16);
        v17 = *(v12 + 32);
        v16 = *(v12 + 40);
        *(v12 + 40) = *v12;
        v18 = *(v12 + 64);
        *(v12 + 56) = v15;
        *(v12 + 72) = v17;
        *(v12 + 24) = v18;
        v10 = v18;
        *v12 = v16;
        *(v12 + 8) = v14;
        *(v12 + 16) = result;
        v12 -= 40;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t *VideoCallTranslationController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_171();
  }

  return &static VideoCallTranslationController.shared;
}

uint64_t VideoCallTranslationController.hudViewModel.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in VideoCallTranslationController.hudViewModel.getter();
    *(v0 + 16) = v1;
  }

  return v1;
}

void *one-time initialization function for shared()
{
  type metadata accessor for VideoCallTranslationController();
  v0 = swift_allocObject();
  result = VideoCallTranslationController.init()();
  static VideoCallTranslationController.shared = v0;
  return result;
}

{
  type metadata accessor for ClarityUIFavoritesList();
  swift_allocObject();
  result = ClarityUIFavoritesList.().init()();
  static ClarityUIFavoritesList.shared = result;
  return result;
}

uint64_t VideoCallTranslationController.__allocating_init()()
{
  v0 = swift_allocObject();
  VideoCallTranslationController.init()();
  return v0;
}

uint64_t static VideoCallTranslationController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_171();
  }
}

uint64_t closure #1 in VideoCallTranslationController.hudViewModel.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static CallTranslationHUDViewModel.shared;
  swift_allocObject();
  swift_weakInit();

  CallTranslationHUDViewModel.stop.setter(partial apply for closure #1 in closure #1 in VideoCallTranslationController.hudViewModel.getter);

  return v0;
}

uint64_t closure #1 in closure #1 in VideoCallTranslationController.hudViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoCallTranslationController.stopTranslation()();
  }

  return result;
}

Swift::Void __swiftcall VideoCallTranslationController.stopTranslation()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v1;
    CallTranslationService.stopTranslation()();
  }
}

uint64_t VideoCallTranslationController.updateCall(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = a1;
  v6 = [v5 uniqueProxyIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (*(v2 + 48))
  {

    v10 = CallFacade.uniqueProxyIdentifier.getter();
    v12 = v11;

    if (v7 == v10 && v9 == v12)
    {

      goto LABEL_14;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
LABEL_12:

LABEL_14:
      VideoCallTranslationController.hudViewModel.getter();

      type metadata accessor for Locale();
      OUTLINED_FUNCTION_2_133();
      dispatch thunk of LanguagePair.local.setter();

      OUTLINED_FUNCTION_2_133();

      dispatch thunk of LanguagePair.remote.setter();

      CallTranslationHUDViewModel.isTranslationStarted.setter(0);

      CallTranslationHUDViewModel.clear()();
    }
  }

  else
  {
  }

  type metadata accessor for CallCenterFacade();
  static CallCenterFacade.shared.getter();
  v15 = [v5 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = CallCenterFacade.call(with:)();

  if (!v16)
  {
    goto LABEL_12;
  }

  VideoCallTranslationController.hudViewModel.getter();
  CallTranslationHUDViewModel.clear()();

  v17 = type metadata accessor for CallTranslationService();

  v18 = CallTranslationService.__allocating_init(call:videoCall:)();
  swift_beginAccess();
  v22[3] = v17;
  v22[4] = MEMORY[0x1E6995F18];
  v22[0] = v18;

  v19 = v18;
  CallTranslationMoreMenuViewModel.update(_:)();

  outlined destroy of TapInteractionHandler?(v22, &_s20CommunicationsUICore24CallTranslationServicing_pSgMd);
  v20 = v19;
  specialized VideoCallTranslationController.subscribeTranslationState(service:)(v20, v2);
  VideoCallTranslationController.currentService.setter(v20);

  *(v2 + 48) = v16;
}

void VideoCallTranslationController.currentService.setter(void *a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  if (v2)
  {
    v4 = v2;
    v3 = a1;
    CallTranslationService.stopTranslation()();
  }
}

void VideoCallTranslationController.startTranslation(_:_:)()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v1;
    CallTranslationService.startTranslation(localLocale:remoteLocale:)();
  }
}

uint64_t VideoCallTranslationController.availableLanguages()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](VideoCallTranslationController.availableLanguages(), v3, v2);
}

{
  v1 = *(v0[2] + 56);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = VideoCallTranslationController.availableLanguages();

    return MEMORY[0x1EEDF73A0]();
  }

  else
  {

    v3 = v0[1];
    v4 = MEMORY[0x1E69E7CC0];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t VideoCallTranslationController.availableLanguages()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](VideoCallTranslationController.availableLanguages(), v5, v4);
}

uint64_t VideoCallTranslationController.createMoreMenuItemProvider()()
{
  if (![*(v0 + 24) videoCallTranslationEnabled])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_24();
}

uint64_t closure #1 in VideoCallTranslationController.subscribeTranslationState(service:)(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoCallTranslationController.hudViewModel.getter();

    CallTranslationHUDViewModel.isTranslationStarted.setter(v1);
  }

  return result;
}

uint64_t closure #2 in VideoCallTranslationController.subscribeTranslationState(service:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25[-v12];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    VideoCallTranslationController.hudViewModel.getter();

    outlined init with copy of (local: Locale, remote: Locale)?(a1, v7);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetMd);
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
    {
      outlined destroy of TapInteractionHandler?(v7, &_s10Foundation6LocaleV5local_AC6remotetSgMd);
      v15 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
    }

    else
    {
      v16 = *(v14 + 48);
      v17 = type metadata accessor for Locale();
      v18 = *(v17 - 8);
      (*(v18 + 32))(v13, v7, v17);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
      (*(v18 + 8))(&v7[v16], v17);
    }

    dispatch thunk of LanguagePair.local.setter();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoCallTranslationController.hudViewModel.getter();

    outlined init with copy of (local: Locale, remote: Locale)?(a1, v4);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetMd);
    if (__swift_getEnumTagSinglePayload(v4, 1, v20) == 1)
    {
      outlined destroy of TapInteractionHandler?(v4, &_s10Foundation6LocaleV5local_AC6remotetSgMd);
      v21 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
    }

    else
    {
      v22 = *(v20 + 48);
      v23 = type metadata accessor for Locale();
      v24 = *(v23 - 8);
      (*(v24 + 32))(v10, &v4[v22], v23);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v23);
      (*(v24 + 8))(v4, v23);
    }

    dispatch thunk of LanguagePair.remote.setter();
  }

  return result;
}

uint64_t closure #3 in VideoCallTranslationController.subscribeTranslationState(service:)()
{
  result = CallTranslationTranscript.isLocal.getter();
  if ((result & 1) == 0)
  {
    v1 = CallTranslationTranscript.translatedText.getter();
    if (v2)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    if (String.count.getter() < 1)
    {
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        VideoCallTranslationController.hudViewModel.getter();

        v5 = (CallTranslationTranscript.isTranslating.getter() & 1) == 0;
        v6._countAndFlagsBits = v3;
        v6._object = v4;
        CallTranslationHUDViewModel.updateTranscript(_:isCompleted:)(v6, v5);
      }
    }
  }

  return result;
}

uint64_t VideoCallTranslationController.deinit()
{

  MEMORY[0x1BFB23F10](v0 + 40);

  return v0;
}

uint64_t VideoCallTranslationController.__deallocating_deinit()
{
  VideoCallTranslationController.deinit();

  return swift_deallocClassInstance();
}

void *VideoCallTranslationController.init()()
{
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  type metadata accessor for CallTranslationMoreMenuViewModel();
  swift_allocObject();
  v0[4] = CallTranslationMoreMenuViewModel.init(service:)();
  swift_unknownObjectWeakInit();
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t specialized VideoCallTranslationController.subscribeTranslationState(service:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGSo9NSRunLoopCGMd);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation6LocaleV5local_AJ6remotetSgs5NeverOGSo9NSRunLoopCGMd);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v72 = a1;
  swift_beginAccess();
  *(a2 + 64) = MEMORY[0x1E69E7CC0];
  v55 = a1;

  v68 = type metadata accessor for CallTranslationService();
  dispatch thunk of CallTranslationServicing.currentLanguagePair.getter();
  VideoCallTranslationController.hudViewModel.getter();

  v69 = v26;
  outlined init with copy of (local: Locale, remote: Locale)?(v26, v23);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetMd);
  if (__swift_getEnumTagSinglePayload(v23, 1, v27) == 1)
  {
    outlined destroy of TapInteractionHandler?(v23, &_s10Foundation6LocaleV5local_AC6remotetSgMd);
    v28 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v28);
  }

  else
  {
    v29 = *(v27 + 48);
    v30 = type metadata accessor for Locale();
    v31 = *(v30 - 8);
    (*(v31 + 32))(v17, v23, v30);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
    (*(v31 + 8))(&v23[v29], v30);
  }

  dispatch thunk of LanguagePair.local.setter();

  outlined init with copy of (local: Locale, remote: Locale)?(v69, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {

    outlined destroy of TapInteractionHandler?(v20, &_s10Foundation6LocaleV5local_AC6remotetSgMd);
    v32 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v32);
  }

  else
  {
    v33 = *(v27 + 48);
    v34 = type metadata accessor for Locale();
    v35 = *(v34 - 8);
    (*(v35 + 32))(v14, &v20[v33], v34);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v34);
    v36 = *(v35 + 8);

    v36(v20, v34);
  }

  dispatch thunk of LanguagePair.remote.setter();

  v70 = dispatch thunk of CallTranslationServicing.isTranslationStartedPublisher.getter();
  v53 = objc_opt_self();
  v37 = [v53 mainRunLoop];
  v71 = v37;
  v52 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v38 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  v67 = type metadata accessor for NSRunLoop();
  v51 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  v66 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v39 = v54;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v38, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  v65 = MEMORY[0x1E695BE98];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v40 = v64;
  Publisher<>.sink(receiveValue:)();

  (*(v63 + 8))(v39, v40);
  swift_beginAccess();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  v63 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v70 = dispatch thunk of CallTranslationServicing.languagePairPublisher.getter();
  v41 = v53;
  v42 = [v53 mainRunLoop];
  v71 = v42;
  v43 = v52;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation6LocaleV5local_AF6remotetSgs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(local: Locale, remote: Locale)?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation6LocaleV5local_AF6remotetSgs5NeverOGMd);
  v44 = v56;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v38, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<(local: Locale, remote: Locale)?, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation6LocaleV5local_AJ6remotetSgs5NeverOGSo9NSRunLoopCGMd);
  v45 = v58;
  Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v44, v45);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v46 = dispatch thunk of CallTranslationServicing.transcriptsPublisher.getter();

  v70 = v46;
  v47 = [v41 mainRunLoop];
  v71 = v47;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CallTranslationTranscript, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGMd);
  v48 = v60;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v38, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CallTranslationTranscript, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGSo9NSRunLoopCGMd);
  v49 = v62;
  Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v48, v49);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return outlined destroy of TapInteractionHandler?(v69, &_s10Foundation6LocaleV5local_AC6remotetSgMd);
}

uint64_t outlined init with copy of (local: Locale, remote: Locale)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void LinkShareCoordinator.start(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type);
  v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type + 8);
  if (v6)
  {

    LinkShareCoordinator.start(for:with:)(v7, a1, a2);
  }

  else
  {
    LinkShareCoordinator.start(for:with:)(v5, a1, a2);
  }

  outlined consume of LinkShareCoordinatorType(v5, v6);
}

id LinkShareCoordinator.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type);
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return outlined copy of LinkShareCoordinatorType(v2, v3);
}

id LinkShareCoordinator.init(type:hostViewController:originatingView:)()
{
  OUTLINED_FUNCTION_1_138();
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = *(v3 + 8);
  *&v1[OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController] = 0;
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type];
  *v7 = v5;
  v7[8] = v6;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id LinkShareCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkShareCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void LinkShareCoordinator.start(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUStringShareItem);
  v9 = [objc_opt_self() conversationKit];
  v42._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._object = 0x80000001BC4F97A0;
  v11._countAndFlagsBits = 0xD000000000000010;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v42);

  v13 = TUStringShareItem.__allocating_init(message:)();
  type metadata accessor for LinkShareActivityViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BAA20;
  v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULinkShareItem);
  *(v14 + 32) = v7;
  *(v14 + 88) = v8;
  *(v14 + 56) = v15;
  *(v14 + 64) = v13;
  v16 = v7;
  v17 = v13;
  v18 = LinkShareActivityViewController.__allocating_init(activityItems:applicationActivities:)(v14, 0);
  [v18 setOverrideUserInterfaceStyle_];
  v19 = v18;
  [v19 setAllowsCustomPresentationStyle_];
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v23 = [Strong traitCollection];

    v24 = [v23 horizontalSizeClass];
    if (v24 == 2)
    {
      [v19 setModalPresentationStyle_];
    }
  }

  v25 = [v19 popoverPresentationController];

  if (v25)
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v25 setSourceView_];

    if (static Platform.current.getter() != 3)
    {
      v27 = swift_unknownObjectUnownedLoadStrong();
      [v27 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      [v25 setSourceRect_];
      [v25 setCanOverlapSourceViewRect_];
    }
  }

  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  v36[4] = v16;
  aBlock[4] = partial apply for closure #1 in LinkShareCoordinator.start(for:with:);
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIActivityType?, @unowned Bool, @guaranteed [Any]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_76;
  v37 = _Block_copy(aBlock);
  v38 = v16;

  [v19 setCompletionWithItemsHandler_];
  _Block_release(v37);
  v39 = swift_unknownObjectUnownedLoadStrong();
  [v39 presentViewController:v19 animated:1 completion:0];

  v40 = *(v4 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController);
  *(v4 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController) = v19;
}

{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 conversationManager];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = partial apply for closure #1 in LinkShareCoordinator.start(for:with:);
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_12_3;
  v10 = _Block_copy(v11);

  [v6 generateLinkWithInvitedMemberHandles:isa linkLifetimeScope:0 completionHandler:v10];
  _Block_release(v10);
}

void outlined consume of LinkShareCoordinatorType(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id outlined copy of LinkShareCoordinatorType(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

Swift::Void __swiftcall LinkShareCoordinator.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController);
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id protocol witness for LinkShareCoordinatorProtocol.init(type:hostViewController:originatingView:) in conformance LinkShareCoordinator@<X0>(void *a1@<X8>)
{
  result = LinkShareCoordinator.__allocating_init(type:hostViewController:originatingView:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in LinkShareCoordinator.start(for:with:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA940;
    v10 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = v12;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    os_log(_:dso:log:type:_:)();

    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = a2 & 1;
    v15 = a7;
  }

  return a5(v14, v15);
}

void closure #1 in LinkShareCoordinator.start(for:with:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v11 = one-time initialization token for conversationKit;
      v12 = a1;
      if (v11 != -1)
      {
        swift_once();
      }

      static os_log_type_t.info.getter();
      os_log(_:dso:log:type:_:)();
      LinkShareCoordinator.start(for:with:)(v12, a4, a5);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1BC4BA940;
      if (a2)
      {
        v14 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v15 = String.init<A>(reflecting:)();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 32) = v15;
      *(v13 + 40) = v17;
      os_log(_:dso:log:type:_:)();
    }
  }
}

id HeldInCallControlsView.Style.backgroundColor.getter()
{
  if (*v0 == 1)
  {
    return [objc_opt_self() blackColor];
  }

  else
  {
    return 0;
  }
}

double HeldInCallControlsView.Style.avatarDiameter.getter()
{
  result = 50.0;
  if (*v0)
  {
    return 60.0;
  }

  return result;
}

double HeldInCallControlsView.Style.avatarMargins.getter()
{
  result = 14.0;
  if (*v0)
  {
    return 20.0;
  }

  return result;
}

id HeldInCallControlsView.Style.primaryFont.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = 16.67;
  if (v1)
  {
    v3 = 20.0;
  }

  v4 = [v2 systemFontOfSize:v3 weight:*MEMORY[0x1E69DB970]];

  return v4;
}

id HeldInCallControlsView.Style.secondaryFont.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = 14.0;
  if (v1)
  {
    v3 = 17.0;
  }

  v4 = [v2 systemFontOfSize:v3 weight:*MEMORY[0x1E69DB978]];

  return v4;
}

double HeldInCallControlsView.Style.actionMargins.getter()
{
  result = 17.0;
  if (*v0)
  {
    return 20.0;
  }

  return result;
}

Swift::Int HeldInCallControlsView.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

void *HeldInCallControlsView.__allocating_init(callCenter:style:)(NSObject *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = [a1 callWithStatus:1];
  if (!v6)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BBC58000, v19, v20, "unable to create held call controls: no active call in container", v21, 2u);
      OUTLINED_FUNCTION_27();
    }

    v7 = a1;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [a1 callWithStatus:2];
  if (!v8)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, &static Logger.conversationControls);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBC58000, v23, v24, "unable to create held call controls: no held call in container", v25, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v19 = a1;
LABEL_17:

    v17 = 0;
LABEL_18:

    return v17;
  }

  v9 = v8;
  v10 = [a1 activeConversationForCall:v8];
  v11 = objc_opt_self();
  v12 = v7;
  v13 = [v11 sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static PlaceholderCallCenter.shared;
  v15 = objc_allocWithZone(type metadata accessor for CallCenter());
  CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v13, v14, 0, 0);
  v16 = _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5();
  v27 = v5;
  v17 = (*(v3 + 160))(v9, v10, v16, 0, 0, &v27);
  v7 = v17;

  if (v17)
  {
    goto LABEL_18;
  }

  return v17;
}

char *HeldInCallControlsView.init(heldCall:heldConversation:controlsManager:menuHostViewController:style:)(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6)
{
  v7 = v6;
  v98 = a5;
  v100 = a2;
  v12 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *a6;
  v15 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar;
  *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar) = 0;
  v16 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v99 = v16;
  *(v7 + v16) = v17;
  v18 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v101 = v18;
  *(v7 + v18) = v19;
  v20 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView;
  v21 = [objc_opt_self() effectWithStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v23 = a1;
  *(v7 + v20) = v22;
  v24 = [a1 isOnHold];
  v103 = a4;
  if (v24)
  {
    *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_style) = v102;
    swift_storeEnumTagMultiPayload();
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    v97 = a3;
    ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
    v26 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105);
    outlined destroy of ConversationControlsAction(v14);
    *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_swapButton) = v26;
    v27 = objc_opt_self();
    v98 = v27;
    v28 = v100;
    v29 = v100;
    v30 = v23;
    v31 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v30, v28, 0, [v27 clearColor]);
    v32 = *(v7 + v15);
    *(v7 + v15) = v31;

    v33 = *(v7 + v99);
    if (v28)
    {
      v34 = v29;
    }

    else
    {
      v34 = v30;
    }

    v43 = [v34 displayName];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    outlined bridged method (mbnn) of @objc UILabel.text.setter(v44, v46, v33);
    v47 = one-time initialization token for conversationKit;
    v48 = *&v101[v7];
    if (v47 != -1)
    {
      swift_once();
    }

    v107._object = 0xE000000000000000;
    v49._object = 0x80000001BC511BA0;
    v49._countAndFlagsBits = 0xD000000000000017;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v107._countAndFlagsBits = 0;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v50, v107);
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v51._countAndFlagsBits, v51._object, v48);

    *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView) = 0;
    v52 = type metadata accessor for HeldInCallControlsView();
    v104.receiver = v7;
    v104.super_class = v52;
    v42 = objc_msgSendSuper2(&v104, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v53 = [v98 clearColor];
    [v42 setBackgroundColor_];

    v54 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView;
    [v42 addSubview_];
    v55 = *&v42[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar];
    if (v55)
    {
      v56 = v55;
      v57 = [v56 view];
      [v42 addSubview_];
    }

    v100 = v30;
    v101 = v29;
    v58 = [*&v42[v54] contentView];
    v59 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel;
    [v58 addSubview_];

    v60 = [*&v42[v54] contentView];
    v61 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel;
    [v60 addSubview_];

    v62 = [*&v42[v54] contentView];
    [v62 addSubview_];

    v63 = *&v42[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView];
    if (v63)
    {
      v64 = *&v42[v54];
      v65 = v63;
      v66 = [v64 contentView];
      [v66 addSubview_];
    }

    v67 = *&v42[v59];
    v68 = objc_opt_self();
    v69 = *MEMORY[0x1E69DB970];
    v70 = v67;
    v71 = v102;
    v72 = 16.67;
    if (v102)
    {
      v72 = 20.0;
      v73 = 17.0;
    }

    else
    {
      v73 = 14.0;
    }

    v74 = [v68 systemFontOfSize:v72 weight:v69];
    [v70 setFont_];

    v75 = *&v42[v59];
    v76 = v98;
    v77 = [v98 whiteColor];
    [v75 setTextColor_];

    v78 = *&v42[v61];
    v79 = objc_opt_self();
    v80 = *MEMORY[0x1E69DB978];
    v81 = v78;
    v82 = [v79 systemFontOfSize:v73 weight:v80];
    [v81 setFont_];

    v83 = *&v42[v61];
    v84 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v85 = v83;
    v86 = [v84 initWithWhite:1.0 alpha:0.4];
    [v85 setTextColor_];

    if (v71)
    {
      v87 = [v76 blackColor];
      v88 = v103;
      v89 = v97;
      v90 = v100;
      if (v87)
      {
        v91 = v87;
        v92 = [*&v42[v54] contentView];
        [v92 setBackgroundColor_];

        v93 = *&v42[v54];
        [v93 setEffect_];

        v94 = v101;
      }

      else
      {
        v93 = v100;
        v90 = v101;
        v94 = v42;
      }
    }

    else
    {
      v93 = v100;
      v90 = v101;
      v94 = v42;
      v88 = v103;
      v89 = v97;
    }
  }

  else
  {
    v35 = v15;
    v37 = v99;
    v36 = v100;
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, &static Logger.conversationControls);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_18_0(v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BBC58000, v39, v40, "Unable to make HeldInCallControlsView for call that is not on hold", v41, 2u);
      OUTLINED_FUNCTION_27();
    }

    type metadata accessor for HeldInCallControlsView();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v42;
}

id HeldInCallControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HeldInCallControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v3) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall HeldInCallControlsView.layoutSubviews()()
{
  v2 = v0;
  swift_getObjectType();
  v131.receiver = v0;
  v131.super_class = type metadata accessor for HeldInCallControlsView();
  objc_msgSendSuper2(&v131, sel_layoutSubviews);
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView];
  OUTLINED_FUNCTION_5_118();
  v4 = &selRef_isRecordingAllowed;
  [v3 setFrame_];
  OUTLINED_FUNCTION_5_118();
  [v3 _setContinuousCornerRadius_];
  v5 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_style;
  OUTLINED_FUNCTION_7_86();
  if (v6)
  {
    v7 = 50.0;
  }

  else
  {
    v7 = 60.0;
  }

  if (v6)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 20.0;
  }

  OUTLINED_FUNCTION_5_118();
  v9 = (CGRectGetHeight(v133) - v7) * 0.5;
  v115 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar;
  v10 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar];
  if (v10)
  {
    v11 = [v10 view];
    [v11 setFrame_];
  }

  if (one-time initialization token for conversationControls != -1)
  {
LABEL_86:
    OUTLINED_FUNCTION_0_0();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, &static Logger.conversationControls);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  rect_24 = v9;
  if (OUTLINED_FUNCTION_9_80(v14))
  {
    OUTLINED_FUNCTION_30_1();
    v130 = OUTLINED_FUNCTION_16_8();
    *i = 136446466;
    v15 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v130);
    OUTLINED_FUNCTION_4_122();

    OUTLINED_FUNCTION_8_60();
    v126 = v8;
    v127 = v9;
    v128 = v7;
    v129 = v7;
    type metadata accessor for CGRect(0);
    v17 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v130);
    OUTLINED_FUNCTION_4_122();

    *(i + 14) = 0x1FAA53000;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v19, v20, "[%{public}s][layout] leadingFrame is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_5_118();
  Width = CGRectGetWidth(v134);
  OUTLINED_FUNCTION_7_86();
  if (v22)
  {
    v23 = 10.0;
  }

  else
  {
    v23 = 13.0;
  }

  if (v22)
  {
    v24 = 16.0;
  }

  else
  {
    v24 = 20.0;
  }

  OUTLINED_FUNCTION_5_118();
  CGRectGetHeight(v135);
  OUTLINED_FUNCTION_7_86();
  v26 = 17.0;
  if (!v6)
  {
    v26 = 20.0;
  }

  v27 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_swapButton];
  [v27 sizeThatFits_];
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_5_118();
  CGRectGetWidth(v136);
  OUTLINED_FUNCTION_7_86();
  if (v6)
  {
    v33 = 16.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34 = v32 - v33 - v29;
  OUTLINED_FUNCTION_5_118();
  v35 = (CGRectGetHeight(v137) - v31) * 0.5;
  v114 = v27;
  [v27 v4[63]];
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v112 = v31;
  v122 = v29;
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_30_1();
    v130 = swift_slowAlloc();
    *v38 = 136446466;
    v39 = _typeName(_:qualified:)();
    v41 = v4;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v130);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v126 = v34;
    v127 = v35;
    v128 = v29;
    v129 = v31;
    type metadata accessor for CGRect(0);
    v43 = String.init<A>(reflecting:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v130);

    *(v38 + 14) = v45;
    v4 = v41;
    _os_log_impl(&dword_1BBC58000, v36, v37, "[%{public}s][layout] swapFrame is %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v138.origin.y = rect_24;
  rect = v8;
  v138.origin.x = v8;
  v138.size.width = v7;
  v138.size.height = v7;
  MaxX = CGRectGetMaxX(v138);
  OUTLINED_FUNCTION_7_86();
  if (v47)
  {
    v48 = 9.0;
  }

  else
  {
    v48 = 13.0;
  }

  if (v47)
  {
    v49 = 10.0;
  }

  else
  {
    v49 = 13.0;
  }

  if (v47)
  {
    v50 = 16.0;
  }

  else
  {
    v50 = 20.0;
  }

  OUTLINED_FUNCTION_5_118();
  v51 = CGRectGetWidth(v139);
  v52 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel];
  v53 = [v52 font];
  if (!v53)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    return;
  }

  v54 = v53;
  v121 = v7;
  [v53 lineHeight];
  v56 = v55;

  v57 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView];
  if (v57)
  {
    v58 = 14.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel];
  v60 = [v59 font];
  if (!v60)
  {
    goto LABEL_88;
  }

  v61 = v60;
  v7 = MaxX + v48;
  v62 = v51 - (v50 + v122 + v49) - (MaxX + v48);
  [v60 lineHeight];
  v64 = v63;

  if (v64 > v58)
  {
    v65 = v64;
  }

  else
  {
    v65 = v58;
  }

  v66 = v56 + v65;
  OUTLINED_FUNCTION_5_118();
  v67 = (CGRectGetHeight(v140) - v66) * 0.5;
  v141.origin.x = v7;
  v141.origin.y = v67;
  v141.size.width = v62;
  v141.size.height = v56;
  MaxY = CGRectGetMaxY(v141);
  v69 = 18.0;
  if (!v57)
  {
    v69 = 0.0;
  }

  v70 = v62 - v69;
  v71 = (v58 - v64) * 0.5;
  if (!v57)
  {
    v71 = 0.0;
  }

  v72 = v7 + v69;
  v73 = v71 + MaxY;
  v116 = v58;
  v117 = v62;
  v74 = (v64 - v58) * 0.5;
  if (v57)
  {
    v75 = v7;
  }

  else
  {
    v75 = 0.0;
  }

  if (v57)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0.0;
  }

  v119 = v76;
  v120 = v75;
  v77 = v62;
  v8 = v70;
  [v52 v4[63]];
  v118 = v72;
  [v59 v4[63]];
  if (v57)
  {
    [v57 setBounds_];
  }

  v142.origin.x = rect;
  v142.origin.y = rect_24;
  v142.size.width = v121;
  v142.size.height = v121;
  v78 = CGRectGetMaxY(v142);
  v79 = v2[v5];
  v143.origin.x = v7;
  v143.origin.y = v67;
  v143.size.width = v117;
  v143.size.height = v56;
  MinY = CGRectGetMinY(v143);
  v144.origin.x = v118;
  v144.origin.y = v73;
  v144.size.width = v8;
  v144.size.height = v64;
  v9 = CGRectGetMaxY(v144);
  v145.origin.y = v119;
  v145.origin.x = v120;
  v145.size.width = v116;
  v145.size.height = v116;
  v81 = CGRectGetMaxY(v145);
  v82 = v2[v5];
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v84))
  {
    v85 = 17.0;
    if (v82)
    {
      v85 = 20.0;
    }

    v86 = v85 + v113 + v85;
    if (v9 > v81)
    {
      v87 = v9;
    }

    else
    {
      v87 = v81;
    }

    v9 = MinY + v87;
    v88 = 14.0;
    if (v79)
    {
      v88 = 20.0;
    }

    v89 = v78 + v88;
    rect_24a = v52;
    v90 = swift_slowAlloc();
    v91 = v59;
    v92 = v4;
    v93 = swift_slowAlloc();
    v126 = *&v93;
    *v90 = 136446978;
    v94 = _typeName(_:qualified:)();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v126);

    *(v90 + 4) = v96;
    *(v90 + 12) = 2048;
    *(v90 + 14) = v89;
    *(v90 + 22) = 2048;
    *(v90 + 24) = v9;
    *(v90 + 32) = 2048;
    *(v90 + 34) = v86;
    _os_log_impl(&dword_1BBC58000, v83, v84, "[%{public}s][layout] avatarMaxY: %f, textMaxY: %f, %f", v90, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v4 = v92;
    v59 = v91;
    OUTLINED_FUNCTION_27();
    v52 = rect_24a;
    OUTLINED_FUNCTION_27();
  }

  if ([v2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BE790;
    v98 = *&v2[v115];
    if (v98)
    {
      v98 = [v98 view];
    }

    *(inited + 32) = v98;
    *(inited + 40) = v59;
    *(inited + 48) = v52;
    *(inited + 56) = v114;
    *(inited + 64) = v57;
    v5 = MEMORY[0x1E69E7CC0];
    v126 = MEMORY[0x1E69E7CC0];
    v99 = v57;
    v100 = v59;
    v101 = v52;
    v102 = v114;
    for (i = 0; i != 5; ++i)
    {
      if (i > 4)
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v103 = *(inited + 8 * i + 32);
      if (v103)
      {
        v104 = v103;
        MEMORY[0x1BFB20CC0]();
        if (*((*&v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = *&v126;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v105 = specialized Array.count.getter(v5);
    for (j = 0; v105 != j; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v107 = MEMORY[0x1BFB22010](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v107 = *(v5 + 8 * j + 32);
      }

      i = v107;
      if (__OFADD__(j, 1))
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_5_118();
      v108 = CGRectGetWidth(v146);
      OUTLINED_FUNCTION_12_67();
      v110 = v108 - v109;
      OUTLINED_FUNCTION_12_67();
      v9 = v110 - CGRectGetMinX(v147);
      OUTLINED_FUNCTION_12_67();
      v111 = CGRectGetMinY(v148);
      OUTLINED_FUNCTION_12_67();
      [i v4[63]];
    }
  }
}

CGSize __swiftcall HeldInCallControlsView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  swift_getObjectType();
  v6 = 1.79769313e308;
  if (height > 2.22507386e-308)
  {
    v6 = height;
  }

  v84 = v6;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_80(v9))
  {
    OUTLINED_FUNCTION_30_1();
    v87 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v10 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v10, v11, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_4_122();

    OUTLINED_FUNCTION_8_60();
    v85 = width;
    v86 = v84;
    type metadata accessor for CGSize(0);
    v17 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_4_122();

    *(v2 + 14) = v3;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v24, v25, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  [v1 bounds];
  v26 = CGRectGetWidth(v88);
  OUTLINED_FUNCTION_11_82();
  if (v27)
  {
    v28 = 10.0;
  }

  else
  {
    v28 = 13.0;
  }

  if (v27)
  {
    v29 = 16.0;
  }

  else
  {
    v29 = 20.0;
  }

  [v1 bounds];
  CGRectGetHeight(v89);
  OUTLINED_FUNCTION_11_82();
  v31 = 17.0;
  if (!v27)
  {
    v31 = 20.0;
  }

  [*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_swapButton] sizeThatFits_];
  v33 = v32;
  v35 = v34;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_80(v37))
  {
    OUTLINED_FUNCTION_30_1();
    v87 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v38 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v38, v39, v40, v41, v42, v43, v44);
    OUTLINED_FUNCTION_4_122();

    OUTLINED_FUNCTION_8_60();
    v85 = v33;
    v86 = v35;
    type metadata accessor for CGSize(0);
    v45 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v45, v46, v47, v48, v49, v50, v51);
    OUTLINED_FUNCTION_4_122();

    *(v2 + 14) = v3;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v52, v53, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_11_82();
  v55 = 16.0;
  if (v54)
  {
    v56 = 75.0;
  }

  else
  {
    v55 = 20.0;
    v56 = 93.0;
  }

  v57 = 10.0;
  if (!v54)
  {
    v57 = 13.0;
  }

  v58 = v55 + v33 + v57;
  v59 = 0.0;
  if (*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView])
  {
    v60 = 14.0;
  }

  else
  {
    v60 = 0.0;
  }

  if (v60 > 0.0)
  {
    v59 = v60 + 4.0;
  }

  v61 = width - v58 - v56 - v59;
  [*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel] sizeThatFits_];
  [*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel] sizeThatFits_];
  OUTLINED_FUNCTION_11_82();
  v66 = 78.0;
  if (!v63)
  {
    v66 = 100.0;
  }

  v67 = 20.0;
  if (v63)
  {
    v67 = 17.0;
  }

  v68 = v67 + v35 + v67;
  v69 = v64 + 17.0 + 17.0;
  if (v65 <= 156.0)
  {
    v65 = 156.0;
  }

  v70 = v58 + v56 + v65;
  specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], v66, v69, v68);
  v72 = v71;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v85 = *&v76;
    *v75 = 136446722;
    v77 = _typeName(_:qualified:)();
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v85);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2048;
    *(v75 + 14) = v70;
    *(v75 + 22) = 2048;
    *(v75 + 24) = v72;
    _os_log_impl(&dword_1BBC58000, v73, v74, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v75, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  v80 = v83;
  if (v70 < v83)
  {
    v80 = v70;
  }

  v81 = v84;
  if (v72 < v84)
  {
    v81 = v72;
  }

  result.height = v81;
  result.width = v80;
  return result;
}

CGSize __swiftcall HeldInCallControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  [v3 sizeThatFits_];
  result.height = v5;
  result.width = v4;
  return result;
}

id HeldInCallControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HeldInCallControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeldInCallControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style()
{
  result = lazy protocol witness table cache variable for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style;
  if (!lazy protocol witness table cache variable for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HeldInCallControlsView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double SystemApertureAccessoryView.preferredLayoutMargins.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

id ConversationCapabilities.().init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConversationCapabilities();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  ConversationCapabilities.startForwardingCaptionEnablementNotifications()();

  return v1;
}

id ConversationCapabilities.__deallocating_deinit()
{
  ConversationCapabilities.stopForwardingCaptionEnablementNotifications()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationCapabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for ConversationCapabilities.captioningAccessibilitySettingEnabled : ConversationCapabilities@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x50))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationCapabilities.captioningAccessibilitySettingEnabled.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  return (*(*static Defaults.shared + 752))() & 1;
}

void ConversationCapabilities.captioningAccessibilitySettingEnabled.setter(char a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  (*(*static Defaults.shared + 760))(a1 & 1);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "Captions user accessibility enablement set to: %{BOOL}d", v4, 8u);
    OUTLINED_FUNCTION_27();
  }
}

void (*ConversationCapabilities.captioningAccessibilitySettingEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  *(a1 + 8) = (*(*static Defaults.shared + 752))() & 1;
  return ConversationCapabilities.captioningAccessibilitySettingEnabled.modify;
}

uint64_t ConversationCapabilities.captioningSettingEnabledPublisher.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGMd);
  OUTLINED_FUNCTION_1();
  v30 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGGMd);
  OUTLINED_FUNCTION_1();
  v29 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v21 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for captionEnablementChangedNotification != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.map<A>(_:)();

  (*(v4 + 8))(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  *(v22 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x50))() & 1;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGMd);
  v23 = v32;
  Publisher.prepend(_:)();

  (*(v9 + 8))(v12, v23);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[Bool], Never>, Publishers.Map<NSNotificationCenter.Publisher, Bool>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGMd);
  v24 = v33;
  Publisher<>.removeDuplicates()();
  (*(v30 + 8))(v16, v24);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Concatenate<Publishers.Sequence<[Bool], Never>, Publishers.Map<NSNotificationCenter.Publisher, Bool>>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGGMd);
  v25 = v31;
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v29 + 8))(v20, v25);
  return v26;
}

void closure #1 in ConversationCapabilities.captioningSettingEnabledPublisher.getter(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x50))();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t ConversationCapabilities.isCaptioningSupported.getter()
{
  if ([objc_opt_self() isCaptioningSupported])
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v1 = [v0 ftlcPrimaryLanguageControlledEnabled];

    if (v1)
    {
      v2 = TUFTLiveCaptionsActivatable();
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, &static Logger.conversationControls);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v2;
        _os_log_impl(&dword_1BBC58000, v4, v5, "Captions Supported: %{BOOL}d", v6, 8u);
        OUTLINED_FUNCTION_27();
      }
    }

    else
    {
      v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(&outlined read-only object #0 of ConversationCapabilities.isCaptioningSupported.getter);
      v11 = [objc_opt_self() activeInputModes];
      type metadata accessor for UITextInputMode();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = specialized Array.count.getter(v12);
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      while (v13 != v14)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB22010](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v16;
        v19 = [v18 primaryLanguage];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v25;
          }

          v23 = *(v15 + 16);
          if (v23 >= *(v15 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v26;
          }

          *(v15 + 16) = v23 + 1;
          v24 = v15 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v41;
          v14 = v17;
        }

        else
        {

          ++v14;
        }
      }

      v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v15);
      LOBYTE(v2) = specialized Set.isDisjoint(with:)(v42, v27) ^ 1;
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, &static Logger.conversationControls);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v31 = 67109634;
        *(v31 + 4) = v2 & 1;
        *(v31 + 8) = 2080;
        v32 = Set.description.getter();
        v34 = v33;

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v43);

        *(v31 + 10) = v35;
        *(v31 + 18) = 2080;
        v36 = Set.description.getter();
        v38 = v37;

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v43);

        *(v31 + 20) = v39;
        _os_log_impl(&dword_1BBC58000, v29, v30, "Captions Supported: %{BOOL}d\nSupported Locales: %s\nDevice Locales: %s", v31, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_0();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.conversationControls);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Captioning not supported on this device.", v10, 2u);
      OUTLINED_FUNCTION_27();
    }

    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for captionEnablementChangedNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC511CD0);
  static ConversationCapabilities.captionEnablementChangedNotification = result;
  return result;
}

void ConversationCapabilities.startForwardingCaptionEnablementNotifications()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Starting to foward caption enablement notifications");
    OUTLINED_FUNCTION_27();
  }

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  if (*MEMORY[0x1E69E4B80])
  {
    v8 = v7;
    name = *MEMORY[0x1E69E4B80];
    CFNotificationCenterAddObserver(v8, v1, @objc closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications(), name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications()()
{
  v0 = type metadata accessor for Notification();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Forwarding captions enablement notification from Dawrin Notifaction center", v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  v8 = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC511CD0);
  memset(v13, 0, sizeof(v13));
  v9 = v8;
  Notification.init(name:object:userInfo:)();
  v10 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v10 postNotification_];

  return (*(v1 + 8))(v3, v0);
}

void @objc closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications()(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications()();
}

void ConversationCapabilities.stopForwardingCaptionEnablementNotifications()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Stopping forwarding of caption enablement notifactions");
    OUTLINED_FUNCTION_27();
  }

  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(center, v1);
}

unint64_t type metadata accessor for UITextInputMode()
{
  result = lazy cache variable for type metadata for UITextInputMode;
  if (!lazy cache variable for type metadata for UITextInputMode)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITextInputMode);
  }

  return result;
}

uint64_t ScreenSharingContentLayout.callAsFunction<A, B, C>(_:title:toolbar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v14 = v12[1];
  v28 = *v12;
  v29 = v14;
  v30[0] = v12[2];
  *(v30 + 9) = *(v12 + 41);
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a10;
  v20 = a11;
  v21 = a12;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_19_39();
  swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for TupleView();
  v16 = lazy protocol witness table accessor for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(partial apply for closure #1 in ScreenSharingContentLayout.callAsFunction<A, B, C>(_:title:toolbar:), v19, &type metadata for ScreenSharingContentLayout, v15, v16, WitnessTable, a9);
}

uint64_t ScreenSharingContentLayout.init(contentMode:safeAreaInsets:toolbarPlacement:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = xmmword_1BC4C1A40;
  *(a3 + 16) = result & 1;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = a7;
  *(a3 + 56) = a2;
  return result;
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a7;
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LayoutRoot();
  OUTLINED_FUNCTION_7_0();
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v14 + 16))(v17, v7, a3, v19);
  _LayoutRoot.init(_:)();
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = v21[0];
  v21[8] = a1;
  v21[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

double ScreenSharingContentLayout.additionalSafeAreaInsets.getter()
{
  v1 = Edge.rawValue.getter();
  if (v1 == Edge.rawValue.getter())
  {
    v2 = 9.0 - *(v0 + 24);
    if (v2 <= 0.0)
    {
      v2 = 0.0;
    }

    return v2 + 4.0;
  }

  else
  {
    v4 = Edge.rawValue.getter();
    v5 = Edge.rawValue.getter();
    v6 = *(v0 + 24);
    v7 = 11.0 - v6;
    if (11.0 - v6 <= 0.0)
    {
      v7 = 0.0;
    }

    result = 36.0 - v6;
    if (result <= 0.0)
    {
      result = 0.0;
    }

    if (v4 != v5)
    {
      return v7;
    }
  }

  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

__C::CGRect __swiftcall CGRect.init(center:size:)(CGPoint center, CGSize size)
{
  v2 = center.x - size.width * 0.5;
  v3 = center.y - size.height * 0.5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

double ScreenSharingContentLayout.contentBounds(in:titleSize:toolbarSize:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((static ContentMode.== infix(_:_:)() & 1) == 0)
  {
    v25 = -*(v8 + 24);
    v26 = -*(v8 + 32);
    return UIEdgeInsetsInsetRect(a1, a2, a3, a4, v25, v26);
  }

  v31 = a6;
  v16 = ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
  v17 = *(v8 + 8);
  ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
  v18 = UIEdgeInsetsInsetRect(a1, a2, a3, a4, v16, v17);
  v22 = *v8;
  switch(*(v8 + 56))
  {
    case 1:
      v24 = v22 + a7;
      v23 = 0.0;
      break;
    case 2:
      v23 = 0.0;
      v24 = 0.0;
      break;
    case 3:
      v23 = 0.0;
      v24 = 0.0;
      break;
    default:
      v23 = v22 + a8;
      v24 = 0.0;
      break;
  }

  a1 = UIEdgeInsetsInsetRect(v18, v19, v20, v21, v23, v24);
  a2 = v27;
  a3 = v28;
  a4 = v29;
  if (v31 > 0.0)
  {
    v25 = v22 + v31;
    v26 = 0.0;
    return UIEdgeInsetsInsetRect(a1, a2, a3, a4, v25, v26);
  }

  return a1;
}

double ScreenSharingContentLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t ScreenSharingContentLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v221 = a4;
  v222 = a3;
  v212 = a2;
  v211 = a1;
  v10 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_2_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v225 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v223 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v220 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  v219 = v197 - v25;
  v26 = type metadata accessor for LayoutSubviews();
  OUTLINED_FUNCTION_2_7();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v197 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v197 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v197 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v44 - 8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v203 = v197 - v51;
  v52 = *(v28 + 16);
  v218 = *&a9;
  *&v216 = v28 + 16;
  v214 = v52;
  v52(v32, a9, v26, v50);
  v53 = COERCE_DOUBLE(lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews));
  v205 = v32;
  v54 = v198;
  v213 = v53;
  dispatch thunk of Sequence.makeIterator()();
  v215 = v33;
  v55 = *(v33 + 36);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  v226 = v12 + 16;
  v224 = (v12 + 32);
  v208 = v12;
  v227 = (v12 + 8);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v43[v55] == v229)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
      v62 = 1;
      v63 = v203;
      goto LABEL_7;
    }

    dispatch thunk of Collection.subscript.read();
    OUTLINED_FUNCTION_14_52();
    v56 = v219;
    v57(v219);
    (v43)(&v229, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v58 = v54;
    v59 = *v224;
    (*v224)(*&v58, v56, v10);
    lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
    LayoutSubview.subscript.getter();
    if (!v229)
    {
      break;
    }

    v60 = OUTLINED_FUNCTION_2_134();
    v61(v60);
    v54 = v58;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v63 = v203;
  v64 = OUTLINED_FUNCTION_15_50();
  v59(v64);
  v62 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v63, v62, 1, v10);
  v65 = v199;
  outlined init with copy of LayoutSubview?(v63, v199);
  OUTLINED_FUNCTION_6_95();
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s7SwiftUI13LayoutSubviewVSgMd);
    v71 = 0.0;
    v73 = 0.0;
  }

  else
  {
    v66 = static ProposedViewSize.unspecified.getter();
    OUTLINED_FUNCTION_3_131(v66, v67, v68, v69);
    v71 = v70;
    v73 = v72;
    v74 = OUTLINED_FUNCTION_2_134();
    v75(v74);
  }

  v76 = OUTLINED_FUNCTION_8_85(&v230);
  v77(v76);
  dispatch thunk of Sequence.makeIterator()();
  v78 = *(v215 + 36);
  v79 = v220;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v40[v78] == v229)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
      v84 = 1;
      v85 = v204;
      goto LABEL_16;
    }

    dispatch thunk of Collection.subscript.read();
    OUTLINED_FUNCTION_14_52();
    v80(*&v79);
    (v40)(&v229, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v81 = *v224;
    (*v224)(COERCE_CGFLOAT(*&v223), *&v79, v10);
    lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
    OUTLINED_FUNCTION_23_44();
    LayoutSubview.subscript.getter();
    if (v229 == 2)
    {
      break;
    }

    v82 = OUTLINED_FUNCTION_2_134();
    v83(v82);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v85 = v204;
  v86 = OUTLINED_FUNCTION_15_50();
  v81(v86);
  v84 = 0;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v85, v84, 1, v10);
  v87 = v206;
  outlined init with copy of LayoutSubview?(v85, v206);
  OUTLINED_FUNCTION_6_95();
  v88 = v210;
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI13LayoutSubviewVSgMd);
    v94 = 0.0;
    v96 = 0.0;
  }

  else
  {
    v89 = static ProposedViewSize.unspecified.getter();
    OUTLINED_FUNCTION_3_131(v89, v90, v91, v92);
    v94 = v93;
    v96 = v95;
    v97 = OUTLINED_FUNCTION_2_134();
    v98(v97);
  }

  v99 = OUTLINED_FUNCTION_8_85(&v231);
  v100(v99);
  dispatch thunk of Sequence.makeIterator()();
  v101 = *(v215 + 36);
  v205 = MEMORY[0x1E69E7CC0];
  v215 = v10;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v37[v101] == v229)
    {
      break;
    }

    dispatch thunk of Collection.subscript.read();
    OUTLINED_FUNCTION_14_52();
    v102(*&v88);
    (v37)(&v229, 0);
    dispatch thunk of Collection.formIndex(after:)();
    lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
    OUTLINED_FUNCTION_23_44();
    LayoutSubview.subscript.getter();
    if (v229 == 1)
    {
      v105 = *v224;
      (*v224)(COERCE_DOUBLE(*&x), *&v88, v10);
      v106 = v205;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v228 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v106 = v228;
      }

      v108 = *(v106 + 2);
      if (v108 >= *(v106 + 3) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v106 = v228;
      }

      *(v106 + 2) = v108 + 1;
      OUTLINED_FUNCTION_17_51();
      v205 = v106;
      v111 = &v106[v109 + *(v110 + 72) * v108];
      v10 = v215;
      (v105)(v111, *&x, v215);
      v88 = v210;
    }

    else
    {
      v103 = OUTLINED_FUNCTION_22_43();
      v104(v103);
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v112 = OUTLINED_FUNCTION_1_139();
  v113 = v217;
  v216 = ScreenSharingContentLayout.contentBounds(in:titleSize:toolbarSize:)(v112, v114, v115, v116, v71, v73, v94, v96);
  v220 = v119;
  v120 = v117;
  v121 = v118;
  v122 = *(v205 + 2);
  v218 = v118;
  v223 = v117;
  *&v197[1] = v96;
  v199 = *&v94;
  v198 = v71;
  *&v197[2] = v73;
  if (v122)
  {
    v207 = 0.0;
    v206 = 0;
    v123 = v117;
    v124 = v118;
    OUTLINED_FUNCTION_17_51();
    v127 = v125 + v126;
    v219 = *(v128 + 72);
    v129 = *(v128 + 16);
    *&v214 = -0.461538462;
    v213 = fabs(v222 / v221 + -0.461538462);
    LODWORD(v208) = 1;
    v130 = v225;
    v131 = v216;
    do
    {
      v129(v130, v127, v10);
      v132 = v123;
      v133 = v124;
      if (static ContentMode.== infix(_:_:)())
      {
        static ProposedViewSize.unspecified.getter();
        OUTLINED_FUNCTION_11_83();
        LOBYTE(v229) = v134 & 1;
        LOBYTE(v228) = v135 & 1;
        v132 = v123;
        v133 = v124;
        if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
        {
          v136 = static ProposedViewSize.unspecified.getter();
          OUTLINED_FUNCTION_3_131(v136, v137, v138, v139);
          v141 = v140;
          v143 = v142;
          v144 = static ContentMode.== infix(_:_:)();
          v145 = static ProposedViewSize.unspecified.getter();
          if (v144)
          {
            if ((OUTLINED_FUNCTION_9_81(v145, v146, v147, v148) & 1) == 0)
            {
              if (v141 == 0.0 && v120 == 0.0)
              {
                v141 = 0.0;
                v149 = fmin(v121 / v143, INFINITY);
                if (v121 == 0.0)
                {
                  v149 = INFINITY;
                }

                v150 = fmin(v121 / v143, INFINITY);
                if (v143 == 0.0)
                {
                  v150 = v149;
                }
              }

              else
              {
                v150 = v120 / v141;
                if ((v143 != 0.0 || v121 != 0.0) && v121 / v143 < v150)
                {
                  v150 = v121 / v143;
                }

                if (v141 == 0.0)
                {
                  v141 = 0.0;
                }

                else
                {
                  v141 = v141 * v150;
                }
              }

              v156 = v143 * v150;
              if (v143 == 0.0)
              {
                v143 = 0.0;
              }

              else
              {
                v143 = v156;
              }
            }
          }

          else if ((OUTLINED_FUNCTION_9_81(v145, v146, v147, v148) & 1) == 0)
          {
            v151 = v120 == 0.0 && v141 == 0.0;
            v152 = v120 / v141;
            v153 = -INFINITY;
            if (v151)
            {
              v152 = -INFINITY;
            }

            if (v121 != 0.0 || v143 != 0.0)
            {
              v153 = v121 / v143;
            }

            if (v152 <= v153)
            {
              v152 = v153;
            }

            if (v141 == 0.0)
            {
              v141 = 0.0;
            }

            else
            {
              v141 = v141 * v152;
            }

            v155 = v143 * v152;
            if (v143 == 0.0)
            {
              v143 = 0.0;
            }

            else
            {
              v143 = v155;
            }
          }

          v132 = v141;
          v133 = v143;
        }
      }

      if (v222 < v221)
      {
        v157 = static ProposedViewSize.unspecified.getter();
        OUTLINED_FUNCTION_3_131(v157, v158, v159, v160);
        if (fabs(v161 / v162 + *&v214) < 0.01 && v213 < 0.06)
        {
          LODWORD(v208) = 0;
          v207 = v132;
          v206 = *&v133;
        }
      }

      if ((static ContentMode.== infix(_:_:)() & 1) != 0 && (v163 = Axis.rawValue.getter(), v151 = v163 == Axis.rawValue.getter(), v10 = v215, v151) && (v232.origin.x = OUTLINED_FUNCTION_1_139(), MidX = CGRectGetMidX(v232), v233.origin.x = v131, v165 = v220, v233.origin.y = v220, v166 = v223, v233.size.width = v223, v233.size.height = v121, MidY = CGRectGetMidY(v233), v234.origin.x = MidX - v132 * 0.5, x = v234.origin.x, v234.origin.y = MidY - v133 * 0.5, v210 = v132, v234.size.width = v132, v234.size.height = v133, MinX = CGRectGetMinX(v234), v235.origin.x = v216, v235.origin.y = v165, v131 = v216, v235.size.width = v166, v235.size.height = v218, v169 = CGRectGetMinX(v235), v121 = v218, v169 <= MinX) && (v236.origin.x = x, v236.origin.y = MidY - v133 * 0.5, v236.size.width = v210, v236.size.height = v133, CGRectGetMaxX(v236), v237.origin.x = OUTLINED_FUNCTION_16_54(), v237.size.width = v223, v237.size.height = v218, MaxX = CGRectGetMaxX(v237), v121 = v218, v133 <= MaxX))
      {
        v120 = v223;
      }

      else
      {
        v120 = v223;
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidX(v238);
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidY(v239);
      }

      static UnitPoint.center.getter();
      OUTLINED_FUNCTION_11_83();
      LayoutSubview.place(at:anchor:proposal:)();
      v130 = v225;
      v171 = OUTLINED_FUNCTION_2_134();
      v172(v171);
      v127 += v219;
      --v122;
    }

    while (v122);

    v173 = v207;
    v113 = v217;
  }

  else
  {

    LODWORD(v208) = 1;
    v173 = 0.0;
  }

  v174 = v200;
  outlined init with copy of LayoutSubview?(v203, v200);
  OUTLINED_FUNCTION_6_95();
  v175 = v202;
  v176 = v204;
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v174, &_s7SwiftUI13LayoutSubviewVSgMd);
  }

  else
  {
    v177 = v197[3];
    v178 = OUTLINED_FUNCTION_15_50();
    v179(v178);
    v180 = v211;
    v240.origin.x = v211;
    v181 = v212;
    v240.origin.y = v212;
    v182 = v221;
    v183 = v222;
    v240.size.width = v222;
    v240.size.height = v221;
    CGRectGetMidX(v240);
    v241.origin.x = v180;
    v241.origin.y = v181;
    v241.size.width = v183;
    v241.size.height = v182;
    CGRectGetMinY(v241);
    ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
    static UnitPoint.top.getter();
    OUTLINED_FUNCTION_11_83();
    v120 = v223;
    LayoutSubview.place(at:anchor:proposal:)();
    (*v227)(v177, v10);
  }

  v184 = v201;
  outlined init with copy of LayoutSubview?(v176, v201);
  OUTLINED_FUNCTION_6_95();
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v176, &_s7SwiftUI13LayoutSubviewVSgMd);
  }

  else
  {
    (*v224)(v175, v184, v10);
    v185 = *(v113 + 56);
    v186 = Axis.rawValue.getter();
    v187 = Axis.rawValue.getter();
    v188 = static ContentMode.== infix(_:_:)();
    if (v186 == v187)
    {
      if (v188)
      {
        if (v208)
        {
          v189 = v120;
        }

        else
        {
          v189 = v173;
        }
      }

      else
      {
        v189 = v222 - (*(v113 + 8) + *(v113 + 8));
      }

      v199 = *&v189;
    }

    switch(v185)
    {
      case 1:
        v246.origin.x = OUTLINED_FUNCTION_1_139();
        CGRectGetMinX(v246);
        OUTLINED_FUNCTION_16_54();
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidY(v247);
        static UnitPoint.leading.getter();
        break;
      case 2:
        OUTLINED_FUNCTION_10_72();
        v243.origin.x = OUTLINED_FUNCTION_18_48();
        CGRectGetMaxY(v243);
        ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
        static UnitPoint.bottom.getter();
        break;
      case 3:
        v244.origin.x = OUTLINED_FUNCTION_1_139();
        CGRectGetMaxX(v244);
        OUTLINED_FUNCTION_16_54();
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidY(v245);
        static UnitPoint.trailing.getter();
        break;
      default:
        OUTLINED_FUNCTION_10_72();
        v242.origin.x = OUTLINED_FUNCTION_18_48();
        CGRectGetMinY(v242);
        ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
        static UnitPoint.top.getter();
        break;
    }

    OUTLINED_FUNCTION_11_83();
    LayoutSubview.place(at:anchor:proposal:)();
    v190 = OUTLINED_FUNCTION_22_43();
    v191(v190);
  }

  OUTLINED_FUNCTION_31_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v192, v193);
  OUTLINED_FUNCTION_31_2();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v194, v195);
}

uint64_t LayoutSubview.scaledSize(in:contentMode:)(uint64_t a1)
{
  static ProposedViewSize.unspecified.getter();
  if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    static ProposedViewSize.unspecified.getter();
    LayoutSubview.sizeThatFits(_:)();
    if (static ContentMode.== infix(_:_:)())
    {
      v2 = OUTLINED_FUNCTION_20_45();
      v8 = CGSize.scaledToFit(_:)(v3, v4, v5, v6, v2, v7);
    }

    else
    {
      v9 = OUTLINED_FUNCTION_20_45();
      v8 = CGSize.scaledToFill(_:)(v10, v11, v12, v13, v9, v14);
    }

    return *&v8;
  }

  return a1;
}

Swift::Bool __swiftcall LayoutSubview.shouldConstrainToolbar(in:)(__C::CGRect in)
{
  if (in.size.width >= in.size.height)
  {
    return 0;
  }

  height = in.size.height;
  width = in.size.width;
  static ProposedViewSize.unspecified.getter();
  LayoutSubview.sizeThatFits(_:)();
  v5 = fabs(width / height + -0.461538462) < 0.06;
  return fabs(v3 / v4 + -0.461538462) < 0.01 && v5;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ScreenSharingContentLayout(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t closure #1 in ScreenSharingContentLayout.callAsFunction<A, B, C>(_:title:toolbar:)@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, void (*a11)(void, void), uint64_t a12)
{
  v82 = a5;
  v83 = a4;
  v73 = a3;
  v74 = a2;
  v70 = a1;
  v85 = a8;
  v75 = a10;
  v76 = a9;
  v84 = *(a9 - 8);
  v81 = a12;
  v71 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd);
  v79 = type metadata accessor for ModifiedContent();
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v92 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v65 - v17;
  v69 = a6;
  v72 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModifiedContent();
  v22 = *(v21 - 8);
  v89 = v21;
  v90 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v65 - v25;
  v26 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ModifiedContent();
  v67 = *(v30 - 8);
  v31 = v67;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v87 = &v65 - v36;
  v70(v35);
  LOBYTE(v97[0]) = 1;
  v65 = lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
  v37 = v71;
  View.layoutValue<A>(key:value:)();
  (*(v26 + 8))(v29, a7);
  v38 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<LayoutRoleKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd);
  v97[7] = v37;
  v97[8] = v38;
  v66 = v30;
  WitnessTable = swift_getWitnessTable();
  v86 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v33, v30, WitnessTable);
  v39 = *(v31 + 8);
  v70 = (v31 + 8);
  v71 = v39;
  v40 = (v39)(v33, v30);
  v74(v40);
  LOBYTE(v97[0]) = 0;
  v41 = v88;
  v42 = v69;
  v43 = v75;
  View.layoutValue<A>(key:value:)();
  (*(v72 + 8))(v20, v42);
  v97[5] = v43;
  v97[6] = v38;
  v44 = v89;
  v73 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v41, v44, v73);
  v74 = *(v90 + 8);
  v75 = v90 + 8;
  v45 = (v74)(v41, v44);
  v46 = v78;
  v83(v45);
  LOBYTE(v97[0]) = 2;
  v47 = v92;
  v48 = v76;
  v49 = v81;
  View.layoutValue<A>(key:value:)();
  (*(v84 + 8))(v46, v48);
  v97[3] = v49;
  v97[4] = v38;
  v50 = v79;
  v51 = swift_getWitnessTable();
  v52 = v77;
  v53 = v47;
  static ViewBuilder.buildExpression<A>(_:)(v47, v50, v51);
  v54 = v80;
  v84 = *(v80 + 8);
  (v84)(v53, v50);
  v55 = v86;
  v56 = v66;
  (*(v67 + 16))(v86, v87, v66);
  v97[0] = v55;
  v57 = v91;
  v58 = v89;
  (*(v90 + 16))(v41, v91, v89);
  v97[1] = v41;
  (*(v54 + 16))(v53, v52, v50);
  v97[2] = v53;
  v96[0] = v56;
  v96[1] = v58;
  v59 = v58;
  v96[2] = v50;
  v93 = WitnessTable;
  v94 = v73;
  v95 = v51;
  static ViewBuilder.buildBlock<each A>(_:)(v97, 3, v96);
  v60 = v84;
  (v84)(v52, v50);
  v61 = v58;
  v62 = v74;
  (v74)(v57, v61);
  v63 = v71;
  v71(v87, v56);
  v60(v92, v50);
  v62(v88, v59);
  return v63(v86, v56);
}

unint64_t lazy protocol witness table accessor for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout()
{
  result = lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey()
{
  result = lazy protocol witness table cache variable for type LayoutRoleKey and conformance LayoutRoleKey;
  if (!lazy protocol witness table cache variable for type LayoutRoleKey and conformance LayoutRoleKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRoleKey and conformance LayoutRoleKey);
  }

  return result;
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t getEnumTagSinglePayload for ScreenSharingContentLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingContentLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutRole(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutRole and conformance LayoutRole()
{
  result = lazy protocol witness table cache variable for type LayoutRole and conformance LayoutRole;
  if (!lazy protocol witness table cache variable for type LayoutRole and conformance LayoutRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRole and conformance LayoutRole);
  }

  return result;
}

uint64_t AnimatedSaveView.SaveState.image.getter(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    return 0x72616D6B63656863;
  }

  else
  {
    return 0xD000000000000015;
  }
}

double AnimatedSaveView.SaveState.scale.getter(char a1)
{
  result = 1.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

double AnimatedSaveView.SaveState.largeScale.getter(char a1)
{
  result = 2.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t AnimatedSaveView.SaveState.color.getter(char a1)
{
  if (a1)
  {

    return static Color.white.getter();
  }

  else
  {
    static Color.gray.getter();
    v3 = Color.opacity(_:)();

    return v3;
  }
}

double AnimatedSaveView.SaveState.yImageOffset.getter(char a1)
{
  result = 0.0;
  if ((a1 & 0xFE) == 0)
  {
    return -2.0;
  }

  return result;
}