uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2)
{

  v4 = String.Iterator.next()();
  v5 = a1;
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    v5 = a1;
    while ((v5 ^ a2) >= 0x4000)
    {
      v10 = Substring.subscript.getter();
      v12 = v11;
      v5 = Substring.index(after:)();
      if (countAndFlagsBits == v10 && object == v12)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v9 = String.Iterator.next()();
      countAndFlagsBits = v9.value._countAndFlagsBits;
      object = v9.value._object;
      if (!v9.value._object)
      {
        goto LABEL_9;
      }
    }

    return 1;
  }

  else
  {
LABEL_9:

    if ((v5 ^ a2) >= 0x4000)
    {
      Substring.subscript.getter();
      Substring.index(after:)();
LABEL_13:

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t DOCUTIDescriptor.isFolder.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16) != 1)
  {
    v14 = 0;
    return v14 & 1;
  }

  result = specialized Collection.first.getter(*v0);
  if (v7)
  {
    v8 = result;
    v9 = v7;
    static UTType.folder.getter();
    v10 = UTType.identifier.getter();
    v12 = v11;
    (*(v2 + 8))(v5, v1);
    if (v8 == v10 && v9 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t DOCUTIDescriptor.utis.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DOCUTIDescriptor.fileExtensions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DOCUTIDescriptor.localizedDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCUTIDescriptor.lowercasedLocalizedDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

Swift::Bool __swiftcall DOCUTIDescriptor.prefixMatches(with:)(Swift::String with)
{
  v2 = *(v1 + 8);
  if (specialized Sequence<>.starts<A>(with:)())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
LABEL_11:
      v6 &= v6 - 1;

      v10 = specialized Sequence<>.starts<A>(with:)();

      if (v10)
      {

        LOBYTE(v3) = 1;
        return v3;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return v3;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v2 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    lazy protocol witness table accessor for type String and conformance String();
    v3 = StringProtocol.components<A>(separatedBy:)();
    v11 = v3;
    v12 = v3 + 40;
    v13 = -*(v3 + 16);
    v14 = -1;
    while (v13 + v14 != -1)
    {
      if (++v14 >= *(v11 + 16))
      {
        goto LABEL_20;
      }

      v15 = v12 + 16;

      v16 = specialized Sequence<>.starts<A>(with:)();

      v12 = v15;
      if (v16)
      {

        LOBYTE(v3) = 1;
        return v3;
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t DOCUTIDescriptor.init(utis:fileExtensions:localizedDescription:lowercasedLocalizedDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

id static DOCUTIDescriptorCollector.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DOCUTIDescriptorCollector.shared;

  return v1;
}

id DOCUTIDescriptorCollector.().init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = v1;
  v25 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v24 = v0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_currentQuery] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_utiDescriptors] = MEMORY[0x277D84F90];
  v10 = v9;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_completionQueue;
  v18[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v22 = "ionQueue";
  static DispatchQoS.unspecified.getter();
  v27 = v10;
  v21 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = *MEMORY[0x277D85260];
  v12 = *(v25 + 104);
  v25 += 104;
  v12(v4, v11, v1);
  v13 = v4;
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v24;
  *&v24[v23] = v14;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_gatheringQueue;
  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12(v13, v11, v19);
  *&v15[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = type metadata accessor for DOCUTIDescriptorCollector();
  v26.receiver = v15;
  v26.super_class = v16;
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t DOCUTIDescriptorCollector.filteredUTIs(matching:allowedContentTypes:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(a3);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  v19[6] = a2;
  aBlock[4] = partial apply for closure #1 in DOCUTIDescriptorCollector.filteredUTIs(matching:allowedContentTypes:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_54;
  v20 = _Block_copy(aBlock);
  v21 = v5;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
}

uint64_t closure #1 in DOCUTIDescriptorCollector.filteredUTIs(matching:allowedContentTypes:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_gatheringQueue];
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a1;
  v19[5] = a4;
  v19[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCUTIDescriptorCollector.filteredUTIs(matching:allowedContentTypes:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14_0;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v24);
}

uint64_t closure #1 in closure #1 in DOCUTIDescriptorCollector.filteredUTIs(matching:allowedContentTypes:completion:)(void (*a1)(uint64_t))
{
  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.localizedLowercase.getter();
  v4 = DOCUTIDescriptorCollector.filteredUTIs(by:)(v2, v3);

  a1(v4);
}

Swift::Void __swiftcall DOCUTIDescriptorCollector.cancelGathering()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_currentQuery;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_currentQuery);
  if (v2)
  {
    v4 = v2;
    if ([v4 isCancelled])
    {
      v3 = v4;
    }

    else
    {
      [v4 cancel];

      v3 = *(v0 + v1);
      *(v0 + v1) = 0;
    }
  }
}

void DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setFetchAttributes_];

  v5 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v6 = v3;
  v7 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BDAFC0);
  v8 = [v5 initWithQueryString:v7 queryContext:v6];

  LOBYTE(v6) = *(a1 + 16) == 0;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84FA0];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v9;
  *(v10 + 32) = a1;
  v20 = partial apply for closure #1 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:);
  v21 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v19 = &block_descriptor_23_0;
  v11 = _Block_copy(&v16);

  [v8 setFoundItemsHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v20 = partial apply for closure #2 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:);
  v21 = v13;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v19 = &block_descriptor_32_1;
  v14 = _Block_copy(&v16);

  [v8 setCompletionHandler_];
  _Block_release(v14);
  dispatch_suspend(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_completionQueue));
  [v8 start];
  v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_currentQuery);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_currentQuery) = v8;
}

id static CSSearchQuery.withString(_:fetchedAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  if (a3)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 setFetchAttributes_];
  }

  v8 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v9 = v6;
  v10 = MEMORY[0x24C1FAD20](a1, a2);
  v11 = [v8 initWithQueryString:v10 queryContext:v9];

  return v11;
}

uint64_t closure #1 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v23 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, a1);
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 attributeSet];
      v12 = [v11 contentType];

      if (v12)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_23;
      }
    }

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v17 = *(v23 + 2);
    v16 = *(v23 + 3);
    if (v17 >= v16 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v23);
    }

    *(v23 + 2) = v17 + 1;
    v18 = &v23[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
  }

  while (v7 != v6);
LABEL_23:

  specialized Sequence.forEach(_:)(v23, a2 & 1, (a3 + 16), a4);
}

void closure #2 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      aBlock[0] = a1;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      type metadata accessor for related decl 'e' for CSSearchQueryErrorCode(0);
      if ((swift_dynamicCast() & 1) == 0 || (v18 = v27, aBlock[0] = v27, _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode), _BridgedStoredNSError.code.getter(), v18, v27 != -2003))
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_249B9A480;
        v20 = _convertErrorToNSError(_:)();
        *(v19 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
        *(v19 + 64) = lazy protocol witness table accessor for type NSError and conformance NSObject();
        *(v19 + 32) = v20;
        os_log(_:dso:log:type:_:)();
      }

      dispatch_resume(*&v16[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_completionQueue]);
    }

    else
    {
      v26 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_gatheringQueue);
      v21 = swift_allocObject();
      *(v21 + 16) = v16;
      *(v21 + 24) = a3;
      aBlock[4] = partial apply for closure #1 in closure #2 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_38_2;
      v24 = _Block_copy(aBlock);
      v25 = v16;

      static DispatchQoS.unspecified.getter();
      v27 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v24;
      MEMORY[0x24C1FB9A0](0, v14, v9, v24);
      _Block_release(v22);
      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v14, v10);
    }
  }
}

void closure #1 in closure #2 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_utiDescriptors;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = a2;
    v31 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = 32;
    v9 = v31;
    do
    {
      v10 = *(v5 + v8);
      v31 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);

      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v9 = v31;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v10;
      v8 += 48;
      --v6;
    }

    while (v6);

    a2 = v28;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v31 = v7;
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v9 + 16))
    {
      v15 = v14 + 1;

      specialized Array.append<A>(contentsOf:)(v16);
      v14 = v15;
      if (v13 == v15)
      {
        goto LABEL_12;
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:

    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v31);

    swift_beginAccess();
    v18 = *(a2 + 16);
    if (*(v17 + 16) <= *(v18 + 16) >> 3)
    {
      v29[0] = *(a2 + 16);

      specialized Set._subtract<A>(_:)(v17);

      v19 = v29[0];
    }

    else
    {

      v19 = specialized _NativeSet.subtracting<A>(_:)(v17, v18);
    }

    v30 = 0;
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 56);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    if (v22)
    {
      while (1)
      {
        v25 = v24;
LABEL_23:
        v26 = (*(v19 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v22)))));
        v27 = v26[1];
        v22 &= v22 - 1;
        v29[0] = *v26;
        v29[1] = v27;

        closure #3 in closure #1 in closure #2 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(v29, a1, &v30);

        if (!v22)
        {
          goto LABEL_19;
        }
      }
    }

    while (1)
    {
LABEL_19:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v19 + 56 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_23;
      }
    }

    if (v30 == 1)
    {
      swift_beginAccess();
      specialized MutableCollection<>.sort(by:)((a1 + v4));
      swift_endAccess();
    }

    dispatch_resume(*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_completionQueue));
  }
}

uint64_t closure #3 in closure #1 in closure #2 in DOCUTIDescriptorCollector.refreshUTIs(allowedContentTypes:)(Swift::Int *a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v94 = a3;
  v95 = a2;
  v6 = type metadata accessor for UTTagClass();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v86 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];

  v96 = v20;
  UTType.init(_:)();
  v22 = (*(v16 + 48))(v14, 1, v15);
  v97 = v21;
  if (v22 == 1)
  {
    outlined destroy of UTType?(v14);
LABEL_14:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_249B9A480;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v42 = v97;
    *(v41 + 32) = v96;
    *(v41 + 40) = v42;

    os_log(_:dso:log:type:_:)();
  }

  (*(v16 + 32))(v19, v14, v15);
  v23 = UTType.localizedDescription.getter();
  if (!v24)
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_14;
  }

  v92 = v23;
  v99 = v23;
  v100 = v24;
  v93 = v24;
  v88 = lazy protocol witness table accessor for type String and conformance String();
  v105 = StringProtocol.localizedLowercase.getter();
  v26 = v25;
  v89 = v19;
  v27 = UTType.tags.getter();
  static UTTagClass.filenameExtension.getter();
  v28 = *(v27 + 16);
  v29 = v4;
  v91 = v15;
  v90 = v16;
  if (!v28 || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v31 & 1) == 0))
  {

    (*(v7 + 8))(v10, v6);
    v36 = MEMORY[0x277D84F90];
LABEL_17:
    v35 = v95;
    goto LABEL_18;
  }

  v32 = *(*(v27 + 56) + 8 * v30);
  v33 = *(v7 + 8);

  v33(v10, v6);

  v34 = *(v32 + 16);
  v35 = v95;
  if (v34)
  {
    v87 = v29;
    v99 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    v36 = v99;
    v86[1] = v32;
    v37 = v32 + 40;
    do
    {
      v38 = String.lowercased()();
      v99 = v36;
      v40 = *(v36 + 16);
      v39 = *(v36 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v36 = v99;
      }

      *(v36 + 16) = v40 + 1;
      *(v36 + 16 * v40 + 32) = v38;
      v37 += 16;
      --v34;
    }

    while (v34);

    v29 = v87;
    goto LABEL_17;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_18:
  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_utiDescriptors;
  swift_beginAccess();
  v45 = *(v35 + v44);
  v46 = *(v45 + 16);
  v47 = v105;
  v48 = v26;
  if (v46)
  {
    v49 = 0;
    v50 = 72;
    while (*(v45 + v50 - 8) != v47 || *(v45 + v50) != v48)
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v48 = v26;
      v47 = v105;
      if (v52)
      {
        break;
      }

      ++v49;
      v50 += 48;
      if (v46 == v49)
      {
        goto LABEL_26;
      }
    }

    v68 = v48;

    v69 = *(v35 + v44);
    v70 = *(v69 + 16);
    v105 = v44;
    if (v49 >= v70)
    {
      __break(1u);
    }

    else
    {
      v71 = (v69 + v50);
      v72 = *(v71 - 4);
      v73 = *(v71 - 3);
      v74 = *(v71 - 2);
      v75 = *(v71 - 1);
      v76 = *v71;
      v99 = *(v71 - 5);
      v100 = v72;
      v101 = v73;
      v102 = v74;
      v103 = v75;
      v104 = v76;
      v77 = v97;

      specialized Set._Variant.insert(_:)(&v98, v96, v77);

      specialized Sequence.forEach(_:)(v36);
      v87 = v29;

      v78 = v99;
      v79 = v100;
      v80 = v102;
      v94 = v101;
      v26 = v104;
      v93 = v103;
      v81 = v105;
      swift_beginAccess();
      v82 = v35;
      v35 = *(v35 + v81);
      v97 = v78;

      v96 = v79;

      v95 = v80;

      result = swift_isUniquelyReferenced_nonNull_native();
      v68 = v82;
      v46 = v81;
      *(v82 + v81) = v35;
      if (result)
      {
        goto LABEL_33;
      }
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
    v35 = result;
    *(v68 + v46) = result;
LABEL_33:
    if (v49 >= *(v35 + 16))
    {
      __break(1u);
    }

    else
    {
      v83 = (v35 + v50);
      v84 = v96;
      *(v83 - 5) = v97;
      *(v83 - 4) = v84;
      v85 = v95;
      *(v83 - 3) = v94;
      *(v83 - 2) = v85;
      *(v83 - 1) = v93;
      *v83 = v26;
      *(v68 + v46) = v35;
      swift_endAccess();

      (*(v90 + 8))(v89, v91);
    }

    return result;
  }

LABEL_26:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v54 = v44;
  v55 = v97;
  *(inited + 32) = v96;
  *(inited + 40) = v55;

  v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v105 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v36);

  v99 = v92;
  v100 = v93;
  v57 = StringProtocol.localizedLowercase.getter();
  v59 = v58;
  swift_beginAccess();
  v60 = v35;
  v61 = *(v35 + v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v60 + v54) = v61;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
    *(v60 + v54) = v61;
  }

  v64 = *(v61 + 2);
  v63 = *(v61 + 3);
  if (v64 >= v63 >> 1)
  {
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
  }

  *(v61 + 2) = v64 + 1;
  v65 = &v61[48 * v64];
  v66 = v105;
  *(v65 + 4) = v56;
  *(v65 + 5) = v66;
  v67 = v93;
  *(v65 + 6) = v92;
  *(v65 + 7) = v67;
  *(v65 + 8) = v57;
  *(v65 + 9) = v59;
  *(v60 + v54) = v61;
  swift_endAccess();
  result = (*(v90 + 8))(v89, v91);
  *v94 = 1;
  return result;
}

