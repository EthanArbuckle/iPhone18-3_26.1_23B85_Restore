uint64_t type metadata accessor for ActivitySession(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SharePlayLatencyLogger.Interval()
{
  result = type metadata accessor for SharePlayLatencyLogger.Interval.State(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ConversationManagerClient()
{
  type metadata accessor for Published<TUConversationActivitySessionContainer?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void type metadata accessor for Published<TUConversationActivitySessionContainer?>()
{
  if (!lazy cache variable for type metadata for Published<TUConversationActivitySessionContainer?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo38TUConversationActivitySessionContainerCSgMd, &_sSo38TUConversationActivitySessionContainerCSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<TUConversationActivitySessionContainer?>);
    }
  }
}

uint64_t type metadata instantiation function for CurrentSubject()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CurrentSubject.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentValueSubject();
  (*(v6 + 16))(v9, a1, a2);
  v10 = CurrentValueSubject.__allocating_init(_:)();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t CurrentSubject.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized CurrentSubject.wrappedValue.setter();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t CurrentSubject.projectedValue.getter()
{
  protocol witness for FastSyncAnalyticsReporterProtocol.maxPartcipantsInSession.getter in conformance FastSyncAnalyticsReporter();
}

uint64_t type metadata completion function for SharePlayLatencyLogger.Interval.State()
{
  v0 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void type metadata completion function for SharePlayLatencyLogger.Interval.EnabledState()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContinuousClock.Instant();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OSSignpostIntervalState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for OSSignpostID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for ConversationManagerClient()) init];
  static ConversationManagerClient.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for CPAudioRoutePolicyManager()) init];
  static CPAudioRoutePolicyManager.shared = result;
  return result;
}

{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v2, &v3);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
    result = swift_dynamicCast();
    static IMUserNotificationCenter.shared = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = closure #1 in variable initialization expression of static CPApplicationPolicyManager.shared();
  static CPApplicationPolicyManager.shared = result;
  return result;
}

uint64_t type metadata accessor for ConversationManagerClient()
{
  result = type metadata singleton initialization cache for ConversationManagerClient;
  if (!type metadata singleton initialization cache for ConversationManagerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ConversationManagerClient.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMR);
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v69 = v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMR);
  v7 = *(v6 - 8);
  v73 = v6;
  v74 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore34HostConnectionNotificationObserver33_27E1CC486B903558A803A9F885606A1ELLCSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore34HostConnectionNotificationObserver33_27E1CC486B903558A803A9F885606A1ELLCSo17OS_dispatch_queueCGMR);
  v15 = *(v14 - 8);
  v67 = v14;
  v68 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v66 - v22;
  *&v0[direct field offset for ConversationManagerClient.pluginClientReporter] = 0;
  *&v0[direct field offset for ConversationManagerClient.pubSubTopicReporter] = 0;
  v24 = direct field offset for ConversationManagerClient.customEndpointProviders;
  v25 = MEMORY[0x1E69E7CC0];
  *&v1[v24] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14CopresenceCore22CustomEndpointProvider_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v26 = &v1[direct field offset for ConversationManagerClient.publishers];
  v75[0] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = CurrentValueSubject.init(_:)();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = PassthroughSubject.init()();
  *v26 = v30;
  v26[1] = v34;
  *&v1[direct field offset for ConversationManagerClient.subscriptions] = MEMORY[0x1E69E7CD0];
  *&v1[direct field offset for ConversationManagerClient.$__lazy_storage_$_notification] = 0;
  v1[direct field offset for ConversationManagerClient.hasInitialState] = 0;
  v35 = direct field offset for ConversationManagerClient._activeSessionContainer;
  v75[0] = 0;
  v66[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38TUConversationActivitySessionContainerCSgMd, &_sSo38TUConversationActivitySessionContainerCSgMR);
  Published.init(initialValue:)();
  (*(v20 + 32))(&v1[v35], v23, v19);
  v36 = [objc_allocWithZone(CPFeatureFlags) init];
  *&v1[direct field offset for ConversationManagerClient.featureFlags] = v36;
  v37 = type metadata accessor for ConversationManagerClient();
  v76.receiver = v1;
  v76.super_class = v37;
  v38 = objc_msgSendSuper2(&v76, sel_init);
  v39 = direct field offset for XPCClient.queue;
  v40 = *&v38[direct field offset for XPCClient.queue];
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  type metadata accessor for PluginClientReporter();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E7CC8];
  v42[5] = MEMORY[0x1E69E7CC8];
  v42[6] = v43;
  v42[2] = v40;
  v42[3] = partial apply for closure #1 in ConversationManagerClient.init();
  v42[4] = v41;
  v44 = direct field offset for ConversationManagerClient.pluginClientReporter;
  swift_beginAccess();
  v45 = *&v38[v44];
  *&v38[v44] = v42;
  v46 = v38;
  v47 = v40;

  v48 = *&v38[v39];
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  type metadata accessor for PubSubTopicReporter();
  v50 = swift_allocObject();
  v50[4] = v49;
  v50[5] = v43;
  v50[2] = v48;
  v50[3] = partial apply for closure #2 in ConversationManagerClient.init();
  v51 = direct field offset for ConversationManagerClient.pubSubTopicReporter;
  swift_beginAccess();
  v52 = *&v46[v51];
  *&v46[v51] = v50;
  v53 = v46;
  v54 = v48;

  v75[0] = ConversationManagerClient.notification.getter();
  v55 = *&v38[v39];

  v75[4] = v55;
  v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v56 - 8) + 56))(v13, 1, 1, v56);
  type metadata accessor for HostConnectionNotificationObserver();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type HostConnectionNotificationObserver and conformance HostConnectionNotificationObserver, type metadata accessor for HostConnectionNotificationObserver);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v13, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<HostConnectionNotificationObserver, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore34HostConnectionNotificationObserver33_27E1CC486B903558A803A9F885606A1ELLCSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore34HostConnectionNotificationObserver33_27E1CC486B903558A803A9F885606A1ELLCSo17OS_dispatch_queueCGMR);
  v57 = v67;
  Publisher<>.sink(receiveValue:)();

  (*(v68 + 8))(v18, v57);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v58 = *&v53[direct field offset for ConversationManagerClient.publishers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  v75[0] = v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, _s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, _s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v60 = v69;
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMR);
  v62 = v70;
  v61 = v71;
  Publisher.removeDuplicates(by:)();
  (*(v72 + 8))(v60, v61);
  v63 = (*((*MEMORY[0x1E69E7D40] & *v53) + 0x1E8))(v75);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMR);
  v64 = v73;
  Publisher<>.assign(to:)();
  (*(v74 + 8))(v62, v64);
  v63(v75, 0);

  return v53;
}

uint64_t sub_1AEB2986C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB298A4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14CopresenceCore22CustomEndpointProvider_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14CopresenceCore22CustomEndpointProvider_pGMd, &_ss18_DictionaryStorageCySS14CopresenceCore22CustomEndpointProvider_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So38TUConversationActivitySessionContainerCtMd, &_s10Foundation4UUIDV_So38TUConversationActivitySessionContainerCtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v10, v6, &_s10Foundation4UUIDV_So38TUConversationActivitySessionContainerCtMd, &_s10Foundation4UUIDV_So38TUConversationActivitySessionContainerCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

char *XPCClient.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = *v0;
  v2 = v33;
  v34 = *MEMORY[0x1E69E7D40];
  v3 = v34;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = direct field offset for XPCClient.queue;
  v35 = type metadata accessor for OS_dispatch_queue();
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v41 = 0xD000000000000015;
  v42 = 0x80000001AEE367B0;
  v32 = *((v3 & v2) + 0x50);
  v11 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v11);

  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v37, *MEMORY[0x1E69E8090], v39);
  *(v0 + v36) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = (v0 + direct field offset for XPCClient.connectionClosure);
  *v12 = 0;
  v12[1] = 0;
  v13 = v0 + direct field offset for XPCClient._connection;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = *((v34 & v33) + 0x58);
  v15 = v32;
  v16 = type metadata accessor for XPCClient();
  v43.receiver = v1;
  v43.super_class = v16;
  v17 = objc_msgSendSuper2(&v43, sel_init);
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = v15;
  v19[3] = v14;
  v20 = v15;
  v21 = ObjectType;
  v19[4] = v18;
  v19[5] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in XPCClient.init();
  *(v22 + 24) = v19;
  v23 = &v17[direct field offset for XPCClient._connection];
  swift_beginAccess();
  v24 = *(v23 + 1);
  v25 = *(v23 + 2);
  *(v23 + 1) = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSXPCConnection);
  *(v23 + 2) = v22;
  v26 = v17;

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v24);

  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = v14;
  v27[4] = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #2 in XPCClient.init();
  *(v28 + 24) = v27;
  v30 = *(v23 + 3);
  v29 = *(v23 + 4);
  *(v23 + 3) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMGroupActivitySessionEvent) -> ();
  *(v23 + 4) = v28;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v30);

  return v26;
}

