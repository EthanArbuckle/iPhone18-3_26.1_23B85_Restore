size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized _arrayForceCast<A, B>(_:)()
{
  specialized _arrayForceCast<A, B>(_:)();
}

{
  specialized _arrayForceCast<A, B>(_:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_78_3();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  if (!v1)
  {
LABEL_14:
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v21[5] = MEMORY[0x1E69E7CC0];
  v3 = OUTLINED_FUNCTION_81_1();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v7 = OUTLINED_FUNCTION_112_5();
      }

      v8 = v7;
      v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
      v10 = OUTLINED_FUNCTION_79_5(v9);
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v8 + 1, 1);
        v13 = v21[3];
      }

      else
      {
        v13 = v10;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
      OUTLINED_FUNCTION_65_6();
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_8();
      v16 = OUTLINED_FUNCTION_77_6(v15);
      v17(v16);
      v18 = OUTLINED_FUNCTION_76_4();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    while (v1 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_78_3();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  if (!v1)
  {
LABEL_14:
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v17[5] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_81_1();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        OUTLINED_FUNCTION_112_5();
      }

      v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
      v5 = OUTLINED_FUNCTION_79_5(v4);
      if (v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v17[3];
      }

      else
      {
        v7 = v5;
      }

      ++v3;
      __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
      OUTLINED_FUNCTION_65_6();
      MEMORY[0x1EEE9AC00](v8);
      OUTLINED_FUNCTION_8();
      v10 = OUTLINED_FUNCTION_77_6(v9);
      v11(v10);
      v12 = OUTLINED_FUNCTION_76_4();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v12, v13, v14, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    while (v1 != v3);
    goto LABEL_14;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_70_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v21;
    OUTLINED_FUNCTION_40_3();
    v12 = v1 + v11;
    v13 = *(v4 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_206();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v14, v15);
      v21 = v10;
      v16 = *(v10 + 16);
      if (v16 >= *(v10 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v21;
      }

      v19 = v2;
      v20 = &protocol witness table for Collaboration;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v8, boxed_opaque_existential_1);
      *(v10 + 16) = v16 + 1;
      outlined init with take of TapInteractionHandler(&v18, v10 + 40 * v16 + 32);
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_70_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15, v14, 0);
    v16 = v26;
    OUTLINED_FUNCTION_40_3();
    v18 = v1 + v17;
    v23 = *(v4 + 72);
    v24 = v19;
    do
    {
      v24(v8, v18, v2);
      swift_dynamicCast();
      v26 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v16 = v26;
      }

      *(v16 + 16) = v21 + 1;
      OUTLINED_FUNCTION_40_3();
      outlined init with take of Handle?(v13, v16 + v22 + *(v10 + 72) * v21);
      v18 += v23;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_70_3();
    v23 = v4;
    v4(v15, v14, 0);
    v16 = v26;
    OUTLINED_FUNCTION_40_3();
    v18 = v6 + v17;
    v19 = *(v9 + 72);
    do
    {
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v18, v13);
      v26 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        v23(v20 > 1, v21 + 1, 1);
        v16 = v26;
      }

      v25[3] = v7;
      v25[4] = v2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v13, boxed_opaque_existential_1);
      *(v16 + 16) = v21 + 1;
      v24(v25, v16 + 40 * v21 + 32);
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t outlined init with copy of ConversationControlsAction(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5(v4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of ConversationControlsAction(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_221(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](a1, v1);
}

id OUTLINED_FUNCTION_221_2()
{
  v4 = *(v2 + 3816);

  return [v1 v4];
}

void *OUTLINED_FUNCTION_221_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = v2[3];

  return __swift_project_boxed_opaque_existential_1(v2, v4);
}

void static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v11 = *a6;
  v12 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit15GroupCombinable_pGMd);
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v34 = Dictionary.init(dictionaryLiteral:)();
  specialized Sequence.forEach(_:)(a1, v11, &v35, &v34);
  v28[16] = v11;
  v29 = &v35;
  v30 = &v34;
  v31 = a4;
  v32 = a5;
  v33 = a3;
  specialized Sequence.forEach(_:)(partial apply for closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:), v28, a2);
  v13 = v34;
  v14 = v34 + 64;
  v15 = 1 << *(v34 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v34 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  do
  {
    while (1)
    {
      if (!v17)
      {
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v20);
          ++v19;
          if (v17)
          {
            v19 = v20;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_9:
      v21 = *(*(v13 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
      v22 = *(v21 + 16);
      v23 = *(v12 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_22;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v12 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v24;
      }

      v17 &= v17 - 1;
      if (!*(v21 + 16))
      {
        break;
      }

      if ((*(v12 + 24) >> 1) - *(v12 + 16) < v22)
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15GroupCombinable_pMd);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v25 = *(v12 + 16);
        v26 = __OFADD__(v25, v22);
        v27 = v25 + v22;
        if (v26)
        {
          goto LABEL_24;
        }

        *(v12 + 16) = v27;
      }
    }
  }

  while (!v22);
  __break(1u);
LABEL_20:

  specialized Array.append<A>(contentsOf:)(v12);
}

uint64_t closure #1 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(void *a1, char a2, uint64_t *a3, void *a4)
{
  v26 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LOBYTE(v27[0]) = a2 & 1;
  (*(v14 + 16))(v27, v15, v14);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v16 = *(*a3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
    v17 = *a3;
    *(v17 + 16) = v16 + 1;
    return outlined init with copy of IDSLookupManager(a1, v17 + 40 * v16 + 32);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v19 = v26;
    v20 = specialized Dictionary.subscript.getter(v13);
    if (v20)
    {
      v21 = v20;
      outlined init with copy of IDSLookupManager(a1, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v24;
      }

      v22 = *(v21 + 16);
      if (v22 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v25;
      }

      *(v21 + 16) = v22 + 1;
      outlined init with take of ImageName(v27, v21 + 40 * v22 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v27[0] = *v19;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15GroupCombinable_pGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1BC4BA940;
      outlined init with copy of IDSLookupManager(a1, v23 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v27[0] = *v19;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *v19 = v27[0];
    return (*(v11 + 8))(v13, v10);
  }
}

void *specialized Sequence.forEach(_:)(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  result = (a1 + 32);
  v10 = v8 + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = result + 5;
    closure #1 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(result, a2 & 1, a3, a4);
    result = v11;
  }

  while (!v4);
  return result;
}

void RecentsCallItem.combiningUUID(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_185_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_26_7();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&a9 - v32);
  if (*v23)
  {
    OUTLINED_FUNCTION_0_169();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_200_0();
    if (v34)
    {
LABEL_9:
      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    else
    {
LABEL_5:
      OUTLINED_FUNCTION_3_129();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      type metadata accessor for UUID();
      v35 = OUTLINED_FUNCTION_2_10();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_169();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 3u:
      case 4u:
        goto LABEL_5;
      case 2u:
        v39 = *v33;
        v40 = [*v33 groupUUID];
        if (v40)
        {
          v41 = v40;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        v43 = type metadata accessor for UUID();
        __swift_storeEnumTagSinglePayload(v29, v42, 1, v43);
        OUTLINED_FUNCTION_45_1();
        outlined init with take of CaptionSectioner.SpeakerSection?();

        break;
      default:
        goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_151_1()
{
  v3 = *(v1 - 168);
  v2 = *(v1 - 160);
  *v0 = *(v1 - 280);
  v0[1] = v2;
  v4 = *(v1 - 184);
  v5 = *(v1 - 176);
  v0[2] = v3;
  v0[3] = v5;
  v0[4] = v4;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x1EEE693F0]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_49_5()
{
}

uint64_t OUTLINED_FUNCTION_49_7()
{
}

uint64_t OUTLINED_FUNCTION_49_10@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_49_13()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return outlined consume of SessionActionNotice.NoticeType(10, 0, 0xC000000000000000);
}

uint64_t OUTLINED_FUNCTION_49_24()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_49_25()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 196);

  outlined consume of CallDisplayInfo(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_49_26(__n128 a1)
{
  *(v1 + 57) = a1;

  return static ConversationControlsType.== infix(_:_:)(v1 + 80, v1 + 32);
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  return sub_1BBC87174(a1, a2, a3);
}

{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_12_14(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_16_18();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v17, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v44 = v18;
  v45 = v5;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v17 + v16, 1);
  v3 = *v1;
  v2 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v5 = *(v6 + 72);
  v19 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  specialized Sequence._copySequenceContents(initializing:)();
  if (v20 < v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20)
  {
    v23 = *(v3 + 16);
    v24 = __OFADD__(v23, v20);
    v25 = v23 + v20;
    if (v24)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v25;
  }

  if (v20 != v19)
  {
    outlined consume of Set<TUHandle>.Iterator._Variant();
LABEL_8:
    *v1 = v3;
    return;
  }

LABEL_11:
  v19 = *(v3 + 16);
  v21 = v47;
  v39 = v47;
  v40 = v46;
  v22 = v48;
  v16 = v49;
  v37 = v48;
  if (v50)
  {
    v26 = (v50 - 1) & v50;
    v27 = __clz(__rbit64(v50)) | (v49 << 6);
    v38 = (v48 + 64) >> 6;
LABEL_19:
    outlined init with copy of Participant(*(v40 + 48) + v27 * v5, v15);
    v30 = 0;
LABEL_20:
    v43 = v19;
    __swift_storeEnumTagSinglePayload(v15, v30, 1, v45);
    while (2)
    {
      v31 = v44;
      outlined init with copy of Participant?(v15, v44);
      if (__swift_getEnumTagSinglePayload(v31, 1, v45) != 1)
      {
        outlined destroy of Participant?(v31);
        v42 = *(v3 + 24) >> 1;
        if (v42 < v43 + 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v3 = v36;
          v42 = *(v36 + 24) >> 1;
        }

        v41 = v3 + v2;
        v32 = v45;
        while (1)
        {
          outlined init with copy of Participant?(v15, v12);
          if (__swift_getEnumTagSinglePayload(v12, 1, v32) == 1)
          {
            break;
          }

          outlined init with take of Participant(v12, v8);
          v31 = v43;
          if (v43 >= v42)
          {
            outlined destroy of Participant(v8);
            goto LABEL_38;
          }

          outlined destroy of Participant?(v15);
          outlined init with take of Participant(v8, v41 + v31 * v5);
          if (!v26)
          {
            while (1)
            {
              v33 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              if (v33 >= v38)
              {
                v26 = 0;
                v35 = 1;
                goto LABEL_34;
              }

              v26 = *(v39 + 8 * v33);
              ++v16;
              if (v26)
              {
                v16 = v33;
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

          v33 = v16;
LABEL_33:
          v34 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          outlined init with copy of Participant(*(v40 + 48) + (v34 | (v33 << 6)) * v5, v15);
          v35 = 0;
LABEL_34:
          v43 = v31 + 1;
          v32 = v45;
          __swift_storeEnumTagSinglePayload(v15, v35, 1, v45);
        }

        outlined destroy of Participant?(v12);
        v31 = v43;
LABEL_38:
        *(v3 + 16) = v31;
        continue;
      }

      break;
    }

LABEL_40:
    outlined destroy of Participant?(v15);
    outlined consume of Set<TUHandle>.Iterator._Variant();
    outlined destroy of Participant?(v31);
    goto LABEL_8;
  }

LABEL_14:
  v38 = (v22 + 64) >> 6;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= ((v22 + 64) >> 6))
    {
      v26 = 0;
      v30 = 1;
      goto LABEL_20;
    }

    v29 = *(v21 + 8 * v28);
    ++v16;
    if (v29)
    {
      v26 = (v29 - 1) & v29;
      v27 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_19;
    }
  }

  __break(1u);
}

{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 32 * v6 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v7 + v6, 1);
  v1 = *v2;
  v8 = *(*v2 + 16);
  v9 = (*(*v2 + 24) >> 1) - v8;
  v10 = specialized Sequence._copySequenceContents(initializing:)(&v26, *v2 + 8 * v8 + 32, v9, a1);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v10);
    v13 = v10 + v11;
    if (v12)
    {
      __break(1u);
LABEL_24:
      *(v1 + 16) = v3 + v4 + 1;
      goto LABEL_7;
    }

    *(v1 + 16) = v13;
  }

  if (v10 != v9)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  if (!v27)
  {
    goto LABEL_7;
  }

  v14 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v26;
  if (v14 < *(v26 + 16))
  {
    v3 = *(v1 + 16);
    v16 = *(v26 + 8 * v14 + 32);
    v17 = v27 - 1;

    v18 = v17;
    v19 = v15;
    v25 = v15 + 24;
LABEL_15:
    v20 = *(v1 + 24) >> 1;
    v21 = v18;
    if (v20 < v3 + 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v21;
      v1 = v24;
      v20 = *(v24 + 24) >> 1;
    }

    v4 = 0;
    for (i = v18; ; i = v23)
    {
      if (v3 + v4 >= v20)
      {
        *(v1 + 16) = v3 + v4;
        v18 -= v4;
        v3 += v4;
        goto LABEL_15;
      }

      *(v1 + 8 * v3 + 32 + 8 * v4) = v16;
      if (v18 == v4)
      {
        goto LABEL_24;
      }

      v23 = i - 1;
      if (i - 1 >= *(v19 + 16))
      {
        break;
      }

      v16 = *(v25 + 8 * i);

      v18 = v21;
      ++v4;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSLayoutConstraintCSgMd);
  OUTLINED_FUNCTION_16_18();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v7 = v1;
  v9 = specialized Set.count.getter(a1);
  v10 = specialized Array.count.getter(*v1);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v12, 1);
  OUTLINED_FUNCTION_2_29();
  v17 = specialized Sequence._copySequenceContents(initializing:)(v13, v14, v15, v16);
  if (v17 < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= 1)
  {
    v18 = *(v3 + 16);
    v11 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v19;
  }

  if (v17 != v1)
  {
LABEL_7:
    outlined consume of Set<TUHandle>.Iterator._Variant();
    *v7 = v2;
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_11_12();
  if (v4 < 0)
  {
LABEL_14:
    v1 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
      goto LABEL_7;
    }

    v54 = v20;
    v21 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    OUTLINED_FUNCTION_3_22(v21, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v56);
    OUTLINED_FUNCTION_25_10();
    v5 = v56;
    goto LABEL_20;
  }

  if (a1)
  {
    OUTLINED_FUNCTION_8_23(v6);
  }

  else
  {
    OUTLINED_FUNCTION_22_10();
    v30 = v29 >> 6;
    while (1)
    {
      if (__OFADD__(v6, 1))
      {
        goto LABEL_42;
      }

      if (v6 + 1 >= v30)
      {
        break;
      }

      OUTLINED_FUNCTION_19_4();
    }

    OUTLINED_FUNCTION_21_9();
  }

LABEL_20:
  if (!v5)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_10();
  v32 = v31 >> 6;
LABEL_22:
  OUTLINED_FUNCTION_17_14();
  if (!(v34 ^ v11 | v33))
  {
    v1 = v7;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_7_25();
  while (1)
  {
    if (v3 >= v1)
    {
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_22;
    }

    *(v53 + 8 * v3++) = v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      goto LABEL_39;
    }

    v55 = v35;
    v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    OUTLINED_FUNCTION_3_22(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v55, v56);
    v35 = OUTLINED_FUNCTION_25_10();
    v5 = v56;
LABEL_35:
    if (!v5)
    {
LABEL_39:
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_7;
    }
  }

  if (a1)
  {
    OUTLINED_FUNCTION_9_15();
LABEL_32:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_35;
  }

  while (!__OFADD__(v6, 1))
  {
    if (v6 + 1 >= v32)
    {
      OUTLINED_FUNCTION_21_9();
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_19_4();
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v7 = v1;
  v9 = specialized Set.count.getter(a1);
  v10 = specialized Array.count.getter(*v1);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v12, 1);
  OUTLINED_FUNCTION_2_29();
  v17 = specialized Sequence._copySequenceContents(initializing:)(v13, v14, v15, v16);
  if (v17 < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= 1)
  {
    v18 = *(v3 + 16);
    v11 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v19;
  }

  if (v17 != v1)
  {
LABEL_7:
    outlined consume of Set<TUHandle>.Iterator._Variant();
    *v7 = v2;
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_11_12();
  if (v4 < 0)
  {
LABEL_14:
    v1 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
      goto LABEL_7;
    }

    v54 = v20;
    v21 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    OUTLINED_FUNCTION_3_22(v21, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v56);
    OUTLINED_FUNCTION_25_10();
    v5 = v56;
    goto LABEL_20;
  }

  if (a1)
  {
    OUTLINED_FUNCTION_8_23(v6);
  }

  else
  {
    OUTLINED_FUNCTION_22_10();
    v30 = v29 >> 6;
    while (1)
    {
      if (__OFADD__(v6, 1))
      {
        goto LABEL_42;
      }

      if (v6 + 1 >= v30)
      {
        break;
      }

      OUTLINED_FUNCTION_19_4();
    }

    OUTLINED_FUNCTION_21_9();
  }

LABEL_20:
  if (!v5)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_10();
  v32 = v31 >> 6;
LABEL_22:
  OUTLINED_FUNCTION_17_14();
  if (!(v34 ^ v11 | v33))
  {
    v1 = v7;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_7_25();
  while (1)
  {
    if (v3 >= v1)
    {
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_22;
    }

    *(v53 + 8 * v3++) = v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      goto LABEL_39;
    }

    v55 = v35;
    v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    OUTLINED_FUNCTION_3_22(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v55, v56);
    v35 = OUTLINED_FUNCTION_25_10();
    v5 = v56;
LABEL_35:
    if (!v5)
    {
LABEL_39:
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_7;
    }
  }

  if (a1)
  {
    OUTLINED_FUNCTION_9_15();
LABEL_32:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_35;
  }

  while (!__OFADD__(v6, 1))
  {
    if (v6 + 1 >= v32)
    {
      OUTLINED_FUNCTION_21_9();
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_19_4();
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
  OUTLINED_FUNCTION_16_18();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_76_6()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id OUTLINED_FUNCTION_50_3()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return type metadata accessor for Date();
}

id OUTLINED_FUNCTION_90_4()
{
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = 0;
  *(v1 + 216) = v0;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;

  return v4;
}

uint64_t OUTLINED_FUNCTION_90_6()
{
  *(v1 - 180) = v0;

  return swift_slowAlloc();
}

uint64_t RecentsCollectionViewCollator.upcomingSectionItemLimit.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator____lazy_storage___upcomingSectionItemLimit);
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator____lazy_storage___upcomingSectionItemLimit + 8) != 1)
  {
    return *v1;
  }

  result = closure #1 in RecentsCollectionViewCollator.upcomingSectionItemLimit.getter();
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t closure #1 in RecentsCollectionViewCollator.upcomingSectionItemLimit.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC514000);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, v7);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sypSgMd);
    v3 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC514000);
    v4 = [v0 integerForKey_];
  }

  else
  {

    memset(v7, 0, sizeof(v7));
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sypSgMd);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t static RecentsCollectionViewSection.callItemCases.getter()
{
  specialized Array.subscript.getter(2);
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (__OFSUB__(v5 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 != (v5 >> 1) - v3)
  {
LABEL_12:
    swift_unknownObjectRelease_n();
LABEL_2:
    v6 = OUTLINED_FUNCTION_46();
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v7, v3, v5);
    v1 = v8;
LABEL_9:
    swift_unknownObjectRelease();
    return v1;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  return v1;
}

void specialized Array.subscript.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_31();
  if (v3)
  {
    v4 = v2 < v1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_9;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit28RecentsCollectionViewSectionOGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + a3), v5);
      return;
    }

    goto LABEL_10;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV_Tt1g5, type metadata accessor for Participant);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit16CaptionSectionerV0J0V_Tt1g5, type metadata accessor for CaptionSectioner.Caption);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV7CaptionV_Tt1g5, type metadata accessor for Participant.Caption);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_5_15();
  MEMORY[0x1BFB22640](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAE014CommunicationsB0E17acceptsFirstMouseQryFQOyACyACyACyAA0hiG13ConfigurationV5LabelVAA14_PaddingLayoutVGAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_G_AA017BorderedProminentiG0VQo_AUyAA0I11BorderShapeVGGAUyAA03AnyzG0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a2);
  return Hasher._finalize()();
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()()
{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t RecentsCallItem.date.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentsCallItem(v0);
  return OUTLINED_FUNCTION_248();
}