uint64_t DOCUTIDescriptorCollector.filteredUTIs(by:)(uint64_t a1, void *a2)
{
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_gatheringQueue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D85200], v3, v6);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCUTIDescriptorCollector_utiDescriptors;
    swift_beginAccess();
    v14 = *(*(v2 + v13) + 16);

    if (v14)
    {
      v15 = 0;
      v16 = result + 40;
      v35 = v14;
      v32 = v14 - 1;
      v33 = result + 40;
      v34 = MEMORY[0x277D84F90];
      v36 = result;
      do
      {
        v17 = (v16 + 48 * v15);
        v18 = v15;
        while (1)
        {
          if (v18 >= *(result + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v19 = *(v17 - 1);
          v20 = *v17;
          v21 = v17[1];
          v22 = v17[2];
          v24 = v17[3];
          v23 = v17[4];
          v15 = v18 + 1;
          v38 = v19;
          v39 = v20;
          v40 = v21;
          v41 = v22;
          v42 = v24;
          v43 = v23;

          if (DOCUTIDescriptor.prefixMatches(with:)(v37))
          {
            break;
          }

          v17 += 6;
          ++v18;
          result = v36;
          if (v35 == v15)
          {
            goto LABEL_16;
          }
        }

        v25 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
          v25 = v44;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v34 = v28 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v29 = v34;
          v25 = v44;
        }

        *(v25 + 16) = v29;
        v34 = v25;
        v30 = (v25 + 48 * v28);
        v30[4] = v19;
        v30[5] = v20;
        v30[6] = v21;
        v30[7] = v22;
        v30[8] = v24;
        v30[9] = v23;
        v16 = v33;
        result = v36;
      }

      while (v32 != v18);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

LABEL_16:

    return v34;
  }

  else
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

id DOCUTIDescriptorCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUTIDescriptorCollector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DOCUTIDescriptor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DOCUTIDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetMd);
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
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 48 * v4;
    result = *(v9 + 16);
    v10 = *(v9 + 24);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 16) && v10 == *(v12 + 24);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 64);
      v10 = *(v12 + 72);
      v14 = *(v12 + 16);
      v16 = *(v12 + 32);
      v15 = *(v12 + 48);
      *(v12 + 48) = *v12;
      *(v12 + 64) = v14;
      v17 = *(v12 + 80);
      v18 = *(v12 + 88);
      *(v12 + 80) = v16;
      *v12 = v15;
      *(v12 + 16) = result;
      *(v12 + 24) = v10;
      *(v12 + 32) = v17;
      *(v12 + 40) = v18;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    v9 = v6;
    v10 = v5;
    while (1)
    {
      result = *(v10 - 1);
      v11 = v7 == 3 ? 2 : v8;
      if (v7 == 2)
      {
        v11 = 1;
      }

      if (result == 3)
      {
        if (v11 >= 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result == 2)
        {
          goto LABEL_4;
        }

        if (result)
        {
          if (v11 >= 3)
          {
            goto LABEL_4;
          }
        }

        else if (v11 > 3)
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      *v10 = result;
      *--v10 = v7;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = (*a4 + 24 * a3 - 24);
    v5 = result - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = (v20 + 24 * a3);
    v8 = *v6;
    v7 = v6[1];
    v17 = v5;
    while (1)
    {
      v9 = *v4;
      v10 = v4[1];
      swift_getObjectType();
      outlined copy of DOCItemSharedByGroupCategory(v8, v7);
      swift_unknownObjectRetain();
      outlined copy of DOCItemSharedByGroupCategory(v9, v10);
      v11 = swift_unknownObjectRetain();
      v12 = DOCNode.compareBySharedStatus(node:)(v11);
      outlined consume of DOCItemSharedByGroupCategory(v9, v10);
      swift_unknownObjectRelease();
      outlined consume of DOCItemSharedByGroupCategory(v8, v7);
      result = swift_unknownObjectRelease();
      if (v12 != -1)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 3;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v7 = v4[4];
      v13 = v4[5];
      v14 = v4[2];
      v8 = v4[3];
      *(v4 + 3) = *v4;
      v4[5] = v14;
      *v4 = v8;
      v4[1] = v7;
      v4[2] = v13;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = result - a3;
    v7 = (*a4 + a3);
LABEL_5:
    v8 = *(v5 + v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      if (v8 > 1u)
      {

        if (!v5)
        {
LABEL_14:
          __break(1u);
          return result;
        }
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v8 = *v9;
      *v9 = *(v9 - 1);
      *--v9 = v8;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v4;
        --v6;
        ++v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 48;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_24:
    v5 -= 48;
    do
    {
      v17 = *(v12 - 4) == *(v6 - 4) && *(v12 - 3) == *(v6 - 3);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v21 = v6 - 48;
        if (v5 + 48 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v18 = v12 - 48;
      if (v5 + 48 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 3) < *(v6 + 3))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v33[1] = a4;
  LODWORD(v5) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v33 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v40 = a3;
  result = swift_beginAccess();
  if (v16)
  {
    v18 = 0;
    v42 = (v12 + 48);
    v36 = (v12 + 8);
    v37 = (v12 + 32);
    v19 = a1 + 32;
    v35 = v5;
    v34 = v15;
    v38 = a1 + 32;
    v39 = v16;
    do
    {
      v20 = (v19 + 16 * v18);
      v21 = *v20;
      v22 = v20[1];

      v23._countAndFlagsBits = 778991972;
      v23._object = 0xE400000000000000;
      if (!String.hasPrefix(_:)(v23))
      {

        UTType.init(_:)();
        if ((*v42)(v10, 1, v11) != 1)
        {
          (*v37)(v15, v10, v11);
          if (v5)
          {
            goto LABEL_20;
          }

          v24 = *v40;
          if (*(*v40 + 16))
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            v25 = Hasher._finalize()();
            v26 = -1 << *(v24 + 32);
            v27 = v25 & ~v26;
            if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
            {
              v28 = ~v26;
              while (1)
              {
                v29 = (*(v24 + 48) + 16 * v27);
                v30 = *v29 == v21 && v29[1] == v22;
                if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v27 = (v27 + 1) & v28;
                if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              LOBYTE(v5) = v35;
              v15 = v34;
              goto LABEL_21;
            }

LABEL_18:
          }

          v15 = v34;
          isa = UTType._bridgeToObjectiveC()().super.isa;
          v5 = Array._bridgeToObjectiveC()().super.isa;
          v32 = [(objc_class *)isa doc_conformsToAnyInContentTypes:v5];

          LOBYTE(v5) = v35;
          if (v32)
          {
LABEL_20:
            swift_beginAccess();

            specialized Set._Variant.insert(_:)(&v41, v21, v22);
            swift_endAccess();
          }

LABEL_21:
          (*v36)(v15, v11);

          v19 = v38;
          v16 = v39;
          goto LABEL_5;
        }

        outlined destroy of UTType?(v10);
      }

LABEL_5:
      ++v18;
    }

    while (v18 != v16);
  }

  return result;
}

uint64_t DOCShareButton.updateConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v12 - v2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = [static DOCInterface.general ellipsisMenuItemImageName];
  v10 = [objc_opt_self() systemImageNamed_];

  static DOCInfoActionsView.Metrics.buttonConfiguration(for:)(v10);
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UIButton.configuration.setter();

  return (*(v5 + 8))(v8, v4);
}

uint64_t one-time initialization function for defaultLayoutMargins()
{
  result = _UISolariumEnabled();
  v1 = 16.0;
  *&static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins = 0x4030000000000000;
  if (result)
  {
    v1 = 12.0;
  }

  *(&static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins + 1) = v1;
  qword_27EEEA210 = 0x4030000000000000;
  qword_27EEEA218 = *&v1;
  return result;
}

id DOCItemInfoContentViewController.configuration.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemInfoContentViewController.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCItemInfoContentViewController.actionManager.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemInfoContentViewController.actionManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemInfoContentViewController.documentManager.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_documentManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemInfoContentViewController.documentManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_documentManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double DOCItemInfoContentViewController.layoutMargins.getter()
{
  v1 = v0 + OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins;
  swift_beginAccess();
  return *v1;
}

id DOCItemInfoContentViewController.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) setDirectionalLayoutMargins_];
}

id key path setter for DOCItemInfoContentViewController.layoutMargins : DOCItemInfoContentViewController(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = (*a2 + OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins);
  swift_beginAccess();
  *v7 = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  return [*(v6 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) setDirectionalLayoutMargins_];
}

void (*DOCItemInfoContentViewController.layoutMargins.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemInfoContentViewController.layoutMargins.modify;
}

void DOCItemInfoContentViewController.layoutMargins.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) setDirectionalLayoutMargins_];
  }

  free(v3);
}

uint64_t DOCItemInfoContentViewController.actionDelegate.getter()
{
  return DOCItemInfoContentViewController.actionDelegate.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t DOCItemInfoContentViewController.actionDelegate.setter()
{
  return DOCItemInfoContentViewController.actionDelegate.setter();
}

{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DOCItemInfoContentViewController.actionDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_actionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCItemInfoContentViewController.actionDelegate.modify;
}

uint64_t DOCItemInfoContentViewController.eventReporting.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCItemInfoContentViewController.eventReporting.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_eventReporting;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t (*DOCItemInfoContentViewController.actionReporting.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_actionReporting;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCItemInfoContentViewController.actionReporting.modify;
}

id @objc DOCItemInfoContentViewController.actionReporting.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t (*DOCItemInfoContentViewController.tagsWorkflowDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_tagsWorkflowDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCItemInfoContentViewController.actionReporting.modify;
}

uint64_t DOCItemInfoContentViewController.showsShareButton.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemInfoContentViewController.showsShareButton.setter(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    v7 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
    [v7 setHidden_];

    v8 = DOCItemInfoContentViewController.actionsView.getter();
    if (v8)
    {
      v9 = v8;
      (*((*MEMORY[0x277D85000] & *v8) + 0x100))(*(v2 + v5));
    }

    DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
  }
}

void *DOCItemInfoContentViewController.actionsView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView);
  v3 = v2;
  if (v2 == 1)
  {
    if (*(v0 + OBJC_IVAR___DOCItemInfoContentViewController_showsActionsView) == 1)
    {
      v4 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
      swift_beginAccess();
      v5 = *(v0 + v4);
      v6 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v7 = *(v0 + v6);
      v8 = objc_allocWithZone(type metadata accessor for DOCInfoActionsView());
      v9 = v5;
      v3 = DOCInfoActionsView.init(actionManager:configuration:)(v5, v7);
      v10 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(1);
      (*((*v10 & *v3) + 0x100))(1);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      (*((*v10 & *v3) + 0xD0))(Strong);
      v12 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v12 = 1;
    }

    *(v0 + v1) = v3;
    v13 = v3;
    outlined consume of DOCProgressCollectionIndicatorView??(v12);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v2);
  return v3;
}

void DOCItemInfoContentViewController.updateRootContentViewElementSpacing()()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v2 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_65:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == 1)
  {
    v5 = *&v1[v2];
    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_7:
        if ((v5 & 0xC000000000000001) != 0)
        {

          v6 = MEMORY[0x24C1FC540](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v6 = *(v5 + 32);
          swift_unknownObjectRetain();
        }

        v7 = [v6 isShared];
        swift_unknownObjectRelease();
        v8 = 4.0;
        if (v7)
        {
          goto LABEL_12;
        }
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  v8 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics + 16];
LABEL_12:
  v9 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow, closure #1 in DOCItemInfoContentViewController.actionsRow.getter);
  v10 = [v9 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  while (v11 != v12)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v12, v2);
    }

    else
    {
      if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v13 = *(v2 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v15 = [v13 isHidden];

    ++v12;
    if ((v15 & 1) == 0)
    {
      v16 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics + 24];
      goto LABEL_24;
    }
  }

  v16 = 4.0;
LABEL_24:

  v17 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  v18 = &v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics];
  v19 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_metrics];
  v20 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_rootContentView];
  v21 = DOCItemInfoContentViewController.thumbnailView.getter();
  v22 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v21);
  if (v22)
  {
    v23 = v22;
    [*&v20[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v22 afterView:v19];

    v24 = v20;
  }

  else
  {
    v24 = v21;
    v21 = v20;
  }

  v25 = v18[1];
  v26 = *&v1[v17];
  v27 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
  v28 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v27);
  if (v28)
  {
    v29 = v28;
    [*&v26[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v28 afterView:v25];

    v30 = v26;
  }

  else
  {
    v30 = v27;
    v27 = v26;
  }

  v31 = *&v1[v17];
  v32 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
  v33 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v32);
  if (v33)
  {
    v34 = v33;
    [*&v31[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v33 afterView:v8];

    v35 = v31;
  }

  else
  {
    v35 = v32;
    v32 = v31;
  }

  v36 = *&v1[v17];
  v37 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
  v38 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v37);
  if (v38)
  {
    v39 = v38;
    [*&v36[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v38 afterView:16.0];

    v40 = v36;
  }

  else
  {
    v40 = v37;
    v37 = v36;
  }

  v41 = *&v1[v17];
  v42 = DOCItemInfoContentViewController.shareView.getter();
  v43 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v42);
  if (v43)
  {
    v44 = v43;
    [*&v41[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v43 afterView:16.0];

    v45 = v41;
  }

  else
  {
    v45 = v42;
    v42 = v41;
  }

  v46 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow];
  v47 = *&v1[v17];
  v48 = v46;
  v49 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v48);
  if (v49)
  {
    v50 = v49;
    [*&v47[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v49 afterView:v16];

    v51 = v47;
  }

  else
  {
    v51 = v48;
    v48 = v47;
  }

  v52 = *(v18 + 56);
  if (v52 == 1)
  {
    v53 = *&v1[v17];
    v54 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator);
    v55 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v54);
    if (v55)
    {
      v56 = v55;
      [*&v53[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v55 afterView:18.0];

      v57 = v53;
    }

    else
    {
      v57 = v54;
      v54 = v53;
    }
  }

  v58 = v18[4];
  v59 = *&v1[v17];
  v60 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow, closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter);
  v61 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v60);
  if (v61)
  {
    v62 = v61;
    [*&v59[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v61 afterView:v58];

    v63 = v59;
  }

  else
  {
    v63 = v60;
    v60 = v59;
  }

  v64 = v18[5];
  v65 = *&v1[v17];
  v66 = DOCItemInfoContentViewController.metadataView.getter();
  v67 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v66);
  if (v67)
  {
    v68 = v67;
    [*&v65[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v67 afterView:v64];

    v69 = v65;
  }

  else
  {
    v69 = v66;
    v66 = v65;
  }

  if (v52)
  {
    v70 = *&v1[v17];
    v71 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator);
    v72 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v71);
    if (v72)
    {
      v73 = v72;
      [*&v70[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v72 afterView:21.0];

      v74 = v70;
    }

    else
    {
      v74 = v71;
      v71 = v70;
    }
  }

  v75 = v18[6];
  v76 = *&v1[v17];
  v77 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
  v78 = DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(v77);
  if (v78)
  {
    v79 = v78;
    [*&v76[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView] setCustomSpacing:v78 afterView:v75];

    v80 = v76;
  }

  else
  {
    v80 = v77;
    v77 = v76;
  }
}

void (*DOCItemInfoContentViewController.showsShareButton.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemInfoContentViewController.showsShareButton.modify;
}

void DOCItemInfoContentViewController.showsShareButton.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[3];
    v7 = v1[4];
    v8 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
    [v8 setHidden_];

    v9 = DOCItemInfoContentViewController.actionsView.getter();
    if (v9)
    {
      v10 = v9;
      (*((*MEMORY[0x277D85000] & *v9) + 0x100))(*(v1[3] + v1[4]));
    }

    DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
  }

  free(v1);
}

uint64_t DOCItemInfoContentViewController.showsItemLocation.getter()
{
  v0 = DOCItemInfoContentViewController.metadataView.getter();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();

  return v1 & 1;
}

void DOCItemInfoContentViewController.showsItemLocation.setter(uint64_t a1)
{
  v2 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(a1);
}

void key path getter for DOCItemInfoContentViewController.showsItemLocation : DOCItemInfoContentViewController(_BYTE *a1@<X8>)
{
  v2 = DOCItemInfoContentViewController.metadataView.getter();
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0xD8))();

  *a1 = v3 & 1;
}

void key path setter for DOCItemInfoContentViewController.showsItemLocation : DOCItemInfoContentViewController(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(v1);
}

char *DOCItemInfoContentViewController.metadataView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView);
  }

  else
  {
    v4 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = objc_allocWithZone(type metadata accessor for DOCMetadataView());
    v7 = v5;
    v8 = v5;
    v9 = v0;
    v10 = DOCMetadataView.init(metadataKeys:configuration:)(&outlined read-only object #0 of one-time initialization function for allValues, v8);
    v11 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v10) + 0x148))(1);
    (*((*v11 & *v10) + 0xF8))(1);
    v12 = *MEMORY[0x277D768C8];
    v13 = *(MEMORY[0x277D768C8] + 8);
    v14 = *(MEMORY[0x277D768C8] + 16);
    v15 = *(MEMORY[0x277D768C8] + 24);
    v16 = v10;
    [v16 setLayoutMargins_];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    v18 = *((*v11 & *v16) + 0x130);
    v19 = swift_unknownObjectRetain();
    v18(v19);
    v20 = *(v9 + v1);
    *(v9 + v1) = v10;
    v3 = v16;

    v2 = 0;
  }

  v21 = v2;
  return v3;
}

void (*DOCItemInfoContentViewController.showsItemLocation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = DOCItemInfoContentViewController.metadataView.getter();
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))();

  *(a1 + 8) = v4 & 1;
  return DOCItemInfoContentViewController.showsItemLocation.modify;
}

void DOCItemInfoContentViewController.showsItemLocation.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*a1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView);
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0xE0);
  v4 = v2;
  v3(v1);
}

id DOCItemInfoContentViewController.thumbnailView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
  }

  else
  {
    type metadata accessor for DOCImageContainerFittingView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_documentPreviewTappedWithSender_];
    [v4 addGestureRecognizer_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *DOCItemInfoContentViewController.filenameTitleLabel.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel);
  }

  else
  {
    v4 = v0;
    type metadata accessor for DOCCopyableLabel();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    (*((*MEMORY[0x277D85000] & *v5) + 0x90))(1);
    v6 = v5;
    [v6 setAdjustsFontForContentSizeCategory_];
    [v6 setTextAlignment_];
    v7 = specialized DOCItemInfoContentViewController.Metrics.fileNameFont.getter();
    [v6 setFont_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *DOCItemInfoContentViewController.shareStatusLabel.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    type metadata accessor for DOCCopyableLabel();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v6) + 0x90))(1);
    v8 = [objc_opt_self() secondaryLabelColor];
    (*((*v7 & *v6) + 0xC0))(v8);
    [v6 setFont_];
    v9 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id DOCItemInfoContentViewController.syncingErrorLabel.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setFont_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id DOCItemInfoContentViewController.downloadButton.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton);
  }

  else
  {
    v4 = [objc_allocWithZone(DOCItemInfoOpenButton) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCItemInfoContentViewController.metadataSectionLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  [v2 setFont_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1148829696;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v12._object = 0x8000000249BDC0D0;
    v7._countAndFlagsBits = 0x74616D726F666E49;
    v7._object = 0xEB000000006E6F69;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD000000000000037;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v12);

    v11 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v2 setText_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *DOCItemInfoContentViewController.showMoreMetadataButton.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton);
  }

  else
  {
    v4 = v0;
    v5 = DOCItemInfoContentViewController.metadataView.getter();
    v6 = objc_allocWithZone(type metadata accessor for DOCLevelOfDetailButton(0));
    v7 = DOCLevelOfDetailButton.init(metadataView:)(v5);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA1010;
  *(v7 + 32) = DOCItemInfoContentViewController.shareButton.getter(a2, a3);
  *(v7 + 40) = a4();
  v8 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArrangedSubviews_];

  LODWORD(v11) = 1148829696;
  [v10 setContentHuggingPriority:1 forAxis:v11];
  [v10 setDistribution_];
  [v10 setSpacing_];
  [v10 setAlignment_];
  return v10;
}