uint64_t sub_1AEB2A0E4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB2A11C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB2A154()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sxRi_zRi0_zlyytIseghHr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ConversationManagerClient.notification.getter()
{
  v1 = direct field offset for ConversationManagerClient.$__lazy_storage_$_notification;
  if (*(v0 + direct field offset for ConversationManagerClient.$__lazy_storage_$_notification))
  {
    v2 = *(v0 + direct field offset for ConversationManagerClient.$__lazy_storage_$_notification);
  }

  else
  {
    v3 = *(v0 + direct field offset for XPCClient.queue);
    type metadata accessor for HostConnectionNotificationObserver();
    swift_allocObject();
    v4 = v3;
    v5 = v0;
    v2 = HostConnectionNotificationObserver.init(queue:)(v4);
    v6 = *(v0 + v1);
    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t HostConnectionNotificationObserver.init(queue:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore18DarwinNotificationCSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore18DarwinNotificationCSo17OS_dispatch_queueCGMR);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v31 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCys6UInt64Vs5NeverOGMd, &_s7Combine19CurrentValueSubjectCys6UInt64Vs5NeverOGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = CurrentValueSubject.init(_:)();
  *(v1 + 32) = MEMORY[0x1E69E7CD0];
  *(v1 + 24) = v15;
  if (one-time initialization token for canConnectBypassingSharePlayRestriction != -1)
  {
    swift_once();
  }

  if (static HostConnectionNotificationObserver.canConnectBypassingSharePlayRestriction)
  {
    v16 = 0xD000000000000056;
  }

  else
  {
    v16 = 0xD00000000000003ALL;
  }

  if (static HostConnectionNotificationObserver.canConnectBypassingSharePlayRestriction)
  {
    v17 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v17 = "com.apple.facetime";
  }

  type metadata accessor for DarwinNotification();
  swift_allocObject();
  v18 = a1;
  v19 = DarwinNotification.init(name:queue:)(v16, v17 | 0x8000000000000000, v18);
  *(v2 + 16) = v19;
  v31 = v19;
  v32 = v18;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v28 = v2;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DarwinNotification and conformance DarwinNotification, type metadata accessor for DarwinNotification);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);

  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v7, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v21 = swift_allocObject();
  v22 = v28;
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v21;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<DarwinNotification, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore18DarwinNotificationCSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_14CopresenceCore18DarwinNotificationCSo17OS_dispatch_queueCGMR);
  v24 = v18;
  v25 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v11, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v22;
}

uint64_t sub_1AEB2AAB8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t one-time initialization function for canConnectBypassingSharePlayRestriction()
{
  result = closure #1 in variable initialization expression of static HostConnectionNotificationObserver.canConnectBypassingSharePlayRestriction();
  static HostConnectionNotificationObserver.canConnectBypassingSharePlayRestriction = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static HostConnectionNotificationObserver.canConnectBypassingSharePlayRestriction()
{
  v0 = [objc_opt_self() processInfo];
  v1 = SecTaskCreateFromSelf(0);
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x1B270FF70](0xD000000000000039, 0x80000001AEE2EF50);
    v4 = SecTaskCopyValueForEntitlement(v2, v3, 0);

    if (v4)
    {
      swift_getObjectType();
    }

    else
    {

      v0 = v2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t DarwinNotification.init(name:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v3 + 32) = -1;
  v8 = (v3 + 32);
  v21[0] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCys6UInt64Vs5NeverOGMd, &_s7Combine19CurrentValueSubjectCys6UInt64Vs5NeverOGMR);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v3 + 40) = CurrentValueSubject.init(_:)();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_unownedRetainStrong();

  v12 = a3;
  swift_unownedRetain();

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  v21[4] = partial apply for closure #1 in DarwinNotification.init(name:queue:);
  v21[5] = v13;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v21[3] = &block_descriptor_41;
  v14 = _Block_copy(v21);

  v15 = String.utf8CString.getter();

  swift_beginAccess();
  LODWORD(v8) = notify_register_dispatch((v15 + 32), v8, v12, v14);
  swift_endAccess();

  _Block_release(v14);

  if (v8)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.default);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Could not create notification observer.", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }
  }

  else
  {
    DarwinNotification.handleNotification()();
  }

  return v4;
}

uint64_t sub_1AEB2AECC()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DarwinNotification.handleNotification()()
{
  v1 = v0;
  v2 = DarwinNotification.state.getter();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[2], v1[3], &v10);
    *(v6 + 12) = 2048;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Received DarwinNotification %s value: %llu", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v8 = v1[5];
  v10 = v2;
  return CurrentValueSubject.send(_:)();
}