void static RecentsCollectionViewModel.section(_:includes:now:calendar:)()
{
  OUTLINED_FUNCTION_29();
  v117 = v1;
  v118 = v2;
  v4 = v3;
  v6 = v5;
  v121 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1();
  v119 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v120 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v116 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v115 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v114 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v113 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32_18();
  v23 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  v112 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v111 = v29;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v110 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v109 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  v36 = v35;
  v37 = *v6;
  v39 = *(v4 + 3);
  v38 = *(v4 + 4);
  v40 = OUTLINED_FUNCTION_20_36();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v38 + 16))(v39, v38);
  OUTLINED_FUNCTION_43_13(v21);
  if (v42)
  {
    v43 = *(v4 + 3);
    v44 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, v43);
    (*(v44 + 8))(v43, v44);
    OUTLINED_FUNCTION_43_13(v21);
    v48 = v25;
    if (!v42)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v25 + 32))(v0, v21, v23);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v23);
    v48 = v25;
  }

  OUTLINED_FUNCTION_43_13(v0);
  if (v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd);
    if (v37 == 3)
    {
      v49 = *(v4 + 4);
      __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
      v50 = OUTLINED_FUNCTION_28_0();
      v51(v50, v49);
    }
  }

  else
  {
    v52 = v36;
    v53 = *(v48 + 32);
    v54 = v36;
    v55 = v23;
    v53(v54, v0, v23);
    v56 = v121;
    switch(v37)
    {
      case 3:
        v68 = v48;
        v69 = *(v4 + 3);
        v70 = *(v4 + 4);
        __swift_project_boxed_opaque_existential_1(v4, v69);
        (*(v70 + 32))(v69, v70);
        (*(v68 + 8))(v52, v23);
        break;
      case 4:
        static Date.> infix(_:_:)();
        (*(v48 + 8))(v52, v23);
        break;
      case 5:
        v57 = MEMORY[0x1E6969A48];
        goto LABEL_21;
      case 6:
        v82 = v121;
        v107 = v48;
        OUTLINED_FUNCTION_22_33();
        v84 = v83;
        LODWORD(v116) = v85;
        v115 = v86;
        v86(v83);
        v62 = v113;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v87 = *(v4 + 1);
        v87(v84, v82);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
          goto LABEL_33;
        }

        v119 = v87;
        v96 = v109;
        v97 = OUTLINED_FUNCTION_20_36();
        (v53)(v97);
        v115(v84, v116, v82);
        Calendar.isDate(_:equalTo:toGranularity:)();
        v119(v84, v82);
        v98 = *(v107 + 8);
        v98(v96, v55);
        v99 = OUTLINED_FUNCTION_36_24();
        (v98)(v99);
        break;
      case 7:
        v57 = MEMORY[0x1E6969A10];
        goto LABEL_21;
      case 8:
        v107 = v48;
        v92 = v119;
        v93 = *(v119 + 13);
        v94 = v120;
        LODWORD(v116) = *MEMORY[0x1E6969A10];
        v115 = v93;
        v93(v120);
        v62 = v114;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v95 = *(v92 + 1);
        v95(v94, v56);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
          goto LABEL_33;
        }

        v119 = v95;
        v103 = v110;
        v53(v110, v62, v55);
        v115(v94, v116, v56);
        Calendar.isDate(_:equalTo:toGranularity:)();
        v119(v94, v56);
        v104 = *(v107 + 8);
        v104(v103, v55);
        v105 = OUTLINED_FUNCTION_36_24();
        (v104)(v105);
        break;
      case 9:
        v57 = MEMORY[0x1E6969A78];
        goto LABEL_21;
      case 10:
        v107 = v48;
        OUTLINED_FUNCTION_22_33();
        v59 = v88;
        LODWORD(v116) = v89;
        v114 = v90;
        (v90)(v88);
        v62 = v115;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v91 = OUTLINED_FUNCTION_39_14();
        v4(v91);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
          goto LABEL_33;
        }

        v119 = v4;
        v64 = v111;
        v100 = OUTLINED_FUNCTION_20_36();
        (v53)(v100);
        v66 = v59;
        v67 = v116;
        goto LABEL_35;
      case 11:
        v57 = MEMORY[0x1E6969A68];