id DOCItemInfoContentViewController.addTagsButton.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = aBlock - v3;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton;
  v6 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton);
  }

  else
  {
    type metadata accessor for DOCButton();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    UIButton.init(type:primaryAction:)(v10, UIButtonTypeSystem, v9);
    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v14];
    v15 = objc_opt_self();
    v16 = v12;

    static UIButton.Configuration.borderless()();
    v17 = type metadata accessor for UIButton.Configuration();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    UIButton.configuration.setter();
    v18 = DOCItemInfoContentViewController.showMoreMetadataButton.getter();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    aBlock[4] = partial apply for closure #3 in closure #1 in DOCItemInfoContentViewController.addTagsButton.getter;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_282;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    [v16 setConfigurationUpdateHandler_];
    _Block_release(v21);

    v23 = *(v8 + v5);
    *(v8 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v24 = v6;
  return v7;
}

id closure #1 in DOCItemInfoContentViewController.tagsSectionTitleLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  [v2 setFont_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1148829696;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v12._object = 0x8000000249BDC0B0;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0x8000000249BDC090;
    v12._countAndFlagsBits = 0xD00000000000001FLL;
    v8._countAndFlagsBits = 0xD000000000000013;
    v9._countAndFlagsBits = 1936154964;
    v9._object = 0xE400000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v12);

    v11 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v2 setText_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.addTagsButton.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCItemInfoContentViewController.addTagsButtonTapped()();
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.addTagsButtonTapped()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v3 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v12 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
LABEL_21:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        swift_unknownObjectRetain();
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      swift_getObjectType();
      v8 = DOCNode.fpfs_syncFetchFPItem()();
      v9 = swift_unknownObjectRelease();
      ++v6;
      if (v8)
      {
        MEMORY[0x24C1FB090](v9);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v7;
      }
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 beginAddTagsWithItems:v10.super.isa controller:v1];
    swift_unknownObjectRelease();
  }

  else
  {
    v10.super.isa = DOCItemInfoContentViewController.addTagsButton.getter();
    DOCItemInfoContentViewController.showAddTags(from:)(v10.super.isa);
  }
}

void closure #3 in closure #1 in DOCItemInfoContentViewController.addTagsButton.getter(UIButton *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = _DocumentManagerBundle();
    if (v4)
    {
      v5 = v4;
      v11._object = 0x8000000249BDC1C0;
      v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v6.value._object = 0xEB00000000656C62;
      v7._countAndFlagsBits = 0x7367615420646441;
      v8._object = 0x8000000249BDC1A0;
      v11._countAndFlagsBits = 0xD000000000000023;
      v8._countAndFlagsBits = 0xD000000000000017;
      v7._object = 0xE800000000000000;
      v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v6, v5, v7, v11);

      v10 = [v3 viewIfLoaded];
      DOCLevelOfDetailButton.Metrics.applyProperties(andTitle:toButton:inContainer:avoidZeroInsetsAtLargestSize:)(v9, a1, v10, 1);
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCItemInfoContentViewController.tagsCollectionView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView);
  }

  else
  {
    v4 = [objc_allocWithZone(DOCTagsCollectionView) init];
    [v4 setShowsAddTagButton_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCItemInfoContentViewController.shareButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for DOCShareButton();
  v29.receiver = objc_allocWithZone(v12);
  v29.super_class = v12;

  v13 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in DOCItemInfoContentViewController.shareButton.getter;
  *(v14 + 24) = v11;
  v15 = v13;

  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v15 setDoc:v16 primaryAction:?];

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = [static DOCInterface.general ellipsisMenuItemImageName];
  v18 = [objc_opt_self() systemImageNamed_];

  static DOCInfoActionsView.Metrics.buttonConfiguration(for:)(v18);
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  UIButton.configuration.setter();

  (*(v7 + 8))(v10, v6);

  if (_UISolariumEnabled())
  {
    v20 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
    swift_beginAccess();
    v21 = *(a1 + v20);
    if (v21 >> 62)
    {
      if (__CocoaSet.count.getter() == 1)
      {
        goto LABEL_6;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_6:
      v22 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v23 = *(a1 + v22);

      v24 = v23;
      v25 = specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(v21, 0);

LABEL_9:
      [v15 setMenu_];

      [v15 setShowsMenuAsPrimaryAction_];
      goto LABEL_10;
    }

    v25 = 0;
    goto LABEL_9;
  }

LABEL_10:
  LODWORD(v19) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v26) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v26];

  return v15;
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.shareButton.getter()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      DOCItemInfoContentViewController.showActivityViewControllerActionsPopover()();
    }
  }
}

uint64_t DOCItemInfoContentViewController.showActivityViewControllerActionsPopover()()
{
  v1 = v0;
  v2 = DOCItemInfoContentViewController.actionsView.getter();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x130))();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v15._rawValue = v4;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = v6;

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v9 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v13);
  DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(v15);
}

id DOCItemInfoContentViewController.shareView.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_249BA0290;
    *(v4 + 32) = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
    v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 initWithArrangedSubviews_];

    [v7 setAxis_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void DOCItemInfoContentViewController.statusAppearance.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance;
  v4 = *(v1 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance);
  if (v4 != 10)
  {
    goto LABEL_14;
  }

  v5 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_13;
  }

  v7 = *(v1 + v5);
  if (v7 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x24C1FC540](0, v7);

LABEL_9:
    if ([v8 isCloudItem] && objc_msgSend(v8, sel_isItemPinned) && (objc_msgSend(v8, sel_isExternalDownloadPlaceholder) & 1) == 0)
    {
      LOBYTE(v4) = 9;
      *(v1 + v3) = 9;
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
LABEL_13:
    LOBYTE(v4) = 2;
    *(v1 + v3) = 2;
LABEL_14:
    *a1 = v4;
    return;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  __break(1u);
}

id DOCItemInfoContentViewController.shareButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in DOCItemInfoContentViewController.actionsRow.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setDistribution_];
  [v2 setAlignment_];
  v3 = objc_opt_self();
  v4 = v2;
  [v3 itemInfoView];
  swift_getObjCClassMetadata();
  v5 = [swift_getObjCClassFromMetadata() actionsContainer];
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x24C1FAD20](v6);
  }

  [v4 setAccessibilityIdentifier_];

  v7 = DOCItemInfoContentViewController.actionsView.getter();
  if (v7)
  {
    v8 = v7;
    type metadata accessor for UILayoutPriority(0);
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v9) = v20;
    [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  }

  if (*(a1 + OBJC_IVAR___DOCItemInfoContentViewController_allowOpenButton) == 1)
  {
    v10 = DOCItemInfoContentViewController.downloadButton.getter();
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    [v4 addArrangedSubview_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = [v11 widthAnchor];
    v13 = [v12 constraintGreaterThanOrEqualToConstant_];

    [v13 setActive_];
    LODWORD(v14) = 1144750080;
    [v11 setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1132068864;
    [v11 setContentCompressionResistancePriority:0 forAxis:v15];
    [v4 addArrangedSubview_];
  }

  v16 = *(a1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView);
  if (v16)
  {
    v17 = v16;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addArrangedSubview_];
    outlined consume of DOCProgressCollectionIndicatorView??(v16);
  }

  v18 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  [v4 addArrangedSubview_];
  return v4;
}

char *DOCItemInfoContentViewController.RootVStack.init()()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_arrangedStackElementViews] = MEMORY[0x277D84F90];
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DOCItemInfoContentViewController.RootVStack();
  v2 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView;
  v4 = *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = v4;
  v8 = [v5 clearColor];
  [v7 setBackgroundColor_];

  [*&v2[v3] setLayoutMarginsRelativeArrangement_];
  [*&v2[v3] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v2[v3] setAxis_];
  [*&v2[v3] setSpacing_];
  [v6 addSubview_];
  v9 = one-time initialization token for defaultLayoutMargins;
  v10 = *&v2[v3];
  if (v9 != -1)
  {
    swift_once();
  }

  isa = DOCConstraintsToResizeWithSuperview();

  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints_];

  return v6;
}

id DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_arrangedStackElementViews;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x24C1FB090]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return [*(v2 + OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_stackView) addArrangedSubview_];
}

char *DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver] = 0;
  *&v2[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_clientView] = a1;
  *&v2[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_trailingButton] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DOCItemInfoContentViewController.RootVStack.StackElementView();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 addSubview_];
  [v7 setPreservesSuperviewLayoutMargins_];
  [v7 setLayoutMargins_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints_];

  v9 = OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_clientView;
  [v7 setHidden_];
  v14 = *&v7[v9];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v14;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v12 = *&v7[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver];
  *&v7[OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver] = v11;

  return v7;
}

void closure #1 in DOCItemInfoContentViewController.RootVStack.StackElementView.setUpVisibilityObservation()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v3 setHidden_];
  }
}

void DOCItemInfoContentViewController.RootVStack.StackElementView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack16StackElementView_visibilityObserver);
}

void *DOCItemInfoContentViewController.RootVStack.stackElement(forClientView:)(void *a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables32DOCItemInfoContentViewControllerP33_D84699134F2F83A5DD978A1B1F3ADA5810RootVStack_arrangedStackElementViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      if (static NSObject.== infix(_:_:)())
      {

        return v8;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_13:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_2493AC000, v12, v13, "ERROR: stackElement(forClientView:) unable to locate stack element for view %@", v14, 0xCu);
    outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  return 0;
}

uint64_t DOCItemInfoContentViewController.RootVStack.__ivar_destroyer()
{
}

void DOCItemInfoContentViewController.installRootContentViewElements()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView);
  v3 = DOCItemInfoContentViewController.thumbnailView.getter();
  v4 = type metadata accessor for DOCItemInfoContentViewController.RootVStack.StackElementView();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v6, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v7);

  v8 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
  v9 = objc_allocWithZone(v4);
  v10 = v8;
  v11 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v10, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v11);

  v12 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
  v13 = objc_allocWithZone(v4);
  v14 = v12;
  v15 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v14, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v15);

  v16 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
  v17 = objc_allocWithZone(v4);
  v18 = v16;
  v19 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v18, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v19);

  v20 = DOCItemInfoContentViewController.shareView.getter();
  v21 = objc_allocWithZone(v4);
  v22 = v20;
  v23 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v22, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v23);

  v24 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow, closure #1 in DOCItemInfoContentViewController.actionsRow.getter);
  v25 = objc_allocWithZone(v4);
  v26 = v24;
  v27 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v26, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v27);

  v58 = *(v1 + OBJC_IVAR___DOCItemInfoContentViewController_metrics + 56);
  if (v58 == 1)
  {
    v28 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator);
    v29 = objc_allocWithZone(v4);
    v30 = v28;
    v31 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v30, 0);
    DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v31);
  }

  v32 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow, closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter);
  v33 = objc_allocWithZone(v4);
  v34 = v32;
  v35 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v34, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v35);

  v36 = DOCItemInfoContentViewController.metadataView.getter();
  v37 = objc_allocWithZone(v4);
  v38 = v36;
  v39 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v38, 0);
  v59 = v2;
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v39);

  v40 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v41 = *(v1 + v40);
  if (v41 >> 62)
  {
LABEL_23:
    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = 0;
  while (v42 != v43)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x24C1FC540](v43, v41);
      if (__OFADD__(v43, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v44 = *(v41 + 8 * v43 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v43, 1))
      {
        goto LABEL_15;
      }
    }

    if ([v44 isRootItem])
    {
      swift_unknownObjectRelease();
LABEL_20:

      return;
    }

    v45 = [v44 doc_isCollaborationInvitation];
    swift_unknownObjectRelease();
    ++v43;
    if (v45)
    {
      goto LABEL_20;
    }
  }

  if (v58)
  {
    v46 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator);
    v47 = objc_allocWithZone(v4);
    v48 = v46;
    v49 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v48, 0);
    DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v49);
  }

  v50 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
  v51 = objc_allocWithZone(v4);
  v52 = v50;
  v53 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v52, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v53);

  v54 = DOCItemInfoContentViewController.tagsCollectionView.getter();
  v55 = objc_allocWithZone(v4);
  v56 = v54;
  v57 = DOCItemInfoContentViewController.RootVStack.StackElementView.init(clientView:trailingButton:)(v56, 0);
  DOCItemInfoContentViewController.RootVStack.addArranged(stackElementView:)(v57);
}

uint64_t DOCItemInfoContentViewController.nodesObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemInfoContentViewController.shouldObserveNodes.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemInfoContentViewController.shouldObserveNodes.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    if (a1)
    {
      result = swift_beginAccess();
      v8 = *(v1 + v7);
      if (!v8)
      {
        return result;
      }

      v9 = *(*v8 + 304);

      v9(v10);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v1 + v7);
      if (!v11)
      {
        return result;
      }

      v12 = *(*v11 + 312);

      v12(v13);
    }
  }

  return result;
}

void (*DOCItemInfoContentViewController.shouldObserveNodes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return DOCItemInfoContentViewController.shouldObserveNodes.modify;
}

void DOCItemInfoContentViewController.shouldObserveNodes.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    DOCItemInfoContentViewController.shouldObserveNodes.setter(v3);
    goto LABEL_10;
  }

  v5 = v2[9];
  v4 = v2[10];
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    v7 = v2[9];
    v8 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    if (v3)
    {
      swift_beginAccess();
      v9 = *(v7 + v8);
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = (*v9 + 304);
    }

    else
    {
      swift_beginAccess();
      v11 = *(v7 + v8);
      if (!v11)
      {
        goto LABEL_10;
      }

      v10 = (*v11 + 312);
    }

    v12 = *v10;

    v12(v13);
  }

LABEL_10:

  free(v2);
}

uint64_t DOCItemInfoContentViewController.actionsForCurrentActivityViewController.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(void *a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR___DOCItemInfoContentViewController_documentManager;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_documentManager] = 0;
  v11 = &v6[OBJC_IVAR___DOCItemInfoContentViewController_metrics];
  specialized DOCItemInfoContentViewController.Metrics.init()(v36);
  v12 = v36[3];
  v11[2] = v36[2];
  v11[3] = v12;
  v11[4] = v36[4];
  v13 = v36[1];
  *v11 = v36[0];
  v11[1] = v13;
  v6[OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce] = 0;
  v14 = &v6[OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins];
  if (one-time initialization token for defaultLayoutMargins != -1)
  {
    swift_once();
  }

  v15 = *&qword_27EEEA210;
  *v14 = static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins;
  v14[1] = v15;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_eventReporting + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton] = 1;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataSectionLabel] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsSectionTitleLabel] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView] = 1;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView] = 0;
  v6[OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance] = 10;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow] = 0;
  v16 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  *&v6[v16] = [objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController.RootVStack()) init];
  v17 = OBJC_IVAR___DOCItemInfoContentViewController_scrollView;
  *&v6[v17] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_attributionView] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
  *&v6[v18] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver] = 0;
  v6[OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes] = 0;
  v6[OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat] = 0;
  v19 = &v6[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize];
  *v19 = 0;
  v19[1] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu] = 0;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_nodes] = a2;
  *&v6[OBJC_IVAR___DOCItemInfoContentViewController_configuration] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v20 = *&v6[v10];
  *&v6[v10] = a4;
  v21 = a1;
  v22 = a4;

  v6[OBJC_IVAR___DOCItemInfoContentViewController_allowOpenButton] = a3 & 1;
  if (a5)
  {
    v6[OBJC_IVAR___DOCItemInfoContentViewController_showsActionsView] = 1;
    *&v6[OBJC_IVAR___DOCItemInfoContentViewController_actionManager] = a5;
  }

  else
  {
    v6[OBJC_IVAR___DOCItemInfoContentViewController_showsActionsView] = 0;
    v23 = [objc_allocWithZone(DOCActionManager) init];
    *&v6[OBJC_IVAR___DOCItemInfoContentViewController_actionManager] = v23;
  }

  v35.receiver = v6;
  v35.super_class = ObjectType;
  v24 = a5;
  v25 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  DOCItemInfoContentViewController.setupNodeObserver()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249B9FA70;
  v27 = type metadata accessor for UITraitDisplayScale();
  v28 = MEMORY[0x277D74B68];
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = type metadata accessor for UITraitUserInterfaceStyle();
  v30 = MEMORY[0x277D74BF0];
  *(v26 + 48) = v29;
  *(v26 + 56) = v30;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  if (([v21 isFilesApp] & 1) == 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UIViewController.forcefullyRegisterForIconStyleChanges(with:)();
  }

  swift_unknownObjectRelease();
  return v25;
}

