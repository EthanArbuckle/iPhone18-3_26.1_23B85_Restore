void closure #2 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (v8[3])
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v8, v9);
    UnreliableMessenger._start(dataCryptorProvider:)(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, log);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), v9);
      _os_log_impl(&dword_1AEB26000, v4, v5, "dataCryptorProvider required for immediate start, topic=%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }
  }
}

uint64_t objectdestroy_12Tm_0()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v1 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void UnreliableMessenger._start(dataCryptorProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 112);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v2 + 160))
  {
    return;
  }

  outlined init with copy of UserNotificationCenter(a1, v22);
  swift_beginAccess();
  outlined assign with take of TopicCryptorProvider?(v22, v2 + 120);
  swift_endAccess();
  *(v2 + 160) = 1;
  v11 = *(v2 + 184);
  if (v11)
  {
    v12 = *(v2 + 192);

    v14 = v11(v13);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v11);
    v15 = *(v2 + 200);
    *(v2 + 200) = v14;
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, log);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v22);
    _os_log_impl(&dword_1AEB26000, v17, v18, "Bootstrapping channel-stream=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  UnreliableMessenger.setupChannelStream()();
}

void UnreliableMessenger.setupChannelStream()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v97 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMR);
  v101 = *(v5 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v99 = &v79 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMR);
  v100 = *(v102 - 8);
  v8 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_14CopresenceCore19UnreliableMessengerC10BufferFullOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_14CopresenceCore19UnreliableMessengerC10BufferFullOGMR);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v85 = (&v79 - v12);
  v13 = type metadata accessor for Publishers.PrefetchStrategy();
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMd, &_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMR);
  v82 = *(v16 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMd, &_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMR);
  v21 = *(v20 - 8);
  v83 = v20;
  v84 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v79 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMd, &_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMR);
  v87 = *(v90 - 8);
  v25 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v27 = &v79 - v26;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMd, &_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMR);
  v88 = *(v91 - 8);
  v28 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v79 - v29;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = (&v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v1 + 112);
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30);
  v96 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (*(v1 + 160) <= 3u)
  {
    v36 = *(v1 + 240);
    LOBYTE(v103[0]) = 1;

    PassthroughSubject.send(completion:)();

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = PassthroughSubject.init()();
    v81 = v5;
    v41 = v40;
    v42 = *(v1 + 240);
    *(v1 + 240) = v40;

    v103[0] = v41;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<EgressMessage<DG_Datagram>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
    lazy protocol witness table accessor for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull();
    Publisher<>.setFailureType<A>(to:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20AnyRawEgressDatagram_pMd, &_s14CopresenceCore20AnyRawEgressDatagram_pMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull> and conformance Publishers.SetFailureType<A, B>, &_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMd, &_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMR);
    v79 = v24;
    Publisher.map<A>(_:)();
    (*(v82 + 8))(v19, v16);
    v43 = v1;
    v44 = *(v1 + 40);
    v46 = v92;
    v45 = v93;
    v47 = v89;
    (*(v92 + 104))(v89, *MEMORY[0x1E695BD28], v93);
    v48 = v85;
    *v85 = partial apply for closure #2 in UnreliableMessenger.setupChannelStream();
    v48[1] = v43;
    v80 = v43;
    v50 = v94;
    v49 = v95;
    (*(v94 + 104))(v48, *MEMORY[0x1E695BD48], v95);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull>, AnyRawEgressDatagram> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMd, &_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMR);

    v51 = v83;
    v52 = v79;
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v50 + 8))(v48, v49);
    (*(v46 + 8))(v47, v45);
    (*(v84 + 8))(v52, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMd, &_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<Publishers.Map<Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull>, AnyRawEgressDatagram>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMd, &_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Empty<AnyRawEgressDatagram, Never> and conformance Empty<A, B>, &_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMd, &_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMR);
    v53 = v86;
    v54 = v90;
    Publisher.catch<A>(_:)();
    (*(v87 + 8))(v27, v54);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Catch<Publishers.Buffer<Publishers.Map<Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull>, AnyRawEgressDatagram>>, Empty<AnyRawEgressDatagram, Never>> and conformance Publishers.Catch<A, B>, &_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMd, &_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMR);
    v55 = v91;
    v56 = Publisher.eraseToAnyPublisher()();
    v57 = (*(v88 + 8))(v53, v55);
    v58 = v80;
    v59 = *(v80 + 13);
    v103[0] = (*(v80 + 12))(v57);
    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    *(v60 + 24) = v56;
    v95 = v56;

    v94 = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UnreliableMessengerServiceProvider, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AnyRawIngressDatagram, DatagramChannelError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMR);
    v61 = v98;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    v62 = v96;
    v103[0] = v96;
    v63 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v64 = v97;
    (*(*(v63 - 8) + 56))(v97, 1, 1, v63);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<AnyPublisher<AnyRawIngressDatagram, DatagramChannelError>, Publishers.SetFailureType<AnyPublisher<UnreliableMessengerServiceProvider, Never>, DatagramChannelError>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMR);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
    v65 = v62;
    v66 = v99;
    v67 = v102;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v64, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.FlatMap<AnyPublisher<AnyRawIngressDatagram, DatagramChannelError>, Publishers.SetFailureType<AnyPublisher<UnreliableMessengerServiceProvider, Never>, DatagramChannelError>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMR);
    swift_retain_n();
    v68 = v81;
    v69 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v101 + 8))(v66, v68);
    v70 = *(v58 + 31);
    *(v58 + 31) = v69;

    *(v58 + 160) = 2;
    UnreliableMessenger.attemptFlushEgressQueue()();

    (*(v100 + 8))(v61, v67);
    return;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, log);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v103[0] = v75;
    *v74 = 136315138;
    v76 = UnreliableMessenger.description.getter();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v103);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Skipping channel-stream setup, closing, %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }
}

uint64_t UnreliableMessenger.deinit()
{
  v1 = v0;
  if (*(v0 + 248))
  {

    AnyCancellable.cancel()();
  }

  v2 = *(v0 + 24);

  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + 80);
  v3 = *(v0 + 104);

  outlined destroy of NSObject?(v0 + 120, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v4 = *(v0 + 192);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 184));
  v5 = *(v0 + 200);
  swift_unknownObjectRelease();
  v6 = *(v0 + 208);

  v7 = *(v0 + 216);

  v8 = *(v0 + 224);

  v9 = *(v0 + 232);

  v10 = *(v0 + 240);

  v11 = *(v0 + 248);

  v12 = *(v0 + 256);

  v13 = *(v0 + 264);

  v14 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  return v1;
}

uint64_t UnreliableMessenger.__deallocating_deinit()
{
  UnreliableMessenger.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t UnreliableMessenger.description.getter()
{
  v1 = v0;
  MEMORY[0x1B2710020](0x3D666C6573, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](*(v0 + 16), *(v0 + 24));
  v2 = 0x7964616552;
  v3 = 0xEC000000676E6974;
  v4 = *(v0 + 160);
  v5 = 0x63656E6E6F636552;
  v6 = 0xEC0000006E776F44;
  v7 = 0x676E697474756853;
  if (v4 != 4)
  {
    v7 = 0x6E776F6474756853;
    v6 = 0xE800000000000000;
  }

  if (v4 != 3)
  {
    v5 = v7;
    v3 = v6;
  }

  v8 = 0xE800000000000000;
  if (v4 == 1)
  {
    v2 = 0x676E697472617453;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (*(v0 + 160))
  {
    v9 = v8;
  }

  else
  {
    v2 = 0x6C616974696E49;
    v9 = 0xE700000000000000;
  }

  if (*(v0 + 160) <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (*(v0 + 160) <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x1B2710020](v10, v11);

  _StringGuts.grow(_:)(21);

  v31 = *(v0 + 72);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v12);

  v32 = *(v0 + 168);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v13);

  _StringGuts.grow(_:)(24);

  swift_beginAccess();
  v14 = *(v0 + 208);

  v15 = Dictionary.description.getter();
  v17 = v16;

  MEMORY[0x1B2710020](v15, v17);

  _StringGuts.grow(_:)(35);

  swift_beginAccess();
  v18 = v1[27];

  v19 = Dictionary.description.getter();
  v21 = v20;

  MEMORY[0x1B2710020](v19, v21);

  _StringGuts.grow(_:)(34);

  swift_beginAccess();
  v22 = v1[28];

  v23 = Dictionary.description.getter();
  v25 = v24;

  MEMORY[0x1B2710020](v23, v25);

  _StringGuts.grow(_:)(31);

  swift_beginAccess();
  v26 = v1[29];
  if (v26 >> 62)
  {
    if (v26 < 0)
    {
      v30 = v1[29];
    }

    __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v28);

  _StringGuts.grow(_:)(26);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D6369706F74, 0xE600000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D6574617473, 0xE600000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE36200);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D6D754E716573, 0xE700000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE36220);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000021, 0x80000001AEE36240);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE36270);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001DLL, 0x80000001AEE362A0);

  return 0;
}

void UnreliableMessenger.updateState(state:)(unsigned __int8 a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 112);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v2 = *(v3 + 160);
    *(v3 + 160) = a1;
    if (one-time initialization token for log == -1)
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
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    v17 = 0xE700000000000000;
    v18 = 0x63656E6E6F636552;
    *v15 = 136315650;
    v19 = 0xEC000000676E6974;
    v20 = 0x676E697474756853;
    v21 = 0xEC0000006E776F44;
    if (v2 != 4)
    {
      v20 = 0x6E776F6474756853;
      v21 = 0xE800000000000000;
    }

    if (v2 != 3)
    {
      v18 = v20;
      v19 = v21;
    }

    v22 = 0xE800000000000000;
    v23 = 0x676E697472617453;
    if (v2 != 1)
    {
      v23 = 0x7964616552;
      v22 = 0xE500000000000000;
    }

    if (v2)
    {
      v17 = v22;
    }

    else
    {
      v23 = 0x6C616974696E49;
    }

    if (v2 <= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = v18;
    }

    if (v2 <= 2)
    {
      v25 = v17;
    }

    else
    {
      v25 = v19;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v38);

    *(v15 + 4) = v26;
    v27 = 0xE700000000000000;
    v28 = 0x63656E6E6F636552;
    *(v15 + 12) = 2080;
    v29 = 0xEC000000676E6974;
    v30 = 0x676E697474756853;
    v31 = 0xEC0000006E776F44;
    if (a1 != 4)
    {
      v30 = 0x6E776F6474756853;
      v31 = 0xE800000000000000;
    }

    if (a1 != 3)
    {
      v28 = v30;
      v29 = v31;
    }

    v32 = 0xE800000000000000;
    v33 = 0x676E697472617453;
    if (a1 != 1)
    {
      v33 = 0x7964616552;
      v32 = 0xE500000000000000;
    }

    if (a1)
    {
      v27 = v32;
    }

    else
    {
      v33 = 0x6C616974696E49;
    }

    if (a1 <= 2u)
    {
      v34 = v33;
    }

    else
    {
      v34 = v28;
    }

    if (a1 <= 2u)
    {
      v35 = v27;
    }

    else
    {
      v35 = v29;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v38);

    *(v15 + 14) = v36;
    *(v15 + 22) = 2080;
    *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v38);
    _os_log_impl(&dword_1AEB26000, v13, v14, "Updated state old-state=%s new-state=%s topic=%s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }
}

uint64_t closure #1 in UnreliableMessenger.setupChannelStream()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  a2[4] = &protocol witness table for <> EgressMessage<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, boxed_opaque_existential_1, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
}

void closure #2 in UnreliableMessenger.setupChannelStream()()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, log);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = UnreliableMessenger.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "[Send] Unexpected intermediate buffer-filled %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1B27120C0](v3, -1, -1);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }
}

uint64_t closure #3 in UnreliableMessenger.setupChannelStream()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20AnyRawEgressDatagram_pMd, &_s14CopresenceCore20AnyRawEgressDatagram_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEDB5DC8](1, v0, v1, v2);
}

uint64_t closure #4 in UnreliableMessenger.setupChannelStream()@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = a2[2];
  v14 = a2[3];
  v16 = a2[5];
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = (*(v13 + 16))(v15, v14, a3, v16, v11, v12, v13);
  result = outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *a4 = v18;
  return result;
}

void UnreliableMessenger.handleChannelStreamClosed(completedWith:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v3 - 8);
  v109 = v3;
  v4 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchQoS();
  v105 = *(v107 - 8);
  v6 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchTime();
  v103 = *(v113 - 8);
  v8 = *(v103 + 64);
  v9 = MEMORY[0x1EEE9AC00](v113);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v110 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v111 = &v96 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v116 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v96 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v96 - v23;
  v25 = type metadata accessor for DatagramChannelError(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v118 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v114 = &v96 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v115 = &v96 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v96 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v119 = &v96 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = (&v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v1 + 112);
  *v42 = v43;
  (*(v39 + 104))(v42, *MEMORY[0x1E69E8020], v38);
  v102 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v24, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v44 = *(v26 + 48);
  if (v44(v24, 1, v25) == 1)
  {
    outlined destroy of NSObject?(v24, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, log);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136315138;
        v50 = UnreliableMessenger.description.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &aBlock);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1AEB26000, v46, v47, "Service closed ingress stream, %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x1B27120C0](v49, -1, -1);
        MEMORY[0x1B27120C0](v48, -1, -1);
      }

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_4;
  }

  v53 = v119;
  outlined init with take of DG_SequenceNumber(v24, v119, type metadata accessor for DatagramChannelError);
  v54 = v1;
  if (*(v1 + 160) > 3u)
  {
    v66 = 0xD000000000000025;
    v67 = 0x80000001AEE36510;
    v68 = 2;
    goto LABEL_14;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  v56 = __swift_project_value_buffer(v55, log);
  outlined init with copy of DG_SequenceNumber(v53, v36, type metadata accessor for DatagramChannelError);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v97 = v58;
    v98 = v57;
    v99 = v56;
    v59 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock = v96;
    *v59 = 134218242;
    *(v59 + 4) = v54[22];

    *(v59 + 12) = 2080;
    v60 = v117;
    outlined init with copy of DG_SequenceNumber(v36, v117, type metadata accessor for DatagramChannelError);
    (*(v26 + 56))(v60, 0, 1, v25);
    v61 = v60;
    v62 = v116;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v61, v116, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    v63 = v44(v62, 1, v25);
    v100 = v26;
    if (v63 == 1)
    {
      v64 = 7104878;
      v65 = 0xE300000000000000;
    }

    else
    {
      v70 = v115;
      outlined init with take of DG_SequenceNumber(v62, v115, type metadata accessor for DatagramChannelError);
      outlined init with copy of DG_SequenceNumber(v70, v114, type metadata accessor for DatagramChannelError);
      v71 = String.init<A>(reflecting:)();
      v65 = v72;
      v64 = v71;
      outlined destroy of DG_SequenceNumber(v70, type metadata accessor for DatagramChannelError);
    }

    outlined destroy of NSObject?(v117, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    outlined destroy of DG_SequenceNumber(v36, type metadata accessor for DatagramChannelError);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &aBlock);

    *(v59 + 14) = v73;
    v74 = v98;
    _os_log_impl(&dword_1AEB26000, v98, v97, "Channel stream attempt #%ld failed, error=%s", v59, 0x16u);
    v75 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v59, -1, -1);

    v26 = v100;
  }

  else
  {

    outlined destroy of DG_SequenceNumber(v36, type metadata accessor for DatagramChannelError);
  }

  v76 = v118;
  outlined init with copy of DG_SequenceNumber(v53, v118, type metadata accessor for DatagramChannelError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_26;
    }

    v66 = 0xD000000000000017;
    v67 = 0x80000001AEE36560;
    v68 = 1;
LABEL_14:
    UnreliableMessenger._close(reason:description:)(v68, v66, v67);
    v69 = v53;