LABEL_21:
        v71 = v119;
        v72 = v120;
        (*(v119 + 13))(v120, *v57, v121);
        Calendar.isDate(_:equalTo:toGranularity:)();
        (*(v71 + 1))(v72, v56);
        (*(v48 + 8))(v52, v23);
        break;
      case 12:
        v107 = v48;
        OUTLINED_FUNCTION_22_33();
        v59 = v58;
        LODWORD(v115) = v60;
        v114 = v61;
        (v61)(v58);
        v62 = v116;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v63 = OUTLINED_FUNCTION_39_14();
        v4(v63);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
LABEL_33:
          (*(v107 + 8))(v108, v55);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s10Foundation4DateVSgMd);
        }

        else
        {
          v119 = v4;
          v64 = v112;
          v65 = OUTLINED_FUNCTION_20_36();
          (v53)(v65);
          v66 = v59;
          v67 = v115;
LABEL_35:
          v114(v66, v67, v56);
          Calendar.isDate(_:equalTo:toGranularity:)();
          v119(v59, v56);
          v101 = *(v107 + 8);
          v101(v64, v55);
          v102 = OUTLINED_FUNCTION_36_24();
          (v101)(v102);
        }

        break;
      case 13:
        v73 = *MEMORY[0x1E6969A68];
        v74 = v121;
        v75 = v119;
        v76 = *(v119 + 13);
        v77 = v120;
        v76(v120, v73, v121);
        v108 = v52;
        v116 = Calendar.component(_:from:)();
        v78 = *(v75 + 1);
        v78(v77, v74);
        v76(v77, v73, v74);
        v79 = Calendar.component(_:from:)();
        v78(v77, v74);
        v80 = OUTLINED_FUNCTION_36_24();
        v81(v80);
        if (__OFSUB__(v79, 1))
        {
          __break(1u);
          JUMPOUT(0x1BBC886ECLL);
        }

        break;
      case 14:
        (*(v48 + 8))(v52, v23);
        break;
      default:
        (*(v48 + 8))(v52, v23);
        break;
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void RecentsCallItem.sectionDate.getter()
{
  OUTLINED_FUNCTION_50_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_140_0();
  v4 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_162_1();
LABEL_8:
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    goto LABEL_9;
  }

  v5 = *v0;
  ConversationLink.prevailingSuggestion.getter();
  if (!v6)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_7;
  }

  v7 = v6;
  SGURL.endDate.getter(v1);

  type metadata accessor for Date();
  v8 = OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_83_0(v8);
  if (v9)
  {
LABEL_7:
    v20 = OUTLINED_FUNCTION_91_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, v21);

    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_31_2();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_29_6();
  v11(v10);

  v12 = OUTLINED_FUNCTION_66_7();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
LABEL_9:
  OUTLINED_FUNCTION_49();
}

uint64_t OUTLINED_FUNCTION_147()
{

  return swift_dynamicCast();
}

BOOL RecentsCallItem.isOngoing.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_45_1();
  v1 = swift_getEnumCaseMultiPayload() == 1;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_18_22()
{

  return static ConversationControlsType.== infix(_:_:)(v0 - 136, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_18_25(char a1)
{
  *(v3 + v2[8]) = a1 & 1;
  *(v3 + v2[9]) = *(v1 + 492) & 1;
  *(v3 + v2[10]) = 0;

  return Participant.videoInfo.getter();
}

uint64_t OUTLINED_FUNCTION_18_26()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0xE000000000000000;
  v8 = 0;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&a3, v4, *&v6, *&v8)._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1)
{

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, v1);
}

uint64_t OUTLINED_FUNCTION_18_32()
{
}

void OUTLINED_FUNCTION_18_34()
{
  *(v1 - 96) = 60;
  *(v1 - 88) = 0xE100000000000000;
  *(v1 - 104) = v0;
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return _typeName(_:qualified:)();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return type metadata accessor for Date();
}

id OUTLINED_FUNCTION_18_40(uint64_t a1)
{
  v4 = *(v2 + 3816);

  return [v1 v4];
}

uint64_t OUTLINED_FUNCTION_18_46()
{

  return static NSTimer.publish(every:tolerance:on:in:options:)();
}

id OUTLINED_FUNCTION_18_49()
{

  return [v1 (v0 + 2808)];
}

uint64_t OUTLINED_FUNCTION_18_50()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

void OUTLINED_FUNCTION_18_54()
{

  specialized Set._Variant.remove(_:)();
}

NSNumber OUTLINED_FUNCTION_18_55()
{

  return Bool._bridgeToObjectiveC()();
}

uint64_t OUTLINED_FUNCTION_18_56()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  v3 = v1 + *(v2 + 20);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v0);
}

unint64_t OUTLINED_FUNCTION_18_59(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(v2 - 296);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 320));
}

__n128 OUTLINED_FUNCTION_18_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __n128 a21, __int128 a22)
{
  *v22 = a19;
  v22[1] = a20;
  result = a21;
  v22[2] = a21;
  v22[3] = a22;
  return result;
}

void OUTLINED_FUNCTION_18_61()
{

  _StringGuts.grow(_:)(58);
}

CGAffineTransform *OUTLINED_FUNCTION_18_70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CGAffineTransform *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a15 = v21;
  a16 = v22;
  a17 = v23;
  a18 = v24;
  a19 = v25;
  a20 = v26;

  return CGAffineTransformInvert(&a9, &a15);
}

void RecentsCallItem.sectionOverride.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentsCallItemType(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_208();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_1_5();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    *v0 = 15;
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return;
  }

  v4 = *v1;
  OUTLINED_FUNCTION_162_1();
  static RecentsCallItem.shouldTargetUpcoming(for:)();
  if (v5)
  {
    ConversationLink.prevailingSuggestion.getter();
    if (!v6)
    {

LABEL_10:
      v9 = 4;
      goto LABEL_11;
    }

    v7 = v6;
    v8 = SGURL.hasEventDate.getter();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = 15;
LABEL_11:
  *v0 = v9;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Set<TUConversationLink>?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationLink and conformance NSObject, &lazy cache variable for type metadata for TUConversationLink);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void OUTLINED_FUNCTION_36_6()
{
  v2 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return static _SetStorage.resize(original:capacity:move:)();
}

uint64_t OUTLINED_FUNCTION_36_13()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_36_16(uint64_t a1@<X8>)
{
  v5 = (v2 + a1);
  v5[3] = v3;
  v5[4] = v1;
  *v5 = v4;
}

uint64_t OUTLINED_FUNCTION_36_18()
{

  return outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
}

id OUTLINED_FUNCTION_36_19(uint64_t a1)
{

  return [v1 (v2 + 3960)];
}

uint64_t OUTLINED_FUNCTION_36_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return outlined destroy of AnyHashable(va);
}

uint64_t OUTLINED_FUNCTION_36_26@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

