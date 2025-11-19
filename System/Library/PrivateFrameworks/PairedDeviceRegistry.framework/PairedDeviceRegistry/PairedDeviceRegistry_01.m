id ActiveDeviceAssertion_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PDRDevice.compatibilityState.getter()
{
  if ([v0 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    outlined destroy of UUID?(v5, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t Device_Impl.propertyNames()()
{
  v1 = *(v0 + OBJC_IVAR___PDRDevice_Impl_registryState);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 deviceForPairingID_];

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = [v3 allPropertyNames];

    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = *(v6 + 16);
    if (v7)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = (v6 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        v11 = MEMORY[0x2318DF040](v9, v10);

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v4 + 16) = v13 + 1;
        *(v4 + 8 * v13 + 32) = v11;
        v8 += 2;
        --v7;
      }

      while (v7);
    }
  }

  return v4;
}

uint64_t Device_Impl.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0x6369766544524450;
  v24 = 0xEB00000000203A65;
  v7 = [v0 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318DF0A0](v8);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x2318DF0A0](10, 0xE100000000000000);
  v9 = [v1 propertyNames];
  type metadata accessor for PDRDevicePropertyKey(0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v10;

  specialized MutableCollection<>.sort(by:)(&v21);

  v20 = v21;
  v11 = *(v21 + 16);
  if (v11)
  {
    v12 = (v20 + 4);
    do
    {
      v13 = *v12++;
      v14 = v13;
      v15 = Device_Impl.valueDescriptionFor(property:)(v14);
      v17 = v16;
      v21 = 538976288;
      v22 = 0xE400000000000000;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x2318DF0A0](v18);

      MEMORY[0x2318DF0A0](8250, 0xE200000000000000);
      MEMORY[0x2318DF0A0](v15, v17);

      MEMORY[0x2318DF0A0](10, 0xE100000000000000);
      MEMORY[0x2318DF0A0](v21, v22);

      --v11;
    }

    while (v11);
  }

  return v23;
}

uint64_t Device_Impl.valueDescriptionFor(property:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 valueForProperty_])
  {
    return 0x3E6C696E3CLL;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v21, v22);
  outlined init with copy of Any(v22, v21);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = MEMORY[0x2318DF040](0xD000000000000017, 0x800000022DFB09C0);
    [v15 setDateFormat_];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v15 stringFromDate_];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v14(v7, 1, 1, v8);
    outlined destroy of UUID?(v7, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    outlined init with copy of Any(v22, v21);
    v19 = String.init<A>(describing:)();
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v19;
}