LABEL_30:
    outlined destroy of DG_SequenceNumber(v69, type metadata accessor for DatagramChannelError);
    return;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_26:
    aBlock = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    aBlock = 0xD000000000000015;
    v122 = 0x80000001AEE36540;
    v90 = v111;
    outlined init with copy of DG_SequenceNumber(v53, v111, type metadata accessor for DatagramChannelError);
    (*(v26 + 56))(v90, 0, 1, v25);
    v91 = v110;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v90, v110, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    if (v44(v91, 1, v25) == 1)
    {
      v92 = 7104878;
      v93 = 0xE300000000000000;
    }

    else
    {
      v94 = v115;
      outlined init with take of DG_SequenceNumber(v91, v115, type metadata accessor for DatagramChannelError);
      outlined init with copy of DG_SequenceNumber(v94, v114, type metadata accessor for DatagramChannelError);
      v92 = String.init<A>(reflecting:)();
      v93 = v95;
      outlined destroy of DG_SequenceNumber(v94, type metadata accessor for DatagramChannelError);
    }

    outlined destroy of NSObject?(v90, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    MEMORY[0x1B2710020](v92, v93);

    UnreliableMessenger._close(reason:description:)(1u, aBlock, v122);

    v69 = v119;
    goto LABEL_30;
  }

  outlined destroy of DG_SequenceNumber(v76, type metadata accessor for DatagramChannelError);
  if (v54[22] >= v54[6])
  {
    v66 = 0xD00000000000001FLL;
    v67 = 0x80000001AEE36580;
    v68 = 0;
    goto LABEL_14;
  }

  v78 = v101;
  static DispatchTime.now()();
  v79 = v54[7];
  + infix(_:_:)();
  v80 = *(v103 + 8);
  v80(v78, v113);

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 134217984;
    *(v83 + 4) = v79;
    _os_log_impl(&dword_1AEB26000, v81, v82, "Will retry channel-stream in %f seconds", v83, 0xCu);
    MEMORY[0x1B27120C0](v83, -1, -1);
  }

  UnreliableMessenger.updateState(state:)(3u);
  v84 = swift_allocObject();
  swift_weakInit();
  v125 = partial apply for closure #1 in UnreliableMessenger.handleChannelStreamClosed(completedWith:);
  v126 = v84;
  aBlock = MEMORY[0x1E69E9820];
  v122 = 1107296256;
  v123 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v124 = &block_descriptor_94;
  v85 = _Block_copy(&aBlock);

  v86 = v104;
  static DispatchQoS.unspecified.getter();
  v120 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v87 = v106;
  v88 = v109;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v89 = v112;
  MEMORY[0x1B2710670](v112, v86, v87, v85);
  _Block_release(v85);
  (*(v108 + 8))(v87, v88);
  (*(v105 + 8))(v86, v107);
  v80(v89, v113);
  outlined destroy of DG_SequenceNumber(v119, type metadata accessor for DatagramChannelError);
}

void UnreliableMessenger.processIngressDatagram(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v155[-v6];
  v161 = type metadata accessor for UUID();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v155[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OSSignpostID();
  v163 = *(v11 - 8);
  v12 = *(v163 + 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v155[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v155[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = v2[14];
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_79:
    swift_once();
LABEL_4:
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, log);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v7;
      _os_log_impl(&dword_1AEB26000, v28, v29, "[Receive] Datagram has the same participantID, dropping, seqNum=%llu", v30, 0xCu);
LABEL_39:
      MEMORY[0x1B27120C0](v30, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v160 = v7;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v7 = (*(v23 + 8))(v22, v23);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 16))(v24, v25);
  if (v26 == v2[9])
  {
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_79;
  }

  v31 = v26;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, log);

  v158 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v159 = v31;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v31;
    v40 = v38;
    v170[0] = v38;
    *v37 = 134218498;
    *(v37 + 4) = v39;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v7;
    *(v37 + 22) = 2080;
    *(v37 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v170);
    _os_log_impl(&dword_1AEB26000, v34, v35, "[Receive] Datagram received fromParticipantID=%llu seqNum=%llu topic=%s", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1B27120C0](v40, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }

  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v41, static Signposts.messenger);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = (*(v43 + 24))(v42, v43);
  v46 = v45;
  if (OSSignposter.isEnabled.getter())
  {
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v44, v46, v14);
  }

  else
  {
    OSSignpostID.init(_:)();
    outlined consume of Data._Representation(v44, v46);
  }

  outlined init with copy of UserNotificationCenter(a1, v170);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v47);

  v48 = OSSignposter.logHandle.getter();
  v49 = static os_signpost_type_t.event.getter();

  v50 = OS_os_log.signpostsEnabled.getter();
  v162 = v7;
  if (v50)
  {
    v156 = v49;
    v157 = v8;
    v51 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v169[0] = v8;
    *v51 = 134218754;
    v53 = v171;
    v52 = v172;
    __swift_project_boxed_opaque_existential_1(v170, v171);
    v54 = (*(v52 + 24))(v53, v52);
    v56 = v55 >> 62;
    if ((v55 >> 62) > 1)
    {
      v7 = v162;
      if (v56 != 2)
      {
        outlined consume of Data._Representation(v54, v55);
        v58 = 0;
        goto LABEL_27;
      }

      v61 = *(v54 + 16);
      v60 = *(v54 + 24);
      v54 = outlined consume of Data._Representation(v54, v55);
      v58 = v60 - v61;
      if (!__OFSUB__(v60, v61))
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    else
    {
      v7 = v162;
      if (!v56)
      {
        v57 = BYTE6(v55);
        outlined consume of Data._Representation(v54, v55);
        v58 = v57;
LABEL_27:
        v59 = v159;
        *(v51 + 4) = v58;
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        *(v51 + 12) = 2080;
        *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v169);
        *(v51 + 22) = 2048;
        *(v51 + 24) = v59;
        *(v51 + 32) = 2048;
        *(v51 + 34) = v7;
        v64 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v48, v156, v64, "transport-message-received", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%llu", v51, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x1B27120C0](v8, -1, -1);
        MEMORY[0x1B27120C0](v51, -1, -1);

        (*(v163 + 1))(v14, v11);
        v8 = v157;
        goto LABEL_28;
      }
    }

    v59 = HIDWORD(v54);
    v62 = v54;
    v63 = outlined consume of Data._Representation(v54, v55);
    LODWORD(v58) = v59 - v62;
    if (__OFSUB__(v59, v62))
    {
      goto LABEL_82;
    }

    v58 = v58;
    goto LABEL_27;
  }

  (*(v163 + 1))(v14, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v170);
  v59 = v159;
LABEL_28:
  swift_beginAccess();
  v65 = v2[26];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v169[0] = v2[26];
  v2[26] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v59, isUniquelyReferenced_nonNull_native);
  v2[26] = v169[0];
  swift_endAccess();
  swift_beginAccess();
  v67 = v2[27];
  v11 = v164;
  if (*(v67 + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v69 & 1) != 0))
  {
    v70 = *(*(v67 + 56) + 8 * v68);
  }

  else
  {
    v70 = 0;
  }

  v63 = swift_endAccess();
  v71 = __CFADD__(v70, 1);
  v51 = v70 + 1;
  if (v71)
  {
    __break(1u);
    __break(1u);
    do
    {
      __break(1u);
LABEL_82:
      __break(1u);
      v153 = v63;
      specialized _NativeDictionary.copy()();
      v63 = v153;
      v154 = v165;
      v2[28] = v165;
      if ((v51 & 1) == 0)
      {
        LOBYTE(v51) = v153;
        specialized _NativeDictionary._insert(at:key:value:)(v153, v59, 0, v154);
        v63 = v153;
      }

      v109 = v154[7];
      v110 = *(v109 + 8 * v63);
      v71 = __CFADD__(v110, 1);
      v111 = v110 + 1;
    }

    while (v71);
    *(v109 + 8 * v63) = v111;
    swift_endAccess();
    v170[0] = 0;
    v170[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v165 = 0x3D6D754E716573;
    v166 = 0xE700000000000000;
    v170[0] = v14;
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v112);

    MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE364F0);
    v170[0] = v59;
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v113);

    MEMORY[0x1B2710020](0x3D746E756F6320, 0xE700000000000000);
    swift_beginAccess();
    v114 = v2[28];
    if (*(v114 + 16) && (v115 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v116 & 1) != 0))
    {
      v117 = *(*(v114 + 56) + 8 * v115);
    }

    else
    {
      v117 = 0;
    }

    swift_endAccess();
    v170[0] = v117;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v118);

    MEMORY[0x1B2710020](34, 0xE100000000000000);
    v120 = v165;
    v119 = v166;
    v170[0] = a1;
    v121 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {

      v130 = a1;

      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = v8;
        v135 = swift_slowAlloc();
        v165 = v135;
        *v133 = 136315650;
        v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, &v165);

        *(v133 + 4) = v136;
        *(v133 + 12) = 2080;
        v168 = a1;
        v137 = a1;
        v138 = String.init<A>(reflecting:)();
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v165);

        *(v133 + 14) = v140;
        *(v133 + 22) = 2080;
        *(v133 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], &v165);
        _os_log_impl(&dword_1AEB26000, v131, v132, "[Decrypt] Dropping datagram, %s unknown error=%s topic=%s", v133, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v135, -1, -1);
        MEMORY[0x1B27120C0](v133, -1, -1);

        (*(v134 + 8))(v164, v161);
        return;
      }

      goto LABEL_64;
    }

    v122 = v165;

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    v125 = os_log_type_enabled(v123, v124);
    if (v122)
    {
      if (v125)
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v165 = v127;
        *v126 = 136315394;
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, &v165);

        *(v126 + 4) = v128;
        *(v126 + 12) = 2080;
        *(v126 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], &v165);
        v129 = "[Decrypt] Dropping datagram, decryption failed, %s topic=%s";
LABEL_61:
        _os_log_impl(&dword_1AEB26000, v123, v124, v129, v126, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v127, -1, -1);
        MEMORY[0x1B27120C0](v126, -1, -1);

LABEL_64:
        (*(v8 + 8))(v11, v161);
        return;
      }
    }

    else if (v125)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v165 = v127;
      *v126 = 136315394;
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, &v165);

      *(v126 + 4) = v141;
      *(v126 + 12) = 2080;
      *(v126 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], &v165);
      v129 = "[Decrypt] Dropping datagram, missing key, %s topic=%s";
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  swift_beginAccess();
  v72 = v2[27];
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v169[0] = v2[27];
  v2[27] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v59, v73);
  v2[27] = v169[0];
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?((v2 + 15), v170, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (!v171)
  {
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v74 = v172;
  __swift_project_boxed_opaque_existential_1(v170, v171);
  v75 = a1[3];
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v75);
  v77 = (*(v76 + 32))(v75, v76);
  v79 = v78;
  v80 = (*(v74 + 40))();
  outlined consume of Data._Representation(v77, v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v170);
  v81 = v162;
  if ((v80 & 1) == 0)
  {
    goto LABEL_37;
  }

  v82 = a1[3];
  v83 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v82);
  v84 = v160;
  AnyRawIngressDatagram.decodedEncryptionID.getter(v82, v83, v160);
  v85 = v161;
  if ((*(v8 + 48))(v84, 1, v161) == 1)
  {
    outlined destroy of NSObject?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_37:

    v28 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v86))
    {
      v30 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v170[0] = v87;
      *v30 = 134218242;
      *(v30 + 4) = v81;
      *(v30 + 12) = 2080;
      *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v170);
      _os_log_impl(&dword_1AEB26000, v28, v86, "Datagram has invalid encryptionID, dropping, seqNum=%llu topic=%s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x1B27120C0](v87, -1, -1);
      goto LABEL_39;
    }

LABEL_40:

    return;
  }

  (*(v8 + 32))(v11, v84, v85);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?((v2 + 15), v170, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (!v171)
  {
    goto LABEL_87;
  }

  v88 = v172;
  __swift_project_boxed_opaque_existential_1(v170, v171);
  v89 = a1[3];
  v90 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v89);
  v91 = (*(v90 + 24))(v89, v90);
  v93 = v92;
  v94 = (*(v88 + 64))();
  v96 = v95;
  outlined consume of Data._Representation(v91, v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v170);
  v97 = v2[8];
  if (!v97)
  {
    v142 = 0;
    goto LABEL_71;
  }

  v98 = v8;
  swift_beginAccess();

  v99 = v2[32];
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v2[32];
  v101 = v165;
  v2[32] = 0x8000000000000000;
  v103 = specialized __RawDictionaryStorage.find<A>(_:)(v159);
  v104 = v101[2];
  v105 = (v102 & 1) == 0;
  v106 = v104 + v105;
  if (__OFADD__(v104, v105))
  {
    __break(1u);
LABEL_85:
    specialized _NativeDictionary.copy()();
    v101 = v165;
    goto LABEL_67;
  }

  LOBYTE(v91) = v102;
  if (v101[3] < v106)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v106, v100);
    v101 = v165;
    v107 = specialized __RawDictionaryStorage.find<A>(_:)(v159);
    if ((v91 & 1) == (v108 & 1))
    {
      v103 = v107;
      goto LABEL_67;
    }

LABEL_88:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  if ((v100 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_67:
  v8 = v98;
  v2[32] = v101;
  v143 = v162;
  if ((v91 & 1) == 0)
  {
    SeqNumReceivedBuffer.init(seqNumCapacity:)(v97, &v165);
    specialized _NativeDictionary._insert(at:key:value:)(v103, v159, v165, v166, v167, v101);
  }

  v144 = v101[7] + 24 * v103;
  v145 = SeqNumReceivedBuffer.process(seqNum:)(v143);
  swift_endAccess();
  if (v145)
  {
    v97 = partial apply for implicit closure #14 in UnreliableMessenger.processIngressDatagram(_:);
    v142 = v2;
LABEL_71:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v146 = v2[11];
      ObjectType = swift_getObjectType();
      v165 = v94;
      v166 = v96;
      v167 = v159;
      v162 = v142;
      v163 = v97;
      v148 = v11;
      v149 = *(v146 + 8);
      outlined copy of Data._Representation(v94, v96);
      v149(v2, &v165, ObjectType, v146);
      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v94, v96);
      outlined consume of Data._Representation(v165, v166);
      (*(v8 + 8))(v148, v161);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v163);
    }

    else
    {
      outlined consume of Data._Representation(v94, v96);
      (*(v8 + 8))(v11, v161);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v97);
    }

    return;
  }

  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 134218240;
    *(v152 + 4) = v159;
    *(v152 + 12) = 2048;
    *(v152 + 14) = v143;
    _os_log_impl(&dword_1AEB26000, v150, v151, "[Receive] Datagram received fromParticipantID=%llu seqNum=%llu is being dropped as it is a duplicate packet.", v152, 0x16u);
    MEMORY[0x1B27120C0](v152, -1, -1);

    outlined consume of Data._Representation(v94, v96);
  }

  else
  {
    outlined consume of Data._Representation(v94, v96);
  }

  (*(v8 + 8))(v11, v161);
}

void UnreliableMessenger.attemptFlushEgressQueue()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 112);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (*(v1 + 160) != 2)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, log);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        v27 = UnreliableMessenger.description.getter();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v33);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1AEB26000, v23, v24, "[Flush] Ignored flushing intermediate-egress-queue %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1B27120C0](v26, -1, -1);
        MEMORY[0x1B27120C0](v25, -1, -1);
      }

      return;
    }

    swift_beginAccess();
    v9 = *(v1 + 232);
    if (!(v9 >> 62))
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