uint64_t DarwinNotification.state.getter()
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 32), state64))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEB26000, v2, v3, "Could not get current state.", v4, 2u);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    result = 0;
  }

  else
  {
    result = state64[0];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSObject(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSObject(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t closure #1 in HostConnectionNotificationObserver.init(queue:)(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  *v8 = a2;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12 = *(result + 24);
      v13 = v9;
      CurrentValueSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #3 in ConversationManagerClient.init()(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *(Strong + direct field offset for XPCClient.queue);

  *v6 = v9;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  LOBYTE(Strong) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (Strong)
  {
    if (one-time initialization token for client == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001AEE2E8A0, &v23);
    _os_log_impl(&dword_1AEB26000, v11, v12, "Handling %s by requesting initial state.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  if (v7 == 1)
  {
    v15 = swift_unknownObjectUnownedLoadStrong();
    v16 = MEMORY[0x1E69E7D40];
    v17 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x1A8))();

    if ((v17 & 1) == 0)
    {
      v18 = swift_unknownObjectUnownedLoadStrong();
      (*((*v16 & v18->isa) + 0x1F0))();
      goto LABEL_13;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "ConversationManagerClient not re-requesting initial state since we have initial state.";
LABEL_11:
      _os_log_impl(&dword_1AEB26000, v18, v19, v21, v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Host has no conversations.";
      goto LABEL_11;
    }
  }

LABEL_13:
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void (*ConversationManagerClient.$activeSessionContainer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMd, &_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = direct field offset for ConversationManagerClient._activeSessionContainer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

void closure #4 in ConversationManagerClient.init()(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      if ([v11 state] == 3)
      {
        break;
      }

      v7 &= v7 - 1;

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    *a2 = v11;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        v11 = 0;
        goto LABEL_12;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void ActivitySession.$state.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t protocol witness for ActivitySessionContainerProvider.onActivitySessionsChanged.getter in conformance ConversationManagerClient()
{
  v1 = *(*v0 + direct field offset for ConversationManagerClient.publishers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t ConversationManagerClient.onActivitySessionsChanged.getter()
{
  v1 = *(v0 + direct field offset for ConversationManagerClient.publishers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

void Lock.withLock<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

void CPAudioRoutePolicyManager.pickedRoute.setter(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute);
  os_unfair_lock_lock((v4 + 24));
  partial apply for closure #1 in CPAudioRoutePolicyManager.pickedRoute.setter((v4 + 16), &v9);
  os_unfair_lock_unlock((v4 + 24));
  if (v9 == 1)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = *(*v5 + 152);
    v8 = v2;
    v7(partial apply for closure #2 in CPAudioRoutePolicyManager.pickedRoute.setter, v6);
  }
}

uint64_t sub_1AEB2C688()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void closure #1 in CPAudioRoutePolicyManager.pickedRoute.setter(id *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  if (*a1)
  {
    if (!a2 || (type metadata accessor for TURoute(), v6 = v6, v7 = a2, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0))
    {

LABEL_6:
      *a1 = a2;
      *a3 = 1;
      v9 = a2;
      return;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  *a3 = 0;
}

unint64_t type metadata accessor for TURoute()
{
  result = lazy cache variable for type metadata for TURoute;
  if (!lazy cache variable for type metadata for TURoute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TURoute);
  }

  return result;
}

uint64_t CPAudioRoutePolicyManager.observers.getter()
{
  v1 = OBJC_IVAR___CPAudioRoutePolicyManager_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

Swift::Bool __swiftcall CPSystemStateObserver.computeSharePlayAllowed()()
{
  os_unfair_lock_assert_owner(*(*&v0[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  v1 = OBJC_IVAR___CPSystemStateObserver_carPlayConnected;
  v2 = (v0[OBJC_IVAR___CPSystemStateObserver_carPlayConnected] & 1) == 0 && (CPSystemStateObserver.screenTimeAllowed.getter() & 1) != 0 && (v0[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled] & 1) == 0 && *(*&v0[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs] + 16) == 0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136316162;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v24 = v0[v1];
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    CPSystemStateObserver.screenTimeAllowed.getter();
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v7 + 24) = v17;
    *(v7 + 32) = 2080;
    v23 = v4[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled];
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

    *(v7 + 34) = v20;
    *(v7 + 42) = 1024;
    v21 = *(*&v4[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs] + 16);

    *(v7 + 44) = v21 != 0;
    _os_log_impl(&dword_1AEB26000, v5, v6, "CPSystemStateObserver computeSharePlayAllowed result %s carPlayConnected:%s && screenTimeAllowed:%s, && lockdownModeEnabled:%s, && isScreening %{BOOL}d", v7, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5Tm(v5, 0, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5Tm(v10, 0, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t closure #1 in DelegatesManager.perform(_:)(void *a1)
{
  v1 = (*a1 + 104);
  (*v1)();
  v3 = *(v1 - 3);
  type metadata accessor for Delegate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t partial apply for closure #1 in closure #1 in DelegatesManager.performAsync(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = type metadata accessor for Delegate();
  return a2(v5, v6, v7);
}

uint64_t Delegate.performAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for DispatchQoS();
  v13 = *(v22[0] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v22[0]);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(v4 + 8);
    v20 = swift_allocObject();
    v20[2] = *(a3 + 16);
    v20[3] = a1;
    v20[4] = a2;
    v20[5] = v18;
    aBlock[4] = partial apply for closure #1 in Delegate.performAsync(_:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_9_1;
    v21 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v22[1] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v16, v12, v21);
    _Block_release(v21);
    swift_unknownObjectRelease();
    (*(v9 + 8))(v12, v8);
    (*(v13 + 8))(v16, v22[0]);
  }

  return result;
}

uint64_t sub_1AEB2D138()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t closure #1 in DelegatesManager.prune()(uint64_t a1)
{
  v2 = (*a1 + 104);
  (*v2)();
  v5 = *(v2 - 3);
  type metadata accessor for Delegate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v3 = _ArrayProtocol.filter(_:)();
  return (*(*a1 + 112))(v3);
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.ServerError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.ServerError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

uint64_t DelegatesManager.perform(_:)()
{
  v1 = v0[3];
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in DelegatesManager.perform(_:)(v0);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = *(*v0 + 128);

  return v2();
}

{
  return DelegatesManager.perform(_:)();
}

uint64_t DelegatesManager.delegates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

Swift::Void __swiftcall DelegatesManager.prune()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in DelegatesManager.prune()(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

id Cache.init(countLimit:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSCacheCMd, &_sSo7NSCacheCMR);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = v4;

  return [v4 setCountLimit_];
}

uint64_t _s14CopresenceCore16OperationManagerC7performyyyyYaYbYAcF(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-1] - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLVy_yts5NeverOGMd, &_s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLVy_yts5NeverOGMR);
  v16[3] = v10;
  v16[4] = &protocol witness table for OperationManager.Operation<A, B>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  v12 = *(v10 + 44);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v13 - 8) + 56))(boxed_opaque_existential_1 + v12, 1, 1, v13);
  *boxed_opaque_existential_1 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  boxed_opaque_existential_1[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AEB2D7E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in OperationManager.init()()
{
  if (*(v0 + 40))
  {
    outlined init with take of ContiguousBytes((v0 + 16), v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
    v3 = *(v2 + 8);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = closure #1 in OperationManager.init();

    return v8(v1, v2);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in OperationManager.init(), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = closure #1 in OperationManager.init();
  v3 = v0[15];
  v4 = v0[13];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v4);
}

{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in OperationManager.init(), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = closure #1 in OperationManager.init();
  v5 = v0[15];
  v6 = v0[13];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OperationManager.Operation.run()()
{
  v2 = *(*v1 + 152);
  v5 = *v1;

  if (v0)
  {
    v3 = OperationManager.Operation.run();
  }

  else
  {
    v3 = OperationManager.Operation.run();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0 + 7;
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 16))(v2, v0[3] + *(v0[2] + 44), v0[7]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[8];
  }

  else
  {
    v5 = v0[10];
    v6 = v0[6];
    (*(v0[11] + 16))(v0[12], v0[13], v0[4]);
    CheckedContinuation.resume(returning:)();
    v1 = v0 + 6;
  }

  v7 = *v1;
  v8 = v0[12];
  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[10];
  v16 = v0[9];
  (*(v0[11] + 8))(v0[13], v0[4]);
  (*(v4 + 8))(v13, v7);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[3];
  v2 = v1[1];
  v8 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = OperationManager.Operation.run();
  v5 = v0[17];
  v6 = v0[13];

  return v8(v6, v5);
}

{
  v1 = v0 + 7;
  v2 = v0[18];
  v3 = v0[6];
  v22 = v0[16];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v23 = v7;
  v24 = v0[7];
  v9 = *(v0[14] + 32);
  v9(v2, v0[17], v6);
  v9(v22, v2, v6);
  (*(v4 + 16))(v5, v23 + *(v8 + 44), v24);
  v10 = *(v3 - 8);
  if ((*(v10 + 48))(v5, 1, v3) == 1)
  {
    v10 = v0[8];
  }

  else
  {
    v11 = v0[9];
    v12 = v0[6];
    (*(v0[14] + 16))(v0[15], v0[16], v0[5]);
    CheckedContinuation.resume(throwing:)();
    v1 = v0 + 6;
  }

  v13 = *v1;
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[15];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[9];
  v25 = v0[10];
  (*(v0[14] + 8))(v0[16], v0[5]);
  (*(v10 + 8))(v19, v13);

  v20 = v0[1];

  return v20();
}

uint64_t protocol witness for OperationManager.OperationProtocol.run() in conformance OperationManager.Operation<A, B>(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return OperationManager.Operation.run()(a1);
}

uint64_t DelegatesManager.delegates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

BOOL partial apply for closure #1 in closure #1 in DelegatesManager.prune()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t CPSystemStateObserver.recomputeAllowedStates()()
{
  v1 = *(v0 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_assert_owner(*(v1 + 16));
  os_unfair_lock_assert_owner(*(v1 + 16));
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  v4 = CPSystemStateObserver._allowSharePlay.getter();
  *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay) = v3 & 1;
  CPSystemStateObserver._allowSharePlay.didset(v4 & 1);
  os_unfair_lock_assert_owner(*(v1 + 16));
  v5 = (*((*v2 & *v0) + 0x178))();
  v6 = CPSystemStateObserver._allowScreenSharing.getter();
  *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing) = v5 & 1;
  CPSystemStateObserver._allowScreenSharing.didset(v6 & 1);
  os_unfair_lock_assert_owner(*(v1 + 16));
  v7 = (*((*v2 & *v0) + 0x180))();
  v8 = CPSystemStateObserver._allowScreenSharingInitiation.getter();
  *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation) = v7 & 1;
  v9 = v8 & 1;

  return CPSystemStateObserver._allowScreenSharingInitiation.didset(v9);
}

id partial apply for closure #2 in CPAudioRoutePolicyManager.pickedRoute.setter(void *a1)
{
  v3 = *(v1 + 16);
  v4 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))() & 1;

  return [a1 audioPolicyManager:v3 sharePlayAllowedStateChanged:v4];
}

uint64_t CPAudioRoutePolicyManager.sharePlaySupported.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  if ([v1 supportsSharePlay])
  {
    v3 = [v2 isCarKitRoute];

    return v3 ^ 1;
  }

  else
  {

    return 0;
  }
}

void *CPAudioRoutePolicyManager.pickedRoute.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t OperationManager.Operation.run()(void *a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = a1[2];
  v2[4] = v3;
  v4 = a1[3];
  v2[5] = v4;
  v5 = a1[4];
  v2[6] = type metadata accessor for CheckedContinuation();
  v6 = type metadata accessor for Optional();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = *(v3 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v11 = *(v4 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](OperationManager.Operation.run(), 0, 0);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v5);
}

{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6();
}

{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t XPCHostConnection.clientObject.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  v11 = [*(v1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v12 = swift_dynamicCast();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v12)
  {
    v14 = *(AssociatedTypeWitness - 8);
    v13(v10, 0, 1, AssociatedTypeWitness);
    return (*(v14 + 32))(a1, v10, AssociatedTypeWitness);
  }

  else
  {
    v13(v10, 1, 1, AssociatedTypeWitness);
    result = (*(v7 + 8))(v10, v6);
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Task<>.reportFailure(on:function:process:)()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = closure #1 in Task<>.reportFailure(on:function:process:);
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = closure #1 in Task<>.reportFailure(on:function:process:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  (*(v0[17] + 8))(v0[19], v0[16]);
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[19];
  Date.init()();
  v2 = *(MEMORY[0x1E69E86A8] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v0;
  v3[1] = closure #1 in Task<>.reportFailure(on:function:process:);
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[7];
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5, v7, v6, v4, v8);
}

{
  v76 = v0;
  if (one-time initialization token for abcReporter != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v2, static Log.abcReporter);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v75 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v75);
    _os_log_impl(&dword_1AEB26000, v3, v4, "Detected failure on function %s. Reporting!", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  if (v0[11])
  {
    v72 = v0[11];
    v71 = v0[10];
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (!v10)
    {
      v54 = v0[9];

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v0[21];
      v59 = v0[19];
      v61 = v0[16];
      v60 = v0[17];
      if (v57)
      {
        v63 = v0[8];
        v62 = v0[9];
        v74 = v0[19];
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v75 = v65;
        *v64 = 136315394;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v75);
        *(v64 + 12) = 2080;
        *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v75);
        _os_log_impl(&dword_1AEB26000, v55, v56, "Can't report failure on function %s because of missing processName %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v65, -1, -1);
        MEMORY[0x1B27120C0](v64, -1, -1);

        (*(v60 + 8))(v74, v61);
      }

      else
      {

        (*(v60 + 8))(v59, v61);
      }

      goto LABEL_22;
    }

    v11 = v0[11];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v12;
  }

  v13 = v0[21];
  v14 = v0[12];
  v16 = v0[8];
  v15 = v0[9];
  v18 = v14[3];
  v17 = v14[4];
  v70 = v14;
  __swift_project_boxed_opaque_existential_1(v14, v18);
  swift_getErrorValue();
  v19 = v0[2];
  v20 = v0[3];
  v21 = v0[4];

  v22 = Error.localizedDescription.getter();
  v24 = (*(v17 + 16))(v16, v15, v22, v23, v71, v72, v18, v17);
  v0[23] = v24;

  if (v24)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v75 = v28;
      *v27 = 136315138;
      v29 = Dictionary.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v75);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Reporting signature %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[16];
    v35 = v0[17];
    v36 = v70[3];
    v37 = v70[4];
    __swift_project_boxed_opaque_existential_1(v0[12], v36);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v39 = v38;
    v40 = *(v35 + 8);
    v0[24] = v40;
    v0[25] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v33, v34);
    v41 = *(v37 + 24);
    v73 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    v0[26] = v43;
    *v43 = v0;
    v43[1] = closure #1 in Task<>.reportFailure(on:function:process:);
    v44.n128_u64[0] = v39;

    return v73(v24, v36, v37, v44);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[21];
  v50 = v0[19];
  v51 = v0[16];
  v52 = v0[17];
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1AEB26000, v46, v47, "Failed to convert signature payload", v53, 2u);
    MEMORY[0x1B27120C0](v53, -1, -1);
  }

  else
  {
  }

  (*(v52 + 8))(v50, v51);
LABEL_22:
  v67 = v0[18];
  v66 = v0[19];
  v68 = v0[15];

  v69 = v0[1];

  return v69();
}

{
  v27 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v0 + 48) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received reporting response: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);

    v24(v7, v8);
  }

  else
  {
    v14 = *(v0 + 216);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);

    v16(v17, v18);
  }

  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 120);

  v22 = *(v0 + 8);

  return v22();
}