char *OUTLINED_FUNCTION_36_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, int a23, uint64_t a24)
{
  v36 = *(v34 - 104);
  v37 = *(v34 - 96);

  return specialized SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(v32, v31, v30, a21, a23, a24, v36, v37, v28 & 1, v29, v33, a19, a20, v24, v26, v25, a1, v27);
}

uint64_t OUTLINED_FUNCTION_36_30()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id OUTLINED_FUNCTION_36_32(uint64_t a1)
{

  return [v1 (v2 + 2040)];
}

id OUTLINED_FUNCTION_36_33()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_36_34()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_36_39(id a1)
{
  *(v2 + v1) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_36_40@<X0>(uint64_t a1@<X8>)
{

  return _s15ConversationKit11ParticipantVWOcTm_4(v1 + a1 * v3, v2, type metadata accessor for Participant);
}

uint64_t closure #2 in RecentsLinkController.refreshLinks()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = RecentsLinkController.modelLocked.getter();

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in closure #2 in RecentsLinkController.refreshLinks();
    *(v7 + 24) = v6;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[3] = &block_descriptor_172;
    v8 = _Block_copy(aBlock);
    v9 = a2;

    [v5 performWhileLocked_];

    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*specialized Dictionary.subscript.modify())()
{
  v2 = OUTLINED_FUNCTION_14_67();
  v3 = __swift_coroFrameAllocStub(v2);
  *v1 = v3;
  v3[4] = specialized Dictionary._Variant.subscript.modify(v3, v0);
  return Dictionary.subscript.modifyspecialized ;
}

{
  v2 = OUTLINED_FUNCTION_14_67();
  v3 = __swift_coroFrameAllocStub(v2);
  *v1 = v3;
  v3[4] = specialized Dictionary._Variant.subscript.modify(v3, v0);
  return Dictionary.subscript.modifyspecialized ;
}

{
  v2 = OUTLINED_FUNCTION_14_67();
  v3 = __swift_coroFrameAllocStub(v2);
  *v1 = v3;
  v3[4] = specialized Dictionary._Variant.subscript.modify(v3, v0 & 1);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = specialized Dictionary._Variant.asNative.modify(v4);
  v4[9] = specialized _NativeDictionary.subscript.modify((v4 + 4), a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = specialized Dictionary._Variant.asNative.modify(v4);
  v4[9] = specialized _NativeDictionary.subscript.modify(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t closure #1 in closure #2 in RecentsLinkController.refreshLinks()(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    v23[0] = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    os_log(_:dso:log:type:_:)();

    goto LABEL_20;
  }

  if (!(*(*a1 + 160))(a1))
  {
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_14:
    v12 = *(*a1 + 168);

    v12(v13);
    if (a3)
    {
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo18TUConversationLinkCG_15ConversationKit0fE0Vs5NeverOTg504_s15f12Kit21Recentse37ControllerC12refreshLinksyyFyShySo014d9D0CGSg_s5c35_pSgtYbcfU0_yAA0cdE5ModelCXEfU_AA0aR8VAFXEfU_Tf1cn_n(a3);
      v15 = v14;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;
    v23[0] = *(v15 + 16);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    (*(*a1 + 240))(v15);
    goto LABEL_20;
  }

  if (!a3)
  {

    goto LABEL_14;
  }

  v11 = _sSh2eeoiySbShyxG_ABtFZSo18TUConversationLinkC_Tt1g5();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
LABEL_20:
  v21 = (*(*a1 + 200))(v23);
  if (*v20)
  {
    *v20 &= ~1uLL;
  }

  return v21(v23, 0);
}

uint64_t (*specialized _NativeDictionary.subscript.modify(uint64_t a1, uint64_t a2, char a3))(uint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v14;
  if (v15)
  {
    v18 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v18 = 0;
  }

  *a1 = v18;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSo8TUHandleC_Tt1g5Tm()
{
  OUTLINED_FUNCTION_16_36();
  if (v4)
  {
    if (!v3)
    {
      if (v1 == v0)
      {
LABEL_31:
        v9 = 1;
      }

      else
      {
        if (*(v1 + 16) == *(v0 + 16))
        {
          v11 = 1 << *(v1 + 32);
          if (v11 < 64)
          {
            v12 = ~(-1 << v11);
          }

          else
          {
            v12 = -1;
          }

          v13 = v12 & *(v1 + 56);
          v6 = type metadata accessor for NSObject(0, v2);
          v14 = 0;
          v15 = (v11 + 63) >> 6;
          v27 = v15;
          if (v13)
          {
            while (2)
            {
              v16 = __clz(__rbit64(v13));
              v28 = (v13 - 1) & v13;
LABEL_26:
              v20 = *(v0 + 40);
              v21 = *(*(v1 + 48) + 8 * (v16 | (v14 << 6)));
              v22 = NSObject._rawHashValue(seed:)(v20);
              v23 = ~(-1 << *(v0 + 32));
              do
              {
                v24 = v22 & v23;
                if (((*(v0 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
                {

                  goto LABEL_33;
                }

                v25 = *(*(v0 + 48) + 8 * v24);
                v26 = static NSObject.== infix(_:_:)();

                v22 = v24 + 1;
              }

              while ((v26 & 1) == 0);

              v15 = v27;
              v13 = v28;
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_31;
            }

            ++v17;
            if (*(v1 + 56 + 8 * v14))
            {
              OUTLINED_FUNCTION_7_1();
              v28 = v19 & v18;
              goto LABEL_26;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v6);
        }

LABEL_33:
        v9 = 0;
      }

      return v9 & 1;
    }

    v7 = OUTLINED_FUNCTION_5_61();
    v8 = v1;
LABEL_12:
    specialized _NativeSet.isEqual(to:)(v7, v8);
    return v9 & 1;
  }

  if (v1 < 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v7 = v5;
    v8 = v0;
    goto LABEL_12;
  }

  v6 = OUTLINED_FUNCTION_5_61();

  return MEMORY[0x1EEE6A200](v6);
}

void ButtonsStackView.viewModel.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    OUTLINED_FUNCTION_15_27();
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v5;
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(a2 + 48) + 8 * (v10 | (v4 << 6)));
      v15 = __CocoaSet.contains(_:)();

      if ((v15 & 1) == 0)
      {
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
        return;
      }

      ++v11;
      if (*(a2 + 8 * v4))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t objectdestroy_69Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t objectdestroy_69Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t _NativeDictionary.subscript.modifyspecialized (uint64_t result)
{
  if (*result)
  {
    if (*(result + 25))
    {
      *(*(**(result + 8) + 56) + 8 * *(result + 16)) = *result;
    }

    else
    {
      v1 = *(result + 24);
      v2 = *(result + 16);

      return specialized _NativeDictionary._insert(at:key:value:)(v2, v1);
    }
  }

  else if (*(result + 25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit32RecentsCollectionViewSectionable_pGMd);
    lazy protocol witness table accessor for type RecentsCollectionViewSection and conformance RecentsCollectionViewSection();
    OUTLINED_FUNCTION_46();

    return _NativeDictionary._delete(at:)();
  }

  return result;
}

{
  if (*result)
  {
    if (*(result + 25))
    {
      *(*(**(result + 8) + 56) + 8 * *(result + 16)) = *result;
    }

    else
    {
      v1 = *(result + 24) & 1;
      v2 = *(result + 16);

      return specialized _NativeDictionary._insert(at:key:value:)(v2, v1);
    }
  }

  else if (*(result + 25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15ConversationKit11ApplicationVGMd);
    lazy protocol witness table accessor for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType();
    OUTLINED_FUNCTION_46();

    return _NativeDictionary._delete(at:)();
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v2);
  OUTLINED_FUNCTION_0_72();
  if (v3)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd);
  v4 = OUTLINED_FUNCTION_5_43();
  v6 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v4, v5);
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    OUTLINED_FUNCTION_7_43();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_14_21(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    return specialized _NativeDictionary._insert(at:key:value:)(v13, v14);
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  OUTLINED_FUNCTION_12_32();
  specialized __RawDictionaryStorage.find<A>(_:)(v13 & 1, v9, v14 & v15, v16);
  OUTLINED_FUNCTION_0_72();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit29SmallMultiwayControllerLayoutC07OverallH20StateWithOrientationVSaySo18NSLayoutConstraintCGGMd);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v12))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_32();
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v9, v7 & v22, v5);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v24;
LABEL_5:
  if (v21)
  {
    *(*(*v1 + 56) + 8 * v20) = v11;
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_30_0();

    return specialized _NativeDictionary._insert(at:key:value:)(v28, v29, v30, v31, v32, v33, v34);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_24_18(v7, v5, v3);
  OUTLINED_FUNCTION_0_72();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_44_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit30ParticipantContactDetailsCacheCGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v6, v4);
    OUTLINED_FUNCTION_9_32();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v8;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_39_5();
    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v4, v8, v16);
    OUTLINED_FUNCTION_49();
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  OUTLINED_FUNCTION_34_0();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_24_18(v8, v6, v4);
  OUTLINED_FUNCTION_0_72();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  if (OUTLINED_FUNCTION_16_30())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v7, v5);
    OUTLINED_FUNCTION_23_21();
    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = v15;
  }

  v17 = *v0;
  if (v14)
  {
    *(*(v17 + 56) + 8 * v13) = v9;
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    v21(v13, v7, v5, v9, v17);
    OUTLINED_FUNCTION_1_3();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v3 = v2;
  v5 = v4;
  v7 = OUTLINED_FUNCTION_10_28(v6, v4);
  specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  OUTLINED_FUNCTION_0_72();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit11ApplicationVGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    v14 = OUTLINED_FUNCTION_1_5();
    specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    OUTLINED_FUNCTION_23_21();
    if (!v17)
    {
      goto LABEL_14;
    }

    v12 = v16;
  }

  v18 = *v1;
  if (v13)
  {
    v19 = *(v18 + 56) + 40 * v12;
    v20 = *(v19 + 32);
    v21 = *(v0 + 16);
    *v19 = *v0;
    *(v19 + 16) = v21;
    *(v19 + 32) = *(v0 + 32);

    OUTLINED_FUNCTION_49();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v12, v5, v3, v0, v18);
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  specialized __RawDictionaryStorage.find<A>(_:)(v3, v1);
  OUTLINED_FUNCTION_0_72();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd);
  if (OUTLINED_FUNCTION_16_30())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v4, v2);
    OUTLINED_FUNCTION_23_21();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v2);
  OUTLINED_FUNCTION_0_72();
  if (v3)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit17InCallBannerStateOSaySo18NSLayoutConstraintCGGMd);
  v4 = OUTLINED_FUNCTION_5_43();
  v6 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v4, v5);
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    OUTLINED_FUNCTION_7_43();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_14_21(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    return specialized _NativeDictionary._insert(at:key:value:)(v13, v14);
  }
}