LABEL_5:
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, log);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32 = v14;
        *v13 = 136315138;
        v15 = UnreliableMessenger.description.getter();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1AEB26000, v11, v12, "[Flush] Flushing intermediate-egress-queue %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1B27120C0](v14, -1, -1);
        MEMORY[0x1B27120C0](v13, -1, -1);
      }

      v18 = *(v1 + 232);
      if (v18 >> 62)
      {
        if (v18 < 0)
        {
          v31 = *(v1 + 232);
        }

        v19 = __CocoaSet.count.getter();
        if (v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
LABEL_11:
          if (v19 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v19; ++i)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x1B2710B10](i, v18);
            }

            else
            {
              v21 = *(v18 + 8 * i + 32);
            }

            UnreliableMessenger._send(_:)(v21);
          }
        }
      }

      v30 = *(v1 + 232);
      *(v1 + 232) = MEMORY[0x1E69E7CC0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }
}

void UnreliableMessenger._close(reason:description:)(unsigned int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + 112);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  if (*(v4 + 160) > 3u)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, log);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v48);
      *(v34 + 12) = 2080;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), v48);
      _os_log_impl(&dword_1AEB26000, v32, v33, "[Close] Ignored, already shutting down, reason='%s' name=%s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    return;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_29;
  }

LABEL_4:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, log);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v48[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v48);
    *(v18 + 12) = 2080;
    v20 = UnreliableMessenger.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v48);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1AEB26000, v16, v17, "[Close] Shutting down, reason='%s' %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  UnreliableMessenger.updateState(state:)(4u);
  swift_beginAccess();
  v23 = *(v4 + 232);
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v44 = *(v4 + 232);
    }

    v24 = __CocoaSet.count.getter();
    if (!v24)
    {
LABEL_23:
      v36 = *(v4 + 232);
      *(v4 + 232) = MEMORY[0x1E69E7CC0];

      v37 = *(v4 + 240);
      v47 = 1;

      PassthroughSubject.send(completion:)();

      if (*(v4 + 248))
      {
        v38 = *(v4 + 248);

        AnyCancellable.cancel()();
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v4 + 88);
        ObjectType = swift_getObjectType();
        (*(v39 + 16))(v4, v46, ObjectType, v39);
        swift_unknownObjectRelease();
      }

      v41 = *(v4 + 184);
      v42 = *(v4 + 192);
      *(v4 + 184) = 0;
      *(v4 + 192) = 0;
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v41);
      v43 = *(v4 + 200);
      *(v4 + 200) = 0;
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_23;
    }
  }

  if (v24 >= 1)
  {
    v45 = v4;

    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1B2710B10](v25, v23);
        v30 = *(v29 + 40);
        if (!v30)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v29 = *(v23 + 8 * v25 + 32);

        v30 = *(v29 + 40);
        if (!v30)
        {
LABEL_16:

          goto LABEL_11;
        }
      }

      v26 = *(v29 + 48);
      lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
      v27 = swift_allocError();
      *v28 = 3;
      v30();

LABEL_11:
      if (v24 == ++v25)
      {

        v4 = v45;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t closure #1 in UnreliableMessenger.handleChannelStreamClosed(completedWith:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 176);
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + 176) = v3;
      UnreliableMessenger.setupChannelStream()();
    }
  }

  return result;
}

uint64_t UnreliableMessenger._send(_:)(void *a1)
{
  v61 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v56 - v3;
  v56 = type metadata accessor for DG_Datagram(0);
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DG_SequenceNumber(0);
  v6 = *(*(v62 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v62);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v56 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v1;
  v15 = *(v1 + 112);
  *v14 = v15;
  v16 = *MEMORY[0x1E69E8020];
  v17 = v11 + 13;
  v18 = v11[13];
  v18(v14, v16, v10);
  v19 = v15;
  v20 = _dispatchPreconditionTest(_:)();
  v21 = v11[1];
  v21(v14, v10);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  *v14 = v19;
  v18(v14, v16, v10);
  v22 = _dispatchPreconditionTest(_:)();
  v21(v14, v10);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v64;
  v24 = *(v64 + 168);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v64 + 168) = v26;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber);
  v20 = v63;
  static Message.with(_:)();
  swift_beginAccess();
  result = outlined init with copy of ActivitySession.DomainAssertionWrapper?(v23 + 120, v65, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v28 = v66;
  if (v66)
  {
    v29 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v17 = v61;
    v30 = (*(v29 + 56))(v61[2], v61[3], *(v20 + 8), v28, v29);
    if (v31 >> 60 != 15)
    {
      v42 = v30;
      v43 = v31;
      v44 = __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1EEE9AC00](v44);
      *(&v56 - 6) = v20;
      *(&v56 - 5) = v42;
      *(&v56 - 4) = v43;
      *(&v56 - 3) = v23;
      *(&v56 - 2) = v17;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram);
      v45 = v59;
      static Message.with(_:)();
      v46 = v60;
      outlined init with copy of DG_SequenceNumber(v45, v60, type metadata accessor for DG_Datagram);
      v47 = v17[5];
      v48 = v58;
      *(v46 + *(v58 + 36)) = v17[4];
      v49 = v17[6];
      v50 = (v46 + *(v48 + 40));
      *v50 = v47;
      v50[1] = v49;
      v51 = *(v23 + 240);

      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v47);

      PassthroughSubject.send(_:)();
      outlined consume of Data?(v42, v43);

      outlined destroy of NSObject?(v46, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
      outlined destroy of DG_SequenceNumber(v45, type metadata accessor for DG_Datagram);
      return outlined destroy of DG_SequenceNumber(v20, type metadata accessor for DG_SequenceNumber);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    if (one-time initialization token for log == -1)
    {
LABEL_7:
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, log);
      v33 = v57;
      outlined init with copy of DG_SequenceNumber(v20, v57, type metadata accessor for DG_SequenceNumber);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v65[0] = v37;
        *v36 = 134218242;
        v38 = *(v33 + 8);
        outlined destroy of DG_SequenceNumber(v33, type metadata accessor for DG_SequenceNumber);
        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;
        v39 = UnreliableMessenger.description.getter();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v65);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_1AEB26000, v34, v35, "Unexpected encryption failure, dropping message seqNum=%llu %s", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1B27120C0](v37, -1, -1);
        MEMORY[0x1B27120C0](v36, -1, -1);
      }

      else
      {
        outlined destroy of DG_SequenceNumber(v33, type metadata accessor for DG_SequenceNumber);
      }

      v52 = v17[5];
      if (v52)
      {
        v53 = v17[6];
        lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
        v54 = swift_allocError();
        *v55 = 2;
        v52();
      }

      return outlined destroy of DG_SequenceNumber(v20, type metadata accessor for DG_SequenceNumber);
    }

LABEL_17:
    swift_once();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t AnyRawIngressDatagram.decodedEncryptionID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = (*(a2 + 32))(a1, a2);
  UUID.init(data:)(v10, v11, v9);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(a3, v9, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a3, v14, 1, v12);
}

uint64_t closure #1 in UnreliableMessenger._send(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v72 = a5;
  v68 = a6;
  v70 = a3;
  v71 = a4;
  v8 = type metadata accessor for OSSignpostID();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DG_EncryptionID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DG_SequenceNumber(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v61 - v24;
  v66 = a2;
  outlined init with copy of DG_SequenceNumber(a2, &v61 - v24, type metadata accessor for DG_SequenceNumber);
  v26 = type metadata accessor for DG_Datagram(0);
  v27 = *(v26 + 28);
  outlined destroy of NSObject?(a1 + v27, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  outlined init with take of DG_SequenceNumber(v25, a1 + v27, type metadata accessor for DG_SequenceNumber);
  (*(v20 + 56))(a1 + v27, 0, 1, v19);
  v28 = *a1;
  v29 = a1[1];
  v31 = v70;
  v30 = v71;
  outlined copy of Data._Representation(v70, v71);
  v32 = v29;
  v33 = v72;
  outlined consume of Data._Representation(v28, v32);
  *a1 = v31;
  a1[1] = v30;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID);
  v34 = v73;
  static Message.with(_:)();
  v35 = *(v26 + 32);
  outlined destroy of NSObject?(a1 + v35, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  outlined init with take of DG_SequenceNumber(v18, a1 + v35, type metadata accessor for DG_EncryptionID);
  (*(v15 + 56))(a1 + v35, 0, 1, v14);
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v36, static Signposts.messenger);
  if ((OSSignposter.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_8;
  }

  v37 = v61;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v39 = v38;
  result = (*(v62 + 8))(v37, v63);
  v41 = v39 * 1000.0;
  if (COERCE__INT64(fabs(v39 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v41 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v41 >= 1.84467441e19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  a1[2] = v41;
LABEL_8:
  v42 = v68;
  v43 = *(v68 + 16);
  v44 = *(v68 + 24);
  if (OSSignposter.isEnabled.getter())
  {
    outlined copy of Data._Representation(v43, v44);
    v45 = v69;
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v43, v44, v69);
  }

  else
  {
    v45 = v69;
    OSSignpostID.init(_:)();
  }

  lazy protocol witness table accessor for type Int and conformance Int();

  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v46);
  v47 = v67;
  outlined init with copy of DG_SequenceNumber(v66, v67, type metadata accessor for DG_SequenceNumber);

  v48 = OSSignposter.logHandle.getter();
  v49 = static os_signpost_type_t.event.getter();

  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    outlined destroy of DG_SequenceNumber(v47, type metadata accessor for DG_SequenceNumber);

    return (*(v64 + 8))(v45, v65);
  }

  v73 = v34;
  v50 = swift_slowAlloc();
  result = swift_slowAlloc();
  v51 = result;
  v74 = result;
  *v50 = 134218754;
  v52 = *(v42 + 16);
  v53 = *(v42 + 24);
  v54 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v54 != 2)
    {
      v52 = 0;
      goto LABEL_23;
    }

    v57 = v52 + 16;
    v55 = *(v52 + 16);
    v56 = *(v57 + 8);
    v58 = __OFSUB__(v56, v55);
    v52 = v56 - v55;
    if (!v58)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v54)
  {
    v52 = BYTE6(v53);
LABEL_23:
    *(v50 + 4) = v52;
    *(v50 + 12) = 2080;
    *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[2], v33[3], &v74);
    *(v50 + 22) = 2048;
    *(v50 + 24) = v33[9];

    *(v50 + 32) = 2048;
    v59 = *(v47 + 8);
    outlined destroy of DG_SequenceNumber(v47, type metadata accessor for DG_SequenceNumber);
    *(v50 + 34) = v59;
    v60 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v48, v49, v60, "transport-message-sent", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%llu", v50, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v50, -1, -1);

    return (*(v64 + 8))(v45, v65);
  }

  v58 = __OFSUB__(HIDWORD(v52), v52);
  LODWORD(v52) = HIDWORD(v52) - v52;
  if (!v58)
  {
    v52 = v52;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in UnreliableMessenger._send(_:)(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = a2[18];
  if (!v9)
  {
    __break(1u);
  }

  v10 = a2[19];
  v11 = __swift_project_boxed_opaque_existential_1(a2 + 15, a2[18]);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15);
  (*(v10 + 8))(v9, v10);
  (*(v12 + 8))(v15, v9);
  v23[0] = UUID.uuid.getter();
  v23[1] = v16;
  v17 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v23, v24);
  v19 = v18;
  (*(v5 + 8))(v8, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v17;
  *(a1 + 8) = v19;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DG_EncryptionID.toUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v8 = *v1;
  v7 = v1[1];
  outlined copy of Data._Representation(v8, v7);
  UUID.init(data:)(v8, v7, v6);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a1, v11, 1, v9);
}

Swift::Void __swiftcall UnreliableMessenger.onEncryptionIDsRefreshed()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 112);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }
}

uint64_t UnreliableMessenger.onLocalEncryptionIDRotated(encryptionID:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 112);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnreliableMessenger.start(dataCryptorProvider:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 112);
  outlined init with copy of UserNotificationCenter(a1, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v19, v12 + 24);
  aBlock[4] = partial apply for closure #1 in UnreliableMessenger.start(dataCryptorProvider:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

void partial apply for closure #1 in UnreliableMessenger.start(dataCryptorProvider:)()
{
  v1 = v0 + 24;
  v2 = *(v0 + 16);
  UnreliableMessenger._start(dataCryptorProvider:)(v1);
}

uint64_t UnreliableMessenger.send(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v24 = *(v16 - 8);
  v25 = v16;
  v17 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v6 + 112);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v6;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a3;
  aBlock[4] = partial apply for closure #1 in UnreliableMessenger.send(_:to:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);
  outlined copy of Data._Representation(a1, a2);

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4);

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v19, v15, v21);
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v24 + 8))(v19, v25);
}

void closure #1 in UnreliableMessenger.send(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_39;
    }

    v13 = v13;
  }

LABEL_11:
  if (v13 >= *(a3 + 32))
  {
    if (!a4)
    {
      return;
    }

    lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
    v20 = swift_allocError();
    v21 = 1;
  }

  else
  {
    v17 = *(a3 + 160);
    if (v17 <= 3)
    {
      v6 = a2;
      v7 = a1;
      type metadata accessor for UnreliableMessenger.SendItem();
      v18 = swift_allocObject();
      *(v18 + 56) = xmmword_1AEE07B50;
      *(v18 + 16) = v7;
      *(v18 + 24) = v6;
      *(v18 + 32) = a6;
      *(v18 + 40) = a4;
      *(v18 + 48) = a5;
      if (v17 == 2)
      {
        outlined copy of Data._Representation(v7, v6);

        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4);
        UnreliableMessenger._send(_:)(v18);

        return;
      }

      swift_beginAccess();
      v22 = *(a3 + 232);
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v23 + 1;
        if (!__OFADD__(v23, 1))
        {
          goto LABEL_26;
        }

        goto LABEL_41;
      }

LABEL_39:
      v36 = __CocoaSet.count.getter();
      v24 = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
LABEL_26:
        if (*(a3 + 40) < v24)
        {
          if (a4)
          {
            lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
            v25 = swift_allocError();
            *v26 = 0;
            outlined copy of Data._Representation(v7, v6);

            outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4);
            (a4)(v25);

            return;
          }

          outlined copy of Data._Representation(v7, v6);

          goto LABEL_36;
        }

        swift_beginAccess();
        outlined copy of Data._Representation(v7, v6);

        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4);

        MEMORY[0x1B2710150](v27);
        if (*((*(a3 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a3 + 232) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_30:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, log);

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v37 = v32;
            *v31 = 136315138;
            v33 = UnreliableMessenger.description.getter();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v37);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_1AEB26000, v29, v30, "[Send] Queueing message, %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v32);
            MEMORY[0x1B27120C0](v32, -1, -1);
            MEMORY[0x1B27120C0](v31, -1, -1);
          }

LABEL_36:

          return;
        }

LABEL_42:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_30;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (!a4)
    {
      return;
    }

    lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
    v20 = swift_allocError();
    v21 = 3;
  }

  *v19 = v21;
  a4();
}

uint64_t UnreliableMessenger.refreshDataCryptorProvider(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?((v1 + 15), aBlock, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v13 = v27;
  result = outlined destroy of NSObject?(aBlock, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (v13)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v23 = v5;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, log);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], aBlock);
      _os_log_impl(&dword_1AEB26000, v16, v17, "Refreshing data-cryptor-provider topic=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v20 = v2[14];
    outlined init with copy of Any(a1, v30);
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    outlined init with take of Any(v30, (v21 + 24));
    v28 = partial apply for closure #1 in UnreliableMessenger.refreshDataCryptorProvider(with:);
    v29 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v27 = &block_descriptor_47;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v12, v8, v22);
    _Block_release(v22);
    (*(v23 + 8))(v8, v4);
    (*(v9 + 8))(v12, v24);
  }

  return result;
}

uint64_t closure #1 in UnreliableMessenger.refreshDataCryptorProvider(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + 120, v7, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v5 = v8;
  if (v8)
  {
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 48))(a2, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_31Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

Swift::Void __swiftcall UnreliableMessenger.close()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + 112);
  aBlock[4] = partial apply for closure #1 in UnreliableMessenger.close();
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
}