char *XPCClient.__allocating_init(listenerEndpoint:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return XPCClient.__allocating_init(connection:)(partial apply for closure #1 in XPCClient.init(listenerEndpoint:), v2);
}

uint64_t sub_1AEB2F0EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *XPCClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = &v5[direct field offset for XPCClient.connectionClosure];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  v9 = v5;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v7);

  return v9;
}

uint64_t XPCClient.withSynchronousHost<A>(body:errorHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v25 - v17;
  v19 = specialized XPCClient.connection.getter();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_28;
  v20 = _Block_copy(aBlock);

  v21 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v22 = swift_dynamicCast();
  v23 = *(v15 + 56);
  if (v22)
  {
    v23(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
    v28(v18);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v23(v14, 1, 1, AssociatedTypeWitness);
    result = (*(v26 + 8))(v14, v10);
    __break(1u);
  }

  return result;
}

uint64_t specialized XPCClient.connection.getter()
{
  v1 = v0 + direct field offset for XPCClient._connection;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
LABEL_5:
    swift_endAccess();
    v9 = v3;
    return v4;
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    v6 = *(v1 + 16);

    v5(&v10, v7);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v5);
    v8 = v10;
    *v1 = v10;
    v4 = v8;
    v3 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSXPCConnection)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void *closure #1 in XPCClient.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = *(Strong + direct field offset for XPCClient.queue);

  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  LOBYTE(Strong) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (Strong)
  {
    v14 = swift_unknownObjectUnownedLoadStrong();
    v7 = XPCClient.createXPCConnection()();

    v15 = (*(a4 + 32))(a3, a4);
    [v7 setRemoteObjectInterface_];

    v16 = (*(a4 + 40))(a3, a4);
    [v7 setExportedInterface_];

    v17 = swift_unknownObjectUnownedLoadStrong();
    [v7 setExportedObject_];

    v18 = swift_allocObject();
    v19 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = v18;
    v20[5] = a2;
    v38 = partial apply for closure #1 in closure #1 in XPCClient.init();
    v39 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v37 = &block_descriptor_45_0;
    v21 = _Block_copy(&aBlock);

    [v7 setInterruptionHandler_];
    _Block_release(v21);
    v22 = swift_allocObject();
    v23 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = v22;
    v24[5] = a2;
    v38 = partial apply for closure #2 in closure #1 in XPCClient.init();
    v39 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v37 = &block_descriptor_52;
    v25 = _Block_copy(&aBlock);

    [v7 setInvalidationHandler_];
    _Block_release(v25);
    [v7 resume];
    if (one-time initialization token for client == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.client);
  v27 = v7;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_1AEB26000, v28, v29, "Resuming XPC client connection: %@", v30, 0xCu);
    outlined destroy of NSObject?(v31);
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  return v27;
}

uint64_t sub_1AEB2FA78()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t XPCClient.createXPCConnection()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = (*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 24))(&v17);
  if ((v17 & 0xFE) == 4)
  {
    v4 = (*((*v1 & *v0) + 0x78))(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v4();
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v5);
      return v6;
    }

    else
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v8 = "stablishing";
    v9 = 0xD00000000000002CLL;
    v10 = "rsationmanagerhost";
    v11 = 0xD000000000000027;
    if (v17 != 2)
    {
      v11 = 0xD00000000000002CLL;
      v10 = "lay.GroupSessionService";
    }

    if (v17)
    {
      v9 = 0xD000000000000032;
      v8 = "ence.conversationmanagerhost";
    }

    if (v17 <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v17 <= 1u)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v14 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v15 = MEMORY[0x1B270FF70](v12, v13 | 0x8000000000000000);

    v16 = [v14 initWithMachServiceName:v15 options:0];

    return v16;
  }

  return result;
}

uint64_t XPCClient.connectionClosure.getter()
{
  v1 = (v0 + direct field offset for XPCClient.connectionClosure);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return v3;
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void specialized CPSystemStateObserver.audioPolicyManager(_:sharePlayAllowedStateChanged:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1AEB26000, v5, v6, "CPSystemStateObserver got notification from CPAudioPolicyManager that allowed transitioned to %{BOOL}d", v7, 8u);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v8 + 16));
  CPSystemStateObserver.recomputeAllowedStates()();
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

uint64_t CPSystemStateObserver.screenTimeAllowed.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver____lazy_storage___screenTimeAllowed;
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage___screenTimeAllowed);
  if (v2 == 2)
  {
    v3 = *(v0 + OBJC_IVAR___CPSystemStateObserver_managedConfigObserver);
    v4 = *(v0 + OBJC_IVAR___CPSystemStateObserver_managedConfigObserver + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v4 + 8))(ObjectType, v4);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for XPCHostConnection()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