uint64_t outlined destroy of RecentsCallItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RecentsCollectionViewModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static RecentsCollectionViewSection.callItemCases.getter();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v24 = v4;
    v25 = v4 + 32;
    v22 = v3;
    v23 = v2;
    v21 = *(v4 + 16);
    while (v7 < *(v5 + 16))
    {
      v8 = *(v25 + v7);
      v26 = v7;
      if (*(v2 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v10 & 1) != 0))
      {
        v11 = *(*(v2 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      if (*(v3 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v13 & 1) != 0))
      {
        v14 = *(*(v3 + 56) + 8 * v12);

        if (v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = 0;
        if (v11)
        {
LABEL_14:
          if (v14)
          {
            v15 = *(v11 + 16);
            if (v15 == *(v14 + 16))
            {
              v16 = 0;
              v17 = 0;
              while (1)
              {
                if (v17 == v15)
                {
                  v39 = 0;
                  v17 = v15;
                  v37 = 0u;
                  v38 = 0u;
                }

                else
                {
                  if ((v17 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_41:
                    __break(1u);
LABEL_42:
                    __break(1u);
LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

                  if (v17 >= *(v11 + 16))
                  {
                    goto LABEL_41;
                  }

                  outlined init with copy of IDSLookupManager(v11 + 32 + 40 * v17++, &v37);
                }

                if (v16 == v15)
                {
                  v36 = 0;
                  v16 = v15;
                  v34 = 0u;
                  v35 = 0u;
                }

                else
                {
                  if ((v16 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_42;
                  }

                  if (v16 >= *(v14 + 16))
                  {
                    goto LABEL_43;
                  }

                  outlined init with copy of IDSLookupManager(v14 + 32 + 40 * v16++, &v34);
                }

                v29[0] = v37;
                v29[1] = v38;
                v30 = v39;
                v31 = v34;
                v32 = v35;
                v33 = v36;
                if (!*(&v38 + 1))
                {
                  break;
                }

                if (!*(&v32 + 1))
                {

                  __swift_destroy_boxed_opaque_existential_1(v29);
                  goto LABEL_36;
                }

                outlined init with take of ImageName(v29, v28);
                outlined init with take of ImageName(&v31, v27);
                closure #1 in static RecentsCollectionViewModel.== infix(_:_:)(v28, v27);
                v19 = v18;
                __swift_destroy_boxed_opaque_existential_1(v27);
                __swift_destroy_boxed_opaque_existential_1(v28);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v5 = v24;
              if (!*(&v32 + 1))
              {
                v3 = v22;
                v2 = v23;
                v6 = v21;
                goto LABEL_33;
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v31, &_s15ConversationKit32RecentsCollectionViewSectionable_pSgMd);
            }

            else
            {
LABEL_30:
            }
          }

          else
          {
LABEL_12:
          }

LABEL_36:

          return 0;
        }
      }

      if (v14)
      {
        goto LABEL_12;
      }

LABEL_33:
      v7 = v26 + 1;
      if (v26 + 1 == v6)
      {
        goto LABEL_34;
      }
    }

LABEL_44:
    __break(1u);

    __swift_destroy_boxed_opaque_existential_1(v27);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    __break(1u);
  }

  else
  {
LABEL_34:

    return 1;
  }

  return result;
}

uint64_t RecentsCollectionViewCollator.hasFinishedFirstLoad.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_0();
  static Published.subscript.getter();

  return v1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

uint64_t specialized NSDiffableDataSourceSnapshot.appendItemsRemovingDupes(_:toSection:onDupe:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v8 = MEMORY[0x1E69E7CD0];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);

  _ss14_ArrayProtocolPsE6filterySay7ElementQzGSbAEKXEKFSay15ConversationKit15RecentsCallItemVG_Tg5041_s5UIKit28NSDiffableDataSourceSnapshotV15ef78E24appendItemsRemovingDupes_9toSection6onDupeySayq_G_xSgyq_cSgtFSbq_XEfU_AD021g23CollectionViewM0O_AD0P8hI4VTg5ShyAIGxRi_zRi0_zlyAIIsegn_SgTf1cn_n(v6, &v8, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd);
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
}

void _ss14_ArrayProtocolPsE6filterySay7ElementQzGSbAEKXEKFSay15ConversationKit15RecentsCallItemVG_Tg5041_s5UIKit28NSDiffableDataSourceSnapshotV15ef78E24appendItemsRemovingDupes_9toSection6onDupeySayq_G_xSgyq_cSgtFSbq_XEfU_AD021g23CollectionViewM0O_AD0P8hI4VTg5ShyAIGxRi_zRi0_zlyAIIsegn_SgTf1cn_n(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v31[2] = a4;
  v39 = a2;
  v6 = type metadata accessor for RecentsCallItem(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = v31 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = 0;
  v36 = *(a1 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v33 = a1;
  v34 = a3;
LABEL_2:
  v17 = v16;
  while (1)
  {
    if (v17 == v36)
    {

      outlined consume of (@escaping @callee_guaranteed () -> ())?(a3);
      return;
    }

    if (v17 >= *(a1 + 16))
    {
      break;
    }

    v18 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v19 = *(v35 + 72);
    v20 = v17 + 1;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(a1 + v18 + v19 * v17, v15, type metadata accessor for RecentsCallItem);
    v21 = *v39;
    v22 = *(*v39 + 16);
    v40 = v20;
    if (!v22)
    {
LABEL_13:
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v15, v32, type metadata accessor for RecentsCallItem);
      specialized Set._Variant.insert(_:)();
      outlined destroy of RecentsCallItemType(v12, type metadata accessor for RecentsCallItem);
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v15, v37, type metadata accessor for RecentsCallItem);
      v28 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v41;
      }

      v30 = *(v28 + 16);
      if (v30 >= *(v28 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v41;
      }

      *(v28 + 16) = v30 + 1;
      v38 = v28;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v37, v28 + v18 + v30 * v19, type metadata accessor for RecentsCallItem);
      v16 = v40;
      goto LABEL_2;
    }

    Hasher.init(_seed:)();

    RecentsCallItem.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = ~(-1 << *(v21 + 32));
    do
    {
      v25 = v23 & v24;
      if (((*(v21 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
      {

        a1 = v33;
        a3 = v34;
        goto LABEL_13;
      }

      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(*(v21 + 48) + v25 * v19, v12, type metadata accessor for RecentsCallItem);
      static RecentsCallItem.== infix(_:_:)();
      v27 = v26;
      outlined destroy of RecentsCallItemType(v12, type metadata accessor for RecentsCallItem);
      v23 = v25 + 1;
    }

    while ((v27 & 1) == 0);

    a3 = v34;
    if (v34)
    {
      v34(v15);
    }

    outlined destroy of RecentsCallItemType(v15, type metadata accessor for RecentsCallItem);
    v17 = v40;
    a1 = v33;
  }

  __break(1u);
}

void specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for RecentsCallItem(0);
  v2 = OUTLINED_FUNCTION_9_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  v14 = v0;
  v3 = *v0;
  Hasher.init(_seed:)();
  RecentsCallItem.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v6 = ~v5;
  while (1)
  {
    v7 = v4 & v6;
    OUTLINED_FUNCTION_239_1();
    if (((1 << v7) & *(v3 + 56 + v8)) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_85();
      OUTLINED_FUNCTION_40_2();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v15 = *v14;
      v12 = OUTLINED_FUNCTION_258_0();
      specialized _NativeSet.insertNew(_:at:isUnique:)(v12, v13, isUniquelyReferenced_nonNull_native);
      *v14 = v15;
      OUTLINED_FUNCTION_21_46();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_7_85();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_33_0();
    static RecentsCallItem.== infix(_:_:)();
    v10 = v9;
    OUTLINED_FUNCTION_5_116();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (v10)
    {
      break;
    }

    v4 = v7 + 1;
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_7_85();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v27 = v4;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_5();
  v26 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v10, v11);
  OUTLINED_FUNCTION_112_6();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v9;
  v29 = v9 + 56;
  OUTLINED_FUNCTION_16_7();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    OUTLINED_FUNCTION_239_1();
    if (((1 << v15) & *(v29 + v16)) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v1, v3, v5);
      v30 = *v26;
      v24 = OUTLINED_FUNCTION_43_0();
      specialized _NativeSet.insertNew(_:at:isUnique:)(v24, v25, isUniquelyReferenced_nonNull_native);
      *v26 = v30;
      (*(v7 + 32))(v27, v3, v5);
      goto LABEL_7;
    }

    v17 = *(v7 + 72) * v15;
    v18 = *(v7 + 16);
    v18(v1, *(v28 + 48) + v17, v5);
    OUTLINED_FUNCTION_4_121();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, v19);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v7 + 8);
    v22 = OUTLINED_FUNCTION_2_40();
    v21(v22);
    if (v20)
    {
      break;
    }

    v12 = v15 + 1;
  }

  (v21)(v3, v5);
  v18(v27, *(v28 + 48) + v17, v5);
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32();
  v7 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v8, v9);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v12 = v11 & ~v10;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    while (1)
    {
      OUTLINED_FUNCTION_22_42();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      static Participant.State.== infix(_:_:)();
      if ((v14 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v3 + *(v4 + 28)) == 0) == (*(v1 + *(v4 + 28)) == 0))
      {
        v15 = *(v4 + 24);
        v16 = (v1 + v15);
        v17 = *(v1 + v15);
        v18 = (v3 + v15);
        if (v17 == *v18 && ((v16[1] ^ v18[1]) & 1) == 0 && ((v16[2] ^ v18[2]) & 1) == 0 && ((v16[3] ^ v18[3]) & 1) == 0 && ((v16[4] ^ v18[4]) & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_50_18();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_4_31();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_22_42();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  }

  else
  {
LABEL_12:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_22_42();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v19 = *v0;
    specialized _NativeSet.insertNew(_:at:isUnique:)();
    *v0 = v19;
    OUTLINED_FUNCTION_49_18();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  }

  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  type metadata accessor for CountdownVoucher(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  v12 = v0;
  v3 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v4, v5);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((1 << (v6 & v8)) & *(v3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_30();
      OUTLINED_FUNCTION_7_8();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v13 = *v12;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v1, v9, isUniquelyReferenced_nonNull_native);
      *v12 = v13;
      OUTLINED_FUNCTION_93_5();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_30();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v10 = static UUID.== infix(_:_:)();
    OUTLINED_FUNCTION_94_7();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (v10)
    {
      break;
    }

    v6 = v9 + 1;
  }

  OUTLINED_FUNCTION_94_7();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_33_30();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

BOOL OUTLINED_FUNCTION_187_0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_187_1()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_231()
{
  v3 = *(v0 + *(v1 + 56));
}

id OUTLINED_FUNCTION_276()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_231_3()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t OUTLINED_FUNCTION_231_4(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      RecentsCallItem.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        static RecentsCallItem.== infix(_:_:)();
        v19 = v18;
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (v19)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v12 = *(v10 + 16);
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
    *(v10 + 16) = v14;
  }

  return result;
}

{
  v22 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

{
  v4 = v3;
  v7 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      ConversationControlsAction.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        static ConversationControlsAction.== infix(_:_:)();
        v19 = v18;
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (v19)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v12 = *(v10 + 16);
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
    *(v10 + 16) = v14;
  }

  return result;
}

{
  v23 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

{
  v6 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v18 = v3;
      v9 = *v3;
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = ~(-1 << *(v9 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        v12 = static UUID.== infix(_:_:)();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (v12)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v18;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v13 = *v3;
  *(v13 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v5 + 16))
    {
      v9 &= v9 - 1;
LABEL_12:
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      Hasher.init(_seed:)();
      RecentsCallItem.hash(into:)();
      Hasher._finalize()();
      v14 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v1 = v0;
        goto LABEL_16;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for GameControllerPressAction();
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v32 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v36 = v10;
    v33 = result;
    v34 = v3;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v37 = (v9 - 1) & v9;
LABEL_12:
        outlined init with copy of CallGameController.GameControllerEventBox(*(v3 + 48) + 40 * (v12 | (v6 << 6)), &v38);
        Hasher.init(_seed:)();
        v15 = *(&v39 + 1);
        v16 = v40;
        __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
        v17 = (*(v16 + 16))(v15, v16);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
          v20 = *(v35 + 72);
          do
          {
            _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
            type metadata accessor for GCButtonElementName();
            _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170]);
            dispatch thunk of Hashable.hash(into:)();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
            v19 += v20;
            --v18;
          }

          while (v18);

          v5 = v33;
          v3 = v34;
        }

        else
        {
        }

        result = Hasher._finalize()();
        v21 = -1 << *(v5 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v5 + 48) + 40 * v24;
        v30 = v38;
        v31 = v39;
        *(v29 + 32) = v40;
        *v29 = v30;
        *(v29 + 16) = v31;
        ++*(v5 + 16);
        v10 = v36;
        v9 = v37;
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v1 = v0;
          goto LABEL_30;
        }

        v14 = *(v32 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v37 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23CNKGameControllerButtonVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 4 * (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 4 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v9 &= v9 - 1;
LABEL_12:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        Hasher.init(_seed:)();
        ConversationControlsAction.hash(into:)();
        result = Hasher._finalize()();
        v14 = -1 << *(v5 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v11 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v3 + 56 + 8 * v6);
        ++v12;
        if (v13)
        {
          v9 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11ParticipantVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v9 &= v9 - 1;
LABEL_12:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v14 = -1 << *(v5 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v11 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v3 + 56 + 8 * v6);
        ++v12;
        if (v13)
        {
          v9 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        outlined init with copy of ConversationControlsType(*(v2 + 48) + 48 * (v11 | (v5 << 6)), &v25);
        Hasher.init(_seed:)();
        ConversationControlsType.hash(into:)();
        result = Hasher._finalize()();
        v14 = -1 << *(v4 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v22 = (*(v4 + 48) + 48 * v17);
        v23 = v25;
        v24 = v26[0];
        *(v22 + 25) = *(v26 + 9);
        *v22 = v23;
        v22[1] = v24;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v10 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        Hasher.init(_seed:)();

        HUDActivity.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v2 + 48) + 24 * (v12 | (v5 << 6)));
        v16 = *v15;
        v18 = *(v15 + 1);
        v17 = *(v15 + 2);
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v16);
        if (v17)
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 24 * v22;
        *v27 = v16;
        *(v27 + 8) = v18;
        *(v27 + 16) = v17;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_28;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit16CountdownVoucherVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v9 &= v9 - 1;
LABEL_12:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v14 = -1 << *(v5 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v11 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v3 + 56 + 8 * v6);
        ++v12;
        if (v13)
        {
          v9 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11BezelEffectOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v14);
        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = MEMORY[0x1BFB22620](*(v4 + 40), v14);
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
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

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit13VideoReactionOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
        Hasher.init(_seed:)();
        v16 = **(&unk_1E7FE5F98 + v15);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        String.hash(into:)();

        result = Hasher._finalize()();
        v18 = -1 << *(v4 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v4 + 48) + v21) = v15;
        ++*(v4 + 16);
        v2 = v27;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v26;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for Handle();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
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

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v14);
        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

double OUTLINED_FUNCTION_202_0()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_202_1()
{

  ConversationControlsNoticeCoordinator.pop()();
}

void static RecentsCallItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_174();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_45_1();
  static RecentsCallItemType.== infix(_:_:)();
  if ((v14 & 1) == 0)
  {
    goto LABEL_60;
  }

  v15 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_15_42();
  if (v18)
  {
    if (!v16)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v17);
    v21 = v21 && v19 == v20;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v16)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_42();
  if (v24)
  {
    if (!v22)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v23);
    v27 = v21 && v25 == v26;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v22)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_42();
  if (v30)
  {
    if (!v28)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v29);
    v33 = v21 && v31 == v32;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v28)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_42();
  if (v36)
  {
    if (!v34)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v35);
    v39 = v21 && v37 == v38;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v34)
  {
    goto LABEL_60;
  }

  v40 = *(v12 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v1);
  if (!v21)
  {
    OUTLINED_FUNCTION_43_0();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_83_0(v1 + v40);
    if (!v41)
    {
      (*(v8 + 32))(v0, v1 + v40, v6);
      OUTLINED_FUNCTION_47_13();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v44, v45);
      v46 = OUTLINED_FUNCTION_246_1();
      v47 = *(v8 + 8);
      v48 = OUTLINED_FUNCTION_78();
      v47(v48);
      v49 = OUTLINED_FUNCTION_138_2();
      v47(v49);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd);
      if ((v46 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_48;
    }

    v42 = OUTLINED_FUNCTION_138_2();
    v43(v42);
LABEL_46:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_83_0(v1 + v40);
  if (!v21)
  {
    goto LABEL_46;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd);
LABEL_48:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_60;
  }

  v50 = v15[11];
  v51 = *(v5 + v50);
  v52 = *(v3 + v50);
  if (v51)
  {
    if (!v52)
    {
      goto LABEL_60;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v53 = v52;
    v54 = v51;
    v55 = static NSObject.== infix(_:_:)();

    if ((v55 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v52)
  {
    goto LABEL_60;
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo9CNContactC_Tt1g5(*(v5 + v15[12]), *(v3 + v15[12]));
  if (v56)
  {
    v57 = v15[13];
    v58 = *(v5 + v57);
    v59 = *(v5 + v57 + 8);
    v60 = (v3 + v57);
    if (v58 != *v60 || v59 != v60[1])
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_60:
  OUTLINED_FUNCTION_30_0();
}

void static RecentsCallItemType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v27[4] = v1;
  v27[5] = v2;
  v3 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v27[3] = v6 - v5;
  v7 = OUTLINED_FUNCTION_4_24();
  v8 = type metadata accessor for RecentCallRecentItemMetadata(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v27[2] = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v27[1] = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_224();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19RecentsCallItemTypeO_ACtMd);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  v24 = (v27 + *(v23 + 56) - v21);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_89_4();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_44_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_205_2();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_10_71();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        static RecentOngoingConversationMetadata.== infix(_:_:)();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_8_84();
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_304();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v25 = *v0;
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v26 = *v24;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
        OUTLINED_FUNCTION_246();
        static NSObject.== infix(_:_:)();

        goto LABEL_20;
      }

      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_46();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      static RecentCallRecentItemMetadata.== infix(_:_:)();
      OUTLINED_FUNCTION_48_15();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      OUTLINED_FUNCTION_208();
      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_0_169();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      static RecentCallRecentItemMetadata.== infix(_:_:)();
      OUTLINED_FUNCTION_48_15();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      goto LABEL_19;
    default:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_29_6();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        OUTLINED_FUNCTION_1_137();
LABEL_16:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_17:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit19RecentsCallItemTypeO_ACtMd);
      }

      else
      {
        OUTLINED_FUNCTION_2_132();
        OUTLINED_FUNCTION_43_0();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        OUTLINED_FUNCTION_153_2();
        static RecentCallRecentItemMetadata.== infix(_:_:)();
        OUTLINED_FUNCTION_48_15();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_19:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_20:
        OUTLINED_FUNCTION_3_129();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      }

      OUTLINED_FUNCTION_30_0();
      return;
  }
}