uint64_t DOCItemInfoContentViewController.setupNodeObserver()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v5);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x277D84F90];
  v7 = dispatch_group_create();
  v37 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  result = swift_beginAccess();
  v31 = v0;
  v10 = *&v0[v8];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    v23 = v31;
    *(v22 + 16) = v38;
    *(v22 + 24) = v23;
    aBlock[4] = partial apply for closure #2 in DOCItemInfoContentViewController.setupNodeObserver();
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_273_0;
    v24 = _Block_copy(aBlock);

    v25 = v23;
    v26 = v32;
    static DispatchQoS.unspecified.getter();
    v39 = MEMORY[0x277D84F90];
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v27 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v24);

    (*(v2 + 8))(v27, v1);
    (*(v33 + 8))(v26, v35);
  }

  result = __CocoaSet.count.getter();
  v11 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v29 = v2;
    v30 = v1;
    v36 = v10 & 0xC000000000000001;

    v12 = 0;
    v13 = v10;
    v14 = v38;
    do
    {
      if (v36)
      {
        v15 = MEMORY[0x24C1FC540](v12, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      ++v12;
      dispatch_group_enter(v7);
      v16 = swift_allocObject();
      v17 = v37;
      v16[2] = v37;
      v16[3] = v14;
      v16[4] = v7;
      swift_getObjectType();
      v18 = swift_allocObject();
      v18[2] = partial apply for closure #1 in DOCItemInfoContentViewController.setupNodeObserver();
      v18[3] = v16;
      v18[4] = v15;
      v19 = v17;

      v20 = v7;

      swift_unknownObjectRetain();
      DOCNode.fpfs_fetchFINode(completion:)(partial apply for closure #1 in DOCItemInfoContentViewController.fetchFINodeIfPossible(_:completion:), v18);
      swift_unknownObjectRelease();

      v10 = v13;
    }

    while (v11 != v12);

    v2 = v29;
    v1 = v30;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void DOCItemInfoContentViewController.updateThumbnail(force:)(char a1)
{
  v2 = v1;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v4);
  v55 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v6);
  v53 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTime();
  v52 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59, v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v51 - v13;
  v15 = [v1 traitCollection];
  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v65 = static UITraitCollection.Traits.displayScale;
  v66 = qword_27EEE9C90;
  v16 = one-time initialization token for userInterfaceStyle;

  if (v16 != -1)
  {
    swift_once();
  }

  v67 = static UITraitCollection.Traits.userInterfaceStyle;
  v68 = qword_27EEE9CA8;
  *aBlock = 0;
  *&aBlock[8] = 0xE000000000000000;

  _StringGuts.grow(_:)(18);

  *aBlock = 0x6172287469617254;
  *&aBlock[8] = 0xEF3A65756C615677;
  v64[0] = 0;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v17);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v18 = *aBlock;
  *aBlock = 0;
  *&aBlock[8] = v18;
  v20 = *(&v65 + 1);
  v19 = v66;
  v21 = v65;

  specialized OptionSet<>.insert(_:)(v64, v21, v20, v19);

  v23 = *(&v67 + 1);
  v22 = v68;
  v24 = v67;

  specialized OptionSet<>.insert(_:)(v64, v24, v23, v22);

  swift_arrayDestroy();
  v25 = UITraitCollection.doc_hasSpecified(_:)(aBlock);

  if (v25)
  {
    v26 = DOCItemInfoContentViewController.thumbnailView.getter();
    v27 = MEMORY[0x277D85000];
    v28 = (*((*MEMORY[0x277D85000] & *v26) + 0x120))();
    v30 = v29;

    if ((v28 != 0.0 || v30 != 0.0) && ((a1 & 1) != 0 || *&v2[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize] != v28 || *&v2[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize + 8] != v30))
    {
      v31 = &v2[OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize];
      *v31 = v28;
      v31[1] = v30;
      v32 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView;
      v33 = *&v2[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView];
      v34 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
      swift_beginAccess();
      v35 = *((*v27 & *v33) + 0x148);
      v36 = v33;

      v35(v37);

      v38 = OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce;
      if ((v2[OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce] & 1) == 0)
      {
        v39 = *&v2[v32];
        v40 = *((*v27 & *v39) + 0xF0);
        v41 = v39;
        v42 = v40();

        if (v42 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_12:
            if ((v42 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x24C1FC540](0, v42);
            }

            else
            {
              if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_31;
              }

              v35 = *(v42 + 32);
              swift_unknownObjectRetain();
            }

            if ([v35 isRepresentativeIcon])
            {
              goto LABEL_32;
            }

            v42 = *&v2[v34];
            if (!(v42 >> 62))
            {
              if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_18:
                if ((v42 & 0xC000000000000001) != 0)
                {

                  v43 = MEMORY[0x24C1FC540](0, v42);
                }

                else
                {
                  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v43 = *(v42 + 32);
                  swift_unknownObjectRetain();
                }

                if (([v43 isFolder] & 1) == 0)
                {
                  v2[v38] = 1;
                  [*&v2[v32] setAlpha_];
                  [v35 addListener_];
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
                  v51[1] = v43;
                  v44 = static OS_dispatch_queue.main.getter();
                  static DispatchTime.now()();
                  + infix(_:_:)();
                  v52 = *(v52 + 8);
                  (v52)(v11, v59);
                  v45 = swift_allocObject();
                  *(v45 + 16) = v2;
                  *(v45 + 24) = v35;
                  v62 = partial apply for closure #1 in DOCItemInfoContentViewController.updateThumbnail(force:);
                  v63 = v45;
                  *aBlock = MEMORY[0x277D85DD0];
                  *&aBlock[8] = 1107296256;
                  *&aBlock[16] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                  v61 = &block_descriptor_240;
                  v46 = _Block_copy(aBlock);
                  v47 = v2;
                  swift_unknownObjectRetain();

                  v48 = v53;
                  static DispatchQoS.unspecified.getter();
                  *aBlock = MEMORY[0x277D84F90];
                  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  v49 = v55;
                  v50 = v58;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  MEMORY[0x24C1FB940](v14, v48, v49, v46);
                  _Block_release(v46);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  (*(v57 + 8))(v49, v50);
                  (*(v54 + 8))(v48, v56);
                  (v52)(v14, v59);
                  return;
                }

                swift_unknownObjectRelease();
              }

LABEL_32:
              swift_unknownObjectRelease();
              goto LABEL_33;
            }

LABEL_31:
            if (__CocoaSet.count.getter())
            {
              goto LABEL_18;
            }

            goto LABEL_32;
          }
        }

        else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }
      }

LABEL_33:
      [*&v2[v32] setAlpha_];
    }
  }
}

uint64_t closure #2 in DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v23 = v9;
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v14, v9);
  aBlock[4] = partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_258;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v17, v8, v4, v20);
  _Block_release(v20);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  return (v19)(v17, v23);
}

void closure #1 in closure #2 in DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = DOCItemInfoContentViewController.thumbnailView.getter();
    swift_beginAccess();
    v3 = *((*MEMORY[0x277D85000] & *v2) + 0x148);

    v3(v4);
  }
}

id DOCItemInfoContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DOCItemInfoContentViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v0 setView_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR___DOCItemInfoContentViewController_scrollView];
  [v2 addSubview_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249BA0470;
  v16 = [v4 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v20;
  v21 = [v4 leadingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v15 + 40) = v25;
  v26 = [v4 trailingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v15 + 48) = v30;
  v31 = [v4 bottomAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 bottomAnchor];

  v36 = [v31 constraintEqualToAnchor_];
  *(v15 + 56) = v36;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, sel_viewDidLoad, v11);
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    v66 = v13;
    v67 = v9;
    v68 = v7;
    v69 = v8;
    v70 = v4;
    v71 = v3;
    [objc_opt_self() itemInfoView];
    swift_getObjCClassMetadata();
    v16 = [swift_getObjCClassFromMetadata() infoContainer];
    if (!v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = MEMORY[0x24C1FAD20](v17);
    }

    [v15 setAccessibilityIdentifier_];

    v18 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
    [v18 setNumberOfLines_];

    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel] setLineBreakMode_];
    v19 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
    [v19 setNumberOfLines_];

    v20 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel] setAdjustsFontForContentSizeCategory_];
    [*&v1[v20] setTextAlignment_];
    v21 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
    [v21 setNumberOfLines_];

    v22 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView] setAdjustsFontForContentSizeCategory_];
    [*&v1[v22] setTextAlignment_];
    v23 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
    [v23 setNumberOfLines_];

    v24 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel] setAdjustsFontForContentSizeCategory_];
    [*&v1[v24] setTextAlignment_];
    v25 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController_rootContentView] setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v1[v25] setLayoutMargins_];
    DOCItemInfoContentViewController.installRootContentViewElements()();
    DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
    v26 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController_scrollView];
    [v26 addSubview_];
    [v26 setContentInsetAdjustmentBehavior_];
    [v26 setAlwaysBounceVertical_];
    [v26 setAlwaysBounceHorizontal_];
    [v26 setDelegate_];
    [v26 setClipsToBounds_];
    v27 = [*&v1[v25] widthAnchor];
    v28 = [v26 frameLayoutGuide];
    v29 = [v28 widthAnchor];

    v30 = [v27 constraintEqualToAnchor_];
    type metadata accessor for UILayoutPriority(0);
    LODWORD(v73) = 1148846080;
    v74 = 1065353216;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v31) = aBlock[0];
    [v30 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_249BA0D00;
    v33 = [*&v1[v25] topAnchor];
    v34 = [v26 contentLayoutGuide];
    v35 = [v34 topAnchor];

    v36 = [v33 constraintEqualToAnchor_];
    *(v32 + 32) = v36;
    v37 = [*&v1[v25] bottomAnchor];
    v38 = [v26 contentLayoutGuide];
    v39 = [v38 bottomAnchor];

    v40 = [v37 constraintEqualToAnchor_];
    *(v32 + 40) = v40;
    v41 = [*&v1[v25] leadingAnchor];
    v42 = [v26 contentLayoutGuide];
    v43 = [v42 leadingAnchor];

    v44 = [v41 constraintEqualToAnchor_];
    *(v32 + 48) = v44;
    v45 = [*&v1[v25] trailingAnchor];
    v46 = [v26 contentLayoutGuide];
    v47 = [v46 trailingAnchor];

    v48 = [v45 constraintEqualToAnchor_];
    *(v32 + 56) = v48;
    *(v32 + 64) = v30;
    v73 = v32;
    v49 = v30;
    v50 = DOCItemInfoContentViewController.thumbnailView.getter();
    v51 = [v50 heightAnchor];

    v52 = [v26 frameLayoutGuide];
    v53 = [v52 heightAnchor];

    v54 = [v51 constraintLessThanOrEqualToAnchor:v53 multiplier:0.333333333];
    MEMORY[0x24C1FB090]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = objc_opt_self();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 activateConstraints_];

    DOCItemInfoContentViewController.updateInfoViews()();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v57 = static OS_dispatch_queue.main.getter();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DOCItemInfoContentViewController.viewDidLoad();
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_55;
    v59 = _Block_copy(aBlock);

    v60 = v66;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v61 = v68;
    v62 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v60, v61, v59);
    _Block_release(v59);

    (*(v70 + 8))(v61, v62);
    (*(v67 + 8))(v60, v69);
    v63 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
    swift_beginAccess();
    v64 = *&v1[v63];
    if (v64 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_12;
      }
    }

    else if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:

      return;
    }

    if ((v64 & 0xC000000000000001) != 0)
    {

      MEMORY[0x24C1FC540](0, v64);

      goto LABEL_11;
    }

    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
LABEL_11:
      swift_getObjectType();
      v65 = swift_allocObject();
      swift_unknownObjectWeakInit();

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #2 in DOCItemInfoContentViewController.viewDidLoad(), v65);
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

id DOCItemInfoContentViewController.updateInfoViews()()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  v89 = v3;
  v8 = DOCItemInfoContentViewController.metadataView.getter();
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v10 = *((*MEMORY[0x277D85000] & *v8) + 0xC8);

  v10(v11);

  v12 = *MEMORY[0x277CC6050];
  v13 = *&v1[v9];

  LOBYTE(v12) = specialized static DOCActionManager.canPerform(_:on:)(v12, v13);

  v14 = &selRef_initWithFrame_;
  if (v12)
  {
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
      v88 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v90[0] = v21;
      *v20 = 136315138;
      v87 = v2;
      v22 = v9;
      v23 = *&v1[v9];

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v25 = MEMORY[0x24C1FB0D0](v23, v24);
      v27 = v26;

      v28 = v25;
      v14 = &selRef_initWithFrame_;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v90);

      *(v20 + 4) = v29;
      v9 = v22;
      v2 = v87;
      _os_log_impl(&dword_2493AC000, v17, v18, "[Info View]: Nodes can be tagged: %s - showing Tag section", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      v30 = v20;
      v6 = v88;
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    v31 = DOCItemInfoContentViewController.tagsCollectionView.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v32.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 setNodes_];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = v1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v88 = v6;
      v38 = v37;
      v87 = swift_slowAlloc();
      v90[0] = v87;
      *v38 = 136315138;
      v39 = *&v1[v9];

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v41 = v2;
      v42 = v9;
      v43 = MEMORY[0x24C1FB0D0](v39, v40);
      v45 = v44;

      v46 = v43;
      v9 = v42;
      v2 = v41;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, v90);
      v14 = &selRef_initWithFrame_;

      *(v38 + 4) = v47;
      _os_log_impl(&dword_2493AC000, v35, v36, "[Info View]: Nodes CANNOT be tagged: %s - hidding Tag section", v38, 0xCu);
      v48 = v87;
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x24C1FE850](v48, -1, -1);
      v49 = v38;
      v6 = v88;
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    v50 = DOCItemInfoContentViewController.metadataTitleRowSeparator.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator);
    [v50 v14[459]];

    v51 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
    [v51 v14[459]];

    v32.super.isa = DOCItemInfoContentViewController.tagsCollectionView.getter();
    [v32.super.isa v14[459]];
  }

  v52 = *&v1[v9];
  if (v52 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_30;
    }
  }

  else if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_30;
  }

  v53 = *&v1[v9];
  if (v53 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_17;
    }

LABEL_30:
    v63 = DOCItemInfoContentViewController.downloadButton.getter();
    [v63 v14[459]];

    goto LABEL_31;
  }

  result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v53 & 0xC000000000000001) != 0)
  {

    v54 = MEMORY[0x24C1FC540](0, v53);
  }

  else
  {
    if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v54 = *(v53 + 32);
    swift_unknownObjectRetain();
  }

  v55 = [v54 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  isa = [*&v1[v56] documentContentTypes];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v58 = UTType._bridgeToObjectiveC()().super.isa;
  v59 = [(objc_class *)v58 doc_conformsToAnyInContentTypes:isa];

  (*(v89 + 8))(v6, v2);
  if (v59 & 1) != 0 || ([v54 isFolder])
  {
    v60 = 1;
  }

  else
  {
    v60 = [*&v1[v56] isFilesApp];
  }

  v61 = DOCItemInfoContentViewController.downloadButton.getter();
  [v61 setNode_];

  v62 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton;
  [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton] setNodeCanBeOpened_];
  [*&v1[v62] updateDownloadState];
  [*&v1[v62] v14[459]];
  swift_unknownObjectRelease();
LABEL_31:
  v64 = DOCItemInfoContentViewController.titleText.getter();
  DOCItemInfoContentViewController.updateTitleWithImage(forText:)(v64, v65);

  v66 = DOCItemInfoContentViewController.kindAndSizeString()();
  if (v67)
  {
    v68 = v66;
    v69 = v67;
    v70 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
    v71 = MEMORY[0x24C1FAD20](v68, v69);

    [v70 setText_];

    [*&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView] v14[459]];
  }

  else
  {
    v72 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView);
    [v72 v14[459]];
  }

  v73 = *&v1[v9];
  if (v73 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_44;
    }
  }

  else if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_44;
  }

  v74 = *&v1[v9];
  if (!(v74 >> 62))
  {
    result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

LABEL_44:
    v81 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
    [v81 v14[459]];
    goto LABEL_45;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_38:
  if ((v74 & 0xC000000000000001) == 0)
  {
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_41;
    }

LABEL_56:
    __break(1u);
    return result;
  }

  MEMORY[0x24C1FC540](0, v74);

LABEL_41:
  swift_getObjectType();
  v75 = DOCNode.syncErrorDescription.getter();
  if (!v76)
  {
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v77 = v75;
  v78 = v76;
  v79 = DOCItemInfoContentViewController.syncingErrorLabel.getter();
  [v79 v14[459]];

  v80 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel];
  v81 = MEMORY[0x24C1FAD20](v77, v78);

  [v80 setText_];
  swift_unknownObjectRelease();

LABEL_45:
  v82 = DOCItemInfoContentViewController.actionsView.getter();
  if (v82)
  {
    v83 = v82;
    v84 = *((*MEMORY[0x277D85000] & *v82) + 0x120);

    v84(v85);
  }

  DOCItemInfoContentViewController.updateThumbnail(force:)(1);
  DOCItemInfoContentViewController.updateShowMoreButtonVisibility()();
  DOCItemInfoContentViewController.updateShareView()();
  DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
  return DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()();
}