char *XPCHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v87 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  *(v3 + direct field offset for XPCHostConnection.hasScheduledInvalidation) = 0;
  v88 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  *(v3 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks) = MEMORY[0x1E69E7CD0];
  v89 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  *(v3 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier) = MEMORY[0x1E69E7CC8];
  v8 = direct field offset for XPCHostConnection.connection;
  *(v3 + direct field offset for XPCHostConnection.connection) = a1;
  v9 = direct field offset for XPCHostConnection.queue;
  *(v3 + direct field offset for XPCHostConnection.queue) = a2;
  v10 = a1;
  v11 = a2;
  v12 = NSXPCConnection.bundleIdentifier.getter();
  v86 = v10;
  if (!v13)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.host);
    v21 = v10;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_15;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    v27 = "Denying connection %@ because it does not have a valid bundle identifier.";
    goto LABEL_14;
  }

  v14 = v12;
  v15 = v13;
  v84 = *(v7 + 80);
  v85 = *(v7 + 88);
  if (((*(v85 + 48))(v10) & 1) == 0)
  {

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.host);
    v21 = v10;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_15;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v29 = v21;
    v27 = "Denying connection %@ because it does not have valid entitlements.";
LABEL_14:
    _os_log_impl(&dword_1AEB26000, v22, v23, v27, v24, 0xCu);
    outlined destroy of NSObject?(v25);
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
    v21 = v22;
    v22 = v86;
    v6 = MEMORY[0x1E69E7D40];
LABEL_15:

    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 8))(v3 + v87, v30);

    v31 = *(v3 + v88);

    v32 = *(v3 + v89);

    v33 = *(v7 + 80);
    v34 = *(v7 + 88);
    type metadata accessor for XPCHostConnection();
    v35 = *((*v6 & *v3) + 0x30);
    v36 = *((*v6 & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = (v3 + direct field offset for XPCHostConnection.bundleIdentifier);
  *v16 = v14;
  v16[1] = v15;
  v17 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v17 == 2)
  {
    v18 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v19 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v38 = v17;
    v19 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v38)
    {
      goto LABEL_19;
    }
  }

  if (v19 == 2 || (v19 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v40 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v39 = *v40;
    goto LABEL_23;
  }

LABEL_19:
  v39 = 1;
LABEL_23:
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI) = v39;
  v41 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v41 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v41 = *(v42 + 1);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) = v41 & 1;
  v43 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v43 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v44 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v43 = *(v44 + 24);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions) = v43 & 1;
  v45 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v45 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v46 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v45 = *(v46 + 25);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToForWebFallback) = v45 & 1;
  v47 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v47)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v49 = *(v48 + 32);
  }

  *(v3 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers) = v47;
  v50 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v50)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v51 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v52 = *(v51 + 40);
  }

  *(v3 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers) = v50;
  v53 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v53 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v54 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v53 = *(v54 + 48);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers) = v53 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUseGameCenter) = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v55 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v55 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v56 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v55 = *(v56 + 50);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) = v55 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5() & 1;
  v96.receiver = v3;
  v96.super_class = type metadata accessor for XPCHostConnection();
  v57 = objc_msgSendSuper2(&v96, sel_init);
  v58 = direct field offset for XPCHostConnection.connection;
  v59 = *&v57[direct field offset for XPCHostConnection.connection];
  v60 = v57;
  [v59 setExportedObject_];
  v61 = *(v85 + 32);
  v62 = *&v57[v58];
  v63 = v61(v84, v85);
  [v62 setExportedInterface_];

  v64 = *(v85 + 40);
  v65 = *&v57[v58];
  v66 = v64(v84, v85);
  [v65 setRemoteObjectInterface_];

  [*&v57[v58] _setQueue_];
  v67 = *&v57[v58];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  v69[2] = v84;
  v69[3] = v85;
  v69[4] = v68;
  v94 = partial apply for closure #1 in XPCHostConnection.init(connection:queue:);
  v95 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v91 = 1107296256;
  v92 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v93 = &block_descriptor_14;
  v70 = _Block_copy(&aBlock);
  v71 = v67;

  [v71 setInterruptionHandler_];
  _Block_release(v70);

  v72 = *&v57[v58];
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  v74[2] = v84;
  v74[3] = v85;
  v74[4] = v73;
  v94 = partial apply for closure #2 in XPCHostConnection.init(connection:queue:);
  v95 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v91 = 1107296256;
  v92 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v93 = &block_descriptor_10_0;
  v75 = _Block_copy(&aBlock);
  v76 = v60;
  v77 = v72;

  [v77 setInvalidationHandler_];
  _Block_release(v75);

  v78 = v57;
  [*&v57[v58] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  __swift_project_value_buffer(v79, static Log.host);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 138412290;
    *(v82 + 4) = v76;
    *v83 = v78;
    _os_log_impl(&dword_1AEB26000, v80, v81, "Created %@", v82, 0xCu);
    outlined destroy of NSObject?(v83);
    MEMORY[0x1B27120C0](v83, -1, -1);
    MEMORY[0x1B27120C0](v82, -1, -1);
  }

  else
  {
  }

  return v78;
}

uint64_t sub_1AEB30C7C()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB30CB4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t NSXPCConnection.bundleIdentifier.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  [v0 auditToken];
  v1 = SecTaskCreateWithAuditToken(0, &token);
  if (v1)
  {
    v2 = v1;
    error = 0;
    v3 = SecTaskCopySigningIdentifier(v1, &error);
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      if (error)
      {
      }
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Log.default);
      v16 = v0;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *token.val = v21;
        *v19 = 138412546;
        *(v19 + 4) = v16;
        *v20 = v16;
        *(v19 + 12) = 2080;
        swift_beginAccess();
        if (error)
        {
          v22 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
          v23 = String.init<A>(reflecting:)();
          v25 = v24;
        }

        else
        {
          v26 = v16;
          v25 = 0xE300000000000000;
          v23 = 7104878;
        }

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &token);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_1AEB26000, v17, v18, "Could not get signing identifier for %@: %s", v19, 0x16u);
        outlined destroy of NSObject?(v20);
        MEMORY[0x1B27120C0](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1B27120C0](v21, -1, -1);
        MEMORY[0x1B27120C0](v19, -1, -1);
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v28 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      v5 = *(v28 + 8);
      v29 = *(v28 + 16);
      swift_beginAccess();
      v30 = error;
      if (error)
      {
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Failed to create task for %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v5 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5()
{
  v1 = Entitlement.rawValue.getter();
  v2 = MEMORY[0x1B270FF70](v1);

  v3 = [v0 valueForEntitlement_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t static XPCInterface.isConnectionEntitled(_:)()
{
  v0 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v0 == 2)
  {
    v0 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  v1 = v0;
  v2 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v1 & 1) != 0 || v2 != 2 && (v2)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v3)
  {
LABEL_9:
    v4 = 1;
  }

  else
  {
    v4 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v4 == 2)
    {
      v4 = v3[1];
    }
  }

  return v4 & 1;
}

{
  return static XPCInterface.isConnectionEntitled(_:)() & 1;
}

unint64_t Entitlement.rawValue.getter()
{
  result = 0xD000000000000016;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000023;
      break;
    case 2:
    case 7:
      result = 0xD00000000000002DLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000030;
      break;
    case 8:
    case 9:
      result = 0xD00000000000002ELL;
      break;
    case 0xA:
    case 0xD:
      result = 0xD000000000000032;
      break;
    case 0xB:
      result = 0xD00000000000001FLL;
      break;
    case 0xC:
      result = 0xD000000000000034;
      break;
    case 0xE:
      result = 0xD00000000000002FLL;
      break;
    case 0xF:
      result = 0xD000000000000039;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5()
{
  v1 = Entitlement.rawValue.getter();
  v2 = MEMORY[0x1B270FF70](v1);

  v3 = [v0 valueForEntitlement_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter()
{
  v1 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
  v2 = [v0 valueForEntitlement_];

  if (v2)
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
  if (*(&v37 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v36)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Log.default);
      v4 = v0;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *&v36 = v8;
        *v7 = 136315138;
        v9 = NSXPCConnection.bundleIdentifier.getter();
        if (v10)
        {
          *&v38 = v9;
          *(&v38 + 1) = v10;
          v11 = String.init<A>(reflecting:)();
          v13 = v12;
        }

        else
        {
          v11 = 7104878;
          v13 = 0xE300000000000000;
        }

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v36);

        *(v7 + 4) = v35;
        _os_log_impl(&dword_1AEB26000, v5, v6, "Connection[%s] is entitled to public Game Center entitlement.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x1B27120C0](v8, -1, -1);
        MEMORY[0x1B27120C0](v7, -1, -1);
      }

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v38);
  }

  v14 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
  v15 = [v0 valueForEntitlement_];

  if (v15)
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
  if (*(&v37 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v16 = v36;
      if (*(v36 + 16))
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.default);
        v18 = v0;

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v36 = v22;
          *v21 = 136315394;
          v23 = NSXPCConnection.bundleIdentifier.getter();
          if (v24)
          {
            *&v38 = v23;
            *(&v38 + 1) = v24;
            v25 = String.init<A>(reflecting:)();
            v27 = v26;
          }

          else
          {
            v25 = 7104878;
            v27 = 0xE300000000000000;
          }

          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v36);

          *(v21 + 4) = v30;
          *(v21 + 12) = 2080;
          v31 = MEMORY[0x1B2710180](v16, MEMORY[0x1E69E6158]);
          v33 = v32;

          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

          *(v21 + 14) = v34;
          _os_log_impl(&dword_1AEB26000, v19, v20, "Connection[%s] is entitled to internal Game Center entitlement: %s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v22, -1, -1);
          MEMORY[0x1B27120C0](v21, -1, -1);
        }

        else
        {
        }

        return 1;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v38);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v28 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  return *(v28 + 49);
}