id OUTLINED_FUNCTION_83_3()
{

  return [v0 (v1 + 4088)];
}

id OUTLINED_FUNCTION_83_4()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_83_6()
{
}

uint64_t OUTLINED_FUNCTION_83_8()
{
  outlined consume of Set<TUHandle>.Iterator._Variant();
}

uint64_t OUTLINED_FUNCTION_83_9()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_83_10(double a1)
{
  LODWORD(a1) = 1112014848;

  return [v1 (v2 + 654)];
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_bridgeObjectRelease_n();
}

void *OUTLINED_FUNCTION_150_1(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_162_0()
{
}

uint64_t OUTLINED_FUNCTION_162_2()
{

  return outlined assign with take of AttributedString?();
}

uint64_t OUTLINED_FUNCTION_233()
{
}

uint64_t OUTLINED_FUNCTION_233_3()
{
}

id OUTLINED_FUNCTION_233_4()
{
  v3 = *(v0 + 640);

  return [v3 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_120_1()
{

  return ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
}

uint64_t OUTLINED_FUNCTION_120_3()
{

  return swift_once();
}

id OUTLINED_FUNCTION_120_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v7 + 2040)];
}

id OUTLINED_FUNCTION_120_6()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_171()
{

  return type metadata accessor for UUID();
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return outlined init with copy of IDSLookupManager(v0 - 128, v0 - 168);
}

void static RecentCallRecentItemMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  v110 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v107 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v106 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v108 = v17;
  OUTLINED_FUNCTION_4_24();
  v18 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_174();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_188();
  v26 = *v7 == *v5 && v7[1] == v5[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v105 = v3;
  v111 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v112 = v5;
  v27 = v111[5];
  v28 = *(v24 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_187_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v1);
  if (v26)
  {
    OUTLINED_FUNCTION_83_0(v1 + v28);
    if (v26)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd);
      goto LABEL_18;
    }