void closure #1 in DOCItemInfoContentViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v7[3] = type metadata accessor for DOCItemInfoContentViewController();
      v7[0] = v1;
      v5 = *(v3 + 8);
      v6 = v1;
      v5(v7, 1, 1, 0, ObjectType, v3);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }
}

void closure #2 in DOCItemInfoContentViewController.viewDidLoad()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for FINodeEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v24 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      v17 = a1;
      FINodeEntity.init(item:)(v17, v14);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      outlined init with copy of FINodeEntity(v14, v10);
      type metadata accessor for MainActor();
      v19 = v16;
      v20 = static MainActor.shared.getter();
      v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v20;
      v22[3] = v23;
      v22[4] = v19;
      outlined init with take of FINodeEntity(v10, v22 + v21);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad(), v22);

      outlined destroy of FINodeEntity(v14);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for FINodeEntity();
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16EntityIdentifierVSgMd);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad(), v7, v6);
}

id closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()()
{
  result = [*(v0 + 16) view];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    outlined init with copy of FINodeEntity(v5, v4);
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
    EntityIdentifier.init<A>(for:)();
    v6 = type metadata accessor for EntityIdentifier();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    UIView.appEntityIdentifier.setter();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCItemInfoContentViewController.fetchFINodeIfPossible(_:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a1;
    a3();
  }

  else
  {
    (a3)(a5);
  }
}

void closure #1 in DOCItemInfoContentViewController.setupNodeObserver()(int a1, id a2, uint64_t a3, NSObject *a4)
{
  [a2 lock];
  swift_beginAccess();
  v7 = swift_unknownObjectRetain();
  MEMORY[0x24C1FB090](v7);
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [a2 unlock];
  dispatch_group_leave(a4);
}

uint64_t closure #2 in DOCItemInfoContentViewController.setupNodeObserver()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  type metadata accessor for DOCMultiNodeObserver();
  swift_allocObject();

  v9 = DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(v8, 1, 0.25);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(*v9 + 288);

  v11(partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.setupNodeObserver(), v10);

  (*(v4 + 8))(v7, v3);

  v12 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  v13 = swift_beginAccess();
  if (*(a2 + v12) == 1)
  {
    (*(*v9 + 304))(v13);
  }

  DOCItemInfoContentViewController.changesReceivedFrom(nodeObserver:)(v9);
  v14 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
  swift_beginAccess();
  *(a2 + v14) = v9;
}

void closure #1 in closure #2 in DOCItemInfoContentViewController.setupNodeObserver()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCItemInfoContentViewController.changesReceivedFrom(nodeObserver:)(a1);
  }
}

uint64_t DOCItemInfoContentViewController.changesReceivedFrom(nodeObserver:)(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 136))();
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    v6 = *(v1 + v4);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    *(v2 + v4) = v3;

    goto LABEL_17;
  }

  v11 = __CocoaSet.count.getter();
  v6 = *(v1 + v4);
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_32;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_33:

    MEMORY[0x24C1FC540](0, v6);

    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_8:
    swift_getObjectType();
    v7 = DOCNode.isFPItem.getter();
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_18;
    }

    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v3);
    if (All)
    {
      v9 = All;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    if (v9 >> 62)
    {
      goto LABEL_39;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v10 = v9;
    while (1)
    {

      *(v2 + v4) = v10;
LABEL_17:

LABEL_18:
      if (v3 >> 62)
      {
        if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_29;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v3 + 32);
        swift_unknownObjectRetain();
        goto LABEL_23;
      }

      __break(1u);
LABEL_39:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v10 = _bridgeCocoaArray<A>(_:)();
    }
  }

  __break(1u);
LABEL_35:
  v12 = MEMORY[0x24C1FC540](0, v3);
LABEL_23:

  *(v2 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance) = 10;
  swift_unknownObjectRetain();
  v13 = DOCItemInfoContentViewController.thumbnailView.getter();
  v14 = [v13 interactions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v19 = __CocoaSet.count.getter();

    if (v19)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
LABEL_25:
    v17 = *(v2 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
    DOCImageContainerFittingView.enableDragInteraction(with:)(v12);
  }

LABEL_26:
  swift_unknownObjectRelease();
LABEL_30:
  DOCItemInfoContentViewController.updateInfoViews()();
  return swift_unknownObjectRelease();
}

void DOCImageContainerFittingView.enableDragInteraction(with:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (DOCNode.supportsDrag.getter())
  {
    v4 = type metadata accessor for DOCDragInteraction();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5818DOCDragInteraction_node] = a1;
    v10.receiver = v5;
    v10.super_class = v4;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v10, sel_initWithDelegate_, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249BA0290;
    *(v7 + 32) = v6;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setInteractions_];
  }
}

void DOCItemInfoContentViewController.updateShareView()()
{
  v3 = v0;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_31;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_31;
  }

  v6 = *(v3 + v4);
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_5:
      if ((v6 & 0xC000000000000001) != 0)
      {

        v1 = MEMORY[0x24C1FC540](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v1 = *(v6 + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      DOCNode.collaborationType.getter(&v37);
      if (v37 == 2)
      {
        v13 = DOCNode.documentAttributes.getter();
        if (v13)
        {
          v2 = v13;
          type metadata accessor for DOCAttributionPillView();
          v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v14 = [v2 sender];
          DOCAttributionPillView.configure(with:)(v14);

          DOCItemInfoContentViewController.menuForAttributionView.getter();
          (*((*MEMORY[0x277D85000] & *v11) + 0xD8))();
          [v11 addTarget:v3 action:sel_didTapAttributionView forControlEvents:64];
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      if (v37 == 3 || (v7 = [v1 fpfs_fpItem]) == 0)
      {
LABEL_18:
        v21 = [v1 isShared];
        v22 = DOCItemInfoContentViewController.shareView.getter();
        v23 = v22;
        if (v21)
        {
          [v22 setHidden_];

          v24 = *(v3 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView);
          if (v24)
          {
            [v24 setHidden_];
          }

          v25 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          [v25 setHidden_];

          v26 = *(v3 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          v38 = 1;
          v37 = 0;
          v27 = v26;
          v28 = DOCNode.localizedSharingStatusDescription(type:options:)(&v38, &v37);
          if (v29)
          {
            v30 = v29;
          }

          else
          {
            v28 = 0;
            v30 = 0xE000000000000000;
          }

          v31 = MEMORY[0x24C1FAD20](v28, v30);

          [v27 setText_];
          swift_unknownObjectRelease();
        }

        else
        {
          [v22 setHidden_];

          v32 = *(v3 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView);
          if (v32)
          {
            [v32 setHidden_];
          }

          v33 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          [v33 setHidden_];

          [*(v3 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) setText_];
          swift_unknownObjectRelease();
        }

        return;
      }

      v2 = v7;
      if (one-time initialization token for shared == -1)
      {
LABEL_12:
        swift_beginAccess();
        v8 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
        v9 = static DOCCollaborationHighlightManager.shared;
        v10 = v8(v2);

        if (v10)
        {
          v11 = [objc_allocWithZone(MEMORY[0x277CDC660]) init];
          v12 = v10;
          [v11 setHighlight_];

LABEL_16:
          v15 = v11;
          v16 = DOCItemInfoContentViewController.shareView.getter();
          [v16 setHidden_];

          v17 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
          [v17 setText_];

          [*(v3 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) setHidden_];
          v18 = OBJC_IVAR___DOCItemInfoContentViewController_attributionView;
          [*(v3 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView) removeFromSuperview];
          v19 = *(v3 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView);
          [v19 addArrangedSubview_];
          swift_unknownObjectRelease();

          v20 = *(v3 + v18);
          *(v3 + v18) = v11;

          return;
        }

        goto LABEL_18;
      }

LABEL_36:
      swift_once();
      goto LABEL_12;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_31:
  v34 = DOCItemInfoContentViewController.shareView.getter();
  [v34 setHidden_];

  v35 = *(v3 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView);
  if (v35)
  {
    [v35 setHidden_];
  }

  v36 = DOCItemInfoContentViewController.shareStatusLabel.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel);
  [v36 setHidden_];

  [*(v3 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) setText_];
}

void DOCItemInfoContentViewController.menuForAttributionView.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v29 = v4;
  v5 = *MEMORY[0x277D05F38];
  v6 = v3;

  v30 = v1;
  v8 = DOCActionManager.collaborationActions(for:presentingViewController:availability:)(v7, v1, v5);

  v31 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    v27 = v8 & 0xFFFFFFFFFFFFFF8;
    v28 = v8 & 0xC000000000000001;
    v25 = i;
    v26 = v8;
    while (1)
    {
      if (v28)
      {
        v11 = MEMORY[0x24C1FC540](v10, v8);
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = *(v30 + v29);

      v15 = [v12 localizedTitle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v12 image];
      v17 = 2 * ([v12 actionStyle] == 1);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = v12;
      v19[4] = v14;
      v24._rawValue = v17;
      v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v20);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v10;
      v8 = v26;
      if (v13 == v25)
      {
        preferredElementSize = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  preferredElementSize = MEMORY[0x277D84F90];
LABEL_17:

  if (preferredElementSize >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      goto LABEL_19;
    }
  }

  else if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_19:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, v22, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v24);
    return;
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewWillLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillLayoutSubviews);
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow, closure #1 in DOCItemInfoContentViewController.metadataTitleRow.getter);
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v4 setAlignment_];

  [*&v0[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow] setAxis_];
  v7 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow, closure #1 in DOCItemInfoContentViewController.tagsTitleRow.getter);
  [v7 setAlignment_];

  [*&v0[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow] setAxis_];
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    v5 = v4;

    if (one-time initialization token for defaultLayoutMargins != -1)
    {
      swift_once();
    }

    v6 = v5 - (*(&static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins + 1) + *&qword_27EEEA218);
    v7 = DOCItemInfoContentViewController.thumbnailView.getter();
    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x120))();

    if (v6 > 0.0 && v6 != v9)
    {
      v11 = *&v1[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView];
      v12 = *((*v8 & *v11) + 0x128);
      v13 = v11;
      v12(v6, v6);

      DOCItemInfoContentViewController.updateThumbnail(force:)(0);
    }
  }

  else
  {
    __break(1u);
  }
}

double DOCItemInfoContentViewController.layoutHeight(forWidth:)(double a1, double a2, double a3, double a4)
{
  LODWORD(a3) = 1148846080;
  LODWORD(a4) = 1112014848;
  [*(v4 + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{a3, a4}];
  return v5;
}

uint64_t DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return result;
    }
  }

  v4 = *&v0[v1];
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  v6 = OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController;
  v7 = *&v0[OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController];
  if (v7 || (v8 = [objc_allocWithZone(type metadata accessor for DOCOpenWithMenuController()) init], v9 = *&v0[v6], *&v0[v6] = v8, v9, (v7 = *&v0[v6]) != 0))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v11 = *((*MEMORY[0x277D85000] & *v7) + 0x98);
    v12 = v7;
    v11(v5, v0, partial apply for closure #1 in DOCItemInfoContentViewController.updateAlwaysOpenWithMenu(), v10);
  }

  return swift_unknownObjectRelease();
}

void closure #1 in DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu);
  *(a2 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu) = a1;
  v3 = a1;

  v4 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v4) + 0x1C8))();
}

id DOCItemInfoContentViewController.titleText.getter()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = *(v0 + v1);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return 0;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return 0;
      }
    }

    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = MEMORY[0x24C1FC540](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v14 = *(v13 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if (![v14 isRootItem])
    {
      countAndFlagsBits = DOCNode.displayName(withHiddenPathExtension:)(0)._countAndFlagsBits;
      goto LABEL_17;
    }

    v15 = [v14 domainDisplayName];
    if (v15)
    {
      v16 = v15;
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
      swift_unknownObjectRelease();
      return countAndFlagsBits;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v18._object = 0x8000000249BDC110;
    v5._countAndFlagsBits = 0x6D65744920756C25;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE900000000000073;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    v9 = *(v0 + v1);
    if (v9 >> 62)
    {
      v17 = v8;
      v10 = __CocoaSet.count.getter();
      v8 = v17;
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x277D83C10];
    *(v8 + 56) = MEMORY[0x277D83B88];
    *(v8 + 64) = v11;
    *(v8 + 32) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    return countAndFlagsBits;
  }

LABEL_26:
  __break(1u);
  return result;
}

void DOCItemInfoContentViewController.updateTitleWithImage(forText:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v18 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
    v24 = 0;
LABEL_10:
    v25 = v24;
    [v18 setText_];
    goto LABEL_11;
  }

  DOCItemInfoContentViewController.statusAppearance.getter(&v26);
  v4 = specialized DOCItemInfoContentViewController.Metrics.fileNameFont.getter();
  v5 = DOCNodeStatusAppearance.imageTextAttachment(with:)(v4);

  if (!v5)
  {
    v18 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
    v24 = MEMORY[0x24C1FAD20](a1, a2);
    goto LABEL_10;
  }

  if (one-time initialization token for bidiIsolateBeginFSI != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x277D85000];
  v26 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.bidiIsolateBeginFSI) + 0x58))();
  v27 = v7;

  MEMORY[0x24C1FAEA0](a1, a2);

  v9 = v26;
  v8 = v27;
  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    swift_once();
  }

  v10 = (*((*v6 & *static DOCUnicode.bidiIsolateEnd) + 0x58))();
  v12 = v11;
  v26 = v9;
  v27 = v8;

  MEMORY[0x24C1FAEA0](v10, v12);

  MEMORY[0x24C1FAEA0](32, 0xE100000000000000);

  v13 = v26;
  v14 = v27;
  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = MEMORY[0x24C1FAD20](v13, v14);

  v17 = [v15 initWithString_];

  v18 = v17;
  v19 = [v18 length];
  v20 = [objc_opt_self() attributedStringWithAttachment_];
  [v18 appendAttributedString_];
  v21 = *MEMORY[0x277D740C0];
  v22 = [objc_opt_self() secondaryLabelColor];
  [v18 addAttribute:v21 value:v22 range:{v19, 1}];

  v23 = DOCItemInfoContentViewController.filenameTitleLabel.getter();
  [v23 setAttributedText_];

  v25 = v18;
LABEL_11:
}

id DOCItemInfoContentViewController.kindAndSizeString()()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    return 0;
  }

LABEL_3:
  v8 = *(v0 + v6);
  if (v8 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x24C1FC540](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(v8 + 32);
    swift_unknownObjectRetain();
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = result;
  v12.value._object = 0xEB00000000656C62;
  v30._object = 0x8000000249BD0910;
  v13._countAndFlagsBits = 0x656D756C6F56;
  v30._countAndFlagsBits = 0xD000000000000058;
  v13._object = 0xE600000000000000;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v30);

  v15 = String.lowercased()();
  countAndFlagsBits = v15._countAndFlagsBits;
  object = v15._object;

  swift_getObjectType();
  if (DOCNode.areDiskPropertiesSupported.getter())
  {
    goto LABEL_14;
  }

  v18 = [v10 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  countAndFlagsBits = UTType.localizedDescription.getter();
  v20 = v19;
  (*(v2 + 8))(v5, v1);
  if (v20)
  {
    object = v20;
    goto LABEL_14;
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v21 = result;
  v31._object = 0x8000000249BD08D0;
  v22._countAndFlagsBits = 0x746E656D75636F44;
  v22._object = 0xE800000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000012;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v31);
  countAndFlagsBits = v25._countAndFlagsBits;
  object = v25._object;

LABEL_14:
  if ([v10 isFolder])
  {
    swift_unknownObjectRelease();
    return countAndFlagsBits;
  }

  else
  {
    v26 = DOCNode.localizedSizeDescription()();
    v28 = countAndFlagsBits;
    v29 = object;
    MEMORY[0x24C1FAEA0](2108704, 0xE300000000000000);
    MEMORY[0x24C1FAEA0](v26._countAndFlagsBits, v26._object);
    swift_unknownObjectRelease();

    return v28;
  }
}

void DOCItemInfoContentViewController.updateShowMoreButtonVisibility()()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_18;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_18;
  }

  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = DOCItemInfoContentViewController.showMoreMetadataButton.getter();
    [v10 setHidden_];

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x24C1FC540](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  if ([v4 isCloudItem])
  {
    v5 = [v4 isDownloaded] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = DOCItemInfoContentViewController.metadataView.getter();
  v7 = (*((*MEMORY[0x277D85000] & *v6) + 0x188))();

  if (v7 == 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 | v7 ^ 1;
  }

  v9 = DOCItemInfoContentViewController.showMoreMetadataButton.getter();
  [v9 setHidden_];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCItemInfoContentViewController.doc_startPreheatIfNecessary()()
{
  if (*(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) == 1)
  {
    v1 = v0;
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    v3 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v10);

    if (v10)
    {
    }

    else
    {
      swift_dynamicCastObjCProtocolUnconditional();
      v4 = static UIViewController.associatedObjectStorageKey;
      v5 = v1;
      v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v5, v4);
      KeyPath = swift_getKeyPath();
      type metadata accessor for DOCPresentationPreheatController();
      v8 = swift_allocObject();
      *(v8 + 16) = 0x3FE0000000000000;
      swift_unknownObjectWeakInit();
      *(v8 + 32) = MEMORY[0x277D84F90];
      *(v8 + 40) = 0;
      swift_unknownObjectWeakAssign();
      v10 = v8;
      (*((*v3 & *v6) + 0x80))(&v10, KeyPath);
    }

    v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v3 & *v9) + 0x78))(&v10);

    if (v10)
    {
      DOCPresentationPreheatController.endWithState(_:)(2);
    }
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  [(UIWindow_optional *)&v5 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    DOCItemInfoContentViewController.updateThumbnail(force:)(0);
  }
}