{
  v1 = SecTaskCreateFromSelf(0);
  if (!v1)
  {
    v47 = 0u;
    v48 = 0u;
LABEL_12:
    outlined destroy of Any?(&v47);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
  v4 = SecTaskCopyValueForEntitlement(v2, v3, 0);

  if (!v4)
  {
    v47 = 0u;
    v48 = 0u;

    goto LABEL_12;
  }

  *(&v48 + 1) = swift_getObjectType();

  *&v47 = v4;
  if (swift_dynamicCast() & 1) != 0 && (v46)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v46 = v10;
      *v9 = 136315138;
      v11 = [objc_opt_self() mainBundle];
      v12 = [v11 bundleIdentifier];

      if (v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        *&v47 = v13;
        *(&v47 + 1) = v15;
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v16 = 7104878;
        v18 = 0xE300000000000000;
      }

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v46);

      *(v9 + 4) = v45;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Connection[%s] is entitled to public Game Center entitlement.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    return 1;
  }

LABEL_13:
  v19 = SecTaskCreateFromSelf(0);
  if (!v19)
  {
    v47 = 0u;
    v48 = 0u;
    goto LABEL_17;
  }

  v20 = v19;
  v21 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
  v22 = SecTaskCopyValueForEntitlement(v20, v21, 0);

  if (v22)
  {
    *(&v48 + 1) = swift_getObjectType();

    *&v47 = v22;
    goto LABEL_19;
  }

  v47 = 0u;
  v48 = 0u;

  if (!*(&v48 + 1))
  {
LABEL_17:
    outlined destroy of Any?(&v47);
    goto LABEL_27;
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    v23 = v46;
    if (*(v46 + 16))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);
      v25 = v0;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315394;
        v30 = [objc_opt_self() mainBundle];
        v31 = [v30 bundleIdentifier];

        if (v31)
        {
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          *&v47 = v32;
          *(&v47 + 1) = v34;
          v35 = String.init<A>(reflecting:)();
          v37 = v36;
        }

        else
        {
          v35 = 7104878;
          v37 = 0xE300000000000000;
        }

        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v46);

        *(v28 + 4) = v40;
        *(v28 + 12) = 2080;
        v41 = MEMORY[0x1B2710180](v23, MEMORY[0x1E69E6158]);
        v43 = v42;

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v46);

        *(v28 + 14) = v44;
        _os_log_impl(&dword_1AEB26000, v26, v27, "Connection[%s] is entitled to internal Game Center entitlement: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v29, -1, -1);
        MEMORY[0x1B27120C0](v28, -1, -1);
      }

      else
      {
      }

      return 1;
    }
  }