LABEL_14:
    v32 = &_s10Foundation4DateVSg_ADtMd;
    v33 = v1;
LABEL_15:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, v32);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_43_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v1 + v28);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_138_2();
    v31(v30);
    goto LABEL_14;
  }

  (*(v20 + 32))(v0, v1 + v28, v18);
  OUTLINED_FUNCTION_47_13();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v34, v35);
  v36 = OUTLINED_FUNCTION_246_1();
  v37 = *(v20 + 8);
  v38 = OUTLINED_FUNCTION_78();
  v37(v38);
  v39 = OUTLINED_FUNCTION_138_2();
  v37(v39);
  v27 = v112;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd);
  if ((v36 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v40 = v111[6];
  v41 = *(v7 + v40);
  v42 = *(v27 + v40);
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_16;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall);
    v43 = v42;
    v44 = v41;
    v45 = static NSObject.== infix(_:_:)();

    if ((v45 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v42)
  {
    goto LABEL_16;
  }

  v46 = v111[7];
  v47 = (v7 + v46);
  v48 = *(v7 + v46 + 8);
  v49 = (v27 + v46);
  v50 = *(v27 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_16;
    }
  }

  v51 = v111[8];
  v52 = *(v27 + v51);
  if (*(v7 + v51))
  {
    if (!v52)
    {
      goto LABEL_16;
    }

    v53 = OUTLINED_FUNCTION_78();
    _sSh2eeoiySbShyxG_ABtFZ15ConversationKit17RecentsCallHandleV_Tt1g5(v53, v54);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v52)
  {
    goto LABEL_16;
  }

  if (*(v7 + v111[9]) != *(v27 + v111[9]))
  {
    goto LABEL_16;
  }

  v57 = v111[10];
  v58 = v108;
  v59 = *(v109 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_187_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v60 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v60, v61, v110);
  if (v26)
  {
    OUTLINED_FUNCTION_115(v108 + v59, 1, v110);
    if (!v26)
    {
      goto LABEL_43;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v108 + v59, 1, v110);
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_196_2();
      v64(v63);
      goto LABEL_43;
    }

    (*(v107 + 32))(v106, v108 + v59, v110);
    OUTLINED_FUNCTION_4_121();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v65, v66);
    OUTLINED_FUNCTION_2_100();
    v67 = dispatch thunk of static Equatable.== infix(_:_:)();
    v68 = *(v107 + 8);
    v69 = OUTLINED_FUNCTION_7_8();
    v68(v69);
    v70 = OUTLINED_FUNCTION_196_2();
    v68(v70);
    v57 = v112;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s10Foundation4UUIDVSgMd);
    if ((v67 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v71 = v111[11];
  v72 = *(v7 + v71);
  v73 = *(v57 + v71);
  if (!v72)
  {
    outlined copy of ConversationLink?(0);
    if (!v73)
    {
      outlined copy of ConversationLink?(0);
      outlined consume of ConversationLink?(0);
      goto LABEL_54;
    }

    v80 = OUTLINED_FUNCTION_130_3();
    outlined copy of ConversationLink?(v80);
LABEL_52:
    v83 = OUTLINED_FUNCTION_62_12();
    outlined consume of ConversationLink?(v83);
    v84 = OUTLINED_FUNCTION_130_3();
    outlined consume of ConversationLink?(v84);
    goto LABEL_16;
  }

  if (!v73)
  {
    v81 = OUTLINED_FUNCTION_62_12();
    outlined copy of ConversationLink?(v81);
    outlined copy of ConversationLink?(0);
    v82 = OUTLINED_FUNCTION_62_12();
    outlined copy of ConversationLink?(v82);

    goto LABEL_52;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v74 = OUTLINED_FUNCTION_62_12();
  outlined copy of ConversationLink?(v74);
  v75 = OUTLINED_FUNCTION_130_3();
  outlined copy of ConversationLink?(v75);
  v76 = OUTLINED_FUNCTION_62_12();
  outlined copy of ConversationLink?(v76);
  OUTLINED_FUNCTION_43_0();
  v77 = static NSObject.== infix(_:_:)();
  v78 = OUTLINED_FUNCTION_130_3();
  outlined consume of ConversationLink?(v78);

  v79 = OUTLINED_FUNCTION_62_12();
  outlined consume of ConversationLink?(v79);
  if ((v77 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_54:
  v85 = v111[12];
  v86 = *(v109 + 48);
  v58 = v2;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_187_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v87 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v87, v88, v110);
  if (!v26)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v2 + v86, 1, v110);
    if (!v89)
    {
      (*(v107 + 32))(v106, v2 + v86, v110);
      OUTLINED_FUNCTION_4_121();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v90, v91);
      OUTLINED_FUNCTION_196_2();
      v92 = dispatch thunk of static Equatable.== infix(_:_:)();
      v93 = *(v107 + 8);
      v94 = OUTLINED_FUNCTION_33_0();
      v93(v94);
      (v93)(v105, v110);
      v85 = v112;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
      if ((v92 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_63;
    }

    (*(v107 + 8))(v105);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_115(v2 + v86, 1, v110);
  if (!v26)
  {
LABEL_43:
    v32 = &_s10Foundation4UUIDVSg_ADtMd;
    v33 = v58;
    goto LABEL_15;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
LABEL_63:
  v95 = v111[13];
  v96 = *(v7 + v95);
  v97 = *(v85 + v95);
  if (v96)
  {
    if (!v97)
    {
      goto LABEL_16;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPMessageIndicatorViewModel);
    v98 = v97;
    v99 = v96;
    v100 = static NSObject.== infix(_:_:)();

    if ((v100 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v97)
  {
    goto LABEL_16;
  }

  v101 = v111[14];
  v102 = *(v7 + v101);
  v103 = *(v85 + v101);
  if (v102 && v103)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v104 = v103;
    OUTLINED_FUNCTION_15_14();
    static NSObject.== infix(_:_:)();
  }

LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

uint64_t OUTLINED_FUNCTION_155_0()
{
}

__n128 OUTLINED_FUNCTION_155_1()
{
  *(v0 + 112) = v3;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  *(v0 + 129) = *(v0 + 272);
  result = *(v0 + 287);
  *(v0 + 144) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_82_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, va);
}

id OUTLINED_FUNCTION_82_8(uint64_t a1)
{
  v3[8] = a1;
  v3[4] = v1;
  v3[5] = v4;
  *(v5 - 136) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_82_9()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_82_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  specialized >> prefix<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return String.hash(into:)();
}

double OUTLINED_FUNCTION_42_6()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_42_15(uint64_t a1@<X8>)
{
  v3 = *(v2 - 360);
  *(a1 - 16) = v1;
  *(a1 - 8) = v3;
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_42_19()
{

  return _NativeDictionary._delete(at:)();
}

uint64_t OUTLINED_FUNCTION_42_20()
{
}

uint64_t OUTLINED_FUNCTION_42_21(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = *(v3 + 16);
  v2[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_42_23()
{

  return _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v0, type metadata accessor for HUDActivityManager.BannerUpdate);
}

uint64_t OUTLINED_FUNCTION_42_27()
{

  return type metadata accessor for RemoteControlMessage(0);
}

uint64_t OUTLINED_FUNCTION_42_28()
{
  outlined init with take of TapInteractionHandler((v0 - 296), v0 - 256);
  v1 = *(v0 - 144);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 168, v1);
}

id OUTLINED_FUNCTION_42_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  a16 = a9;
  a17 = a10;
  a18 = a11;

  return [v18 (v19 + 248)];
}

uint64_t OUTLINED_FUNCTION_42_33()
{

  return outlined destroy of Participant.ScreenInfo(v0 + 384);
}

uint64_t OUTLINED_FUNCTION_42_35()
{

  return static String.localizedStringWithFormat(_:_:)();
}

void specialized _NativeSet.resize(capacity:)()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_34_11();
  v2 = type metadata accessor for RecentsCallItem(v1);
  v3 = OUTLINED_FUNCTION_9_0(v2);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v27 = v6 - v5;
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMd);
  v8 = OUTLINED_FUNCTION_36_11();
  if (v7[2])
  {
    v9 = 0;
    v10 = v7 + 7;
    OUTLINED_FUNCTION_1_53();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_97_1();
LABEL_9:
        v20 = *(v28 + 72);
        _s15ConversationKit15RecentsCallItemVWObTm_0(v7[6] + v20 * (v16 | (v9 << 6)), v27);
        Hasher.init(_seed:)();
        RecentsCallItem.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_16_7();
        v21 = _HashTable.nextHole(atOrAfter:)();
        *(v8 + 56 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        _s15ConversationKit15RecentsCallItemVWObTm_0(v27, *(v8 + 48) + v21 * v20);
        OUTLINED_FUNCTION_26_14();
      }

      while (v13);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v17;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_7_1();
        v13 = v19 & v18;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_18();
    if (v22 != v23)
    {
      OUTLINED_FUNCTION_16_7();
      *v10 = v24;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, (v7 + 7));
    }

    v7[2] = 0;
  }

  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_30_0();
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_34_11();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v24 = v1;
  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_69_1();
  if (!v2)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_7_1();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_16_7();
      *v6 = v21;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v22, v23, v6);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93();
LABEL_9:
    v10 = OUTLINED_FUNCTION_45_7();
    v11(v10);
    OUTLINED_FUNCTION_12_21();
    lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type UUID and conformance UUID, v12);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_31_12(v14);
    v17 = OUTLINED_FUNCTION_85_1(v16);
    v18(v17);
    OUTLINED_FUNCTION_26_14();
    v1 = v24;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_76_0();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_1_53();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_72_1();
  if (!v8)
  {
LABEL_4:
    v10 = v5;
    while (1)
    {
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v10;
      if (*(v1 + 56 + 8 * v5))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v12 & v11;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v23 != v24)
    {
      OUTLINED_FUNCTION_28_17(v22);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v1 + 56);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_102();
LABEL_9:
    v13 = (*(v1 + 48) + 16 * (v9 | (v5 << 6)));
    v14 = *v13;
    v15 = v13[1];
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_82_1();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_8_3();
    *(v0 + v18) |= v19;
    v21 = (*(v2 + 48) + 16 * v20);
    *v21 = v14;
    v21[1] = v15;
    OUTLINED_FUNCTION_26_14();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_77_3();
    if (!v16)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23CNKGameControllerButtonVGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v9)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_28_17(v18);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v3);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    v12 = *(*(v1 + 48) + 4 * (v7 | (v4 << 6)));
    OUTLINED_FUNCTION_87_1();
    Hasher._combine(_:)(v12);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v14);
    *(v17 + 4 * v16) = v12;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_34_11();
  v4 = type metadata accessor for ConversationControlsAction();
  v5 = OUTLINED_FUNCTION_9_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  OUTLINED_FUNCTION_1_53();
  v11 = v10 & v9;
  OUTLINED_FUNCTION_72_1();
  if (!v11)
  {
LABEL_4:
    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v7 >= v3)
      {
        break;
      }

      ++v12;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_7_1();
        v11 = v14 & v13;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v20 != v21)
    {
      OUTLINED_FUNCTION_16_7();
      *v8 = v22;
    }

    else
    {
      v23 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v23, v24, v1 + 56);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_97_1();