unint64_t lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError()
{
  result = lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError;
  if (!lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError;
  if (!lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason()
{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnreliableMessenger.State and conformance UnreliableMessenger.State()
{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.State and conformance UnreliableMessenger.State;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.State and conformance UnreliableMessenger.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.State and conformance UnreliableMessenger.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull()
{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnreliableMessenger.Message(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnreliableMessenger.Message(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata accessor for UnreliableMessenger()
{
  result = type metadata singleton initialization cache for UnreliableMessenger;
  if (!type metadata singleton initialization cache for UnreliableMessenger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UnreliableMessenger()
{
  type metadata accessor for Published<[UInt64]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[UInt64]>()
{
  if (!lazy cache variable for type metadata for Published<[UInt64]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[UInt64]>);
    }
  }
}

void *partial apply for closure #1 in UnreliableMessenger.nextSeqNum()(void *result)
{
  result[1] = *(v1 + 168);
  *result = *(v1 + 72);
  return result;
}

uint64_t outlined assign with take of TopicCryptorProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of DG_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DG_SequenceNumber(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of DG_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v22 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    Set.Iterator.init(_cocoa:)();
    v6 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v20 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v21[0] = v18;
        a2(&v22, v21);
        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v6 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
        swift_dynamicCast();
        v18 = v21[0];
        v16 = v9;
        v17 = v10;
        if (!v21[0])
        {
          goto LABEL_21;
        }
      }

      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v20, v7, v8, v9, v10);
    }

    else
    {
LABEL_21:
      v6 = v20;
LABEL_20:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v6, v7, v8, v9, v10);
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        v10 = 0;
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t ConversationManagerHost.connections.getter()
{
  v1 = OBJC_IVAR___CPConversationManagerHost_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ConversationManagerHost.connections.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPConversationManagerHost_connections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *ConversationManagerHost.__allocating_init(dataSource:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, [objc_allocWithZone(CPFeatureFlags) init], objc_allocWithZone(v1));
  swift_deallocPartialClassInstance();
  return v4;
}

char *ConversationManagerHost.init(dataSource:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, [objc_allocWithZone(CPFeatureFlags) init], objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v3;
}

char *ConversationManagerHost.__allocating_init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized ConversationManagerHost.__allocating_init(dataSource:featureFlags:)(a1, a2, v2);
}

char *ConversationManagerHost.init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, a2, v2);
}

id ConversationManagerHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR___CPConversationManagerHost_listener] invalidate];
  [*&v0[OBJC_IVAR___CPConversationManagerHost_listenerDeprecated] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ConversationManagerHost.updateClientShouldConnectNotification()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR___CPConversationManagerHost_dataSource);
    if ([v10 hasActiveActivitySessionContainer])
    {
      v11 = [objc_msgSend(v10 sharePlaySystemStateObserver)];
      swift_unknownObjectRelease();
      v12 = OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification;
      v13 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification);
      if (v11)
      {
        v14 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification);

        v15 = DarwinNotification.state.getter();

        if (v15 != 1)
        {
          v16 = *(v1 + v12);
          swift_beginAccess();
          notify_set_state(*(v16 + 32), 1uLL);
          v17 = *(v1 + v12);
          v18 = *(v17 + 16);
          v19 = *(v17 + 24);
          v20 = String.utf8CString.getter();

          notify_post((v20 + 32));
        }
      }

      else
      {
        swift_beginAccess();
        notify_set_state(*(v13 + 32), 0);
      }

      v23 = OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification;
      v24 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification);

      v25 = DarwinNotification.state.getter();

      if (v25 != 1)
      {
        v26 = *(v1 + v23);
        swift_beginAccess();
        notify_set_state(*(v26 + 32), 1uLL);
        v27 = *(v1 + v23);
        v28 = *(v27 + 16);
        v29 = *(v27 + 24);
        v30 = String.utf8CString.getter();

        notify_post((v30 + 32));
      }
    }

    else
    {
      v21 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification);
      swift_beginAccess();
      notify_set_state(*(v21 + 32), 0);
      v22 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification);
      swift_beginAccess();
      return notify_set_state(*(v22 + 32), 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationManagerHost.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v9)
  {
    return outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v8, a1);
  }

  outlined destroy of NSObject?(v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = *MEMORY[0x1E69D8DD0];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v6, v7, a1);

  outlined init with copy of UserNotificationCenter(a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v8, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for ConversationManagerHost.protectedStorage : ConversationManagerHost(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of UserNotificationCenter(a1, v7);
  v3 = *a2;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v7, v6);
  v4 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t ConversationManagerHost.protectedStorage.setter(uint64_t a1)
{
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(a1, v4);
  v2 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*ConversationManagerHost.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ConversationManagerHost.protectedStorage.getter(v3);
  return ConversationManagerHost.protectedStorage.modify;
}

void ConversationManagerHost.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(*a1, v2 + 5);
    v5 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

id ConversationManagerHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  v8 = *(v1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests;
  result = swift_beginAccess();
  if (!*(*(v1 + v10) + 16))
  {
    return result;
  }

  v16[0] = a1;
  v16[1] = specialized implicit closure #2 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:);
  v16[2] = 0;
  v16[3] = specialized implicit closure #3 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:);
  v16[4] = 0;

  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_s15LazyMapSequenceVys07FlattenF0VyAHyShySo38TUConversationActivitySessionContainerCGShySo0hiJ0CGGGAFGTt0g5(v16);
  swift_beginAccess();

  v13 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + v10), v12);

  v14 = *(*(v1 + v10) + 16);
  if (v14 < v13)
  {
LABEL_7:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v13, v14, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  swift_endAccess();
}

void specialized implicit closure #2 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void specialized implicit closure #3 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(id *a1)
{
  v1 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a5;
    v22 = a1;
    v23 = MEMORY[0x1B270FF70](a2, a3);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
    aBlock[3] = &block_descriptor_31_0;
    v25 = _Block_copy(aBlock);

    [v22 requestEndpointWith:v23 activitySessionUUID:isa activity:v21 completion:v25];
    _Block_release(v25);
  }

  else
  {
    v52 = v20;
    v53 = a4;
    v57 = v18;
    v58 = a3;
    v54 = a6;
    v55 = a5;
    v56 = a8;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.host);
    v27 = v58;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = a2;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v58, aBlock);
      _os_log_impl(&dword_1AEB26000, v28, v29, "No connection is providing endpoint with identifier=%s, caching endpoint request.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B27120C0](v31, -1, -1);
      v33 = v30;
      v27 = v58;
      MEMORY[0x1B27120C0](v33, -1, -1);

      v34 = v53;
    }

    else
    {

      v34 = v53;
      v32 = a2;
    }

    v35 = a7;
    v36 = v16[5];
    v37 = type metadata accessor for UUID();
    v38 = v52;
    (*(*(v37 - 8) + 16))(v52 + v36, v34, v37);
    *v38 = v32;
    v38[1] = v27;
    v39 = v54;
    v40 = v55;
    *(v38 + v16[6]) = v55;
    v41 = (v38 + v16[7]);
    *v41 = v39;
    v41[1] = v35;
    v42 = OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests;
    v43 = v56;
    swift_beginAccess();
    v44 = *(v43 + v42);

    v45 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + v42) = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
      *(v43 + v42) = v44;
    }

    v48 = v44[2];
    v47 = v44[3];
    v49 = v57;
    if (v48 >= v47 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v44);
      v49 = v57;
      v44 = v50;
    }

    v44[2] = v48 + 1;
    outlined init with take of ConversationManagerHost.EndpointRequest(v38, v44 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48);
    *(v43 + v42) = v44;
    swift_endAccess();
  }
}

uint64_t CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v75 = type metadata accessor for UUID();
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v75);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v63 - v18;
  v79 = a4;
  v80 = v4;
  v21 = v20;
  v81 = a2;
  v82 = a3;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CC8], partial apply for closure #1 in CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:), v77, a1);
  v73 = v22;
  v23 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1A0);
  v63[0] = a2;
  result = v23();
  v25 = 0;
  v27 = result + 64;
  v26 = *(result + 64);
  v67 = result;
  v28 = 1 << *(result + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v31 = (v28 + 63) >> 6;
  v63[1] = v9 + 16;
  v74 = (v9 + 32);
  v71 = v9;
  v72 = (v9 + 8);
  v66 = v13;
  v64 = v21;
  v70 = v19;
  v69 = result + 64;
  v68 = v31;
  while (v30)
  {
    v36 = v25;
LABEL_17:
    v39 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v67;
    v42 = v71;
    (*(v71 + 16))(v65, *(v67 + 48) + *(v71 + 72) * v40, v75);
    v43 = *(v41 + 56);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMR);
    v45 = *(v44 + 48);
    v46 = *(v42 + 32);
    v76 = *(v43 + 16 * v40);
    v21 = v64;
    v46();
    *(v21 + v45) = v76;
    (*(*(v44 - 8) + 56))(v21, 0, 1, v44);
    v47 = v76;
    v48 = v78;
    v13 = v66;
    v19 = v70;
LABEL_18:
    outlined init with take of (key: UUID, value: ConversationManagerHostConnection.ConversationContainerWrapper)?(v21, v19);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMR);
    if ((*(*(v49 - 8) + 48))(v19, 1, v49) == 1)
    {

      return v73;
    }

    v50 = &v19[*(v49 + 48)];
    v51 = *v50;

    (*v74)(v13, v19, v75);
    if (!*(v73 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v13), (v52 & 1) == 0))
    {
      v53 = (*((*MEMORY[0x1E69E7D40] & *v63[0]) + 0x1B0))(v84);
      v55 = v54;
      v56 = *v54;
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v58)
      {
        v59 = v57;
        v60 = *v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = *v55;
        *v55 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
        }

        v32 = v83;
        (*(v71 + 8))(*(v83 + 48) + *(v71 + 72) * v59, v75);
        v33 = *(v32 + 56) + 16 * v59;
        v34 = *v33;

        specialized _NativeDictionary._delete(at:)(v59, v32);
        v35 = *v55;
        *v55 = v32;

        v19 = v70;
      }

      v53(v84, 0);
    }

    result = (*v72)(v13, v75);
    v27 = v69;
    v31 = v68;
  }

  if (v31 <= v25 + 1)
  {
    v37 = v25 + 1;
  }

  else
  {
    v37 = v31;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v36 >= v31)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMR);
      (*(*(v62 - 8) + 56))(v21, 1, 1, v62);
      v30 = 0;
      v25 = v38;
      goto LABEL_18;
    }

    v30 = *(v27 + 8 * v36);
    ++v25;
    if (v30)
    {
      v25 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = [objc_msgSend(*(a1 + OBJC_IVAR___CPConversationManagerHost_dataSource) sharePlaySystemStateObserver)];
    swift_unknownObjectRelease();
    return v10 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:advertiseGroupActivityWithUUID:completion:)(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    a2(a1);
  }

  return (a2)(0);
}

void ConversationManagerHost.conversationManagerHostConnection(_:addRemoteMembers:toConversationWithUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (one-time initialization token for host == -1)
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
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = v6;
  (*(v7 + 16))(v10, v47, v6);
  v20 = a1;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    v45 = v25;
    v46 = swift_slowAlloc();
    v48 = v46;
    *v24 = 138412802;
    *(v24 + 4) = v20;
    *v25 = v20;
    *(v24 + 12) = 2080;
    v44 = v21;
    v43 = v22;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    v26 = v20;
    v27 = Set.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v48);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = v42;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v7 + 8))(v30, v19);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v48);

    *(v24 + 24) = v34;
    v35 = v44;
    _os_log_impl(&dword_1AEB26000, v44, v43, "conversationManagerHostConnection: %@ addRemoteMembers: %s conversationUUID: %s", v24, 0x20u);
    v36 = v45;
    outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v36, -1, -1);
    v37 = v46;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v38 = *(v4 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v40 = UUID._bridgeToObjectiveC()().super.isa;
  [v38 addRemoteMembers:isa toConversationWithUUID:v40];
}

void ConversationManagerHost.conversationManagerHostConnection(_:prepareForActivationWithOverrides:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (one-time initialization token for host == -1)
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
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.host);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_1AEB26000, v19, v20, "conversationManagerHostConnection: %@ prepareForActivation", v21, 0xCu);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v24 = *(v5 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  v25 = MEMORY[0x1B270FF70](*&v18[direct field offset for XPCHostConnection.bundleIdentifier], *&v18[direct field offset for XPCHostConnection.bundleIdentifier + 8]);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_27;
  v26 = _Block_copy(aBlock);

  [v24 requestActivityAuthorizationForApplicationWithBundleIdentifier:v25 overrides:a2 completionHandler:v26];
  _Block_release(v26);
}

void ConversationManagerHost.conversationManagerHostConnection(_:setActivityAuthorization:forBundleIdentifier:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (one-time initialization token for host == -1)
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
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.host);
  v18 = a1;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v21 = 138412802;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 1024;
    *(v21 + 14) = a2 & 1;
    *(v21 + 18) = 2080;
    v24 = v18;
    *(v21 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v28);
    _os_log_impl(&dword_1AEB26000, v19, v20, "conversationManagerHostConnection: %@ setActivityAuthorization: %{BOOL}d forBundleIdentifier: %s", v21, 0x1Cu);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v25 = *(v5 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  v26 = MEMORY[0x1B270FF70](a3, a4);
  [v25 setActivityAuthorization:a2 & 1 forBundleID:v26];
}

void ConversationManagerHost.conversationManagerHostConnection(_:createActivitySession:onConversationWithUUID:completion:)(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v91 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = v5;
  v18 = *&v5[OBJC_IVAR___CPConversationManagerHost_queue];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (one-time initialization token for host == -1)
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
  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Log.host);
  (*(v9 + 16))(v12, v91, v8);
  v22 = a1;
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v85 = v24;
    v27 = v26;
    v28 = swift_slowAlloc();
    v87 = v21;
    v29 = v28;
    v86 = swift_slowAlloc();
    *&aBlock = v86;
    *v27 = 138412802;
    *(v27 + 4) = v22;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v23;
    *v29 = v22;
    v29[1] = v23;
    *(v27 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = v22;
    v31 = v23;
    v32 = v30;
    v33 = v23;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &aBlock);
    v23 = v31;
    v22 = v30;

    *(v27 + 24) = v37;
    v38 = v85;
    _os_log_impl(&dword_1AEB26000, v85, v25, "conversationManagerHostConnection: %@ create session with request: %@ conversationUUID: %s", v27, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v29, -1, -1);
    v39 = v86;
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v40 = *&v22[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers];
  v41 = [v23 activityIdentifier];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *&aBlock = v42;
  *(&aBlock + 1) = v44;
  MEMORY[0x1EEE9AC00](v45);
  *(&v84 - 2) = &aBlock;
  v46 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v84 - 4), v40);

  v47 = [v23 staticIdentifier];
  if (v47 && (v47, (v46 & 1) == 0))
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1AEB26000, v64, v65, "conversationManagerHostConnection: Unable to create static session for non-system activity", v66, 2u);
      MEMORY[0x1B27120C0](v66, -1, -1);
    }

    v89(0);
  }

  else
  {
    v49 = *&v22[direct field offset for XPCHostConnection.bundleIdentifier];
    v48 = *&v22[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v50 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
    v51 = MEMORY[0x1B270FF70](v49, v48);
    v52 = [v50 initWithCreationRequest:v23 bundleIdentifier:v51 systemActivity:v46 & 1];

    if (_TUIsInternalInstall())
    {
      v53 = objc_opt_self();
      v54 = [v53 standardUserDefaults];
      v55 = MEMORY[0x1B270FF70](0xD000000000000018, 0x80000001AEE36600);
      v56 = [v54 objectForKey_];

      if (v56)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined destroy of NSObject?(&aBlock, &_sypSgMd, &_sypSgMR);
        v57 = [v53 standardUserDefaults];
        v58 = MEMORY[0x1B270FF70](0xD000000000000018, 0x80000001AEE36600);
        v59 = [v57 BOOLForKey_];

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 67109120;
          *(v62 + 4) = v59;
          MEMORY[0x1B27120C0](v62, -1, -1);
        }

        v63 = [v52 metadata];
        [v63 setSupportsContinuationOnTV_];
      }

      else
      {
        aBlock = 0u;
        v93 = 0u;
        outlined destroy of NSObject?(&aBlock, &_sypSgMd, &_sypSgMR);
      }
    }

    v67 = v23;
    v68 = v88;
    v69 = v52;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412802;
      *(v72 + 4) = v68;
      *(v72 + 12) = 2112;
      *(v72 + 14) = v69;
      *v73 = v68;
      v73[1] = v69;
      *(v72 + 22) = 2112;
      *(v72 + 24) = v67;
      v73[2] = v67;
      v74 = v67;
      v75 = v68;
      v76 = v69;
      _os_log_impl(&dword_1AEB26000, v70, v71, "ConversationManagerHost %@ created activity %@ for request %@", v72, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v73, -1, -1);
      MEMORY[0x1B27120C0](v72, -1, -1);
    }

    v77 = *&v68[OBJC_IVAR___CPConversationManagerHost_dataSource];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v79 = swift_allocObject();
    v80 = v89;
    v81 = v90;
    v79[2] = v69;
    v79[3] = v80;
    v79[4] = v81;
    v94 = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:createActivitySession:onConversationWithUUID:completion:);
    v95 = v79;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v93 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
    *(&v93 + 1) = &block_descriptor_3;
    v82 = _Block_copy(&aBlock);
    v83 = v69;

    [v77 createActivitySession:v83 onConversationWithUUID:isa withCompletion:v82];
    _Block_release(v82);
  }
}

void closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:createActivitySession:onConversationWithUUID:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  if (a1)
  {
    v64 = v9;
    v23 = a3;
    v67 = a4;
    v24 = a1;
    v66 = [v24 state];
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.host);
    v26 = v24;
    v27 = a2;
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v65 = v28;
    if (v31)
    {
      v61 = v30;
      v62 = v29;
      v63 = v23;
      v32 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69 = v60;
      *v32 = 136315650;
      v33 = [v28 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v64;
      (*(v64 + 56))(v22, 0, 1, v8);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22, v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v34 + 48))(v20, 1, v8) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        (*(v34 + 32))(v15, v20, v8);
        (*(v34 + 16))(v13, v15, v8);
        v36 = String.init<A>(reflecting:)();
        v35 = v48;
        (*(v34 + 8))(v15, v8);
      }

      v47 = v66;
      v49 = v66 < 2;
      outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v69);

      *(v32 + 4) = v50;
      *(v32 + 12) = 2080;
      LOBYTE(v68) = v49;
      v51 = String.init<A>(reflecting:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v69);

      *(v32 + 14) = v53;
      *(v32 + 22) = 2080;
      v68 = v27;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v54 = v27;
      v55 = String.init<A>(reflecting:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v69);

      *(v32 + 24) = v57;
      v58 = v62;
      _os_log_impl(&dword_1AEB26000, v62, v61, "Did activate session %s with result %s for activity %s", v32, 0x20u);
      v59 = v60;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v59, -1, -1);
      MEMORY[0x1B27120C0](v32, -1, -1);

      v23 = v63;
    }

    else
    {

      v47 = v66;
    }

    v23(v47 < 2);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.host);
    v38 = a2;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v68 = v38;
      v69 = v42;
      *v41 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v43 = v38;
      v44 = String.init<A>(reflecting:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v69);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1AEB26000, v39, v40, "Did not create session for activity %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }

    a3(0);
  }
}

void ConversationManagerHost.conversationManagerHostConnection(_:setDownlinkMuted:forRemoteParticipantsInConversationWithUUID:)(void *a1, int a2, uint64_t a3)
{
  LODWORD(v5) = a2;
  v38 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v3;
  v16 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (one-time initialization token for host == -1)
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
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = *(v7 + 16);
  v36 = a3;
  v19(v10, a3, v6);
  v20 = v38;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    LODWORD(v38) = v5;
    v5 = v23;
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v5 = 138412802;
    *(v5 + 4) = v20;
    *v24 = v20;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v38 & 1;
    *(v5 + 18) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v25 = v20;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v7 + 8))(v10, v6);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

    *(v5 + 20) = v29;
    _os_log_impl(&dword_1AEB26000, v21, v22, "conversationManagerHostConnection: %@ muted: %{BOOL}d conversationUUID: %s", v5, 0x1Cu);
    outlined destroy of NSObject?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v24, -1, -1);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B27120C0](v30, -1, -1);
    v31 = v5;
    LOBYTE(v5) = v38;
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v32 = *(v37 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v32 setDownlinkMuted:v5 & 1 forRemoteParticipantsOnConversationWithUUID:isa];
}

void ConversationManagerHost.conversationManagerHostConnection(_:buzzMember:conversationUUID:)(void *a1, uint64_t *a2, uint64_t a3, const char *a4, SEL *a5)
{
  v45 = a2;
  v46 = a5;
  v42 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v5;
  v18 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (one-time initialization token for host == -1)
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
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.host);
  v21 = *(v9 + 16);
  v43 = a3;
  v22 = a3;
  v23 = v8;
  v21(v12, v22, v8);
  v24 = a1;
  v25 = v45;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v28 = 138412802;
    *(v28 + 4) = v24;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v29 = v24;
    v29[1] = v25;
    *(v28 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v41 = v26;
    v30 = v24;
    v31 = v25;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v9 + 8))(v12, v23);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v47);

    *(v28 + 24) = v35;
    v36 = v41;
    _os_log_impl(&dword_1AEB26000, v41, v27, v42, v28, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v29, -1, -1);
    v37 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v38 = *(v44 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v38 *v46];
}

void ConversationManagerHost.conversationManagerHostConnection(_:updateConversationWith:participantPresentationContexts:)(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (one-time initialization token for host == -1)
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
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  (*(v7 + 16))(v10, a2, v6);
  v19 = a1;
  v20 = v38;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v23 = 138412802;
    *(v23 + 4) = v19;
    *v24 = v19;
    *(v23 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v25 = v19;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v7 + 8))(v10, v6);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v30 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
    v31 = MEMORY[0x1B2710180](v20, v30);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v39);

    *(v23 + 24) = v33;
    _os_log_impl(&dword_1AEB26000, v21, v22, "conversationManagerHostConnection: %@ conversationUUID: %s participantPresentationContexts: %s", v23, 0x20u);
    v34 = v36;
    outlined destroy of NSObject?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v34, -1, -1);
    v35 = v37;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

void ConversationManagerHost.conversationManagerHostConnectionInvalidated(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for host == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1AEB26000, v13, v14, "conversationManagerHostConnectionInvalidated: %@", v15, 0xCu);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  swift_beginAccess();
  v18 = specialized Set._Variant.remove(_:)(v12);
  swift_endAccess();

  v19 = *(v2 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  v20 = *&v12[direct field offset for XPCHostConnection.bundleIdentifier];
  v21 = *&v12[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v22 = MEMORY[0x1B270FF70](v20, v21);
  [v19 revokeBackgroundPipAuthorizationsForBundleID_];

  v23 = MEMORY[0x1B270FF70](v20, v21);
  [v19 resetActivitySessionSceneAssociationsForBundleID_];
}

void ConversationManagerHost.conversationManagerHostConnection(_:includeMetricsReport:onConversationWithUUID:)(void *a1, uint64_t a2, void *a3)
{
  v38 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v3;
  v16 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v36 = a2;
    if (one-time initialization token for host == -1)
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
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  (*(v7 + 16))(v10, a3, v6);
  v19 = v38;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v23 = 138412546;
    *(v23 + 4) = v19;
    *v24 = v19;
    *(v23 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v25 = v19;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v7 + 8))(v10, v6);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_1AEB26000, v20, v21, "conversationManagerHostConnection: %@ includeMetricsReport conversationUUID: %s", v23, 0x16u);
    outlined destroy of NSObject?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v24, -1, -1);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v31 = *(v37 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v33 = UUID._bridgeToObjectiveC()().super.isa;
  [v31 includeMetricsReport:isa onConversationWithUUID:v33];
}

uint64_t ConversationManagerHost.conversationManagerHostConnection(_:didRegisterEndpointWithIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests;
    swift_beginAccess();

    v15 = a1;
    v16 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + v14), a2, a3, v15);

    v17 = *(*(v3 + v14) + 16);
    if (v17 >= v16)
    {
      specialized Array.replaceSubrange<A>(_:with:)(v16, v17, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v50 = a6;
  v53 = a5;
  v55 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v47 = *(v11 + 16);
  v48 = a4;
  v47(v15, a4, v10);
  v17 = a1;

  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v54 = v18;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v21 = 138412802;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    v23 = v17;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, aBlock);
    *(v21 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v11 + 8))(v15, v10);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, aBlock);

    *(v21 + 24) = v27;
    _os_log_impl(&dword_1AEB26000, v19, v20, "conversationManagerHostConnection: %@ fetchEndpoint identifier: %s activitySessionUUID: %s", v21, 0x20u);
    v28 = v45;
    outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v46;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  v30 = v51;
  v46 = *&v51[OBJC_IVAR___CPConversationManagerHost_dataSource];
  v31 = v49;
  v47(v49, v48, v10);
  v32 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  (*(v11 + 32))(v35 + v32, v31, v10);
  v36 = (v35 + v33);
  v38 = v52;
  v37 = v53;
  *v36 = v50;
  v36[1] = v38;
  v39 = (v35 + v34);
  v40 = v54;
  *v39 = v55;
  v39[1] = v40;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:);
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Set<TUConversationActivitySessionContainer>) -> ();
  aBlock[3] = &block_descriptor_9_3;
  v41 = _Block_copy(aBlock);

  v42 = v30;

  v43 = v37;

  [v46 fetchActiveActivitySessionContainersWithCompletion_];
  _Block_release(v41);
}

uint64_t closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *&a2[OBJC_IVAR___CPConversationManagerHost_queue];
  (*(v16 + 16))(v18, a3, v15);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  (*(v16 + 32))(v24 + v19, v18, v15);
  v25 = (v24 + v20);
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  v27 = v39;
  *(v24 + v21) = v39;
  v28 = (v24 + v22);
  v29 = v44;
  *v28 = v43;
  v28[1] = v29;
  v30 = v45;
  *(v24 + v23) = v45;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_28;
  v31 = _Block_copy(aBlock);

  v32 = v27;

  v33 = v30;
  v34 = v42;
  static DispatchQoS.unspecified.getter();
  v52 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v35 = v47;
  v36 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v34, v35, v31);
  _Block_release(v31);
  (*(v51 + 8))(v35, v36);
  (*(v48 + 8))(v34, v50);
}

uint64_t closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v33 = a8;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v20 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:), v34, a1);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    *(&v32 - 8) = a6;
    *(&v32 - 7) = a7;
    v21 = v33;
    *(&v32 - 6) = a2;
    *(&v32 - 5) = v21;
    *(&v32 - 4) = a3;
    *(&v32 - 3) = a4;
    *(&v32 - 2) = a5;

    specialized ConversationManagerHost.withFirstConnection(where:_:)(partial apply for closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:), (&v32 - 10), a5, a6, a7);
  }

  else
  {
    v33 = a3;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.host);
    (*(v16 + 16))(v19, a2, v15);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136315138;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v16 + 8))(v19, v15);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v24, v25, "No joined activity session container contains session with uuid: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    return v33(0);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(id *a1, uint64_t a2)
{
  v3 = [*a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7[2] = a2;
  v5 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:), v7, v4);

  return v5 & 1;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Set<TUConversationActivitySessionContainer>) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void closure #1 in ConversationManagerHost.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v3, a2);
  swift_endAccess();
}

uint64_t closure #1 in CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:)(uint64_t *a1, id *a2, uint64_t a3, char *a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = CPConversationManagerDataSource.filteredActivitySessionContainer(from:connection:protectedStorage:)(*a2, a4, a5, a6);
  v17 = [v16 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v15, isUniquelyReferenced_nonNull_native);
  result = (*(v12 + 8))(v15, v11);
  *a1 = v22;
  return result;
}

id CPConversationManagerDataSource.filteredActivitySessionContainer(from:connection:protectedStorage:)(id a1, char *a2, void *a3, uint64_t a4)
{
  v97 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a2[direct field offset for XPCHostConnection.bundleIdentifier];
  v105 = *&a2[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v109 = [objc_allocWithZone(MEMORY[0x1E69D8B60]) init];
  v13 = v109;
  v14 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = *(v8 + 8);
  v16(v11, v7);
  [v13 setUUID_];

  v17 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = UUID._bridgeToObjectiveC()().super.isa;
  v16(v11, v7);
  [v13 setGroupUUID_];

  [v13 setState_];
  [v13 setCapabilities_];
  v104 = v13;

  v19 = a2;
  v20 = [a1 activitySessions];
  v21 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v22 = v105;
  v98 = lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v99 = v21;
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = a4;
  v24 = CPConversationManagerDataSource.filteredSessions(for:connection:from:)(v12, v22, a2, v23, a4);
  v102 = a1;
  v103 = a2;
  if ((v12 != 0xD00000000000001ALL || 0x80000001AEE36620 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if ((v24 & 0xC000000000000001) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (*(v24 + 16) >= 1)
    {
      goto LABEL_10;
    }

LABEL_16:

    goto LABEL_22;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.default);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101 = v24;
    v30 = v29;
    v106[0] = v29;
    *v28 = 136315394;
    v107 = 0xD000000000000011;
    v108 = 0x80000001AEE36640;
    v31 = String.init<A>(reflecting:)();
    v33 = v12;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v106);

    *(v28 + 4) = v34;
    v12 = v33;
    *(v28 + 12) = 2080;
    v107 = v33;
    v108 = v105;

    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v106);

    *(v28 + 14) = v37;
    a1 = v102;
    v19 = v103;
    _os_log_impl(&dword_1AEB26000, v26, v27, "Adding sessions for %s for %s", v28, 0x16u);
    swift_arrayDestroy();
    v38 = v30;
    v24 = v101;
    MEMORY[0x1B27120C0](v38, -1, -1);
    v39 = v28;
    v22 = v105;
    MEMORY[0x1B27120C0](v39, -1, -1);
  }

  v40 = CPConversationManagerDataSource.filteredSessions(for:connection:from:)(0xD000000000000011, 0x80000001AEE36640, v19, v23, v100);

  specialized Set.union<A>(_:)(v40, v24);
  v24 = v41;
  if ((v41 & 0xC000000000000001) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_16;
  }

LABEL_10:
  v100 = v12;
  v101 = v24;
  if (v19[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v42 = [a1 localMember];
    v43 = v104;
    [v104 setLocalMember_];

    v44 = [a1 initiator];
    [v43 setInitiator_];
  }

  v45 = [a1 virtualParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = Set._bridgeToObjectiveC()().super.isa;

  [v104 setVirtualParticipants_];

  v47 = *&v19[direct field offset for ConversationManagerHostConnection.serverBag];
  v96 = [v47 qrPluginConnectionRetryIntervalMillis];
  v95 = [v47 qrPluginMaxConnectionAttempts];
  v94 = [v47 qrPluginConnectionRetryIntervalMillis];
  v93 = [v47 qrPluginMaxRpcStreamAttempts];
  v48 = v97;
  v49 = v97[3];
  v50 = v97[4];
  __swift_project_boxed_opaque_existential_1(v97, v49);
  v51 = objc_opt_self();
  v52 = [v51 serverCertValidationEnabledUserDefaultsKey];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  (*(v50 + 32))(&v107, MEMORY[0x1E69E6370], v53, v55, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v49, v50);

  v92 = v107;
  v91 = v107 == 2;
  v56 = v48[3];
  v57 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v56);
  v58 = v51;
  v59 = [v51 serverCertHostnameUserDefaultsKey];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = MEMORY[0x1E69E6158];
  (*(v57 + 32))(&v107, MEMORY[0x1E69E6158], v60, v62, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v56, v57);

  v65 = v107;
  v64 = v108;
  v66 = v48[3];
  v67 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v66);
  v68 = [v58 serverCertLeafMarkerOIDUserDefaultsKey];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  (*(v67 + 32))(v106, v63, v69, v71, v63, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v66, v67);

  v72 = v106[0];
  v73 = v106[1];
  if (v64)
  {
    v74 = MEMORY[0x1B270FF70](v65, v64);
  }

  else
  {
    v74 = 0;
  }

  v75 = v91 | v92;
  v12 = v100;
  if (v73)
  {
    v76 = MEMORY[0x1B270FF70](v72, v73);
  }

  else
  {
    v76 = 0;
  }

  v77 = objc_allocWithZone(MEMORY[0x1E69D8BC8]);
  v78 = [v77 initWithConnectionRetryIntervalMillis:v96 connectionMaxAttempts:v95 rpcStreamRetryIntervalMillis:v94 rpcStreamMaxAttempts:v93 serverCertValidationEnabled:v75 & 1 serverCertHostnameOverride:v74 serverCertLeafMarkerOIDOverride:v76];

  v79 = v104;
  [v104 setVirtualParticipantConfig_];

  v80 = [v47 unreliableMessengerEstablishChannelMaxAttempts];
  v81 = [v47 unreliableMessengerEstablishChannelRetryIntervalMillis];
  v82 = [v47 unreliableMessengerEgressMessagePayloadMaxSizeBytes];
  v83 = [v47 unreliableMessengerChannelStreamMaxQueueSize];
  v84 = [v47 unreliableMessengerChannelStreamMaxTries];
  v85 = [v47 unreliableMessengerChannelStreamRetryIntervalMillis];
  v86 = [v47 unreliableMessengerSeqNumBufferSize];
  v87 = [objc_allocWithZone(MEMORY[0x1E69D8BB8]) initWithEstablishChannelMaxAttempts:v80 establishChannelRetryIntervalMillis:v81 egressMessagePayloadMaxSizeBytes:v82 channelStreamMaxQueueSize:v83 channelStreamMaxTries:v84 channelStreamRetryIntervalMillis:v85 seqNumBufferSize:v86];
  [v79 setUnreliableMessengerConfig_];

  v88 = Set._bridgeToObjectiveC()().super.isa;

  [v79 setActivitySessions_];

  [v79 setLocalParticipantIdentifier_];
  v22 = v105;
  v19 = v103;
LABEL_22:
  CPConversationManagerDataSource.addAliasesIfNecessary(toConversationContainer:forBundleIdentifier:connection:)(&v109, v12, v22, v19);
  return v109;
}