id Device_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Device_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Device_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static PDRDevicePropertyKey.< infix(_:_:)()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t PDRDevice.lastActiveDate()@<X0>(uint64_t a1@<X8>)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = type metadata accessor for Date();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    outlined destroy of UUID?(v9, &_sypSgMd, &_sypSgMR);
    v6 = type metadata accessor for Date();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t PDRDevice.bluetoothIdentifier()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if ([v2 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v11 = type metadata accessor for UUID();
    v12 = swift_dynamicCast();
    v13 = *(v11 - 8);
    (*(v13 + 56))(v10, v12 ^ 1u, 1, v11);
    if ((*(v13 + 48))(v10, 1, v11) != 1)
    {
      return (*(v13 + 32))(a1, v10, v11);
    }
  }

  else
  {
    outlined destroy of UUID?(v18, &_sypSgMd, &_sypSgMR);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  outlined destroy of UUID?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  UUID.init(uuidString:)();
  type metadata accessor for UUID();
  v14 = *(v11 - 8);
  result = (*(v14 + 48))(v8, 1, v11);
  if (result != 1)
  {
    return (*(v14 + 32))(a1, v8, v11);
  }

  __break(1u);
  return result;
}

id PDRDevice.advertisedName.getter()
{
  result = [v0 valueForProperty_];
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v3, &v4);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20PDRDevicePropertyKeyaGMd, &_ss23_ContiguousArrayStorageCySo20PDRDevicePropertyKeyaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for PDRDevicePropertyKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for Device_Impl()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
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
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PDRDevicePropertyKey(0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
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
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v18;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v110 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v110;
    if (!*v110)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v100 = v5;
      v101 = *(v8 + 2);
      if (v101 >= 2)
      {
        while (*a3)
        {
          v5 = v101 - 1;
          v102 = *&v8[16 * v101];
          v103 = *&v8[16 * v101 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v102), (*a3 + 8 * *&v8[16 * v101 + 16]), (*a3 + 8 * v103), v6);
          if (v100)
          {
          }

          if (v103 < v102)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v101 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v104 = &v8[16 * v101];
          *v104 = v102;
          *(v104 + 1) = v103;
          result = specialized Array.remove(at:)(v101 - 1);
          v101 = *(v8 + 2);
          if (v101 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v12 = *(*a3 + 8 * v9);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      v17 = v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16;
      v106 = v5;
      if (v17)
      {
        v113 = 0;
      }

      else
      {
        v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v108 = v9;
      v18 = (v10 + 8 * v9 + 16);
      v111 = 8 * v9;
      v19 = 8 * v9 + 8;
      do
      {
        v5 = v7;
        v22 = v19;
        if (++v7 >= v6)
        {
          break;
        }

        v23 = v8;
        v24 = v6;
        v25 = v7;
        v27 = *(v18 - 1);
        v26 = *v18;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
        v32 = v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31;
        v20 = v32 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v21 = v113 ^ v20;
        ++v18;
        v19 = v22 + 8;
        v7 = v25;
        v6 = v24;
        v8 = v23;
      }

      while ((v21 & 1) == 0);
      if (v113)
      {
        v33 = v108;
        if (v7 < v108)
        {
          goto LABEL_134;
        }

        if (v108 >= v7)
        {
          v5 = v106;
          v9 = v108;
          goto LABEL_31;
        }

        v34 = v111;
        do
        {
          if (v33 != v5)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v37 = *(v36 + v34);
            *(v36 + v34) = *(v36 + v22);
            *(v36 + v22) = v37;
          }

          ++v33;
          v22 -= 8;
          v34 += 8;
        }

        while (v33 < v5--);
      }

      v5 = v106;
      v9 = v108;
    }

LABEL_31:
    v38 = a3[1];
    if (v7 < v38)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v55 = *(v8 + 2);
    v54 = *(v8 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v55];
    *(v57 + 4) = v9;
    *(v57 + 5) = v7;
    v58 = *v110;
    if (!*v110)
    {
      goto LABEL_142;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v8 + 4);
          v61 = *(v8 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_73:
          if (v63)
          {
            goto LABEL_121;
          }

          v76 = &v8[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_124;
          }

          v82 = &v8[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_128;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v86 = &v8[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_87:
        if (v81)
        {
          goto LABEL_123;
        }

        v89 = &v8[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_126;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_94:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v98 = *&v8[16 * v97 + 32];
        v6 = *&v8[16 * v59 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v98), (*a3 + 8 * *&v8[16 * v59 + 32]), (*a3 + 8 * v6), v58);
        if (v5)
        {
        }

        if (v6 < v98)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v97 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v99 = &v8[16 * v97];
        *(v99 + 4) = v98;
        *(v99 + 5) = v6;
        result = specialized Array.remove(at:)(v59);
        v56 = *(v8 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v8[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_119;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_120;
      }

      v71 = &v8[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_122;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v75 >= v67)
      {
        v93 = &v8[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v39 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v39)
  {
    goto LABEL_53;
  }

  v107 = v5;
  v109 = v9;
  v40 = *a3;
  v6 = *a3 + 8 * v7 - 8;
  v41 = v9 - v7;
  v112 = v39;
LABEL_42:
  v114 = v7;
  v42 = *(v40 + 8 * v7);
  v43 = v41;
  v44 = v6;
  while (1)
  {
    v45 = *v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {

LABEL_41:
      v7 = v114 + 1;
      v6 += 8;
      --v41;
      if (v114 + 1 == v112)
      {
        v7 = v112;
        v5 = v107;
        v9 = v109;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v52 = *v44;
    *v44 = v44[1];
    v44[1] = v52;
    --v44;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v22 = v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21;
      if (v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v36 = v6;
      v24 = v6 - 8;
      v5 -= 8;
      v25 = v14;
      while (1)
      {
        v26 = *(v25 - 1);
        v25 -= 8;
        v6 = v24;
        v27 = *v24;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
        v32 = v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31;
        v33 = v32 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v34 = v5 + 8;
        if (v33)
        {
          break;
        }

        v24 = v6;
        if (v34 != v14)
        {
          *v5 = *v25;
        }

        v5 -= 8;
        v14 = v25;
        if (v25 <= v4)
        {
          v14 = v25;
          v6 = v36;
          goto LABEL_47;
        }
      }

      if (v34 != v36)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void PDRDeviceSizeForProductType_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22DF91000, a2, OS_LOG_TYPE_ERROR, "IMPORTANT! Unsupported ProductType (%@) falling back to generic size (which won't behave correctly in UI)!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void PDRDeviceSizeForArtworkDeviceSubType_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_22DF91000, a2, OS_LOG_TYPE_ERROR, "IMPORTANT! Unsupported ArtworkDeviceSubType (%lu) falling back to generic size (which won't behave correctly in UI)!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}