LABEL_9:
    OUTLINED_FUNCTION_48_6();
    _s15ConversationKit15RecentsCallItemVWObTm_0(v15, v2);
    Hasher.init(_seed:)();
    ConversationControlsAction.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    *(v0 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    OUTLINED_FUNCTION_48_6();
    _s15ConversationKit15RecentsCallItemVWObTm_0(v2, v19);
    OUTLINED_FUNCTION_26_14();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_77_3();
    if (!v16)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_34_11();
  v2 = type metadata accessor for GameControllerPressAction();
  v3 = OUTLINED_FUNCTION_9_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd);
  v5 = OUTLINED_FUNCTION_36_11();
  if (!*(v4 + 16))
  {
LABEL_30:

    *v0 = v5;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v46 = v0;
  v6 = 0;
  v47 = v4 + 56;
  OUTLINED_FUNCTION_1_53();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v12 = v5 + 56;
  v13 = 40;
  v49 = v5;
  v50 = v4;
  v48 = v11;
  if (!v9)
  {
LABEL_4:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v15;
      if (*(v47 + 8 * v6))
      {
        OUTLINED_FUNCTION_7_1();
        v51 = v17 & v16;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_18();
    if (v39 != v40)
    {
      OUTLINED_FUNCTION_16_7();
      *v41 = v42;
    }

    else
    {
      v43 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v43, v44, v45);
    }

    v0 = v46;
    *(v4 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v9));
    v51 = (v9 - 1) & v9;
LABEL_9:
    v18 = *(v4 + 48) + (v14 | (v6 << 6)) * v13;
    v19 = *(v18 + 32);
    v20 = *(v18 + 16);
    v52 = *v18;
    v53 = v20;
    v54 = v19;
    Hasher.init(_seed:)();
    v21 = *(&v53 + 1);
    v22 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    v23 = *((*(v22 + 16))(v21, v22) + 16);
    if (v23)
    {
      OUTLINED_FUNCTION_40_3();
      v26 = v24 + v25;
      v28 = *(v27 + 72);
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_1(v26, v1);
        type metadata accessor for GCButtonElementName();
        lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170]);
        dispatch thunk of Hashable.hash(into:)();
        _s15ConversationKit11ParticipantVWOhTm_1(v1, type metadata accessor for GameControllerPressAction);
        v26 += v28;
        --v23;
      }

      while (v23);

      v5 = v49;
      v4 = v50;
      v11 = v48;
    }

    else
    {
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_24:
    OUTLINED_FUNCTION_8_3();
    *(v12 + v33) |= v34;
    v13 = 40;
    v36 = *(v5 + 48) + 40 * v35;
    v37 = v52;
    v38 = v53;
    *(v36 + 32) = v54;
    *v36 = v37;
    *(v36 + 16) = v38;
    ++*(v5 + 16);
    v9 = v51;
    if (!v51)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v12 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
}

{
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_95();
  v0 = (v7 & v6);
  v9 = (v8 + 63) >> 6;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v9)
      {
        break;
      }

      ++v11;
      if (*(v3 + 8 * v5))
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v21 != v22)
    {
      OUTLINED_FUNCTION_28_17(v20);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v23, v24, v3);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    v14 = (*(v1 + 48) + 48 * (v10 | (v5 << 6)));
    v25 = *v14;
    *v26 = v14[1];
    *&v26[9] = *(v14 + 25);
    OUTLINED_FUNCTION_87_1();
    ConversationControlsType.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_67_4();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_94();
    v19 = (v18 + 48 * v17);
    *v19 = v25;
    v19[1] = *v26;
    *(v19 + 25) = *&v26[9];
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v15)
    {
      if (v16)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_75_3();
    if (!v15)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v8)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v10 & v9);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v17 != v18)
    {
      OUTLINED_FUNCTION_28_17(v16);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v19, v20, v2);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_87_1();
    HUDActivity.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v12);
    *(v15 + 8 * v14) = v3;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v11)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v11)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMd);
  v3 = OUTLINED_FUNCTION_36_11();
  if (!*(v2 + 16))
  {
LABEL_26:

    *v1 = v3;
    return;
  }

  v29 = v2;
  v4 = 0;
  v5 = v2 + 56;
  OUTLINED_FUNCTION_1_53();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = 24;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v4 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_18();
    if (v25 != v26)
    {
      OUTLINED_FUNCTION_28_17(v24);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v27, v28, v5);
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v16 = (*(v2 + 48) + (v12 | (v4 << 6)) * v11);
    v17 = *v16;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v17);
    if (v18)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_20:
    *(v3 + 56 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v23 = *(v3 + 48) + 24 * v21;
    *v23 = v17;
    *(v23 + 8) = v19;
    *(v23 + 16) = v18;
    OUTLINED_FUNCTION_26_14();
    v2 = v29;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_75_3();
    if (!v20)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v5)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_95();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) == 0)
  {
LABEL_4:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (*(v3 + 8 * v6))
      {
        OUTLINED_FUNCTION_7_1();
        v9 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v22 != v23)
    {
      OUTLINED_FUNCTION_28_17(v21);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v24, v25, v3);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_9:
    v16 = *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
    NSObject._rawHashValue(seed:)(*(v2 + 40));
    OUTLINED_FUNCTION_67_4();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_94();
    *(v20 + 8 * v19) = v16;
    OUTLINED_FUNCTION_26_14();
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v17)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_75_3();
    if (!v17)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_34_11();
  v5(v4);
  OUTLINED_FUNCTION_1();
  v35 = v7;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v8;
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  v9 = OUTLINED_FUNCTION_20_16();
  if (!v1[2])
  {
LABEL_23:

    *v0 = v9;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v33 = v0;
  v34 = v1;
  v10 = 0;
  v11 = v1 + 7;
  OUTLINED_FUNCTION_1_53();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  if ((v13 & v12) == 0)
  {
LABEL_4:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v10 >= v16)
      {
        break;
      }

      ++v18;
      if (v11[v10])
      {
        OUTLINED_FUNCTION_7_1();
        v14 = v20 & v19;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v27 != v28)
    {
      OUTLINED_FUNCTION_16_7();
      *v11 = v29;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v30, v31, v11);
    }

    v0 = v33;
    v1[2] = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_9:
    v21 = v1[6];
    v37 = *(v35 + 72);
    _s15ConversationKit15RecentsCallItemVWObTm_0(v21 + v37 * (v17 | (v10 << 6)), v38);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_12_21();
    lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type UUID and conformance UUID, v22);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_31_12(v24);
    _s15ConversationKit15RecentsCallItemVWObTm_0(v38, *(v9 + 48) + v26 * v37);
    ++*(v9 + 16);
    v1 = v34;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_76_0();
    if (!v23)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11BezelEffectOGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v9)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_28_17(v18);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v3);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    v12 = *(*(v1 + 48) + (v7 | (v4 << 6)));
    OUTLINED_FUNCTION_87_1();
    MEMORY[0x1BFB22640](v12);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v14);
    *(v17 + v16) = v12;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd);
  v3 = OUTLINED_FUNCTION_20_16();
  v4 = v3;
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v4;
    return;
  }

  v5 = 0;
  v7 = (v1 + 56);
  v6 = *(v1 + 56);
  v8 = 1 << *(v1 + 32);
  v23 = v0;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = v3 + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      ++v12;
      if (v7[v5])
      {
        OUTLINED_FUNCTION_7_1();
        v10 = v14 & v13;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v8 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v0 = v23;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_12:
    OUTLINED_FUNCTION_57_5();
    v15 = MEMORY[0x1BFB22620](*(v4 + 40), v2) & ~(-1 << *(v4 + 32));
    if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_22:
    OUTLINED_FUNCTION_8_3();
    *(v11 + v20) |= v21;
    *(*(v4 + 48) + 8 * v22) = v2;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v19)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v11 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

{
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit13VideoReactionOGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    return;
  }

  v25 = v1;
  v5 = 0;
  v6 = v1 + 56;
  OUTLINED_FUNCTION_1_53();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_72_1();
  if (!v9)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v11;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_7_1();
        v9 = v13 & v12;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v21 != v22)
    {
      OUTLINED_FUNCTION_28_17(v20);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v23, v24, v6);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_102();
LABEL_9:
    v14 = *(*(v1 + 48) + (v10 | (v5 << 6)));
    Hasher.init(_seed:)();
    v15 = **(&unk_1E7FE39D8 + v14);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    OUTLINED_FUNCTION_82_1();
    String.hash(into:)();

    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    *(v0 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v2 + 48) + v18) = v14;
    OUTLINED_FUNCTION_26_14();
    v1 = v25;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_77_3();
    if (!v17)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_34_11();
  type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v23 = v1;
  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_69_1();
  if (!v2)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_7_1();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v18 != v19)
    {
      OUTLINED_FUNCTION_16_7();
      *v6 = v20;
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v6);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93();
LABEL_9:
    v10 = OUTLINED_FUNCTION_45_7();
    v11(v10);
    lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_31_12(v13);
    v16 = OUTLINED_FUNCTION_85_1(v15);
    v17(v16);
    OUTLINED_FUNCTION_26_14();
    v1 = v23;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_76_0();
    if (!v12)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  specialized _NativeSet.resize(capacity:)();
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v7)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v9)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v18 != v19)
    {
      OUTLINED_FUNCTION_28_17(v17);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v20, v21, v2);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_87_1();
    MEMORY[0x1BFB22640](v3);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v13);
    *(v16 + 8 * v15) = v3;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v12)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMd);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v8)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v10 & v9);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v17 != v18)
    {
      OUTLINED_FUNCTION_28_17(v16);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v19, v20, v2);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_87_1();
    MEMORY[0x1BFB22640](v3);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v12);
    *(v15 + 8 * v14) = v3;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v11)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v11)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}