uint64_t closure #1 in DOCItemInfoContentViewController.updateThumbnail(force:)(uint64_t a1, uint64_t a2)
{
  v4 = DOCItemInfoContentViewController.thumbnailView.getter();
  v5 = (*((*MEMORY[0x277D85000] & *v4) + 0xF0))();

  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
  }

  if (v7 == a2)
  {
    [*(a1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) setAlpha_];
  }

  return swift_unknownObjectRelease();
}

uint64_t DOCItemInfoContentViewController.thumbnailLoaded(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  swift_unknownObjectRetain();
  v4 = v1;
  DOCRunInMainThread(_:)();
}

id closure #1 in DOCItemInfoContentViewController.thumbnailLoaded(_:)(void *a1, uint64_t a2)
{
  result = [a1 isRepresentativeIcon];
  if (!result)
  {
    return result;
  }

  v5 = DOCItemInfoContentViewController.thumbnailView.getter();
  v6 = (*((*MEMORY[0x277D85000] & *v5) + 0xF0))();

  if (v6 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

  if (v7 == a1)
  {
    [*(a2 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) setAlpha_];
    [a1 removeListener_];
  }

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v27.receiver = v2;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewWillAppear_, a1);
  v4 = [v2 presentedViewController];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DOCPreviewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = [v6 transitionCoordinator];
      if (v7)
      {
        v8 = v7;
        v9 = DOCItemInfoContentViewController.thumbnailView.getter();
        (*((*MEMORY[0x277D85000] & *v9) + 0xB8))(1);

        if ([v8 isAnimated])
        {
          if ([v8 isInteractive])
          {
            v10 = swift_allocObject();
            *(v10 + 16) = v2;
            v25 = partial apply for closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:);
            v26 = v10;
            aBlock = MEMORY[0x277D85DD0];
            v22 = 1107296256;
            v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v24 = &block_descriptor_19_4;
            v11 = _Block_copy(&aBlock);
            v12 = v2;

            [v8 notifyWhenInteractionChangesUsingBlock_];
          }

          else
          {
            v19 = swift_allocObject();
            *(v19 + 16) = v2;
            v25 = partial apply for closure #2 in DOCItemInfoContentViewController.viewWillAppear(_:);
            v26 = v19;
            aBlock = MEMORY[0x277D85DD0];
            v22 = 1107296256;
            v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v24 = &block_descriptor_13_0;
            v11 = _Block_copy(&aBlock);
            v20 = v2;

            [v8 animateAlongsideTransition:v11 completion:0];
          }

          _Block_release(v11);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }
    }
  }

LABEL_9:
  v13 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  v14 = v2[v13];
  v2[v13] = 1;
  if (v14 != 1)
  {
    v15 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    swift_beginAccess();
    v16 = *&v2[v15];
    if (v16)
    {
      v17 = *(*v16 + 304);

      v17(v18);
    }
  }
}

void closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:)(void *a1, void *a2)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v7[4] = partial apply for closure #1 in closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:);
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v7[3] = &block_descriptor_234;
    v5 = _Block_copy(v7);
    v6 = a2;

    [v3 animateWithDuration:v5 animations:0.2];
    _Block_release(v5);
  }
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.viewWillAppear(_:)()
{
  v0 = DOCItemInfoContentViewController.thumbnailView.getter();
  (*((*MEMORY[0x277D85000] & *v0) + 0xB8))(0);
}

void closure #2 in DOCItemInfoContentViewController.viewWillAppear(_:)()
{
  v0 = DOCItemInfoContentViewController.thumbnailView.getter();
  (*((*MEMORY[0x277D85000] & *v0) + 0xB8))(0);
}

Swift::Void __swiftcall DOCItemInfoContentViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidDisappear_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = a1;
    v5 = Strong;
    [Strong dismissViewControllerAnimated:v4 completion:0];
  }

  v6 = OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes;
  swift_beginAccess();
  v7 = v1[v6];
  v1[v6] = 0;
  if (v7)
  {
    v8 = OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver;
    swift_beginAccess();
    v9 = *&v1[v8];
    if (v9)
    {
      v10 = *(*v9 + 312);

      v10(v11);
    }
  }
}

void DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1)
{
  ObjectType = swift_getObjectType();

  specialized DOCItemInfoContentViewController.openSelectedNode(_:)(a1, v1, ObjectType);
}

void closure #1 in DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v8 = *&v6[v7];
      v9 = a1;
      v10 = [v8 useSharedQuickLook];
      v11 = MEMORY[0x277D85000];
      if (v10)
      {
        v10 = [v9 isFolder];
        if ((v10 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_249BA0290;
          *(v12 + 32) = v9;
          v13 = *&v6[v7];
          v14 = v9;
          v15 = [v13 sceneIdentifier];
          if (v15)
          {
            v16 = one-time initialization token for mapTable;
            v17 = v15;
            if (v16 != -1)
            {
              v28 = v17;
              swift_once();
              v17 = v28;
            }

            v18 = static DOCPreviewController.mapTable;
            v19 = v17;
            v20 = [v18 objectForKey_];
            if (!v20)
            {
              v21 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
              v20 = DOCPreviewController.init()();
              [v18 setObject:v20 forKey:v19];
            }

            v29 = v12;
            v30 = 0;
            v31 = 0;

            v22 = specialized Collection<>.firstIndex(of:)(v14, v12);
            v24 = v23;

            (*((*v11 & *v20) + 0x1C8))(&v29, v22, v24 & 1);

            outlined consume of DOCPreviewSource?(v29, v30, v31);
          }

          else
          {
            if (one-time initialization token for Source != -1)
            {
              swift_once();
            }

            static os_log_type_t.debug.getter();
            os_log(_:dso:log:type:_:)();
          }
        }
      }

      v25 = (*((*v11 & *a3) + 0x78))(v10);
      if (v25)
      {
        v26 = v25;
        swift_getObjectType();
        v27 = v9;
        specialized DOCNode.isEqualTo(node:)(v26, v27);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a3;
  v9 = *a4;
  *(v8 + 56) = *(a4 + 16);
  v10 = *(a4 + 48);
  *(v8 + 72) = *(a4 + 32);
  *(v8 + 88) = v10;
  *(v8 + 104) = *(a4 + 64);
  *(v8 + 40) = v9;
  v11 = a2;
  swift_unknownObjectRetain();
  outlined init with copy of DOCInteractionManagerContext(a4, v13);
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, char a2, void *a3, uint64_t a4)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x68))(0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  if ((a2 & 1) == 0)
  {
    ObjectType = swift_getObjectType();

    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a3, a4, a1, ObjectType);
  }
}

uint64_t closure #2 in DOCItemInfoContentViewController.openSelectedNode(_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v59 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v56[-v15];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of URL?(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = a7;
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v60[0] = v28;
      *v27 = 136315394;
      v29 = v23;
      v30 = [v29 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v60);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      v60[9] = a2;
      v35 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v36 = String.init<A>(describing:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v60);

      *(v27 + 14) = v38;
      _os_log_impl(&dword_2493AC000, v25, v26, "[Interaction] Clearing lastOpenedNode: Got a nil url from fetchURL for node: %s error: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    return (*((*MEMORY[0x277D85000] & *a4) + 0x68))(0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a6;
    v41 = *(a5 + 48);
    *(v40 + 64) = *(a5 + 32);
    *(v40 + 80) = v41;
    *(v40 + 96) = *(a5 + 64);
    v42 = *(a5 + 16);
    *(v40 + 32) = *a5;
    *(v40 + 48) = v42;
    swift_unknownObjectRetain_n();
    v43 = a4;
    outlined init with copy of DOCInteractionManagerContext(a5, v60);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.UI);
    swift_unknownObjectRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v57 = v46;
      v48 = v47;
      v58 = swift_slowAlloc();
      v60[0] = v58;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v60);
      *(v48 + 12) = 2080;
      v49 = [a6 description];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v60);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_2493AC000, v45, v57, "%s node is non-nil trying to open with node first: %s", v48, 0x16u);
      v54 = v58;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v21, a6, 0, 1, v59, closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply, v40, ObjectType);

    swift_unknownObjectRelease_n();
    return (*(v18 + 8))(v21, v17);
  }
}

void DOCItemInfoContentViewController.showAddTags(from:)(void *a1)
{
  [a1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (v13)
    {
      v14 = v13;
      [a1 bounds];
      [v14 convertRect:a1 fromCoordinateSpace:?];
      v4 = v15;
      v6 = v16;
      v8 = v17;
      v10 = v18;
    }

    else
    {
      v14 = a1;
    }

    v19 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    swift_beginAccess();
    v20 = *&v1[v19];
    swift_beginAccess();
    v21 = type metadata accessor for DOCServiceInfoViewController();
    v22 = objc_allocWithZone(v21);
    v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v20;
    v23 = objc_allocWithZone(DOCItemInfoViewController);
    v24 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = [v23 initWithNodes:isa configuration:v24 actionReporting:0];

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController;
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v26;
    v28 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v28;
    [v28 _setBuiltinTransitionStyle_];
    [*&v22[v27] displayTagView];
    v34.receiver = v22;
    v34.super_class = v21;
    v29 = objc_msgSendSuper2(&v34, sel_init);

    v30 = v29;
    [v30 setModalPresentationStyle_];
    v31 = [v30 popoverPresentationController];
    if (v31)
    {
      v32 = v31;
      [v31 setSourceView_];
    }

    v33 = [v30 popoverPresentationController];

    [v33 setSourceRect_];
    [v1 presentViewController:v30 animated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(Swift::OpaquePointer actionsToShow)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v15 = *&v1[v14];
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = &unk_249B9F000;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v25[2]._rawValue = v13;
    v25[3]._rawValue = v2;
    v25[4]._rawValue = actionsToShow._rawValue;
    v43 = partial apply for closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:);
    v44 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v40 = v17[467];
    v41 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v42 = &block_descriptor_34_2;
    v26 = _Block_copy(&aBlock);

    v27 = v2;

    v28 = v35;
    static DispatchQoS.unspecified.getter();
    v38 = MEMORY[0x277D84F90];
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v26);

    (*(v5 + 8))(v8, v4);
    (*(v36 + 8))(v28, v37);

    return;
  }

  v16 = __CocoaSet.count.getter();
  v17 = &unk_249B9F000;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v30 = v2;
    rawValue = actionsToShow._rawValue;
    v32 = v8;
    v33 = v5;
    v34 = v4;

    v18 = 0;
    v19 = v17[467];
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      ++v18;
      dispatch_group_enter(v12);
      v21 = swift_allocObject();
      v21[2]._rawValue = v12;
      v21[3]._rawValue = v20;
      v21[4]._rawValue = v13;
      v43 = partial apply for closure #1 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:);
      v44 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v40 = v19;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v42 = &block_descriptor_28_2;
      v22 = _Block_copy(&aBlock);
      v23 = v12;
      swift_unknownObjectRetain();

      [v20 fetchURL_];
      _Block_release(v22);
      swift_unknownObjectRelease();
    }

    while (v16 != v18);

    v5 = v33;
    v4 = v34;
    actionsToShow._rawValue = rawValue;
    v8 = v32;
    v2 = v30;
    v17 = &unk_249B9F000;
    goto LABEL_10;
  }

  __break(1u);
}

void closure #1 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(uint64_t a1, void *a2, NSObject *a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v35 - v21;
  outlined init with copy of URL?(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd);
    if (a2)
    {
      v23 = a2;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_249B9FA70;
      v25 = [a4 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      v29 = _convertErrorToNSError(_:)();
      *(v24 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      *(v24 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
      *(v24 + 72) = v29;
      os_log(_:dso:log:type:_:)();
    }
  }

  else
  {
    v35 = a3;
    v30 = *(v15 + 32);
    v30(v22, v13, v14);
    (*(v15 + 16))(v19, v22, v14);
    swift_beginAccess();
    v31 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      *(a5 + 16) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v31);
    }

    *(v31 + 2) = v34 + 1;
    v30(&v31[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v34], v19, v14);
    *(a5 + 16) = v31;
    (*(v15 + 8))(v22, v14);
    a3 = v35;
  }

  dispatch_group_leave(a3);
}

void closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(uint64_t a1, char *a2, unint64_t a3)
{
  v110 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v102 - v12;
  swift_beginAccess();
  v105 = a1;
  v14 = *(a1 + 16);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  v106 = a2;
  if (v15)
  {
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v17 = v19;
    v112 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = v14 + v112;
    v21 = *(v18 + 56);
    v22 = (v18 - 8);
    v111 = (v18 + 16);
    v109 = v14;

    v114 = MEMORY[0x277D84F90];
    v113 = v10;
    do
    {
      v17(v13, v20, v5);
      if (URL.startAccessingSecurityScopedResource()())
      {
        v17(v10, v13, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114[2] + 1, 1, v114);
        }

        v24 = v114[2];
        v23 = v114[3];
        if (v24 >= v23 >> 1)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v114);
        }

        (*v22)(v13, v5);
        v25 = v114;
        v114[2] = v24 + 1;
        v10 = v113;
        (*v111)(&v25[v112 + v24 * v21], v113, v5);
      }

      else
      {
        (*v22)(v13, v5);
      }

      v20 += v21;
      --v15;
    }

    while (v15);

    a2 = v106;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v114 = MEMORY[0x277D84F90];
  }

  v26 = &OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton;
  v27 = a2;
  v28 = DOCItemInfoContentViewController.shareButton.getter(&OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton, closure #1 in DOCItemInfoContentViewController.shareButton.getter);
  v29 = OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton;
  [*&v27[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton] bounds];
  v31 = UIEdgeInsetsInsetRect_0(v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v27 view];
  v39 = v110;
  if (!v38)
  {
    __break(1u);
LABEL_66:
    v108 = v38;
    v43 = v106;
LABEL_19:
    v103 = v16;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo7DOCNode_pGGMd);
    v48 = v26[79];
    v49 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
    v50 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
    v111 = (v39 & 0xC000000000000001);
    v112 = v48;
    swift_beginAccess();
    v107 = v49;
    swift_beginAccess();
    v26 = 0;
    v109 = MEMORY[0x277D84F90];
    v51 = v108;
    do
    {
      if (v111)
      {
        v58 = MEMORY[0x24C1FC540](v26, v39);
      }

      else
      {
        v58 = *(v39 + 8 * v26 + 32);
      }

      v16 = v58;
      v59 = [v58 filteringPredicate];
      v60 = *&v43[v112];
      v61 = static _DictionaryStorage.allocate(capacity:)();

      v62 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365646F4E636F64, 0xE800000000000000);
      if (v63)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v61[(v62 >> 6) + 8] |= 1 << v62;
      v64 = (v61[6] + 16 * v62);
      *v64 = 0x7365646F4E636F64;
      v64[1] = 0xE800000000000000;
      *(v61[7] + 8 * v62) = v60;
      v65 = v61[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_52;
      }

      v61[2] = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v69 = [v59 evaluateWithObject_];

      if (v69)
      {
        v70 = [objc_opt_self() activityForBrowserAction:v16 actionPerformerProxy:*&v43[v107]];
        MEMORY[0x24C1FB090]();
        if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v43 = v106;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v109 = v117;
        v52 = [v16 identifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        swift_beginAccess();
        v56 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *&v43[v50];
        *&v43[v50] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v53, v55, isUniquelyReferenced_nonNull_native);

        *&v43[v50] = v116;
        swift_endAccess();

        v39 = v110;
        v51 = v108;
      }

      v26 = (v26 + 1);
    }

    while (v51 != v26);
    v26 = &unk_27EEEA000;
    if (!v103)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v40 = v38;
  v41 = [v38 window];

  if (v41)
  {

    v42 = *&v106[v29];
    v43 = v106;
    [v41 convertRect:v42 fromCoordinateSpace:{v31, v33, v35, v37}];
    v31 = v44;
    v33 = v45;
    v35 = v46;
    v37 = v47;
    v28 = v41;
  }

  else
  {
    v43 = v106;
  }

  v117 = v16;
  v16 = (v39 >> 62);
  v26 = &unk_27EEEA000;
  v104 = v28;
  if (v39 >> 62)
  {
LABEL_54:
    v74 = v39 & 0xFFFFFFFFFFFFFF8;
    if ((v39 & 0x8000000000000000) != 0)
    {
      v73 = v39;
    }

    else
    {
      v73 = v39 & 0xFFFFFFFFFFFFFF8;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      v109 = MEMORY[0x277D84F90];
    }

    else
    {
      v38 = __CocoaSet.count.getter();
      if (v38)
      {
        if (v38 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        goto LABEL_66;
      }

      v109 = MEMORY[0x277D84F90];
    }

LABEL_31:
    v113 = __CocoaSet.count.getter();
    goto LABEL_34;
  }

  v108 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v108)
  {
    goto LABEL_19;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_33:
  v113 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v71 = v26[79];
  v72 = v106;
  swift_beginAccess();
  v73 = *&v72[v71];
  v74 = v73 & 0xFFFFFFFFFFFFFF8;
  if (v73 >> 62)
  {
LABEL_61:
    v16 = __CocoaSet.count.getter();
    goto LABEL_36;
  }

  v16 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  v39 = v73 & 0xC000000000000001;

  v75 = 0;
  v26 = &selRef__setLocationsInBrowseTab_;
  do
  {
    v76 = v75;
    if (v16 == v75)
    {
      break;
    }

    if (v39)
    {
      v77 = MEMORY[0x24C1FC540](v75, v73);
      if (__OFADD__(v76, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v75 >= *(v74 + 16))
      {
        goto LABEL_53;
      }

      v77 = *(v73 + 8 * v75 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v76, 1))
      {
LABEL_45:
        __break(1u);
        break;
      }
    }

    v78 = [objc_opt_self() defaultPermission];
    v79 = [v78 dataOwnerStateForNode_];

    swift_unknownObjectRelease();
    v75 = (v76 + 1);
  }

  while (v79 != 1);

  swift_beginAccess();

  specialized _arrayForceCast<A, B>(_:)(v80);

  if (v109 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIActivity);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIActivity);
  }

  v81 = v104;
  v82 = v16 != v76;
  v83 = v113 != 0;

  v84 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v85 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIActivity);
  v86 = Array._bridgeToObjectiveC()().super.isa;

  v87 = [v84 initWithActivityItems:v85 applicationActivities:v86];

  [v87 setSharingStyle_];
  [v87 setIsContentManaged_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIActivityTypeaGMd);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_249B9FA70;
  v89 = *MEMORY[0x277D54720];
  v90 = *MEMORY[0x277D05DD8];
  *(v88 + 32) = *MEMORY[0x277D54720];
  *(v88 + 40) = v90;
  type metadata accessor for UIActivityType(0);
  v91 = v89;
  v92 = v90;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v87 setExcludedActivityTypes_];

  v94 = v87;
  v95 = [v94 popoverPresentationController];
  if (v95)
  {
    v96 = v95;
    [v95 setSourceView_];
  }

  v97 = [v94 popoverPresentationController];

  [v97 setSourceRect_];
  v98 = swift_allocObject();
  v99 = v106;
  swift_unknownObjectWeakInit();
  v100 = swift_allocObject();
  *(v100 + 16) = v114;
  *(v100 + 24) = v98;
  aBlock[4] = partial apply for specialized closure #2 in closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:);
  aBlock[5] = v100;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIActivityType?, @unowned Bool, @guaranteed [Any]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_212;
  v101 = _Block_copy(aBlock);

  [v94 setCompletionWithItemsHandler_];
  _Block_release(v101);
  [v99 presentViewController:v94 animated:1 completion:0];
}