LABEL_27:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v38 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  return *(v38 + 49);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CPSystemStateObserver._allowSharePlay.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay;
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay);
  if (v2 == 2)
  {
    LOBYTE(v2) = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t CPSystemStateObserver._allowSharePlay.didset(char a1)
{
  v2 = a1 & 1;
  os_unfair_lock_assert_owner(*(*&v1[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  result = CPSystemStateObserver._allowSharePlay.getter();
  if ((result & 1) != v2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v17 = v5[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay] & 1;
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v6, v7, "CPSystemStateObserver allowSharePlay changed to %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    v13 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE0))();
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    v15 = *(*v13 + 152);
    v16 = v5;
    v15(partial apply for closure #1 in CPSystemStateObserver._allowSharePlay.didset, v14);
  }

  return result;
}

uint64_t sub_1AEB31EF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

Swift::Bool __swiftcall CPSystemStateObserver.computeScreenSharingAllowed()()
{
  os_unfair_lock_assert_owner(*(*&v0[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  v1 = OBJC_IVAR___CPSystemStateObserver_carPlayConnected;
  if ((v0[OBJC_IVAR___CPSystemStateObserver_carPlayConnected] & 1) == 0 && (CPSystemStateObserver.screenTimeAllowed.getter() & 1) != 0 && [*&v0[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] sharePlaySupported])
  {
    v2 = v0[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136316162;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v26 = v0[v1];
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v27);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    CPSystemStateObserver.screenTimeAllowed.getter();
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

    *(v7 + 24) = v17;
    *(v7 + 32) = 2080;
    [*&v4[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] sharePlaySupported];
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

    *(v7 + 34) = v20;
    *(v7 + 42) = 2080;
    v25 = v4[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled];
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v27);

    *(v7 + 44) = v23;
    _os_log_impl(&dword_1AEB26000, v5, v6, "CPSystemStateObserver computeScreenSharingAllowed result %s carPlayConnected:%s && screenTimeAllowed:%s && routeSupportsSharePlay:%s, && lockdownModeEnabled:%s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  return v2 & 1;
}

Swift::Bool __swiftcall CPSystemStateObserver.computeScreenSharingInitiationAllowed()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_assert_owner(*(v2 + 16));
  os_unfair_lock_assert_owner(*(v2 + 16));
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))();
  v4 = CPSystemStateObserver._allowScreenSharing.getter();
  v5 = OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing;
  *(v1 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing) = v3 & 1;
  CPSystemStateObserver._allowScreenSharing.didset(v4 & 1);
  if (*(v1 + v5))
  {
    v6 = CPSystemStateObserver.isDisplayCloned.getter() ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315650;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v23 = *(v1 + v5) & 1;
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    CPSystemStateObserver.isDisplayCloned.getter();
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1AEB26000, v9, v10, "CPSystemStateObserver computeScreenSharingInitiationAllowed result %s allowScreenSharing:%s && displayIsCloned:%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  return v6 & 1;
}

uint64_t CPSystemStateObserver._allowScreenSharing.didset(char a1)
{
  v2 = a1 & 1;
  os_unfair_lock_assert_owner(*(*&v1[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  result = CPSystemStateObserver._allowScreenSharing.getter();
  if ((result & 1) != v2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v17 = v5[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing] & 1;
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v6, v7, "CPSystemStateObserver allowScreenSharing changed to %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    v13 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE0))();
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    v15 = *(*v13 + 152);
    v16 = v5;
    v15(partial apply for closure #1 in CPSystemStateObserver._allowScreenSharing.didset, v14);
  }

  return result;
}

uint64_t CPSystemStateObserver._allowScreenSharing.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing;
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing);
  if (v2 == 2)
  {
    LOBYTE(v2) = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t CPSystemStateObserver.isDisplayCloned.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver____lazy_storage___isDisplayCloned;
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage___isDisplayCloned);
  if (v2 == 2)
  {
    v3 = *(v0 + OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver);
    v4 = *(v0 + OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v4 + 8))(ObjectType, v4);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t CPSystemStateObserver._allowScreenSharingInitiation.didset(char a1)
{
  v2 = a1 & 1;
  os_unfair_lock_assert_owner(*(*&v1[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  result = CPSystemStateObserver._allowScreenSharingInitiation.getter();
  if ((result & 1) != v2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v17 = v5[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation] & 1;
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v6, v7, "CPSystemStateObserver allowScreenSharingInitiation changed to %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    v13 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE0))();
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    v15 = *(*v13 + 152);
    v16 = v5;
    v15(partial apply for closure #1 in CPSystemStateObserver._allowScreenSharingInitiation.didset, v14);
  }

  return result;
}

uint64_t CPSystemStateObserver._allowScreenSharingInitiation.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation;
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation);
  if (v2 == 2)
  {
    LOBYTE(v2) = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x180))();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

BOOL _sSo28CPApplicationLauncherOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *_sSo28CPApplicationLauncherOptionsVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *_sSo28CPApplicationLauncherOptionsVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *_sSo45TUConversationActivitySessionApplicationStateVSYSCSY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1AEB32DA0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB32DD8()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB32E10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB32E50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB32E90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB32EC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB32F08()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB32F60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB32FA8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB32FF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEB33048(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB330F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB331A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB331D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB33218()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB33258()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB332E8()
{
  v1 = (type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = v1[8];
  v10 = type metadata accessor for UnknownStorage();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1AEB333EC()
{
  v1 = (type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = v0 + v3;
  v9 = *(v8 + 8);

  v10 = *(v8 + 24);

  v11 = v1[8];
  v12 = type metadata accessor for UnknownStorage();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));
  v13 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t sub_1AEB33510()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AEB33568()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB335A0()
{
  v1 = (type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v5 + 24);

  v8 = v1[8];
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1AEB336A8()
{
  v1 = (type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  v10 = type metadata accessor for UnknownStorage();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB337A8()
{
  v1 = (type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = v1[8];
  v10 = type metadata accessor for UnknownStorage();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1AEB338CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1AEB33A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AEB33B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AEB33C2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB33C64()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB33CC0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB33CF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB33D30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB33D8C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v3(v4);
}

__n128 sub_1AEB33DFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEB33E08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB33E64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SKPresenceDataSource.presentDevices.setter();
}

uint64_t sub_1AEB33E9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB33EE8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_1AEB33F3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB33F88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_1AEB33FDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB34028(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t sub_1AEB3407C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB340D8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB34118()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB34150@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB341B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1AEB34204()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVySiGMd, &_s15Synchronization6AtomicVySiGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AEB34244(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB34290(char a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB342DC(__int16 a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB34328(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB34374(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB343C0(char a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB3440C(__int16 a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB34458(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AEB344A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB344F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t sub_1AEB34544()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1AEB345D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB34610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB34648()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1AEB34684()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AEB346BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB346F4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  v11 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v8], v2);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1AEB34830()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1AEB34974@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB34A28@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB34AF0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB34BA4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB34C68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB34D40@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB34E18@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB34EF0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB34FC8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB350A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB35178@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB35250@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB35328@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB35400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3544C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB354C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB354FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35548(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

__n128 sub_1AEB355A8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AEB355B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35600(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t sub_1AEB35660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB356AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_1AEB3570C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB35758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB357C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB3588C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB358E8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);

  return v3(v4);
}

uint64_t sub_1AEB3594C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SimulatedDataCryptor.supportsSecureCoding;
  return result;
}

uint64_t sub_1AEB35998(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SimulatedDataCryptor.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1AEB359E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35A34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_1AEB35A88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35AD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_1AEB35B2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB35B74()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB35BB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35C18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB35C9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB35CE4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB35D28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB35DEC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB35E54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35ED8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB35F5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB35FC0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x138);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB3603C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB360A0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x150);

  return v3(v4);
}

uint64_t sub_1AEB3610C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB36238()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB362C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1AEB36424()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB36508()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB36540()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t _s14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1AEB366B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB36720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB36790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEB367FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1AEB3687C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for OSSignpostID();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1AEB369A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ContinuousClock.Instant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for OSSignpostID();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1AEB36AD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB36B20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_1AEB36C14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB36C60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_1AEB36CC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB36D14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t sub_1AEB36D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWError();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEB36DE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for NWError();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1AEB36E6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB36EA4()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AEB36EFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB36F34()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB36FE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB37030@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB3708C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v4(v2, v3);
}

uint64_t sub_1AEB3715C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ApplicationLauncher._applicationLaunchTimeout;
  return result;
}

uint64_t sub_1AEB371AC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDy10Foundation4UUIDVSayySb_s5Error_pSgtcGGGMd, &_s15Synchronization5MutexVySDy10Foundation4UUIDVSayySb_s5Error_pSgtcGGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AEB371DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEB3722C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB37274()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB372B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB372F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB3733C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEB37418()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1AEB3750C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEB375F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB3764C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB376B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB376E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB37720()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1AEB377D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEB37894()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s14CopresenceCore13DownloadTokenVAA0D0A2aDP5tokenSSvgTW_0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1AEB37900()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3794C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

uint64_t sub_1AEB37A80()
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v2 = *(*(updated - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v56 = *(*(updated - 8) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v57 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = (v0 + v3);
  v10 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v10 - 8) + 48))(v0 + v3, 1, v10))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = *(v9 + 1);

      v41 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
      v42 = *(v41 + 20);
      v43 = type metadata accessor for UnknownStorage();
      v53 = *(*(v43 - 8) + 8);
      v54 = v43;
      v53(&v9[v42]);
      v44 = &v9[*(v41 + 24)];
      v45 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45))
      {
        goto LABEL_2;
      }

      outlined consume of Data._Representation(*v44, *(v44 + 1));
      (v53)(&v44[*(v45 + 20)], v54);
      v46 = &v44[*(v45 + 24)];
      v47 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
      if ((*(*(v47 - 8) + 48))(v46, 1, v47))
      {
        goto LABEL_2;
      }

      outlined consume of Data._Representation(*v46, *(v46 + 1));
      (v53)(&v46[*(v47 + 24)], v54);
      v22 = &v46[*(v47 + 28)];
      v48 = type metadata accessor for AttachmentLedger_EncryptionID(0);
      if ((*(*(v48 - 8) + 48))(v22, 1, v48))
      {
        goto LABEL_2;
      }

      outlined consume of Data._Representation(*v22, *(v22 + 1));
      v24 = *(v48 + 20);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_2;
      }

      v18 = *(v9 + 1);

      v19 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
      v20 = *(v19 + 20);
      v21 = type metadata accessor for UnknownStorage();
      v53 = *(*(v21 - 8) + 8);
      v54 = v21;
      v53(&v9[v20]);
      v22 = &v9[*(v19 + 24)];
      v23 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23))
      {
        goto LABEL_2;
      }

      outlined consume of Data._Representation(*v22, *(v22 + 1));
      outlined consume of Data._Representation(*(v22 + 4), *(v22 + 5));
      v24 = *(v23 + 28);
    }

    v25 = &v22[v24];
    v26 = v54;
LABEL_14:
    (v53)(v25, v26);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(v9 + 1);

      outlined consume of Data._Representation(*(v9 + 2), *(v9 + 3));
      v16 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0) + 24);
      v17 = type metadata accessor for UnknownStorage();
      (*(*(v17 - 8) + 8))(&v9[v16], v17);
    }

    goto LABEL_2;
  }

  v27 = *(v9 + 1);

  v28 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v29 = *(v28 + 20);
  v30 = type metadata accessor for UnknownStorage();
  v53 = *(*(v30 - 8) + 8);
  v55 = v30;
  v53(&v9[v29]);
  v31 = &v9[*(v28 + 24)];
  v32 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    outlined consume of Data._Representation(*v31, v31[1]);
    v33 = v31[2];

    outlined consume of Data._Representation(v31[5], v31[6]);
    (v53)(v31 + *(v32 + 32), v55);
    v34 = (v31 + *(v32 + 36));
    v35 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    if (!(*(*(v35 - 1) + 48))(v34, 1, v35))
    {
      v36 = v34[1];

      v37 = v34[3];

      outlined consume of Data._Representation(v34[4], v34[5]);
      outlined consume of Data._Representation(v34[6], v34[7]);
      (v53)(v34 + v35[8], v55);
      v51 = v34 + v35[9];
      v38 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
      v50 = *(*(v38 - 8) + 48);
      v52 = v38;
      if (!v50(v51, 1))
      {
        outlined consume of Data._Representation(*(v51 + 1), *(v51 + 2));
        (v53)(&v51[*(v52 + 24)], v55);
      }

      v39 = v34 + v35[10];
      if (!(v50)(v39, 1, v52))
      {
        outlined consume of Data._Representation(*(v39 + 1), *(v39 + 2));
        v25 = &v39[*(v52 + 24)];
        v26 = v55;
        goto LABEL_14;
      }
    }
  }

LABEL_2:
  v11 = (v3 + v56 + v6) & ~v6;
  v12 = *(updated + 20);
  v13 = type metadata accessor for UnknownStorage();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  (*(v5 + 8))(v0 + v11, v4);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v57, v2 | v6 | 7);
}

uint64_t sub_1AEB38170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB381C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 264);

  return v3(v4);
}

double sub_1AEB38220@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 288))(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1AEB38298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB382EC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);
  v4 = *a1;
  return v3(v2);
}

double sub_1AEB38350@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 344))(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1AEB383C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

double sub_1AEB38420@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 392))(v6);
  v3 = v6[1];
  v4 = v6[2];
  *a2 = v6[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1AEB3849C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v3;
  v7 = *(a1 + 24);
  return (*(*v4 + 400))(v6);
}

uint64_t sub_1AEB38514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB38568(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 592);

  return v3(v4);
}

uint64_t sub_1AEB385C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 608))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB38618(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 616);

  return v3(v4);
}

uint64_t sub_1AEB38674@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB386C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 640);

  return v3(v4);
}