void CPConversationManagerDataSource.addAliasesIfNecessary(toConversationContainer:forBundleIdentifier:connection:)(void **a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = v11[8].isa;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - v16;
  v18 = *a1;
  if (*(a4 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.default);
    v20 = v18;
    v67 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v20;
      *v23 = v20;
      _os_log_impl(&dword_1AEB26000, v67, v21, "Not adding aliases to container: %@, client is entitled to access unaliased identifiers", v22, 0xCu);
      outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v23, -1, -1);
      MEMORY[0x1B27120C0](v22, -1, -1);
    }

    else
    {
    }

    v62 = v67;
  }

  else
  {
    v64 = a1;
    v65 = a2;
    v66 = a3;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.default);
    v25 = v18;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v67 = v11;
    if (v28)
    {
      v29 = v5;
      v30 = v17;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v25;
      *v32 = v25;
      v33 = v25;
      _os_log_impl(&dword_1AEB26000, v26, v27, "Adding aliases to container: %@", v31, 0xCu);
      outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v32, -1, -1);
      v34 = v31;
      v17 = v30;
      v5 = v29;
      v11 = v67;
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    v35 = [v25 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x1A0))();
    if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v38 & 1) != 0))
    {
      v39 = v5;
      v40 = v17;
      v41 = *(v36 + 56) + 16 * v37;
      v42 = *(v41 + 8);
      v43 = *v41;
      v44 = v42;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v45 = v43;
      v46 = static NSObject.== infix(_:_:)();

      if (v46)
      {
        (v11[1].isa)(v40, v10);

        *v64 = v44;
        return;
      }

      v17 = v40;
      v5 = v39;
    }

    else
    {
    }

    [v25 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v47 = swift_dynamicCast();
    v48 = v68;
    v49 = MEMORY[0x1B270FF70](v65, v66);
    [v5 addAliasesToConversationContainer:v25 forBundleIdentifier:v49];

    v50 = v11[2].isa;
    v66 = v17;
    v51 = v10;
    v50(v15, v17, v10);
    if (!v47 || (v52 = v48) == 0)
    {
      v52 = v25;
      v48 = 0;
    }

    v53 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x1B0);
    v54 = v25;
    v55 = v48;
    v56 = v53(v69);
    v58 = v57;
    v59 = *v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *v58;
    *v58 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v54, v15, isUniquelyReferenced_nonNull_native);
    v61 = v67[1].isa;
    (v61)(v15, v51);
    *v58 = v68;
    v56(v69, 0);

    (v61)(v66, v51);
  }
}

uint64_t CPConversationManagerDataSource.filteredSessions(for:connection:from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions))
  {
    v7 = v5;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v7;
      v26 = v13;
      *v12 = 136315138;
      v14 = >> prefix<A>(_:)(&v25, a5);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Passing up all sessions as %s is entitled", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }
  }

  else
  {

    v21 = a3;
    specialized Sequence.compactMap<A>(_:)(a4, a1, a2, v21);
    v23 = v22;

    v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo29TUConversationActivitySessionC_SayAEGTt0g5Tf4g_n(v23);

    return v24;
  }
}

void specialized Set.union<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_19:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v2, v3, v4, v5, v6);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      v6 = 0;
      goto LABEL_19;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *specialized ConversationManagerHost.__allocating_init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2, Class a3)
{
  v5 = objc_allocWithZone(a3);

  return specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, a2, v5);
}

char *specialized ConversationManagerHost.init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2, char *a3)
{
  v44 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = OBJC_IVAR___CPConversationManagerHost_serverBag;
  *&a3[v12] = [objc_allocWithZone(CPSharedConversationServerBag) init];
  v13 = OBJC_IVAR___CPConversationManagerHost_queue;
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v41[0] = "ge";
  v41[1] = v14;
  static DispatchQoS.unspecified.getter();
  v48 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v7, *MEMORY[0x1E69E8090], v43);
  *&a3[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR___CPConversationManagerHost_listener;
  v16 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v17 = MEMORY[0x1B270FF70](0xD000000000000032, 0x80000001AEE2E990);
  v18 = [v16 initWithMachServiceName_];

  *&a3[v15] = v18;
  v19 = OBJC_IVAR___CPConversationManagerHost_listenerDeprecated;
  v20 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v21 = MEMORY[0x1B270FF70](0xD00000000000002CLL, 0x80000001AEE2E960);
  v22 = [v20 initWithMachServiceName_];

  *&a3[v19] = v22;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore33ConversationManagerHostConnectionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CD0];
    }
  }

  *&a3[OBJC_IVAR___CPConversationManagerHost_connections] = v25;
  *&a3[OBJC_IVAR___CPConversationManagerHost_subscriptions] = v24;
  *&a3[OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests] = v23;
  v26 = &a3[OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  *&a3[OBJC_IVAR___CPConversationManagerHost_dataSource] = v46;
  *&a3[OBJC_IVAR___CPConversationManagerHost_featureFlags] = v44;
  v27 = *&a3[v13];
  type metadata accessor for DarwinNotification();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a3[OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification] = DarwinNotification.init(name:queue:)(0xD00000000000003ALL, 0x80000001AEE2E8A0, v27);
  v28 = *&a3[v13];
  swift_allocObject();
  *&a3[OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification] = DarwinNotification.init(name:queue:)(0xD000000000000056, 0x80000001AEE2E8E0, v28);
  v47.receiver = a3;
  v47.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v47, sel_init);
  v30 = OBJC_IVAR___CPConversationManagerHost_dataSource;
  v31 = *&v29[OBJC_IVAR___CPConversationManagerHost_dataSource];
  v32 = OBJC_IVAR___CPConversationManagerHost_queue;
  v33 = *&v29[OBJC_IVAR___CPConversationManagerHost_queue];
  v34 = v29;
  [v31 addObserver:v34 queue:v33];
  v35 = [*&v29[v30] activityAuthorizationManager];
  v36 = [v35 neighborhoodActivityConduit];

  [v36 addDelegate:v34 queue:*&v29[v32]];
  v37 = OBJC_IVAR___CPConversationManagerHost_listener;
  [*&v34[OBJC_IVAR___CPConversationManagerHost_listener] setDelegate_];
  [*&v34[v37] resume];
  v38 = OBJC_IVAR___CPConversationManagerHost_listenerDeprecated;
  v39 = *&v34[OBJC_IVAR___CPConversationManagerHost_listenerDeprecated];
  [v39 setDelegate_];

  [*&v34[v38] resume];
  swift_unknownObjectRelease();
  return v34;
}

char *_s14CopresenceCore33ConversationManagerHostConnectionC10connection5queue12featureFlags9serverBagACSgSo15NSXPCConnectionC_So012OS_dispatch_H0CSo09CPFeatureJ0_pSo020CPConversationServerL0_ptcfCTfq4nnnen_nSo08CPSharedcrL0C_Tt3g5(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ConversationManagerHostConnection());
  *&v8[direct field offset for ConversationManagerHostConnection.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v8[direct field offset for ConversationManagerHostConnection.aliasedConversationContainers] = MEMORY[0x1E69E7CC8];
  v9 = &v8[direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v8[direct field offset for ConversationManagerHostConnection.identifiersForCustomEndpoints] = MEMORY[0x1E69E7CD0];
  *&v8[direct field offset for ConversationManagerHostConnection.featureFlags] = a3;
  *&v8[direct field offset for ConversationManagerHostConnection.serverBag] = a4;
  swift_unknownObjectRetain();
  v10 = specialized XPCHostConnection.init(connection:queue:)(a1, a2);
  v11 = v10;
  swift_unknownObjectRelease();
  if (v10)
  {
  }

  return v10;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + (a3 << 6);
  v12 = v7 + 32 + (a2 << 6);
  if (result < v12 || result >= v12 + ((v11 - a2) << 6))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for Attachment);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for PubSubTopic.SendItem);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v5 = a1;
  v51 = MEMORY[0x1E69E7CC0];
  v45 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    v6 = v45;
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v5 = v50[2];
    v7 = v50[3];
    v8 = v50[4];
    v9 = v50[5];
    v10 = v50[6];
  }

  else
  {
    v6 = a3;
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v42 = v8;
  v43 = MEMORY[0x1E69E7CC0];
  v14 = (v8 + 64) >> 6;
  v46 = v5;
  while (1)
  {
    v16 = v10;
    v17 = v9;
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v49 = v21, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v20 = v50[0], v48 = v16, !v50[0]))
    {
LABEL_37:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v5, v7, v42, v17, v16);
      return;
    }

LABEL_19:
    v22 = [v20 activity];
    v23 = [v22 bundleIdentifier];

    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v24 == v44 && v26 == v6)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (![v20 state] || objc_msgSend(v20, sel_state) == 1)
      {
        goto LABEL_9;
      }
    }