uint64_t specialized closure #2 in closure #2 in DOCItemInfoContentViewController.showActivityViewController(actionsToShow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a5 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a5 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v10, v15, v6);
      URL.stopAccessingSecurityScopedResource()();
      (*(v12 - 8))(v10, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
    v19 = result;
    swift_beginAccess();
    *&v19[v18] = MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIActivityType?, @unowned Bool, @guaranteed [Any]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t DOCItemInfoContentViewController.preview(items:defaultItem:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
  v7 = DOCPreviewController.init()();
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_documentManager;
  swift_beginAccess();
  v9 = *&v3[v8];
  if (v9)
  {
    v10 = &protocol witness table for DOCDocumentManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v7) + 0xF8);
  v13 = v9;
  v12(v9, v10);
  v14 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v15 = *&v3[v14];
  v16 = *((*v11 & *v7) + 0x128);
  v17 = v15;
  v16(v15);
  v18 = *((*v11 & *v7) + 0x1D8);
  v19 = swift_unknownObjectRetain();
  v18(v19, &protocol witness table for DOCItemInfoContentViewController);
  v20 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v21 = *&v3[v20];
  v22 = *((*v11 & *v7) + 0x140);
  v23 = v21;
  v22(v21);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_15:
    swift_beginAccess();

    Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v32);

    a1 = Available;
    if (!(Available >> 62))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_6:

  Available = a1;
  if (!(a1 >> 62))
  {
LABEL_7:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    goto LABEL_8;
  }

LABEL_16:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  Available = _bridgeCocoaArray<A>(_:)();

LABEL_8:
  v35 = Available;
  v36 = 0;
  v37 = 0;
  if (a2)
  {
    v25 = specialized Collection<>.firstIndex(of:)(a2, a1);
    v27 = v26;
  }

  else
  {

    v25 = 0;
    v27 = 1;
  }

  (*((*v11 & *v7) + 0x1C8))(&v35, v25, v27 & 1);
  outlined consume of DOCPreviewSource?(v35, v36, v37);
  v28 = one-time initialization token for shared;
  v29 = v3;
  if (v28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33[0] = 1;
  v34 = v29;
  v30 = *(*static DOCPreviewRouter.shared + 96);

  v30(v7, v33, 0, 0);
}

id DOCItemInfoContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void closure #1 in DOCItemInfoContentViewController.setHandlerFlow(_:didSetHandlerPreferenceOfType:to:)()
{
  DOCItemInfoContentViewController.updateAlwaysOpenWithMenu()();
  v0 = DOCItemInfoContentViewController.downloadButton.getter();
  [v0 updateOpenWithMenu];
}

uint64_t DOCItemInfoContentViewController.metadataView(shouldDrawSeparator:for:)(uint64_t a1, char a2)
{
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return a2 & 1 | ((v4 & 1) == 0);
}

void DOCItemInfoContentViewController.metadataView(nodeLocationTapped:metadataView:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = DOCNode.fpfs_syncFetchFPItem()();
    if (v2)
    {
      v3 = v2;
      [v1 didTapLocationOf_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void DOCItemInfoContentViewController.metadataViewDidFinishPreheat(_:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v10);

  if (v10)
  {
  }

  else
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v4 = static UIViewController.associatedObjectStorageKey;
    v5 = v1;
    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v5, v4);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v8 = swift_allocObject();
    *(v8 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v8 + 32) = MEMORY[0x277D84F90];
    *(v8 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v10 = v8;
    (*((*v3 & *v6) + 0x80))(&v10, KeyPath);
  }

  v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v3 & *v9) + 0x78))(&v10);

  if (v10)
  {
    DOCPresentationPreheatController.endWithState(_:)(2);
  }
}

void *DOCItemInfoContentViewController.metadataViewAlwaysOpenWithMenu(_:)()
{
  v1 = *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu);
  v2 = v1;
  return v1;
}

void closure #1 in DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 tags];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = FPTagFromDOCTag();
      v6 = specialized Collection<>.firstIndex(of:)(v5, v4);
      v8 = v7;

      if (v8)
      {

        return;
      }

      v9 = [objc_opt_self() defaultManager];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_249BA0290;
      *(v10 + 32) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo5FPTagCGGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_249B9A480;
      *(v11 + 32) = v4;
      v12 = objc_opt_self();
      v1 = v1;
      v13 = [v12 shared];
      v14 = objc_allocWithZone(MEMORY[0x277D06258]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      isa = Array._bridgeToObjectiveC()().super.isa;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd);
      v16 = Array._bridgeToObjectiveC()().super.isa;

      v17 = [v14 initWithItems:isa tagsLists:v16 isUndoable:1 shouldClearUndoStack:0 undoManager:v13];

      [v9 scheduleAction_];
    }
  }
}

uint64_t DOCItemInfoContentViewController.nodeDownloadButton(_:downloadingNode:encounteredError:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v3;
  v6 = a3;
  v7 = v3;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCItemInfoContentViewController.nodeDownloadButton(_:downloadingNode:encounteredError:)()
{
  v8 = _convertErrorToNSError(_:)();
  v0 = [v8 domain];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v8 code] == -1009)
  {
    DOCAlertUserTheNetworkIsNotReachable();
    goto LABEL_11;
  }

LABEL_10:
  v7 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();

LABEL_11:
}

id DOCItemInfoContentViewController.RootVStack.StackElementView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void closure #1 in DOCItemInfoContentViewController.browserActionToMenuElement(_:with:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [v7 effectiveAppearance];
    v9 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    swift_beginAccess();
    v10 = *&v7[v9];
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for DOCActionContext();
    v13 = objc_allocWithZone(v12);
    swift_unknownObjectWeakInit();
    *&v13[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v13[OBJC_IVAR___DOCActionContext_appearance] = v8;
    *&v13[OBJC_IVAR___DOCActionContext_configuration] = v10;
    *&v13[OBJC_IVAR___DOCActionContext_presentingViewController] = v7;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v13[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v13[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v13[OBJC_IVAR___DOCActionContext_userInfo] = v11;
    v17.receiver = v13;
    v17.super_class = v12;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    v15 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
    swift_beginAccess();
    v16 = *&v7[v15];
    specialized DOCActionManager.perform(_:on:actionContext:)(a3, a4, v14);
  }
}

uint64_t DOCItemInfoContentViewController.didTapAttributionView()()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return result;
    }
  }

  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v5 = DOCNode.documentAttributes.getter();
  if (v5)
  {
    v6 = v5;
    SYDocumentAttributes.performReturnToDocumentRequest()();
  }

  return swift_unknownObjectRelease();
}

void specialized DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, char *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v10 = [*&a2[v9] sceneIdentifier];
  v11 = specialized static DOCInteractionManager.sharedManager(for:)(v10);

  v12 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v11) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2493AC000, v14, v15, "[Interaction] An item was selected while there is another one trying to be opened.", v16, 2u);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    goto LABEL_7;
  }

  v122 = v5;
  v123 = v8;
  if (([a1 isTrashed] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
  {
    v32 = [a1 displayName];
    if (!v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = MEMORY[0x24C1FAD20](v33);
    }

    DOCAlertUserTrashedFileCanNotBeOpened();
  }

  else
  {
    v121 = v4;
    v17 = *&a2[v9];
    v18 = specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(a1, v17);

    if ((v18 & 1) == 0)
    {
LABEL_7:

      return;
    }

    if (([*&a2[v9] useSharedQuickLook] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
    {
      v19 = [*&a2[v9] sceneIdentifier];
      if (v19)
      {
        v20 = one-time initialization token for mapTable;
        v21 = v19;
        if (v20 != -1)
        {
          v115 = v21;
          swift_once();
          v21 = v115;
        }

        v22 = static DOCPreviewController.mapTable;
        v23 = v21;
        v24 = [v22 objectForKey_];
        if (!v24)
        {
          v25 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
          v24 = DOCPreviewController.init()();
          [v22 setObject:v24 forKey:v23];
        }

        (*((*v12 & *v24) + 0x248))(1);
        v26 = *((*v12 & *v24) + 0x1D8);
        v27 = swift_unknownObjectRetain();
        v26(v27, &protocol witness table for DOCItemInfoContentViewController);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_249BA0290;
        *(v28 + 32) = a1;
        v29 = *v12 & *v24;
        v132 = v28;
        LOBYTE(v133) = 0;
        v30 = *(v29 + 456);
        v31 = a1;
        v30(&v132, 0, 1);

        outlined consume of DOCPreviewSource?(v132, *(&v132 + 1), v133);
      }

      else
      {
        if (one-time initialization token for Source != -1)
        {
          swift_once();
        }

        static os_log_type_t.debug.getter();
        os_log(_:dso:log:type:_:)();
      }
    }

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v11;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = *&a2[v9];
    v120 = v11;

    v38 = [v37 useSharedQuickLook];
    v39 = [*&a2[v9] skipDownload];
    *&v126 = Strong;
    *(&v126 + 1) = partial apply for closure #1 in DOCItemInfoContentViewController.openSelectedNode(_:);
    v127 = v35;
    v128 = 0;
    *&v129 = 0;
    BYTE8(v129) = 0;
    BYTE9(v129) = v38;
    BYTE10(v129) = 1;
    *&v130 = 0;
    BYTE8(v130) = 1;
    BYTE9(v130) = v39;
    v131 = a2;
    v136 = a2;
    v134 = v129;
    v135 = v130;
    v132 = v126;
    v133 = v35;
    v40 = *&a2[v9];
    v41 = a2;
    if (![v40 shouldOpenInApp])
    {

      v44 = v120;
      specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a1, &v132);

LABEL_47:
      outlined destroy of DOCInteractionManagerContext(&v126);
      return;
    }

    v119 = v35;
    v42 = specialized DOCNode.fpfs_syncFetchFPItem()();
    v43 = v42;
    if (v42 && ([v42 doc_isCollaborationInvitation] & 1) != 0)
    {

      if (FPItem.openInvitationIfPossible()())
      {

LABEL_46:
        goto LABEL_47;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      __swift_project_value_buffer(v104, static Logger.UI);
      v105 = v43;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v124[0] = v109;
        *v108 = 136315394;
        *(v108 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDBC40, v124);
        *(v108 + 12) = 2080;
        v110 = [v105 displayName];
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v124);

        *(v108 + 14) = v114;
        _os_log_impl(&dword_2493AC000, v106, v107, "%s Could not open invitation for node: %s", v108, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v109, -1, -1);
        MEMORY[0x24C1FE850](v108, -1, -1);

        outlined destroy of DOCInteractionManagerContext(&v126);
      }

      else
      {

        outlined destroy of DOCInteractionManagerContext(&v126);
      }
    }

    else
    {
      v118 = v41;
      v45 = [*&a2[v9] sceneIdentifier];
      v46 = specialized static DOCInteractionManager.sharedManager(for:)(v45);

      v47 = *((*v12 & *v46) + 0x68);
      v48 = swift_unknownObjectRetain();
      v47(v48);

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.UI);
      v50 = v43;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();

      v53 = os_log_type_enabled(v51, v52);
      v117 = v50;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v124[0] = v55;
        *v54 = 136315138;
        v56 = v43;
        v125[0] = v43;
        v57 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
        v58 = String.init<A>(describing:)();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v124);

        *(v54 + 4) = v60;
        _os_log_impl(&dword_2493AC000, v51, v52, "[Interaction] Keeping track of last opened node in 'openSelectedNode()': %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C1FE850](v55, -1, -1);
        MEMORY[0x24C1FE850](v54, -1, -1);
      }

      else
      {
        v56 = v43;
      }

      v61 = [a1 nodeURL];
      if (v61)
      {
        v62 = v61;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_2493AC000, v63, v64, "[Interaction] Node already has URL, opening directly", v65, 2u);
          MEMORY[0x24C1FE850](v65, -1, -1);
        }

        v66 = a1;
        v67 = v120;
        v68 = v66;
        outlined init with copy of DOCInteractionManagerContext(&v126, v124);
        v69 = v67;
        v70 = v68;
        outlined init with copy of DOCInteractionManagerContext(&v126, v124);
        v71 = v70;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v124[0] = v75;
          *v74 = 136315394;
          *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v124);
          *(v74 + 12) = 2080;
          v76 = [v70 description];
          v77 = v69;
          v78 = v76;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v124);

          *(v74 + 14) = v82;
          v69 = v77;
          _os_log_impl(&dword_2493AC000, v72, v73, "%s node is non-nil trying to open with node first: %s", v74, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v75, -1, -1);
          MEMORY[0x24C1FE850](v74, -1, -1);
        }

        v83 = v121;
        v84 = v122;
        v85 = v69;
        v86 = v71;
        outlined init with copy of DOCInteractionManagerContext(&v126, v124);
        v87 = v123;
        _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FPItemC_Tt2g504_s26ab35Executables32DOCItemInfoContentViewz24C16openSelectedNodeyySo7x9_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSoAM_pAA014DOCInteractionB7ContextVTf1nnnnnc_nTf4nnnnnggg_nTf4nnnnnnen_nAS_Tg5(v123, v86, 0, 1, v118, v85, v86, &v132);
        outlined destroy of DOCInteractionManagerContext(&v126);

        outlined destroy of DOCInteractionManagerContext(&v126);
        outlined destroy of DOCInteractionManagerContext(&v126);
        outlined destroy of DOCInteractionManagerContext(&v126);

        (*(v84 + 8))(v87, v83);
      }

      else
      {

        if (!v56)
        {
          goto LABEL_46;
        }

        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_2493AC000, v88, v89, "[Interaction] Node is a FPItem, fetching URL", v90, 2u);
          MEMORY[0x24C1FE850](v90, -1, -1);
        }

        v91 = [objc_opt_self() defaultManager];
        v92 = swift_allocObject();
        v94 = v117;
        v93 = v118;
        v95 = v120;
        *(v92 + 16) = v118;
        *(v92 + 24) = v95;
        v96 = v135;
        *(v92 + 64) = v134;
        *(v92 + 80) = v96;
        v97 = v136;
        v98 = v133;
        *(v92 + 32) = v132;
        *(v92 + 48) = v98;
        *(v92 + 96) = v97;
        *(v92 + 104) = a1;
        *(v92 + 112) = v94;
        v125[4] = partial apply for closure #2 in DOCItemInfoContentViewController.openSelectedNode(_:);
        v125[5] = v92;
        v125[0] = MEMORY[0x277D85DD0];
        v125[1] = 1107296256;
        v125[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        v125[3] = &block_descriptor_96_0;
        v99 = _Block_copy(v125);
        v100 = v95;
        v101 = v93;
        v102 = v94;
        v103 = a1;
        outlined init with copy of DOCInteractionManagerContext(&v126, v124);

        [v91 fetchURLForItem:v102 completionHandler:v99];

        outlined destroy of DOCInteractionManagerContext(&v126);
        _Block_release(v99);
      }
    }
  }
}