uint64_t sub_1AEB38724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB38848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB38A18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB38ABC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB38B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB38C64()
{
  v1 = (type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 32);

  v7 = v1[9];
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = v0 + v3 + v1[10];
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  if (!(*(*(AuthToken - 8) + 48))(v10, 1, AuthToken))
  {
    v9(v10 + *(AuthToken + 24), v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB38DD4()
{
  v24 = type metadata accessor for UUID();
  v1 = *(v24 - 8);
  v2 = *(v1 + 80);
  v22 = (v2 + 48) & ~v2;
  v20 = (*(v1 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = type metadata accessor for ContinuousClock.Instant();
  v3 = *(v23 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v21 = type metadata accessor for ContinuousClock();
  v6 = *(v21 - 8);
  v7 = *(v6 + 80);
  v8 = (((v20 + v4 + 8) & ~v4) + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v19 = type metadata accessor for Date();
  v10 = *(v19 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v18 = *(v10 + 64);
  v13 = v2 | v4 | v7 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 40);

  (*(v1 + 8))(v0 + v22, v24);
  v16 = *(v0 + v20);

  (*(v3 + 8))(v0 + ((v20 + v4 + 8) & ~v4), v23);
  (*(v6 + 8))(v0 + v8, v21);
  (*(v10 + 8))(v0 + v12, v19);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v18, v13 | 7);
}

uint64_t sub_1AEB39060()
{
  v26 = type metadata accessor for ContinuousClock.Instant();
  v1 = *(v26 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (type metadata accessor for AttachmentLedger_AuthPutMaterials(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (((v2 + 32) & ~v2) + v3 + v5) & ~v5;
  v7 = *(*v4 + 64);
  v27 = type metadata accessor for ContinuousClock();
  v8 = *(v27 - 8);
  v9 = *(v8 + 80);
  v24 = (v6 + v7 + v9) & ~v9;
  v22 = (*(v8 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = type metadata accessor for UUID();
  v10 = *(v25 - 8);
  v11 = *(v10 + 80);
  v12 = (v22 + v11 + 8) & ~v11;
  v23 = *(v10 + 64);
  v13 = v2 | v5 | v9 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + ((v2 + 32) & ~v2), v26);
  v15 = *(v0 + v6 + 8);

  v16 = *(v0 + v6 + 24);

  v17 = *(v0 + v6 + 40);

  v18 = v4[10];
  v19 = type metadata accessor for UnknownStorage();
  (*(*(v19 - 8) + 8))(v0 + v6 + v18, v19);
  (*(v8 + 8))(v0 + v24, v27);
  v20 = *(v0 + v22);

  (*(v10 + 8))(v0 + v12, v25);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v23, v13 | 7);
}

uint64_t sub_1AEB39320()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);
  if (v7 >> 60 != 15 && (v7 & 0xF000000000000000) != 0xB000000000000000)
  {
    outlined consume of Data._Representation(*(v0 + v5 + 8), v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 24, v3 | 7);
}

uint64_t sub_1AEB3941C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));

  return MEMORY[0x1EEE6BDD0](v0, v6 + 40, v3 | 7);
}

uint64_t sub_1AEB39518()
{
  v1 = (type metadata accessor for AttachmentLedger_AuthPutMaterials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = v1[10];
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB39610()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v2 = v0[14];

  v3 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AEB39660()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB396B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB39790()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB39854()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1AEB39890@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1AEB398FC(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(&v4);
}

uint64_t sub_1AEB39964@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB39A1C()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB39A54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB39AB0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);

  return v3(v4);
}

uint64_t sub_1AEB39B14@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB39B70(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB39BDC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ActivitySessionInterface.identity;
  return result;
}

uint64_t sub_1AEB39C28(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ActivitySessionInterface.identity = v1;
  return result;
}

__n128 sub_1AEB39D64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AEB39D78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB39DB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB39E00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);

  return v3(v4);
}

uint64_t sub_1AEB39E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB39EA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t sub_1AEB39EF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB39F40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_1AEB39F9C()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB39FDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3A014()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3A04C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3A094@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

__n128 sub_1AEB3A134(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AEB3A1A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3A1FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);

  return v3(v4);
}

uint64_t sub_1AEB3A264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3A2B8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);

  return v3(v4);
}

uint64_t sub_1AEB3A320@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3A374(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);

  return v3(v4);
}

uint64_t sub_1AEB3A3DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3A430(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);

  return v3(v4);
}

uint64_t sub_1AEB3A498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3A4EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 400);

  return v3(v4);
}

uint64_t sub_1AEB3A554@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3A618()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3A654()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = (type metadata accessor for EgressMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + 6);

  (*(*(v1 - 8) + 8))(&v0[v5], v1);
  v8 = *&v0[v5 + v3[11]];

  v9 = &v0[v5 + v3[12]];
  if (*v9)
  {
    v10 = *(v9 + 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1AEB3A768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (type metadata accessor for EgressMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = (v4 + 48) & ~v4;
  (*(*(v1 - 8) + 8))(v0 + v6, v1);
  v7 = *(v0 + v6 + v3[11]);

  v8 = (v0 + v6 + v3[12]);
  if (*v8)
  {
    v9 = v8[1];
  }

  v10 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10);

  v13 = *(v0 + v11);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v4 | 7);
}

uint64_t sub_1AEB3A898()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t protocol witness for Message.init() in conformance DG_EncryptionID@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t _s14CopresenceCore31AttachmentLedger_ResponseStatusOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14CopresenceCore31AttachmentLedger_ResponseStatusOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t _s14CopresenceCore31AttachmentLedger_ResponseStatusOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14CopresenceCore31AttachmentLedger_ResponseStatusOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1AEB3AF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB3B0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3B1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB3B29C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3B348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB3B478(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB3B654(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB3B7A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3B87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB3B928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3B9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AEB3BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AEB3BB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB3BC50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3BD80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB3BE2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3BEF8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1AEB3C07C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AEB3C258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AEB3C354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AEB3C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB3C564(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AEB3C844(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB3CAFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3CC2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1AEB3CDB0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AEB3CFAC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB3CFEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3D024()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1AEB3D074()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v3 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 116, 7);
}

uint64_t sub_1AEB3D0D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEB3D1B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1AEB3D2A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3D2DC()
{
  outlined consume of BackgroundSession.State(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB3D324()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB3D36C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB3D3C8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB3D43C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3D498(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v3(v4);
}

uint64_t sub_1AEB3D4FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3D558(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v3(v4);
}

uint64_t sub_1AEB3D68C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy14CopresenceCore24BackgroundSessionManagerC0F11UpdateStateVGMd, &_s15Synchronization5MutexVy14CopresenceCore24BackgroundSessionManagerC0F11UpdateStateVGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AEB3D6BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB3D6FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB3D74C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB3D794()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3D7CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB3D814()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEB3D86C()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of BackgroundSession.State(v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3D8B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB3D914()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3D94C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1AEB3DA48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3DA88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3DB0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3DB60()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1AEB3DBA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = ActivityAuthorizationManager.neighborhoodActivityConduit.getter();
  *a2 = result;
  return result;
}

void sub_1AEB3DBD0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  *(*a2 + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit) = *a1;
  v3 = v2;
}

uint64_t sub_1AEB3DC20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3DC58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB3DCF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3DD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWError();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEB3DDA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for NWError();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1AEB3DE28()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB3DE88()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3DEC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3DF18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB3DF78()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AEB3DFD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB3E070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3E0BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t sub_1AEB3E110@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_1AEB3E160()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB3E1F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3E22C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3E264()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB3E2FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB3E344()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3E37C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3E3BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB3E498@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AEB3E518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AEB3E538()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB3E5AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3E5F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);

  return v3(v4);
}

uint64_t sub_1AEB3E65C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3E6A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_1AEB3E700()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB3E73C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3E7D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB3E81C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_1AEB3E8B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckV21InternalSwiftProtobuf7MessageAafGPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1AEB3E9D4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 == 255 || (v2 & 1) != 0)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = *result;
    v4 = *(result + 8);
    v5 = a2;
    result = outlined copy of CP_SystemEvent.OneOf_Event();
    a2 = v5;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB3EA3C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = *result;
    v4 = *(result + 8);
    v5 = a2;
    result = outlined copy of CP_SystemEvent.OneOf_Event();
    a2 = v5;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB3ECE4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1AEB3EE68(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AEB3EFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AEB3F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AEB3F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB3F198(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3F27C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB3F328(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3F3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 <= 1)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB3F47C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3F544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB3F674(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB3F7A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB3F850(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3F91C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1AEB3FAA0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AEB3FC24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB3FCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEB3FDC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}