LABEL_29:
    if (*(a4 + direct field offset for XPCHostConnection.isEntitledToForWebFallback))
    {
      v29 = [v20 activity];
      v30 = [v29 isEligibleForWebBrowser];

      if (v30)
      {
        goto LABEL_9;
      }
    }

    v31 = a4;
    v32 = *(a4 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers);
    v33 = [v20 activity];
    v34 = [v33 activityIdentifier];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v50[0] = v35;
    v50[1] = v37;
    MEMORY[0x1EEE9AC00](v38);
    v41[2] = v50;
    v39 = v47;
    LOBYTE(v35) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v41, v32);
    v47 = v39;

    if (v35)
    {
      a4 = v31;
      v6 = v45;
LABEL_9:
      v10 = v48;
      v15 = [v20 publicCopy];

      v5 = v46;
      if (v15)
      {
        MEMORY[0x1B2710150]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v40 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v46;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v43 = v51;
      }
    }

    else
    {

      a4 = v31;
      v6 = v45;
      v5 = v46;
      v10 = v48;
    }
  }

  v18 = v9;
  v19 = v16;
  if (v16)
  {
LABEL_15:
    v48 = (v19 - 1) & v19;
    v20 = *(*(v5 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      v16 = 0;
      goto LABEL_37;
    }

    v19 = *(v7 + 8 * v9);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = v10 == 0;
  v33 = v10;
  if (!v10)
  {
    return 0;
  }

  v32 = v2;
  v40 = a2 + 56;
  v38 = v7 + 16;
  v34 = v7;
  v12 = (v7 + 8);
  v13 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  v14 = 0;
  v37 = v13;
  v15 = a1 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80));
  v16 = *(*(v13 - 8) + 72);
  v41 = a2;
  v30 = v16;
  v31 = v15;
  while (1)
  {
    v35 = v11;
    v36 = v14;
    v42 = v15 + v16 * v14;
    if (!*(a2 + 16))
    {
      break;
    }

    v17 = *(v37 + 20);
    v18 = *(v41 + 40);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v39 = v17;
    v19 = v41;
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v19 + 32);
    v22 = v20 & ~v21;
    if (((*(v40 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      break;
    }

    v23 = ~v21;
    v24 = *(v34 + 72);
    v25 = *(v34 + 16);
    while (1)
    {
      v25(v9, *(v19 + 48) + v24 * v22, v5);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v12)(v9, v5);
      if (v26)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      v19 = v41;
      if (((*(v40 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v14 = v36 + 1;
    v11 = v36 + 1 == v33;
    a2 = v41;
    v16 = v30;
    v15 = v31;
    if (v36 + 1 == v33)
    {
      return 0;
    }
  }

LABEL_11:
  v28 = v42 + *(v37 + 28);
  v29 = *(v28 + 8);
  (*v28)(0);
  return v36;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  v10 = 0;
  v11 = *(*(v9 - 1) + 72);
  v12 = (((*(*(v9 - 1) + 80) + 32) & ~*(*(v9 - 1) + 80)) + a1 + 8);
  while (1)
  {
    v13 = *(v12 - 1) == a2 && *v12 == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v10;
    v12 = (v12 + v11);
    if (v4 == v10)
    {
      return 0;
    }
  }

  v14 = MEMORY[0x1B270FF70](a2, a3);
  v15 = v12 + v9[5] - 8;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = v9[7];
  v18 = *(v12 + v9[6] - 8);
  v19 = (v12 + v17);
  v20 = *(v12 + v17 - 8);
  v21 = *v19;
  v24[4] = v20;
  v24[5] = v21;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
  v24[3] = &block_descriptor_37_0;
  v22 = _Block_copy(v24);

  [a4 requestEndpointWith:v14 activitySessionUUID:isa activity:v18 completion:v22];
  _Block_release(v22);

  return v10;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

void specialized ConversationManagerHost.withFirstConnection(where:_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a4;
  v56 = a5;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v50 = a2;
  v17 = OBJC_IVAR___CPConversationManagerHost_connections;
  swift_beginAccess();
  v18 = *(a3 + v17);
  v51 = a1;
  if ((v18 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ConversationManagerHostConnection();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type ConversationManagerHostConnection and conformance NSObject, type metadata accessor for ConversationManagerHostConnection);
    Set.Iterator.init(_cocoa:)();
    v19 = v59;
    v53 = v58;
    v20 = v60;
    v21 = v61;
    v22 = v62;
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v18 + 56);
    swift_bridgeObjectRetain_n();
    v21 = 0;
    v53 = v18;
  }

  v49 = v20;
  v26 = (v20 + 64) >> 6;
  while (2)
  {
    v27 = v53;
    v54 = v21;
    if (v53 < 0)
    {
      while (1)
      {
        v32 = __CocoaSet.Iterator.next()();
        if (!v32)
        {
          v31 = 0;
          goto LABEL_35;
        }

        v63 = v32;
        type metadata accessor for ConversationManagerHostConnection();
        swift_dynamicCast();
        v31 = v57;
        v30 = v22;
        if (!v57)
        {
          goto LABEL_34;
        }

LABEL_18:
        if (*(v31 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
        {
          break;
        }

        v22 = v30;
        v54 = v21;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      v52 = v30;
      v33 = (*((*MEMORY[0x1E69E7D40] & *v31) + 0x1D0))();
      v34 = v33;
      if (!*(v33 + 16))
      {

        v22 = v52;
        continue;
      }

      v47 = v18;
      v48 = v6;
      v35 = *(v33 + 40);
      Hasher.init(_seed:)();
      v37 = v55;
      v36 = v56;
      String.hash(into:)();
      v38 = Hasher._finalize()();
      v39 = v37;
      v40 = -1 << *(v34 + 32);
      v41 = v38 & ~v40;
      if (((*(v34 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
LABEL_30:

        v22 = v52;
        v6 = v48;
        v18 = v47;
        continue;
      }

      v42 = v36;
      v43 = ~v40;
      while (1)
      {
        v44 = (*(v34 + 48) + 16 * v41);
        if (*v44 == v39 && v44[1] == v42)
        {
          break;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v39 = v55;
        v42 = v56;
        if (v46)
        {
          break;
        }

        v41 = (v41 + 1) & v43;
        if (((*(v34 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v27 = v53;
    }

    else
    {
LABEL_10:
      v28 = v21;
      v29 = v22;
      if (!v22)
      {
        while (1)
        {
          v21 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v21 >= v26)
          {
            v22 = 0;
            v31 = 0;
            goto LABEL_34;
          }

          v29 = *(v19 + 8 * v21);
          ++v28;
          if (v29)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_14:
      v30 = (v29 - 1) & v29;
      v31 = *(*(v27 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v29)))));
      if (v31)
      {
        goto LABEL_18;
      }
    }

    break;
  }

LABEL_34:
  v21 = v54;
LABEL_35:
  outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v27, v19, v49, v21, v22);

  v51(v31);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v59 = *(v4 - 8);
  v5 = v59[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  v8 = *(v65 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v54 - v16;
  v18 = a1;
  v19 = *a1;
  v20 = v71;
  result = specialized Collection.firstIndex(where:)(v19, a2);
  if (!v20)
  {
    v71 = v17;
    v57 = v12;
    v58 = result;
    v56 = v15;
    v70 = a2;
    if (v22)
    {
      return *(v19 + 16);
    }

    else
    {
      v55 = v18;
      v23 = v58 + 1;
      if (!__OFADD__(v58, 1))
      {
        v24 = v19;
        v54[1] = 0;
        v25 = v70;
        v68 = v59 + 2;
        v69 = v70 + 56;
        v26 = (v59 + 1);
        v27 = v71;
        v60 = v8;
        while (1)
        {
          v32 = v24[2];
          if (v23 == v32)
          {
            return v58;
          }

          if (v23 >= v32)
          {
            break;
          }

          v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v66 = v24;
          v67 = v23;
          v61 = v33;
          v63 = *(v8 + 72);
          v64 = v24 + v33;
          v62 = v63 * v23;
          outlined init with copy of ConversationManagerHost.EndpointRequest(v24 + v33 + v63 * v23, v27);
          if (*(v25 + 16) && (v34 = *(v65 + 20), v35 = *(v25 + 40), _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]), v36 = dispatch thunk of Hashable._rawHashValue(seed:)(), v37 = v70, v38 = -1 << *(v70 + 32), v39 = v36 & ~v38, ((*(v69 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
          {
            v40 = ~v38;
            v41 = v59[9];
            v42 = v59[2];
            while (1)
            {
              v42(v7, *(v37 + 48) + v41 * v39, v4);
              _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v43 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v26)(v7, v4);
              if (v43)
              {
                break;
              }

              v39 = (v39 + 1) & v40;
              v37 = v70;
              if (((*(v69 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v27 = v71;
            result = outlined destroy of ConversationManagerHost.EndpointRequest(v71);
            v44 = v58;
            v30 = v67;
            if (v58 == v67)
            {
              v25 = v70;
              v24 = v66;
            }

            else
            {
              v45 = v56;
              if ((v58 & 0x8000000000000000) != 0)
              {
                goto LABEL_32;
              }

              v46 = v66[2];
              if (v58 >= v46)
              {
                goto LABEL_33;
              }

              v47 = v64;
              v48 = v63 * v58;
              result = outlined init with copy of ConversationManagerHost.EndpointRequest(&v64[v63 * v58], v56);
              if (v67 >= v46)
              {
                goto LABEL_34;
              }

              v49 = v47;
              v50 = v62;
              outlined init with copy of ConversationManagerHost.EndpointRequest(&v49[v62], v57);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
              }

              v51 = v66 + v61;
              v52 = v66 + v61 + v48;
              v24 = v66;
              result = outlined assign with take of ConversationManagerHost.EndpointRequest(v57, v52);
              if (v67 >= v24[2])
              {
                goto LABEL_35;
              }

              result = outlined assign with take of ConversationManagerHost.EndpointRequest(v45, &v51[v50]);
              v30 = v67;
              *v55 = v24;
              v25 = v70;
            }

            v31 = __OFADD__(v44, 1);
            v53 = v44 + 1;
            if (v31)
            {
              goto LABEL_31;
            }

            v58 = v53;
          }

          else
          {
LABEL_6:
            v27 = v71;
            v28 = &v71[*(v65 + 28)];
            v29 = *(v28 + 1);
            (*v28)(0);
            v25 = v70;
            result = outlined destroy of ConversationManagerHost.EndpointRequest(v27);
            v24 = v66;
            v30 = v67;
          }

          v31 = __OFADD__(v30, 1);
          v23 = v30 + 1;
          v8 = v60;
          if (v31)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ConversationManagerHost.EndpointRequest();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void specialized ConversationManagerHost.conversationManager(_:activitySessionContainersChanged:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v10 = v4[13];
  v10(v7, v9, v3);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = v4[1];
  v12(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  ConversationManagerHost.updateClientShouldConnectNotification()();
  ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(v36);
  *v7 = v11;
  v10(v7, v9, v3);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v7, v3);
  if (v13)
  {
    v14 = OBJC_IVAR___CPConversationManagerHost_connections;
    swift_beginAccess();
    v35 = *(v2 + v14);
    if ((v35 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ConversationManagerHostConnection();
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type ConversationManagerHostConnection and conformance NSObject, type metadata accessor for ConversationManagerHostConnection);
      Set.Iterator.init(_cocoa:)();
      v16 = v38[8];
      v15 = v38[9];
      v18 = v38[10];
      v17 = v38[11];
      v19 = v38[12];
    }

    else
    {
      v20 = -1 << *(v35 + 32);
      v15 = v35 + 56;
      v18 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v35 + 56);
      v16 = v35;
      swift_bridgeObjectRetain_n();
      v17 = 0;
    }

    v34 = v18;
    v23 = (v18 + 64) >> 6;
    if (v16 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v24 = v17;
      v25 = v19;
      v26 = v17;
      if (!v19)
      {
        break;
      }

LABEL_14:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!v28)
      {
LABEL_21:
        outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v16, v15, v34, v17, v19);

        return;
      }

      while (1)
      {
        v30 = *(v2 + OBJC_IVAR___CPConversationManagerHost_dataSource);
        ObjectType = swift_getObjectType();
        ConversationManagerHost.protectedStorage.getter(v38);
        CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:)(v36, v28, v38, ObjectType);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        type metadata accessor for UUID();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v28 updateConversationContainersWithConversationContainersByGroupUUID_];

        v17 = v26;
        v19 = v27;
        if ((v16 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v29 = __CocoaSet.Iterator.next()();
        if (v29)
        {
          v37 = v29;
          type metadata accessor for ConversationManagerHostConnection();
          swift_dynamicCast();
          v28 = v38[0];
          v26 = v17;
          v27 = v19;
          if (v38[0])
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v19 = 0;
        goto LABEL_21;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

uint64_t outlined init with take of (key: UUID, value: ConversationManagerHostConnection.ConversationContainerWrapper)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:)(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR___CPConversationManagerHost_queue];
  *v8 = v9;
  v10 = *MEMORY[0x1E69E8020];
  *&v53 = v5[13];
  (v53)(v8, v10, v4);
  v52 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v5[1];
  v12(v8, v4);
  if ((v11 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (one-time initialization token for host != -1)
  {
LABEL_36:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v54 = __swift_project_value_buffer(v13, static Log.host);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v50 = v4;
    v17 = v12;
    v18 = v10;
    v19 = v2;
    v20 = v16;
    *v16 = 67109120;
    *(v16 + 4) = v3 & 1;
    _os_log_impl(&dword_1AEB26000, v14, v15, "sharePlayAllowedChanged to %{BOOL}d", v16, 8u);
    v21 = v20;
    v2 = v19;
    v10 = v18;
    v12 = v17;
    v4 = v50;
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  result = ConversationManagerHost.updateClientShouldConnectNotification()();
  if ((v3 & 1) == 0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Killing connections to clients since SharePlay is not allowed", v25, 2u);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    v27 = v52;
    v26 = v53;
    *v8 = v52;
    v26(v8, v10, v4);
    v28 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    result = (v12)(v8, v4);
    if (v27)
    {
      v12 = OBJC_IVAR___CPConversationManagerHost_connections;
      swift_beginAccess();
      v52 = *(v12 + v2);
      if ((v52 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for ConversationManagerHostConnection();
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type ConversationManagerHostConnection and conformance NSObject, type metadata accessor for ConversationManagerHostConnection);
        Set.Iterator.init(_cocoa:)();
        v30 = v56[4];
        v8 = v56[5];
        v31 = v56[6];
        v10 = v56[7];
        v3 = v56[8];
      }

      else
      {
        v32 = -1 << *(v52 + 32);
        v8 = (v52 + 56);
        v31 = ~v32;
        v33 = -v32;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        else
        {
          v34 = -1;
        }

        v3 = v34 & *(v52 + 56);
        v30 = v52;
        swift_bridgeObjectRetain_n();
        v10 = 0;
      }

      v50 = v31;
      v35 = (v31 + 64) >> 6;
      *&v29 = 136315138;
      v53 = v29;
      v51 = v2;
      while (1)
      {
        if (v30 < 0)
        {
          v40 = __CocoaSet.Iterator.next()();
          if (!v40 || (v55 = v40, type metadata accessor for ConversationManagerHostConnection(), swift_dynamicCast(), v39 = v56[0], v38 = v10, v12 = v3, !v56[0]))
          {
LABEL_32:
            outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v30, v8, v50, v10, v3);
          }
        }

        else
        {
          v36 = v10;
          v37 = v3;
          v38 = v10;
          if (!v3)
          {
            while (1)
            {
              v38 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v38 >= v35)
              {
                v3 = 0;
                goto LABEL_32;
              }

              v37 = v8[v38];
              ++v36;
              if (v37)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_23:
          v12 = ((v37 - 1) & v37);
          v39 = *(*(v30 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
          if (!v39)
          {
            goto LABEL_32;
          }
        }

        if (*(v39 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) == 1)
        {
          v41 = v39;
          v42 = Logger.logObject.getter();
          v4 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v4))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v56[0] = v44;
            *v43 = v53;
            *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v41 + direct field offset for XPCHostConnection.bundleIdentifier), *(v41 + direct field offset for XPCHostConnection.bundleIdentifier + 8), v56);
            _os_log_impl(&dword_1AEB26000, v42, v4, "Allowing SharePlay connection despite system restriction since client is entitled. BundleID %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
            MEMORY[0x1B27120C0](v44, -1, -1);
            v45 = v43;
            v2 = v51;
            MEMORY[0x1B27120C0](v45, -1, -1);
          }
        }

        else
        {
          v46 = swift_allocObject();
          *(v46 + 16) = v2;
          v4 = (*MEMORY[0x1E69E7D40] & *v39) + 336;
          v47 = *((*MEMORY[0x1E69E7D40] & *v39) + 0x150);
          v48 = v2;
          v47(partial apply for closure #1 in closure #1 in ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:), v46);
        }

        v10 = v38;
        v3 = v12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized ConversationManagerHost.conversationManager(_:requestedEndpointWithIdentifier:activitySession:completion:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v47 = v5;
    v48 = v10;
    v20 = v9;
    if (one-time initialization token for host == -1)
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
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.host);

  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52[0] = v46;
    *v25 = 136315394;
    v45 = a1;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v52);
    *(v25 + 12) = 2080;
    v26 = [v22 UUID];
    v27 = v51;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = v24;
    v32 = v48;
    (*(v48 + 8))(v27, v20);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v52);

    *(v25 + 14) = v33;
    v34 = v31;
    a1 = v45;
    _os_log_impl(&dword_1AEB26000, v23, v34, "requestedEndpoint identifier=%s activitySessionUUID=%s", v25, 0x16u);
    v35 = v46;
    swift_arrayDestroy();
    v36 = v35;
    v37 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  else
  {

    v32 = v48;
    v27 = v51;
    v37 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  }

  v38 = v47;
  ConversationManagerHost.updateClientShouldConnectNotification()();
  v39 = [v22 v37[477]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = [v22 activity];
  v41 = MEMORY[0x1EEE9AC00](v40);
  *(&v44 - 8) = a1;
  *(&v44 - 7) = a2;
  *(&v44 - 6) = v27;
  *(&v44 - 5) = v41;
  v42 = v50;
  *(&v44 - 4) = v49;
  *(&v44 - 3) = v42;
  *(&v44 - 2) = v38;

  specialized ConversationManagerHost.withFirstConnection(where:_:)(closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)partial apply, (&v44 - 10), v38, a1, a2);

  return (*(v32 + 8))(v27, v20);
}

void specialized ConversationManagerHost.conversationManagerHostConnection(_:advertiseGroupActivityWithUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = *(v7 + 16);
  v32[1] = a1;
  v12(v10, a1, v6);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32[0] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v13;
    aBlock[0] = v18;
    *v17 = 136315394;
    v19 = v13;
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1AEB26000, v14, v15, "%s advertising GroupActivity Session: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v18, -1, -1);
    v27 = v17;
    a3 = v32[0];
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v28 = *&v13[OBJC_IVAR___CPConversationManagerHost_dataSource];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v30 = swift_allocObject();
  *(v30 + 16) = v33;
  *(v30 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:advertiseGroupActivityWithUUID:completion:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_49;
  v31 = _Block_copy(aBlock);

  [v28 advertiseGroupActivity:isa completionHandler:v31];
  _Block_release(v31);
}

void specialized ConversationManagerHost.conversationManagerHostConnection(_:stopAdvertisingGroupActivityWithUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = *(v7 + 16);
  v32[1] = a1;
  v12(v10, a1, v6);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32[0] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v13;
    aBlock[0] = v18;
    *v17 = 136315394;
    v19 = v13;
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1AEB26000, v14, v15, "%s stopped advertising GroupActivity Session: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v18, -1, -1);
    v27 = v17;
    a3 = v32[0];
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v28 = *&v13[OBJC_IVAR___CPConversationManagerHost_dataSource];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v30 = swift_allocObject();
  *(v30 + 16) = v33;
  *(v30 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:stopAdvertisingGroupActivityWithUUID:completion:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_43;
  v31 = _Block_copy(aBlock);

  [v28 stopAdvertisingGroupActivity:isa completionHandler:v31];
  _Block_release(v31);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v50 - v17);
  v55 = a1;
  v19 = *a1;
  v61 = a2;
  v20 = v60;
  result = specialized Collection.firstIndex(where:)(v19, a2, a3, a4);
  if (!v20)
  {
    v53 = v13;
    v54 = v16;
    v60 = a3;
    v52 = 0;
    if (v22)
    {
      return *(v19 + 16);
    }

    v57 = result;
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v19;
      v27 = *(v19 + 16);
      v26 = (v19 + 16);
      v25 = v27;
      if (v23 == v27)
      {
        return v57;
      }

      v28 = a4;
      v56 = v63;
      v51 = a4;
      v58 = v9;
      while (v23 < v25)
      {
        v36 = v8;
        v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v59 = v24;
        v38 = v24 + v37;
        v39 = *(v9 + 72);
        v40 = v39 * v23;
        outlined init with copy of ConversationManagerHost.EndpointRequest(v24 + v37 + v39 * v23, v18);
        v41 = v60;
        v42 = v61;
        v43 = *v18 == v61 && v18[1] == v60;
        if (v43 || (v44 = _stringCompareWithSmolCheck(_:_:expecting:)(), v41 = v60, v42 = v61, (v44 & 1) != 0))
        {
          v29 = MEMORY[0x1B270FF70](v42, v41);
          v30 = v18 + v36[5];
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v32 = *(v18 + v36[6]);
          v33 = (v18 + v36[7]);
          v34 = v33[1];
          v63[2] = *v33;
          v63[3] = v34;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v63[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
          v63[1] = &block_descriptor_34;
          v35 = _Block_copy(aBlock);
          v8 = v36;

          [v28 requestEndpointWith:v29 activitySessionUUID:isa activity:v32 completion:v35];
          _Block_release(v35);

          result = outlined destroy of ConversationManagerHost.EndpointRequest(v18);
          v9 = v58;
          v24 = v59;
        }

        else
        {
          result = outlined destroy of ConversationManagerHost.EndpointRequest(v18);
          v45 = v57;
          if (v23 == v57)
          {
            v8 = v36;
            v9 = v58;
            v24 = v59;
          }

          else
          {
            if ((v57 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            v46 = *v26;
            if (v57 >= *v26)
            {
              goto LABEL_29;
            }

            v47 = v39 * v57;
            result = outlined init with copy of ConversationManagerHost.EndpointRequest(&v38[v39 * v57], v54);
            if (v23 >= v46)
            {
              goto LABEL_30;
            }

            outlined init with copy of ConversationManagerHost.EndpointRequest(&v38[v40], v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
            }

            v28 = v51;
            v8 = v36;
            v9 = v58;
            v48 = v59;
            v49 = v59 + v37;
            result = outlined assign with take of ConversationManagerHost.EndpointRequest(v53, &v49[v47]);
            if (v23 >= v48[2])
            {
              goto LABEL_31;
            }

            result = outlined assign with take of ConversationManagerHost.EndpointRequest(v54, &v49[v40]);
            *v55 = v48;
            v45 = v57;
            v24 = v48;
          }

          v57 = v45 + 1;
        }

        ++v23;
        v26 = v24 + 2;
        v25 = v24[2];
        if (v23 == v25)
        {
          return v57;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(a1, v7, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t specialized ConversationManagerHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Asked to accept new connection from %@", v16, 0xCu);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  v19 = [objc_msgSend(*&v2[OBJC_IVAR___CPConversationManagerHost_dataSource] sharePlaySystemStateObserver)];
  swift_unknownObjectRelease();
  if (v19)
  {
    goto LABEL_6;
  }

  v34 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v34 != 2 && (v34 & 1) != 0)
  {
    v35 = v13;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52 = v36;
      v40 = v39;
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v41 = v35;
      _os_log_impl(&dword_1AEB26000, v52, v37, "ConversationManagerHost accepted the connection because the client is allowed to bypass system restrictions. Connection %@", v38, 0xCu);
      outlined destroy of NSObject?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = v40;
      v36 = v52;
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v38, -1, -1);
    }

LABEL_6:
    v20 = *&v2[OBJC_IVAR___CPConversationManagerHost_queue];
    v21 = *&v2[OBJC_IVAR___CPConversationManagerHost_featureFlags];
    v22 = *&v2[OBJC_IVAR___CPConversationManagerHost_serverBag];
    v23 = v13;
    v24 = v20;
    swift_unknownObjectRetain();
    v25 = _s14CopresenceCore33ConversationManagerHostConnectionC10connection5queue12featureFlags9serverBagACSgSo15NSXPCConnectionC_So012OS_dispatch_H0CSo09CPFeatureJ0_pSo020CPConversationServerL0_ptcfCTfq4nnnen_nSo08CPSharedcrL0C_Tt3g5(v23, v24, v21, v22);
    if (v25)
    {
      v26 = v25;
      v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x190);
      v28 = swift_unknownObjectRetain();
      v27(v28, &protocol witness table for ConversationManagerHost);
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      *(v29 + 24) = v26;
      aBlock[4] = partial apply for closure #1 in ConversationManagerHost.listener(_:shouldAcceptNewConnection:);
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_22;
      v30 = _Block_copy(aBlock);
      v31 = v2;
      v32 = v26;
      static DispatchQoS.unspecified.getter();
      v56 = MEMORY[0x1E69E7CC0];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27106E0](0, v11, v7, v30);
      _Block_release(v30);

      (*(v55 + 8))(v7, v4);
      (*(v53 + 8))(v11, v54);

      return 1;
    }

    v49 = v23;
    v44 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v44, v50))
    {

      return 0;
    }

    v46 = swift_slowAlloc();
    *v46 = 67109120;
    *(v46 + 4) = [v49 processIdentifier];

    _os_log_impl(&dword_1AEB26000, v44, v50, "ConversationManagerHostConnection could not be created; rejecting connection from PID %d.", v46, 8u);
    goto LABEL_17;
  }

  v43 = v13;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&dword_1AEB26000, v44, v45, "ConversationManagerHost rejecting connection %@ because SharePlay is not allowed", v46, 0xCu);
    outlined destroy of NSObject?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v47, -1, -1);
LABEL_17:
    MEMORY[0x1B27120C0](v46, -1, -1);
  }

  return 0;
}

uint64_t type metadata accessor for ConversationManagerHost.EndpointRequest()
{
  result = type metadata singleton initialization cache for ConversationManagerHost.EndpointRequest;
  if (!type metadata singleton initialization cache for ConversationManagerHost.EndpointRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for ConversationManagerHost.EndpointRequest()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
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

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  v13 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(v6, v0 + v2, v8, v9, v10, v11, v12, v13);
}

void partial apply for closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(void *a1)
{
  partial apply for closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(a1);
}

{
  closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t outlined init with take of ConversationManagerHost.EndpointRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ConversationManagerHost.EndpointRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConversationManagerHost.EndpointRequest(uint64_t a1)
{
  v2 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of ConversationManagerHost.EndpointRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationManagerHost.EndpointRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL NSProcessInfo.isAllowedToConnect<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v6, a2, a3);
  if ((v6 & 0xFE) == 4)
  {
    return 1;
  }

  else
  {
    v5 = v6;
    return NSProcessInfo.isAllowedToConnect(to:)(&v5);
  }
}

uint64_t NSProcessInfo.bundleIdentifier.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void NSProcessInfo.value(forEntitlement:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  task = SecTaskCreateFromSelf(0);
  if (task)
  {
    v6 = MEMORY[0x1B270FF70](a1, a2);
    v7 = SecTaskCopyValueForEntitlement(task, v6, 0);

    if (v7)
    {
      *(a3 + 24) = swift_getObjectType();

      *a3 = v7;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t protocol witness for EntitlementValueProviding.bundleIdentifier.getter in conformance NSProcessInfo()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t XPCClient.connectionClosure.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for XPCClient.connectionClosure);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6);
}

Swift::Void __swiftcall XPCClient.destroyConnection()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[direct field offset for XPCClient.queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in XPCClient.destroyConnection();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3_0;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t XPCClient.withHost(body:errorHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
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
  aBlock[3] = &block_descriptor_6_4;
  v20 = _Block_copy(aBlock);

  v21 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v22 = swift_dynamicCast();
  v23 = *(v15 + 56);
  if (v22)
  {
    v23(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
    v26(v18);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v23(v14, 1, 1, AssociatedTypeWitness);
    result = (*(v25 + 8))(v14, v10);
    __break(1u);
  }

  return result;
}

uint64_t key path getter for XPCClient.connectionClosure : <A>XPCClient<A>@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSXPCConnection, @error @owned Error);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for XPCClient.connectionClosure : <A>XPCClient<A>(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out NSXPCConnection, @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return v7(v6, v5);
}

id XPCClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t closure #1 in closure #1 in closure #1 in XPCClient.init()(void *a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "XPC connection interrupted for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))();
}

uint64_t closure #1 in closure #1 in XPCClient.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(result + direct field offset for XPCClient.queue);
    v20 = result;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a2;
    aBlock[4] = a6;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = a7;
    v22 = _Block_copy(aBlock);
    v24 = v20;
    static DispatchQoS.unspecified.getter();
    v27 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v18, v14, v22);
    _Block_release(v22);
    (*(v11 + 8))(v14, v10);
    (*(v15 + 8))(v18, v26);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in XPCClient.init()(void *a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "XPC connection invalidated for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v10 = a1 + direct field offset for XPCClient._connection;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v16 = *v10;
    v12 = *(v10 + 3);
    if (v12)
    {
      v13 = *(v10 + 4);

      v12(&v16);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v12);
    }
  }

  *v10 = 0;
  v14 = swift_endAccess();
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))(v14);
}

id closure #2 in XPCClient.init()(void *a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v12 = v3;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Resetting XPC client connection on %s: %@", v6, 0x16u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  [v3 setInvalidationHandler_];
  [v3 setInterruptionHandler_];
  [v3 setExportedObject_];

  return [v3 invalidate];
}

id XPCClient.__deallocating_deinit()
{
  v1 = v0;
  v31 = *v0;
  v30 = *MEMORY[0x1E69E7D40];
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = &v0[direct field offset for XPCClient._connection];
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  v14 = *(v9 + 4);
  v8[2] = v10;
  v8[3] = v11;
  v8[4] = v13;
  v8[5] = v12;
  v8[6] = v14;
  v15 = *&v1[direct field offset for XPCClient.queue];
  aBlock[4] = partial apply for closure #1 in XPCClient.deinit;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_30_0;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v11);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v12);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v19 = v25;
  v20 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v19, v16);
  _Block_release(v16);

  (*(v29 + 8))(v19, v20);
  (*(v27 + 8))(v7, v28);

  v21 = *((v30 & v31) + 0x50);
  v22 = *((v30 & v31) + 0x58);
  v23 = type metadata accessor for XPCClient();
  v32.receiver = v1;
  v32.super_class = v23;
  return objc_msgSendSuper2(&v32, sel_dealloc);
}

uint64_t closure #1 in XPCClient.deinit(void *a1)
{
  swift_beginAccess();
  v2 = a1[2];
  if (v2)
  {
    v7 = a1[2];
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[6];
      v5 = v2;
      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
      v3(&v7);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v3);
    }

    else
    {
    }
  }

  a1[2] = 0;
  return swift_endAccess();
}

uint64_t @objc XPCClient.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for XPCClient.connectionClosure + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for XPCClient.connectionClosure));
  v3 = (a1 + direct field offset for XPCClient._connection);
  v4 = *(a1 + direct field offset for XPCClient._connection);
  v5 = *(a1 + direct field offset for XPCClient._connection + 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v5);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v7);
}

uint64_t closure #1 in XPCClient.destroyConnection()(uint64_t a1)
{
  v1 = a1 + direct field offset for XPCClient._connection;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v7 = *v1;
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = *(v1 + 32);
      v5 = v2;
      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
      v3(&v7);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v3);
    }

    else
    {
    }
  }

  *v1 = 0;
  return swift_endAccess();
}

id partial apply for closure #2 in XPCClient.init()(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #2 in XPCClient.init()(a1);
}

void *partial apply for thunk for @escaping @callee_guaranteed () -> (@out NSXPCConnection, @error @owned Error)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  result = v2(&v5);
  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSXPCConnection, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7D40];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for ActivitySession(0), swift_dynamicCast(), (v12 = v16) == 0))
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

LABEL_17:
    v13 = (*((*v9 & *v12) + 0x328))();
    v14 = [v13 isSystemActivity];

    if (v14)
    {
    }

    else
    {
      (*((*v9 & *v12) + 0x388))();

      MEMORY[0x1B2710150]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7D40];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for ActivitySession(0), swift_dynamicCast(), (v12 = v16) == 0))
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

LABEL_17:
    v13 = (*((*v9 & *v12) + 0x328))();
    v14 = [v13 isSystemActivity];

    if (v14)
    {
      (*((*v9 & *v12) + 0x388))();

      MEMORY[0x1B2710150]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

LABEL_17:
    v12 = [v11 normalizedValue];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore15ActivitySessionCG_So014TUConversationF0Cs5NeverOTg504_s14d6Core22fg30ManagerC06createcD002tucD0AA0co23CSgSo014TUConversationcO18C_tFSo0hC0CAGXEfU_Tf1cn_n(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v29 = result;
    v30 = v4;
    v31 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v32 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v29 = result;
  v30 = v6;
  v31 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v29;
    v10 = v30;
    v12 = v31;
    specialized Set.subscript.getter(v29, v30, v31, a1);
    v14 = v13;
    v15 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x388))();
    v16 = [v15 activity];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = *(v32 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v27)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMd, &_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v28, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<AddressableMember>.Index._Variant(v29, v30, v31);
        return v32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v18 = 1 << *(a1 + 32);
      if (v11 >= v18)
      {
        goto LABEL_32;
      }

      v19 = v11 >> 6;
      v20 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v20 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a1 + 64 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v10, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v29 = v18;
      v30 = v10;
      v31 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore15ActivitySessionCG_SSs5NeverOTg504_s14d6Core22fG127ManagerC26updateVirtualParticipantIdyys6UInt64VFSaySSGShyAA0cD0CGcfU0_SSAIcfu_33_23d0b21f370648a7fa82888872819982AISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v38;
        v10 = v40;
        v35 = v39;
        v11 = v1;
        specialized Set.subscript.getter(v38, v39, v40, v1);
        v13 = v12;
        swift_beginAccess();
        v14 = UUID.uuidString.getter();
        v16 = v15;
        swift_endAccess();

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMd, &_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v37, 0);
          if (v6 == v33)
          {
LABEL_32:
            outlined consume of Set<AddressableMember>.Index._Variant(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v21 = 1 << *(v11 + 32);
          if (v9 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v9 >> 6;
          v23 = *(v32 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                outlined consume of Set<AddressableMember>.Index._Variant(v9, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            outlined consume of Set<AddressableMember>.Index._Variant(v9, v35, 0);
          }

LABEL_31:
          v30 = *(v11 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v15 = *(*(a3 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v13 = v15;
      v14 = a1(&v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ActivitySession(0);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    outlined consume of Set<String>.Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B2710B10](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundSession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for BackgroundSession(0);
          swift_dynamicCast();
          v18 = v27;
          v16 = v9;
          v17 = v10;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_23:
      outlined consume of Set<String>.Iterator._Variant();
    }

    else
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant();
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}