void specialized DOCItemInfoContentViewController.openSelectedNode(_:)(void *a1, char *a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v12 = [*&a2[v11] sceneIdentifier];
  v13 = specialized static DOCInteractionManager.sharedManager(for:)(v12);

  if ((*((*MEMORY[0x277D85000] & *v13) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2493AC000, v15, v16, "[Interaction] An item was selected while there is another one trying to be opened.", v17, 2u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    goto LABEL_7;
  }

  v122 = v10;
  v123 = a3;
  v121 = v7;
  if (([a1 isTrashed] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
  {
    v34 = [a1 displayName];
    if (!v34)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = MEMORY[0x24C1FAD20](v35);
    }

    DOCAlertUserTrashedFileCanNotBeOpened();
    goto LABEL_22;
  }

  v120 = v6;
  v18 = *&a2[v11];
  v19 = v123;
  v20 = specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(a1, v18);

  if ((v20 & 1) == 0)
  {
LABEL_7:

    return;
  }

  if (([*&a2[v11] useSharedQuickLook] & 1) != 0 && (objc_msgSend(a1, sel_isFolder) & 1) == 0)
  {
    v21 = [*&a2[v11] sceneIdentifier];
    if (v21)
    {
      v22 = one-time initialization token for mapTable;
      v23 = v21;
      if (v22 != -1)
      {
        v115 = v23;
        swift_once();
        v23 = v115;
      }

      v24 = static DOCPreviewController.mapTable;
      v25 = v23;
      v26 = [v24 objectForKey_];
      v27 = MEMORY[0x277D85000];
      if (!v26)
      {
        v28 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
        v26 = DOCPreviewController.init()();
        [v24 setObject:v26 forKey:v25];
      }

      (*((*v27 & *v26) + 0x248))(1);
      v29 = *((*v27 & *v26) + 0x1D8);
      v30 = swift_unknownObjectRetain();
      v29(v30, &protocol witness table for DOCItemInfoContentViewController);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_249BA0290;
      *(v31 + 32) = a1;
      v32 = *v27 & *v26;
      v132 = v31;
      LOBYTE(v133) = 0;
      v33 = *(v32 + 456);
      swift_unknownObjectRetain();
      v33(&v132, 0, 1);

      outlined consume of DOCPreviewSource?(v132, *(&v132 + 1), v133);
    }

    else
    {
      if (one-time initialization token for Source != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)();
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v39 = *&a2[v11];
  v40 = v13;

  v41 = [v39 useSharedQuickLook];
  v42 = [*&a2[v11] skipDownload];
  *&v126 = Strong;
  *(&v126 + 1) = closure #1 in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
  v127 = v37;
  v128 = 0;
  *&v129 = 0;
  BYTE8(v129) = 0;
  BYTE9(v129) = v41;
  BYTE10(v129) = 1;
  *&v130 = 0;
  BYTE8(v130) = 1;
  BYTE9(v130) = v42;
  v131 = a2;
  v136 = a2;
  v134 = v129;
  v135 = v130;
  v132 = v126;
  v133 = v37;
  v43 = *&a2[v11];
  v44 = a2;
  if (![v43 shouldOpenInApp])
  {

    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a1, &v132, v40, v19);
    goto LABEL_32;
  }

  v119 = v37;
  v45 = DOCNode.fpfs_syncFetchFPItem()();
  v46 = v45;
  if (!v45 || ([v45 doc_isCollaborationInvitation] & 1) == 0)
  {
    v117 = v40;
    v47 = [*&a2[v11] sceneIdentifier];
    v48 = specialized static DOCInteractionManager.sharedManager(for:)(v47);

    v49 = *((*MEMORY[0x277D85000] & *v48) + 0x68);
    v50 = swift_unknownObjectRetain();
    v49(v50);

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    v52 = __swift_project_value_buffer(v51, static Logger.UI);
    v53 = v46;
    v54 = v46;
    v116 = v52;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();

    v57 = os_log_type_enabled(v55, v56);
    v118 = v44;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v124[0] = v59;
      *v58 = 136315138;
      v60 = v53;
      v125[0] = v53;
      v61 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
      v62 = String.init<A>(describing:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v124);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_2493AC000, v55, v56, "[Interaction] Keeping track of last opened node in 'openSelectedNode()': %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C1FE850](v59, -1, -1);
      v65 = v58;
      v44 = v118;
      MEMORY[0x24C1FE850](v65, -1, -1);
    }

    else
    {
      v60 = v53;
    }

    v66 = v123;
    v67 = [a1 nodeURL];
    if (v67)
    {
      v123 = v54;
      v68 = v67;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_2493AC000, v69, v70, "[Interaction] Node already has URL, opening directly", v71, 2u);
        MEMORY[0x24C1FE850](v71, -1, -1);
      }

      v72 = swift_allocObject();
      v73 = v117;
      *(v72 + 16) = v117;
      *(v72 + 24) = a1;
      v74 = v135;
      *(v72 + 64) = v134;
      *(v72 + 80) = v74;
      *(v72 + 96) = v136;
      v75 = v133;
      *(v72 + 32) = v132;
      *(v72 + 48) = v75;
      swift_unknownObjectRetain_n();
      v76 = v73;
      outlined init with copy of DOCInteractionManagerContext(&v126, v124);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v124[0] = v117;
        *v79 = 136315394;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v124);
        *(v79 + 12) = 2080;
        v80 = [a1 description];
        LODWORD(v116) = v78;
        v81 = v76;
        v82 = v80;
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v66;
        v86 = v85;

        v76 = v81;
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v86, v124);
        v66 = v84;

        *(v79 + 14) = v87;
        _os_log_impl(&dword_2493AC000, v77, v116, "%s node is non-nil trying to open with node first: %s", v79, 0x16u);
        v88 = v117;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v88, -1, -1);
        MEMORY[0x24C1FE850](v79, -1, -1);
      }

      v89 = v121;
      swift_unknownObjectRetain();
      v90 = v122;
      specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v122, a1, 0, 1, v118, closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply, v72, v66);

      swift_unknownObjectRelease_n();
      outlined destroy of DOCInteractionManagerContext(&v126);

      (*(v89 + 8))(v90, v120);
      return;
    }

    if (!v60)
    {

      goto LABEL_33;
    }

    v91 = v54;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2493AC000, v92, v93, "[Interaction] Node is a FPItem, fetching URL", v94, 2u);
      MEMORY[0x24C1FE850](v94, -1, -1);
    }

    v34 = [objc_opt_self() defaultManager];
    v95 = swift_allocObject();
    v96 = v117;
    *(v95 + 16) = v44;
    *(v95 + 24) = v96;
    v97 = v135;
    *(v95 + 64) = v134;
    *(v95 + 80) = v97;
    v98 = v136;
    v99 = v133;
    *(v95 + 32) = v132;
    *(v95 + 48) = v99;
    *(v95 + 96) = v98;
    *(v95 + 104) = a1;
    *(v95 + 112) = v91;
    v125[4] = closure #2 in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
    v125[5] = v95;
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 1107296256;
    v125[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v125[3] = &block_descriptor_224_0;
    v100 = _Block_copy(v125);
    v101 = v96;
    v102 = v44;
    v13 = v91;
    swift_unknownObjectRetain();
    outlined init with copy of DOCInteractionManagerContext(&v126, v124);

    [v34 fetchURLForItem:v13 completionHandler:v100];

    outlined destroy of DOCInteractionManagerContext(&v126);
    _Block_release(v100);
LABEL_22:

    return;
  }

  if (FPItem.openInvitationIfPossible()())
  {

LABEL_32:
LABEL_33:
    outlined destroy of DOCInteractionManagerContext(&v126);
    return;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  __swift_project_value_buffer(v103, static Logger.UI);
  v104 = v46;
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = v40;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v124[0] = v109;
    *v108 = 136315394;
    *(v108 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDBC40, v124);
    *(v108 + 12) = 2080;
    v110 = [v104 displayName];
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v124);

    *(v108 + 14) = v114;
    _os_log_impl(&dword_2493AC000, v105, v106, "%s Could not open invitation for node: %s", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v109, -1, -1);
    MEMORY[0x24C1FE850](v108, -1, -1);

    outlined destroy of DOCInteractionManagerContext(&v126);
  }

  else
  {

    outlined destroy of DOCInteractionManagerContext(&v126);
  }
}

void specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v73 = &v72 - v6;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  v74 = xmmword_249B9A480;
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

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *a2;
  *(v14 + 40) = *(a2 + 16);
  v16 = *(a2 + 48);
  *(v14 + 56) = *(a2 + 32);
  *(v14 + 72) = v16;
  *(v14 + 88) = *(a2 + 64);
  *(v14 + 24) = v15;
  outlined init with copy of DOCInteractionManagerContext(a2, &aBlock);
  if ([a1 isDownloading] && !objc_msgSend(a1, sel_isDownloaded))
  {
    v17 = 1;
  }

  else
  {
    v17 = [a1 isExternalDownloadPlaceholder];
  }

  if ([a1 isCloudItem])
  {
    v18 = [a1 isDownloaded] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if (![a1 isFolder])
  {
    if ((*(a2 + 42) & 1) != 0 && (*(a2 + 56) & 1) == 0)
    {
      static os_log_type_t.default.getter();
      v44 = swift_allocObject();
      *(v44 + 16) = v74;
      v45 = [a1 displayName];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v12;
      *(v44 + 32) = v46;
      *(v44 + 40) = v48;
      os_log(_:dso:log:type:_:)();

      v49 = swift_allocObject();
      *(v49 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v49 + 24) = v14;
      v50 = swift_allocObject();
      *(v50 + 16) = partial apply for closure #5 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v50 + 24) = v49;
      v80 = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
      v81 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v77 = 1107296256;
      v39 = &block_descriptor_193;
    }

    else
    {
      if ((*(a2 + 57) & 1) == 0)
      {
        if (v17)
        {
          if ([a1 isExternalDownloadPlaceholder])
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v40 = type metadata accessor for Logger();
            __swift_project_value_buffer(v40, static Logger.UI);
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              _os_log_impl(&dword_2493AC000, v41, v42, "[TAP] [Interaction] Item is a Safari download in progress, don't cancel the D/L, but don't open either", v43, 2u);
              MEMORY[0x24C1FE850](v43, -1, -1);
            }
          }

          else if ((*(a2 + 40) & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v65 = type metadata accessor for Logger();
            __swift_project_value_buffer(v65, static Logger.UI);
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              *v68 = 0;
              _os_log_impl(&dword_2493AC000, v66, v67, "[TAP] [Interaction] Item is a Download in progress, Cancelling D/L", v68, 2u);
              MEMORY[0x24C1FE850](v68, -1, -1);
            }

            v69 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v70 = swift_allocObject();
            *(v70 + 16) = partial apply for closure #3 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
            *(v70 + 24) = v69;
            v80 = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
            v81 = v70;
            aBlock = MEMORY[0x277D85DD0];
            v77 = 1107296256;
            v78 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
            v79 = &block_descriptor_183;
            v71 = _Block_copy(&aBlock);
            swift_retain_n();

            [a1 fetchFPItem_];
            _Block_release(v71);
          }

          goto LABEL_36;
        }

        if (v18)
        {
          LODWORD(v73) = static os_log_type_t.default.getter();
          v52 = swift_allocObject();
          *(v52 + 16) = v74;
          v53 = [a1 displayName];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          *(v52 + 56) = MEMORY[0x277D837D0];
          *(v52 + 64) = v12;
          *(v52 + 32) = v54;
          *(v52 + 40) = v56;
          os_log(_:dso:log:type:_:)();

          v57 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v58 = swift_allocObject();
          v59 = *a2;
          *(v58 + 40) = *(a2 + 16);
          v60 = *(a2 + 48);
          *(v58 + 56) = *(a2 + 32);
          *(v58 + 72) = v60;
          *(v58 + 16) = v57;
          v61 = *(a2 + 64);
          *(v58 + 24) = v59;
          *(v58 + 88) = v61;
          *(v58 + 96) = a1;
          *(v58 + 104) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
          *(v58 + 112) = v14;
          v62 = swift_allocObject();
          *(v62 + 16) = partial apply for closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
          *(v62 + 24) = v58;
          v75[4] = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
          v75[5] = v62;
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 1107296256;
          v75[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
          v75[3] = &block_descriptor_175;
          v63 = _Block_copy(v75);
          outlined init with copy of DOCInteractionManagerContext(a2, &aBlock);

          v64 = a1;

          [v64 fetchFPItem_];
          _Block_release(v63);

          goto LABEL_35;
        }
      }

      static os_log_type_t.default.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = v74;
      v33 = [a1 displayName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = v12;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      os_log(_:dso:log:type:_:)();

      v37 = swift_allocObject();
      *(v37 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v37 + 24) = v14;
      v38 = swift_allocObject();
      *(v38 + 16) = partial apply for closure #5 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v38 + 24) = v37;
      v80 = partial apply for closure #1 in DOCNode.fpfs_fetchFPItem(completion:);
      v81 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v77 = 1107296256;
      v39 = &block_descriptor_164_0;
    }

    v78 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v79 = v39;
    v51 = _Block_copy(&aBlock);

    [a1 fetchFPItem_];
    _Block_release(v51);
LABEL_35:

LABEL_36:

    return;
  }

  v19 = [a1 fpfs_fpItem];
  if (v19)
  {
    v20 = v19;
    v21 = one-time initialization token for restorableSettingsCache;
    v22 = v19;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for RestorableSettings(0);
    v24 = v73;
    (*(*(v23 - 8) + 56))(v73, 1, 1, v23);
    swift_beginAccess();
    v25 = v22;
    specialized Dictionary.subscript.setter(v24, v20, 0);
    swift_endAccess();
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.UI);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2493AC000, v27, v28, "[TAP] [Interaction] Node is a folder, navigating to the next location.", v29, 2u);
    MEMORY[0x24C1FE850](v29, -1, -1);
  }

  v30 = [a1 providerDomainID];
  v31 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v30 node:a1];

  if (*a2)
  {
    [*a2 didSelectLocation:v31 atParentLocation:*(a2 + 48)];
  }
}

uint64_t specialized DOCItemInfoContentViewController.Metrics.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 11.0;
  if (_UISolariumEnabled())
  {
    v13 = 12.0;
  }

  else
  {
    v13 = 11.0;
  }

  if (_UISolariumEnabled())
  {
    v14 = 2.0;
  }

  else
  {
    v14 = 4.0;
  }

  _UISolariumEnabled();
  v15 = 20.0;
  if (_UISolariumEnabled())
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 21.0;
  }

  if (_UISolariumEnabled())
  {
    v17 = 12.0;
  }

  else
  {
    v17 = 11.0;
  }

  if (!_UISolariumEnabled())
  {
    v15 = 18.0;
  }

  if (_UISolariumEnabled())
  {
    v12 = 12.0;
  }

  v18 = _UISolariumEnabled() ^ 1;
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  UIListContentConfiguration.textProperties.getter();
  (*(v8 + 8))(v11, v7);
  v20 = UIListContentConfiguration.TextProperties.font.getter();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0x4030000000000000;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v15;
  *(a1 + 48) = v12;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  return result;
}

id specialized DOCItemInfoContentViewController.Metrics.fileNameFont.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v1 = *MEMORY[0x277D74430];
  *(inited + 32) = *MEMORY[0x277D74430];
  v2 = v1;
  v3 = _UISolariumEnabled();
  v4 = MEMORY[0x277D74410];
  if (v3)
  {
    v4 = MEMORY[0x277D743F8];
  }

  *(inited + 40) = *v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_249B9A480;
  v8 = *MEMORY[0x277D74380];
  *(v7 + 32) = *MEMORY[0x277D74380];
  *(v7 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(v7 + 40) = v5;
  v9 = v6;
  v10 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v7 + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 fontDescriptorByAddingAttributes_];

  v13 = v12;
  [v13 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

void specialized DOCItemInfoContentViewController.init(configuration:documentManager:actionManager:)()
{
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_documentManager) = 0;
  v1 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_metrics);
  specialized DOCItemInfoContentViewController.Metrics.init()(v11);
  v2 = v11[3];
  v1[2] = v11[2];
  v1[3] = v2;
  v1[4] = v11[4];
  v3 = v11[1];
  *v1 = v11[0];
  v1[1] = v3;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce) = 0;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins;
  if (one-time initialization token for defaultLayoutMargins != -1)
  {
    swift_once();
  }

  v5 = (v0 + v4);
  v6 = *&qword_27EEEA210;
  *v5 = static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins;
  v5[1] = v6;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataSectionLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsSectionTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance) = 10;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow) = 0;
  v7 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController.RootVStack()) init];
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_scrollView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
  *(v0 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 0;
  v10 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}