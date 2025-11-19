uint64_t NearbyGroupHostIDSService.MessageEvents.init(_:)(uint64_t a1)
{
  v19[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - v5;
  v7 = type metadata accessor for Publishers.PrefetchStrategy();
  v19[0] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = v19 - v14;
  v21 = a1;
  (*(v8 + 104))(v11, enum case for Publishers.PrefetchStrategy.byRequest(_:), v7);
  (*(v3 + 104))(v6, enum case for Publishers.BufferingStrategy.dropOldest<A>(_:), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v19[0]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v16 = v20;
  v17 = Publisher.eraseToAnyPublisher()();

  (*(v12 + 8))(v15, v16);
  return v17;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(NearbyGroupHostIDSService.MessageEvents.Iterator.next(), 0, 0);
}

uint64_t NearbyGroupHostIDSService.MessageEvents.Iterator.next()()
{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];

  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  *v5 = v0;
  v5[1] = NearbyGroupHostIDSService.MessageEvents.Iterator.next();
  v7 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v3, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v2, 0, 0, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator()
{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];

  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  *v5 = v0;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator;
  v7 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, 0, 0);
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];

  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  *v5 = v0;
  v5[1] = _s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v7 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v6);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance NearbyGroupHostIDSService.MessageEvents@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = NearbyGroupHostIDSService.MessageEvents.makeAsyncIterator()();

  *a1 = v4;
  return result;
}

char *NearbyGroupHostIDSService.__allocating_init(idsService:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = specialized NearbyGroupHostIDSService.init(idsService:)(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

char *NearbyGroupHostIDSService.init(idsService:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized NearbyGroupHostIDSService.init(idsService:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

id NearbyGroupHostIDSService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyGroupHostIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void NearbyGroupHostIDSService.MessageEvent.Member.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NearbyGroupHostIDSService.MessageEvent.Member.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyGroupHostIDSService.MessageEvent.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NearbyGroupHostIDSService.MessageEvent.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroupHostIDSService.MessageEvent.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.members.getter()
{
  v1 = *(v0 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20));
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.members.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.init(id:members:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.fromHandle.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.fromHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.operation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 24);

  return outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(v3, a1);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.operation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 24);

  return outlined assign with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(a1, v3);
}

__n128 NearbyGroupHostIDSService.MessageEvent.MembershipMutation.init(id:fromHandle:operation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = a5 + *(v11 + 24);
  result = *a4;
  v15 = *(a4 + 16);
  *v13 = *a4;
  *(v13 + 16) = v15;
  *(v13 + 32) = *(a4 + 32);
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.Member.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v5 = *v4;
  v6 = v4[1];

  outlined destroy of NearbyGroup_Group(a1, type metadata accessor for NearbyGroup_Member);
  return v2;
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for NearbyGroup_Group.Initialization(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);
  static Message.with(_:)();
  v10 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v9, a1);
}

uint64_t closure #1 in closure #1 in NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(uint64_t *a1, void *a2, void *a3)
{
  v6 = UUID.data.getter();
  v8 = v7;
  v9 = outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v6;
  a1[1] = v8;
  v10 = (*((swift_isaMask & *a2) + 0xC0))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C8980;
  *(inited + 32) = a3;
  v12 = a3;
  v13 = specialized Set.union<A>(_:)(inited, v10);
  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_020com_apple_SharePlay_D18InvitationsService0df1_G0Vs5NeverOTg508_s44com_i1_jk1_dl11Service0E19f80HostIDSServiceC010distributeH14Initialization3for2toyAA0ehI0C_Shy0E8Sessions0eH6G52CGtKFyAA0eh1_H0VzXEfU_yAN0L0VzXEfU_AA0eh1_P0VAKXEfU_Tf1cn_n(v13);

  v16 = a1[2];

  a1[2] = v15;
  return result;
}

void NearbyGroup_Member.init(member:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = a2 + *(v4 + 20);
  UnknownStorage.init()();
  v6 = (a2 + *(v4 + 24));
  *v6 = 0;
  v6[1] = 0;
  *a2 = NearbyGroupMember.handle.getter();
  a2[1] = v7;
  v8 = NearbyGroupMember.tokenID.getter();
  v10 = v9;

  if (v10)
  {
    *v6 = v8;
    v6[1] = v10;
  }
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);
  static Message.with(_:)();
  v10 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v9, a1);
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeRemove(for:removingMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  static Message.with(_:)();
  v10 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v9, a1);
}

uint64_t closure #1 in closure #1 in NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = UUID.data.getter();
  v16 = v15;
  outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v14;
  *(a1 + 8) = v16;
  v17 = v11 + *(v6 + 20);
  UnknownStorage.init()();
  v18 = (v11 + *(v6 + 24));
  *v18 = 0;
  v18[1] = 0;
  *v11 = NearbyGroupMember.handle.getter();
  v11[1] = v19;
  v20 = NearbyGroupMember.tokenID.getter();
  if (v21)
  {
    *v18 = v20;
    v18[1] = v21;
  }

  outlined init with take of NearbyGroup_Group(v11, v13, type metadata accessor for NearbyGroup_Member);
  v22 = *(a4(0) + 24);
  outlined destroy of Any?(a1 + v22, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with take of NearbyGroup_Group(v13, a1 + v22, type metadata accessor for NearbyGroup_Member);
  return (*(v7 + 56))(a1 + v22, 0, 1, v6);
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeLeave(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v11 = a2;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);
  static Message.with(_:)();
  v8 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v7, a1);
}

void NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v55 = a3;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v19 = [a5 publicIntentAction];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 integerValue];

    if (v21 == 5)
    {
      v54 = a1;
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Log.host);

      v23 = a5;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = a4;
        v29 = v28;
        v57 = a2;
        v58 = v28;
        *v26 = 136315394;
        v56 = v54;

        v30 = String.init<A>(reflecting:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v58);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2112;
        *(v26 + 14) = v23;
        *v27 = v23;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Handling incoming data from: %s context: %@", v26, 0x16u);
        outlined destroy of Any?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        a4 = v53;
      }

      v35 = *&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24];
      v34 = *&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
      __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service], v35);
      (*(*(v34 + 8) + 8))(v35);
      if (v36)
      {
        v37 = objc_allocWithZone(IDSServiceProperties);
        v38 = String._bridgeToObjectiveC()();

        v39 = [v37 initWithServiceIdentifier:v38];

        v40 = v54;
        if (v39)
        {

          v41 = v6;
          specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v55, a4, 5, 1, v39, v41, v40, a2);
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Log.host);

  v43 = a5;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = a2;
    v58 = v48;
    *v46 = 136315394;
    v56 = a1;

    v49 = String.init<A>(reflecting:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v58);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v43;
    *v47 = v43;
    v52 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "Dropping incoming data from: %s context: %@", v46, 0x16u);
    outlined destroy of Any?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }
}

void NearbyGroupHostIDSService.handleIncomingData(from:data:context:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v55 = a3;
  v56 = a4;
  v57 = a1;
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for NearbyGroup_Group(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v49 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v5 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_10;
  }

  v23 = [a5 publicIntentAction];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 integerValue];

    if (v25 == 5)
    {
      v53 = v5;
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.host);

      v27 = a5;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v51 = v29;
        v31 = v30;
        v50 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v61[0] = v52;
        *v31 = 136315394;
        *&v58 = v57;
        *(&v58 + 1) = a2;

        v32 = String.init<A>(reflecting:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v61);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2112;
        *(v31 + 14) = v27;
        v35 = v50;
        *v50 = v27;
        v36 = v27;
        _os_log_impl(&_mh_execute_header, v28, v51, "Handling incoming data from: %s context: %@", v31, 0x16u);
        outlined destroy of Any?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v52);
      }

      v61[0] = v55;
      v61[1] = v56;
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      outlined copy of Data._Representation(v55, v56);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
      Message.init<A>(serializedBytes:extensions:partial:options:)();
      v48 = v54;
      outlined init with take of NearbyGroup_Group(v14, v54, type metadata accessor for NearbyGroup_Group);
      NearbyGroupHostIDSService.handleGroupMessage(from:message:)(v57, a2, v48);
      outlined destroy of NearbyGroup_Group(v48, type metadata accessor for NearbyGroup_Group);
      return;
    }
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_14;
  }

LABEL_10:
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Log.host);

  v38 = a5;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61[0] = v43;
    *v41 = 136315394;
    *&v58 = v57;
    *(&v58 + 1) = a2;

    v44 = String.init<A>(reflecting:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v61);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v38;
    *v42 = v38;
    v47 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "Dropping incoming data from: %s context: %@", v41, 0x16u);
    outlined destroy of Any?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }
}

void closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v41 = a5;
  v38 = a4;
  v39 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for NearbyGroup_Group(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v38 - v18;
  outlined init with copy of (String, Any)(a1, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.host);
    v21 = v40;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      if (v21)
      {
        v44 = v21;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v26 = String.init<A>(reflecting:)();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, aBlock);

      *(v24 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode protobuf: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Group(v12, v19, type metadata accessor for NearbyGroup_Group);
    v29 = v39;
    v40 = *&v39[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue];
    outlined init with copy of NearbyGroup_Group(v19, v17, type metadata accessor for NearbyGroup_Group);
    v30 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v31 = swift_allocObject();
    v32 = v38;
    v31[2] = v29;
    v31[3] = v32;
    v31[4] = v41;
    outlined init with take of NearbyGroup_Group(v17, v31 + v30, type metadata accessor for NearbyGroup_Group);
    aBlock[4] = partial apply for closure #1 in closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:);
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_6;
    _Block_copy(aBlock);
    v44 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    v33 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = type metadata accessor for DispatchWorkItem();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.async(execute:)();

    outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
  }
}

void NearbyGroupHostIDSService.handleGroupMessage(from:message:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v87 = a3;
  v80 = a1;
  v81 = a2;
  v4 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v76 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v75 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v74 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v73 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v16 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v86 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v73 - v23;
  v83 = type metadata accessor for NearbyGroup_Group(0);
  v25 = *(v83 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v83);
  v79 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v85 = &v73 - v30;
  v31 = __chkstk_darwin(v29);
  v78 = &v73 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v73 - v34;
  __chkstk_darwin(v33);
  v37 = &v73 - v36;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (&v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = v3;
  v43 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (v43)
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
  v45 = type metadata accessor for Logger();
  v46 = __swift_project_value_buffer(v45, static Log.host);
  v47 = v87;
  outlined init with copy of NearbyGroup_Group(v87, v37, type metadata accessor for NearbyGroup_Group);
  v84 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v88 = v51;
    *v50 = 136315138;
    outlined init with copy of NearbyGroup_Group(v37, v24, type metadata accessor for NearbyGroup_Group);
    v52 = v83;
    (*(v25 + 56))(v24, 0, 1, v83);
    outlined init with copy of (String, Any)(v24, v22, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    if ((*(v25 + 48))(v22, 1, v52) == 1)
    {
      v53 = 0xE300000000000000;
      v54 = 7104878;
    }

    else
    {
      outlined init with take of NearbyGroup_Group(v22, v35, type metadata accessor for NearbyGroup_Group);
      outlined init with copy of NearbyGroup_Group(v35, v78, type metadata accessor for NearbyGroup_Group);
      v54 = String.init<A>(reflecting:)();
      v53 = v56;
      outlined destroy of NearbyGroup_Group(v35, type metadata accessor for NearbyGroup_Group);
    }

    v55 = v85;
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    outlined destroy of NearbyGroup_Group(v37, type metadata accessor for NearbyGroup_Group);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v88);

    *(v50 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "Message: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);

    v47 = v87;
  }

  else
  {

    outlined destroy of NearbyGroup_Group(v37, type metadata accessor for NearbyGroup_Group);
    v55 = v85;
  }

  v58 = v86;
  outlined init with copy of (String, Any)(v47, v86, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v59 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    outlined init with copy of NearbyGroup_Group(v47, v55, type metadata accessor for NearbyGroup_Group);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v88 = v63;
      *v62 = 136315138;
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
      v64 = Message.debugDescription.getter();
      v66 = v65;
      outlined destroy of NearbyGroup_Group(v55, type metadata accessor for NearbyGroup_Group);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v88);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unknown message: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);

      return;
    }

    v70 = type metadata accessor for NearbyGroup_Group;
    v71 = v55;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v69 = v75;
        outlined init with take of NearbyGroup_Group(v58, v75, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        NearbyGroupHostIDSService.handleMemberRemoved(from:removedMember:)(v80, v81, v69);
        v72 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
      }

      else
      {
        v69 = v76;
        outlined init with take of NearbyGroup_Group(v58, v76, type metadata accessor for NearbyGroup_Group.MemberLeft);
        NearbyGroupHostIDSService.handleMemberLeft(from:leftMember:)(v80, v81, v69);
        v72 = type metadata accessor for NearbyGroup_Group.MemberLeft;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v69 = v74;
      outlined init with take of NearbyGroup_Group(v58, v74, type metadata accessor for NearbyGroup_Group.MemberAdded);
      NearbyGroupHostIDSService.handleMemberAdded(from:addedMember:)(v80, v81, v69);
      v72 = type metadata accessor for NearbyGroup_Group.MemberAdded;
    }

    else
    {
      v69 = v73;
      outlined init with take of NearbyGroup_Group(v58, v73, type metadata accessor for NearbyGroup_Group.Initialization);
      NearbyGroupHostIDSService.handleInitialize(from:initialization:)(v80, v81, v69);
      v72 = type metadata accessor for NearbyGroup_Group.Initialization;
    }

    v70 = v72;
    v71 = v69;
  }

  outlined destroy of NearbyGroup_Group(v71, v70);
}

uint64_t NearbyGroupHostIDSService.handleInitialize(from:initialization:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v100 = a1;
  v101 = a2;
  v98 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v5 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v104 = (&v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  v7 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v96 = &v91 - v8;
  v93 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v9 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for NearbyGroup_Member(0);
  v103 = *(v99 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v99);
  v105 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v91 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v102 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  outlined copy of Data._Representation(*a3, a3[1]);
  UUID.init(data:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of Any?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Log.host);
      v29 = v104;
      outlined init with copy of NearbyGroup_Group(a3, v104, type metadata accessor for NearbyGroup_Group.Initialization);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v106 = v33;
        *v32 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);
        v34 = Message.debugDescription.getter();
        v36 = v35;
        outlined destroy of NearbyGroup_Group(v29, type metadata accessor for NearbyGroup_Group.Initialization);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v106);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to derive UUID from Initialization message: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v29, type metadata accessor for NearbyGroup_Group.Initialization);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v52 = 0;
      return swift_willThrow();
    }

LABEL_54:
    swift_once();
    goto LABEL_4;
  }

  v92 = v18;
  v38 = *(v18 + 32);
  v98 = v17;
  v38(v102, v16, v17);
  v39 = a3[2];
  v40 = *(v39 + 16);
  if (v40)
  {
    v104 = (v105 + *(v99 + 24));
    v41 = v39 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v103 = *(v103 + 72);
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v105;
      outlined init with copy of NearbyGroup_Group(v41, v105, type metadata accessor for NearbyGroup_Member);
      v45 = *v43;
      v44 = v43[1];
      v46 = *v104;
      v47 = v104[1];

      outlined destroy of NearbyGroup_Group(v43, type metadata accessor for NearbyGroup_Member);
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0;
      }

      if (!v47)
      {
        v47 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      }

      v50 = *(v42 + 2);
      v49 = *(v42 + 3);
      if (v50 >= v49 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v42);
      }

      *(v42 + 2) = v50 + 1;
      v51 = &v42[32 * v50];
      *(v51 + 4) = v45;
      *(v51 + 5) = v44;
      *(v51 + 6) = v48;
      *(v51 + 7) = v47;
      v41 += v103;
      --v40;
    }

    while (v40);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v55 = v100;
  v54 = v101;
  v56 = String._bridgeToObjectiveC()();
  v57 = IDSCopyAddressDestinationForDestination();

  v58 = IDSCopyRawAddressForDestination();
  if (!v58)
  {
    goto LABEL_42;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  if (String.count.getter() < 1)
  {

LABEL_42:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Log.host);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v106 = v72;
      *v71 = 136315138;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v106);
      _os_log_impl(&_mh_execute_header, v69, v70, "Failed to convert ID into Raw IDS Destination: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
    }

    return (*(v92 + 8))(v102, v98);
  }

  v62 = *(v42 + 2);
  if (v62)
  {
    v63 = (v42 + 56);
    do
    {
      v65 = *(v63 - 1);
      v64 = *v63;
      v66 = *(v63 - 3) == v59 && *(v63 - 2) == v61;
      if (v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v64)
        {
          goto LABEL_52;
        }
      }

      else if (!v64)
      {
        goto LABEL_37;
      }

      v67 = v65 == v55 && v64 == v54;
      if (v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_52:

        v81 = v92;
        v82 = v95;
        v83 = v102;
        v84 = v98;
        (*(v92 + 16))(v95, v102, v98);
        v85 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC44com_apple_SharePlay_NearbyInvitationsService0F19GroupHostIDSServiceC12MessageEventO6MemberV_SayAJGTt0g5Tf4g_n(v42);

        *(v82 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20)) = v85;
        swift_storeEnumTagMultiPayload();
        v86 = voucher_copy();
        v87 = v96;
        v88 = *(v97 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages);
        v89 = *(v94 + 48);
        outlined init with copy of NearbyGroup_Group(v82, v96, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
        *(v87 + v89) = v86;

        v90 = v86;
        PassthroughSubject.send(_:)();

        outlined destroy of Any?(v87, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
        outlined destroy of NearbyGroup_Group(v82, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
        return (*(v81 + 8))(v83, v84);
      }

LABEL_37:
      v63 += 4;
      --v62;
    }

    while (v62);
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, static Log.host);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v106 = v77;
    *v76 = 136315138;
    *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v106);
    _os_log_impl(&_mh_execute_header, v74, v75, "Failed message verification. fromID %s not present in membership list.", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
  }

  v78 = v98;
  v79 = v92;
  lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
  swift_allocError();
  *v80 = 0;
  swift_willThrow();
  return (*(v79 + 8))(v102, v78);
}

uint64_t NearbyGroupHostIDSService.handleMemberAdded(from:addedMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v75 = a1;
  v80 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v6 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  v8 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v69 - v9;
  v72 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v70 = &v69 - v14;
  v71 = type metadata accessor for NearbyGroup_Member(0);
  v69 = *(v71 - 8);
  v15 = *(v69 + 64);
  __chkstk_darwin(v71);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v69 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v81 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = v4;
  v31 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v30 = v31;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  outlined copy of Data._Representation(*a3, *(a3 + 8));
  UUID.init(data:)();
  v33 = a3;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    outlined destroy of Any?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.host);
      v35 = v73;
      outlined init with copy of NearbyGroup_Group(v33, v73, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v82 = v39;
        *v38 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);
        v40 = Message.debugDescription.getter();
        v42 = v41;
        outlined destroy of NearbyGroup_Group(v35, type metadata accessor for NearbyGroup_Group.MemberAdded);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v82);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to derive UUID from member added message: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v35, type metadata accessor for NearbyGroup_Group.MemberAdded);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v51 = 0;
      return swift_willThrow();
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v44 = v22;
  v45 = v23;
  (*(v23 + 32))(v81, v21, v44);
  v46 = v70;
  outlined init with copy of (String, Any)(a3 + *(v80 + 24), v70, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v47 = *(v69 + 48);
  v48 = v71;
  if (v47(v46, 1, v71) == 1)
  {
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v49 = v17 + *(v48 + 20);
    UnknownStorage.init()();
    v50 = (v17 + *(v48 + 24));
    *v50 = 0;
    v50[1] = 0;
    if (v47(v46, 1, v48) != 1)
    {
      outlined destroy of Any?(v46, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Group(v46, v17, type metadata accessor for NearbyGroup_Member);
  }

  v54 = *v17;
  v53 = v17[1];
  v55 = (v17 + *(v48 + 24));
  v57 = *v55;
  v56 = v55[1];

  outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Member);
  v58 = v76;
  v59 = v81;
  (*(v23 + 16))(v76, v81, v44);
  v60 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v61 = (v58 + *(v60 + 20));
  v62 = v77;
  *v61 = v75;
  v61[1] = v62;
  v63 = v58 + *(v60 + 24);
  *v63 = v54;
  *(v63 + 8) = v53;
  *(v63 + 16) = v57;
  *(v63 + 24) = v56;
  *(v63 + 32) = 0;
  swift_storeEnumTagMultiPayload();

  v64 = voucher_copy();
  v65 = v78;
  v66 = *(v79 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages);
  v67 = *(v74 + 48);
  outlined init with copy of NearbyGroup_Group(v58, v78, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  *(v65 + v67) = v64;

  v68 = v64;
  PassthroughSubject.send(_:)();

  outlined destroy of Any?(v65, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  outlined destroy of NearbyGroup_Group(v58, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  return (*(v45 + 8))(v59, v44);
}

uint64_t NearbyGroupHostIDSService.handleMemberRemoved(from:removedMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v75 = a1;
  v80 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  v8 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v69 - v9;
  v72 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v70 = &v69 - v14;
  v71 = type metadata accessor for NearbyGroup_Member(0);
  v69 = *(v71 - 8);
  v15 = *(v69 + 64);
  __chkstk_darwin(v71);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v69 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v81 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = v4;
  v31 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v30 = v31;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  outlined copy of Data._Representation(*a3, *(a3 + 8));
  UUID.init(data:)();
  v33 = a3;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    outlined destroy of Any?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.host);
      v35 = v73;
      outlined init with copy of NearbyGroup_Group(v33, v73, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v82 = v39;
        *v38 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        v40 = Message.debugDescription.getter();
        v42 = v41;
        outlined destroy of NearbyGroup_Group(v35, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v82);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to derive UUID from member added message: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v35, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v51 = 0;
      return swift_willThrow();
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v44 = v22;
  v45 = v23;
  (*(v23 + 32))(v81, v21, v44);
  v46 = v70;
  outlined init with copy of (String, Any)(a3 + *(v80 + 24), v70, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v47 = *(v69 + 48);
  v48 = v71;
  if (v47(v46, 1, v71) == 1)
  {
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v49 = v17 + *(v48 + 20);
    UnknownStorage.init()();
    v50 = (v17 + *(v48 + 24));
    *v50 = 0;
    v50[1] = 0;
    if (v47(v46, 1, v48) != 1)
    {
      outlined destroy of Any?(v46, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Group(v46, v17, type metadata accessor for NearbyGroup_Member);
  }

  v54 = *v17;
  v53 = v17[1];
  v55 = (v17 + *(v48 + 24));
  v57 = *v55;
  v56 = v55[1];

  outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Member);
  v58 = v76;
  v59 = v81;
  (*(v23 + 16))(v76, v81, v44);
  v60 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v61 = (v58 + *(v60 + 20));
  v62 = v77;
  *v61 = v75;
  v61[1] = v62;
  v63 = v58 + *(v60 + 24);
  *v63 = v54;
  *(v63 + 8) = v53;
  *(v63 + 16) = v57;
  *(v63 + 24) = v56;
  *(v63 + 32) = 1;
  swift_storeEnumTagMultiPayload();

  v64 = voucher_copy();
  v65 = v78;
  v66 = *(v79 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages);
  v67 = *(v74 + 48);
  outlined init with copy of NearbyGroup_Group(v58, v78, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  *(v65 + v67) = v64;

  v68 = v64;
  PassthroughSubject.send(_:)();

  outlined destroy of Any?(v65, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  outlined destroy of NearbyGroup_Group(v58, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  return (*(v45 + 8))(v59, v44);
}

uint64_t NearbyGroupHostIDSService.handleMemberLeft(from:leftMember:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;
  v80 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v5 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  v7 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v78 = &v73 - v8;
  v75 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v9 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v73 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = v3;
  v25 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  outlined copy of Data._Representation(*a3, *(a3 + 8));
  UUID.init(data:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of Any?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Log.host);
      v28 = v81;
      outlined init with copy of NearbyGroup_Group(a3, v81, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v84 = v32;
        *v31 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);
        v33 = Message.debugDescription.getter();
        v35 = v34;
        outlined destroy of NearbyGroup_Group(v28, type metadata accessor for NearbyGroup_Group.MemberLeft);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v84);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to derive UUID from member left message: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v28, type metadata accessor for NearbyGroup_Group.MemberLeft);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v52 = 0;
      return swift_willThrow();
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v37 = v15;
  v38 = v19;
  (*(v16 + 32))(v19, v14, v37);
  v39 = v82;
  v40 = v83;
  v41 = String._bridgeToObjectiveC()();
  v42 = IDSCopyAddressDestinationForDestination();

  v43 = IDSCopyRawAddressForDestination();
  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (String.count.getter() >= 1)
    {
      v47 = v38;
      v48 = v44;
      if (*(a3 + 16) == 1)
      {

        v49 = v39;
        v50 = v39;
        v51 = v40;
      }

      else
      {
        v49 = 0;
        v50 = v39;
        v51 = 0;
      }

      v62 = *(v16 + 16);
      v63 = v77;
      v74 = v47;
      v62(v77, v47, v37);
      v64 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
      v65 = (v63 + *(v64 + 20));
      *v65 = v50;
      v65[1] = v40;
      v66 = v63 + *(v64 + 24);
      *v66 = v48;
      *(v66 + 8) = v46;
      *(v66 + 16) = v49;
      *(v66 + 24) = v51;
      *(v66 + 32) = 1;
      swift_storeEnumTagMultiPayload();

      v67 = voucher_copy();
      v68 = v78;
      v69 = *(v79 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages);
      v70 = v37;
      v71 = *(v76 + 48);
      outlined init with copy of NearbyGroup_Group(v63, v78, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      *(v68 + v71) = v67;

      v72 = v67;
      PassthroughSubject.send(_:)();

      outlined destroy of Any?(v68, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
      outlined destroy of NearbyGroup_Group(v63, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      return (*(v16 + 8))(v74, v70);
    }
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Log.host);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = v39;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v40;
    v61 = v59;
    v84 = v59;
    *v58 = 136315138;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v60, &v84);
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to convert ID into Raw IDS Destination: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
  }

  return (*(v16 + 8))(v38, v37);
}

void IDSService.account(for:)(void *a1, uint64_t a2)
{
  v5 = [v2 accounts];
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = v8;
    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v9 = v71;
      v10 = v72;
      v11 = v73;
      v12 = v74;
      v13 = v75;
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v10 = v8 + 56;
      v15 = ~v14;
      v16 = -v14;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v8 + 56);

      v11 = v15;
      v13 = v18;
      v12 = 0;
    }

    v65 = 0;
    v53 = v11;
    v19 = (v11 + 64) >> 6;
    v60 = a2;
    v61 = v9;
    v56 = v19;
    v57 = v7;
    v58 = v10;
    v59 = a1;
    v62 = v12;
    if (v9 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v20 = v12;
    v21 = v13;
    v22 = v12;
    if (v13)
    {
LABEL_13:
      v63 = (v21 - 1) & v21;
      v64 = v22;
      v23 = *(*(v9 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v23)
      {
LABEL_40:
        outlined consume of Set<IDSAccount>.Iterator._Variant();

        return;
      }

      while (1)
      {
        v66 = v23;
        v25 = [v23 pseudonyms];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPseudonym, IDSPseudonym_ptr);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v27 >> 62)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v55 = v13;
        if (v28)
        {
          v29 = 0;
          v67 = v27 & 0xC000000000000001;
          v30 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v67)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              v31 = *(v27 + 8 * v29 + 32);
            }

            v32 = v31;
            v33 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            v34 = [v31 URI];
            v35 = [v34 prefixedURI];

            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
            }

            v40 = *(v30 + 2);
            v39 = *(v30 + 3);
            if (v40 >= v39 >> 1)
            {
              v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v30);
            }

            *(v30 + 2) = v40 + 1;
            v41 = &v30[16 * v40];
            *(v41 + 4) = v36;
            *(v41 + 5) = v38;
            ++v29;
            if (v33 == v28)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v30 = _swiftEmptyArrayStorage;
LABEL_34:

        v44 = v59;
        v43 = v60;
        v69 = v59;
        v70 = v60;
        __chkstk_darwin(v42);
        v52 = &v69;
        v45 = v65;
        v46 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v51, v30);

        if ((v46 & 1) == 0)
        {
          v47 = [v66 aliasStrings];
          if (!v47)
          {
            goto LABEL_45;
          }

          v48 = v47;
          v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = v44;
          v70 = v43;
          __chkstk_darwin(v50);
          v52 = &v69;
          LOBYTE(v48) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v51, v49);
          v65 = v45;

          if ((v48 & 1) == 0)
          {

            v13 = v63;
            v12 = v64;
            v10 = v58;
            v9 = v61;
            v19 = v56;
            v62 = v64;
            if ((v61 & 0x8000000000000000) == 0)
            {
              goto LABEL_9;
            }

LABEL_15:
            v24 = __CocoaSet.Iterator.next()();
            if (v24)
            {
              v68 = v24;
              swift_dynamicCast();
              v23 = v69;
              v63 = v13;
              v64 = v62;
              if (v69)
              {
                continue;
              }
            }
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_40;
        }

        v21 = *(v10 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_13;
        }
      }

LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NearbyGroupMember();
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
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *specialized _NativeSet.subtracting<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = v2 + 7;
      while (1)
      {
        if (v50)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = NSObject._rawHashValue(seed:)(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for NearbyGroupMember();
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        __chkstk_darwin(v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = specialized _NativeSet.extractSubset(using:count:)(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = NSObject._rawHashValue(seed:)(v2[5]);
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(v24[6] + 8 * v26);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      specialized closure #1 in _NativeSet.subtracting<A>(_:)(v39, v42, v37, v8, v53);
      v2 = v40;
    }

LABEL_40:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v32 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (*v5 >> 62)
        {
          if (v9 < 0)
          {
            v26 = *v5;
          }

          v10 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v5[1];
        if (v11 == v10)
        {

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v29, a3);
          return;
        }

        v12 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v27 = v5[1];
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v5[1] = v11 + 1;
        v15 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v16 = -1 << *(a3 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v32 + 8 * (v17 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for NearbyGroupMember();
      v20 = *(*(a3 + 48) + 8 * v17);
      v21 = static NSObject.== infix(_:_:)();

      if ((v21 & 1) == 0)
      {
        v22 = ~v16;
        do
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          if (((1 << v17) & *(v32 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v23 = *(*(a3 + 48) + 8 * v17);
          v24 = static NSObject.== infix(_:_:)();
        }

        while ((v24 & 1) == 0);
      }

      v5 = a5;

      v25 = a1[v18];
      a1[v18] = v25 & ~v19;
    }

    while ((v25 & v19) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_30;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *specialized NearbyGroupHostIDSService.init(idsService:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  __chkstk_darwin(v7);
  v68 = v57 - v9;
  v67 = type metadata accessor for Publishers.PrefetchStrategy();
  v65 = *(v67 - 8);
  v10 = *(v65 + 64);
  __chkstk_darwin(v67);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v66 = v57 - v15;
  v60 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v59 = *(v60 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v57[1] = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v77[3] = a3;
  v77[4] = a4;
  v61 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  v24 = *(*(a3 - 8) + 32);
  v62 = a3;
  v63 = boxed_opaque_existential_1;
  v24();
  v25 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages;
  v57[0] = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *&a2[v25] = PassthroughSubject.init()();
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v75 = 0xD00000000000001ALL;
  v76 = 0x80000001000CEEC0;
  v29 = (*(*(a4 + 8) + 8))(a3);
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0x4E574F4E4B4E55;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  static DispatchQoS.unspecified.getter();
  v75 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v59 + 104))(v58, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v60);
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = v73;
  *&v73[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue] = v34;
  outlined init with copy of PseudonymProtocol(v77, &v35[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service]);
  v75 = *&v35[v57[0]];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v60 = Publisher.eraseToAnyPublisher()();
  v75 = v60;
  v36 = v64;
  v37 = v65;
  v38 = v67;
  (*(v65 + 104))(v64, enum case for Publishers.PrefetchStrategy.byRequest(_:), v67);
  v40 = v68;
  v39 = v69;
  v41 = v70;
  (*(v69 + 104))(v68, enum case for Publishers.BufferingStrategy.dropOldest<A>(_:), v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v42 = v66;
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v39 + 8))(v40, v41);
  (*(v37 + 8))(v36, v38);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v43 = v71;
  v44 = Publisher.eraseToAnyPublisher()();

  (*(v72 + 8))(v42, v43);
  v45 = v73;
  *&v73[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages] = v44;
  v46 = type metadata accessor for NearbyGroupHostIDSService();
  v74.receiver = v45;
  v74.super_class = v46;
  v47 = objc_msgSendSuper2(&v74, "init");
  v48 = objc_allocWithZone(IDSServiceDelegateProperties);
  v49 = v47;
  v50 = [v48 init];
  [v50 setWantsCrossAccountMessaging:1];
  v51 = *&v49[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue];
  v52 = v61;
  v53 = *(v61 + 32);
  v54 = v50;
  v55 = v51;
  v53(v49, v50, v51, v62, v52);

  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  return v49;
}

uint64_t specialized static NearbyGroupHostIDSService.MessageEvent.Member.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t outlined destroy of NearbyGroup_Group(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id specialized Set.union<A>(_:)(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        specialized Set._Variant.insert(_:)(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

void specialized NearbyGroupHostIDSService.service(_:account:incomingData:fromID:context:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (!a4)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.host);

    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v22);
    _os_log_impl(&_mh_execute_header, oslog, v10, "Dropping message due to invalid fromID %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);

    goto LABEL_26;
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (v8)
  {
    if (a1 == a1 >> 32)
    {
LABEL_22:
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.host);
      oslog = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(oslog, v19))
      {
        goto LABEL_27;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Dropping message due to invalid data", v20, 2u);
LABEL_26:

LABEL_27:

      return;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_22;
  }

  v16 = [objc_allocWithZone(CPFeatureFlags) init];
  v17 = [v16 nearbyInvitationsBlastDoorEnabled];

  if (v17)
  {
    if (a5)
    {

      NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(a3, a4, a1, a2, a5);
      return;
    }

    goto LABEL_36;
  }

  if (!a5)
  {
LABEL_37:
    __break(1u);
    return;
  }

  NearbyGroupHostIDSService.handleIncomingData(from:data:context:)(a3, a4, a1, a2, a5);
}

uint64_t outlined init with copy of NearbyGroup_Group(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NearbyGroup_Group(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroupHostIDSService.MessageContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyGroupHostIDSService.MessageContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for NearbyGroupHostIDSService.MessageEvent()
{
  result = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<NearbyGroupHostIDSService.MessageEvent.Member>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Set<NearbyGroupHostIDSService.MessageEvent.Member>()
{
  if (!lazy cache variable for type metadata for Set<NearbyGroupHostIDSService.MessageEvent.Member>)
  {
    lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<NearbyGroupHostIDSService.MessageEvent.Member>);
    }
  }
}

uint64_t type metadata completion function for NearbyGroupHostIDSService.MessageEvent.MembershipMutation()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void partial apply for closure #1 in closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)()
{
  v1 = *(type metadata accessor for NearbyGroup_Group(0) - 8);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v5 = v0[2];
  NearbyGroupHostIDSService.handleGroupMessage(from:message:)(v2, v3, v4);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()specialized partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyGroupHostIDSService.distributeLeave(for:)(uint64_t a1)
{
  v3 = *(v1 + 16) + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_id;
  v4 = UUID.data.getter();
  v6 = v5;
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 1;
  return result;
}

uint64_t outlined assign with take of NearbyGroup_Group.OneOf_Event?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *NearbyInvitationServiceHostConnection.init(connection:queue:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) = a3;
  v4 = one-time initialization token for host;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Creating NearbyInvitationServiceHostConnection", v8, 2u);
  }

  v9 = XPCHostConnection.init(connection:queue:)();
  v10 = v9;

  if (v9)
  {
  }

  return v9;
}

uint64_t NearbyInvitationServiceHostConnection.createGroup(with:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection received request to create group with %@", v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 480))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for InvitationApprovalRequest();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection requestApproval with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 488))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.approve(pendingMember:response:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315138;
    type metadata accessor for IncomingInvitationJoinRequest();
    v15 = v11;
    v16 = String.init<A>(reflecting:)();
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v14 + 4) = v21;
    a4 = v20;
    a3 = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationServiceHostConnection approve pendingMember %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 496))(v11, a2, a3, a4);
}

uint64_t NearbyInvitationServiceHostConnection.reject(pendingMember:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for IncomingInvitationJoinRequest();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection reject pendingMember %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 504))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection generateNearbyInvitation", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 512))(a1, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.advertiseNearbyInvitation(_:provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "NearbyInvitationServiceHostConnection advertiseNearbyInvitation", v13, 2u);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 520))(a1, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.advertiseNearbyInvitation(_:provider:response:)(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a1;
  NearbyInvitationServiceHostConnection.advertiseNearbyInvitation(_:provider:response:)(v10, a4, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v9);
}

uint64_t NearbyInvitationServiceHostConnection.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection advertiseNearbyInvitation", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 528))(a1, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection stopAdvertisingNearbyInvitation", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 536))(a1, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "NearbyInvitationServiceHostConnection stopAdvertisingNearbyInvitation", v9, 2u);
  }

  return (*(**(v3 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 544))(a1, a2);
}

uint64_t @objc NearbyInvitationServiceHostConnection.stopAdvertisingNearbySessionEndpoint(response:)(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  NearbyInvitationServiceHostConnection.stopAdvertisingNearbySessionEndpoint(response:)(thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v5);
}

uint64_t NearbyInvitationServiceHostConnection.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = a4;
    v19 = v18;
    v31 = v18;
    *v17 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = a2;
    v21 = a3;
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v31);
    a3 = v21;
    a2 = v28;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "NearbyInvitationServiceHostConnection assertAdvertisementPublic invitationID: %s for %lu rotations", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    a4 = v29;

    a1 = v27;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return (*(**(v30 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 560))(a1, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.assertAdvertisementPublic(_:rotations:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a1;
  NearbyInvitationServiceHostConnection.assertAdvertisementPublic(_:rotations:response:)(v12, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> (), v14);

  return (*(v9 + 8))(v12, v8);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  outlined init with copy of UUID?(a1, &v14 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

uint64_t NearbyInvitationServiceHostConnection.markInvitationUsed(_:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection markInvitationUsed for pseudonym: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 552))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v29[-v10];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = v5[2];
  v13(v11, a1, v4);
  v13(v9, a2, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a2;
    v17 = v16;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v17 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v30 = v15;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v32 = a1;
    v21 = v5[1];
    v21(v11, v4);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v35);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v9, v4);
    a1 = v32;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v35);

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v30, "NearbyInvitationServiceHostConnection releaseAdvertisementPublicAssertion invitationID: %s assertionIdentifier %s", v17, 0x16u);
    swift_arrayDestroy();

    a2 = v33;
  }

  else
  {

    v27 = v5[1];
    v27(v9, v4);
    v27(v11, v4);
  }

  return (*(**(v34 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 568))(a1, a2, closure #1 in NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:), 0);
}

void closure #1 in NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (a1)
    {
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v6 = String.init<A>(reflecting:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Released assertion with error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }
}

uint64_t @objc NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(v9, v7);

  v11 = *(v3 + 8);
  v11(v7, v2);
  return (v11)(v9, v2);
}

uint64_t NearbyInvitationServiceHostConnection.releaseInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection releaseInvitation for pseudonym: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 576))(v9, a2, a3);
}

uint64_t @objc NearbyInvitationServiceHostConnection.createGroup(with:response:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t NearbyInvitationServiceHostConnection.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection scanNearbyInvitations", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 584))(a1, a2, a3);
}

uint64_t @objc NearbyInvitationServiceHostConnection.stopAdvertisingNearbyInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a1;
  a7(v15, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t NearbyInvitationServiceHostConnection.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "NearbyInvitationServiceHostConnection scanNearbyInvitations", v13, 2u);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 592))(a1, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.scanNearbyEndpoints(params:scannerID:response:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  NearbyInvitationServiceHostConnection.scanNearbyEndpoints(params:scannerID:response:)(v15, v12, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v14);

  return (*(v9 + 8))(v12, v8);
}

uint64_t NearbyInvitationServiceHostConnection.stopScanningNearbyInvitations(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection stopScanningNearbyInvitations", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 600))(a1, a2, a3);
}

uint64_t @objc NearbyInvitationServiceHostConnection.generateNearbyInvitation(provider:response:)(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

uint64_t NearbyInvitationServiceHostConnection.requestConnection(with:localInvitation:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationServiceHostConnection requestConnection with advertisement %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 608))(v11, a2, a3, a4);
}

uint64_t NearbyInvitationServiceHostConnection.requestEndpointConnection(with:pseudonym:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationServiceHostConnection requestConnectionEndpoint with advertisement %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 616))(v11, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.approve(pendingMember:response:completion:)(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v15, v16, a7, v14);
}

uint64_t NearbyInvitationServiceHostConnection.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection approveConnectionRequest with advertisement %@", v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 624))(v9, a2, a3);
}

void @objc NearbyInvitationServiceHostConnection.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  NearbyInvitationServiceHostConnection.approveConnectionRequest(_:localInvitation:)(v6, v8, v10);
  outlined consume of Data._Representation(v8, v10);
}

uint64_t NearbyInvitationServiceHostConnection.denyConnectionRequest(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationServiceHostConnection denyConnectionRequest with advertisement %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  return (*(**(v2 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 632))(v5);
}

void @objc NearbyInvitationServiceHostConnection.denyConnectionRequest(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceHostConnection.denyConnectionRequest(_:)(v4);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t type metadata accessor for NearbyInvitationServiceHostConnection()
{
  result = type metadata singleton initialization cache for NearbyInvitationServiceHostConnection;
  if (!type metadata singleton initialization cache for NearbyInvitationServiceHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _PublisherElements.makeAsyncIterator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  return specialized _PublisherElements.Iterator.init(_:)();
}

uint64_t _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(_PublisherElements.Iterator.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v2;
  v0[5] = *v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v1 + 16);
  v4[3] = *(v1 + 24);
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = _PublisherElements.Iterator.next();
  v7 = v0[2];

  return withTaskCancellationHandler<A>(handler:operation:)(v7, partial apply for closure #1 in _PublisherElements.Iterator.next(), v3, &async function pointer to partial apply for closure #2 in _PublisherElements.Iterator.next(), v4, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t _PublisherElements.Iterator.Inner.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  return (*(*(v6 - 8) + 16))(a1, v1 + 4, v6);
}

uint64_t _PublisherElements.Iterator.Inner.state.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v6 - 8) + 40))(v1 + 4, a1, v6);
  return swift_endAccess();
}

uint64_t _PublisherElements.Iterator.Inner.pendingDemand.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t _PublisherElements.Iterator.Inner.__allocating_init()()
{
  v0 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.init()()
{
  v1 = *v0;
  v0[2] = swift_slowAlloc();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  v0[3] = Array.init()();
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  v0[8] = 0;
  v0[9] = static Subscribers.Demand.none.getter();
  *v0[2] = 0;
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[3];

  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v6 - 8) + 8))(v0 + 4, v6);
  return v0;
}

uint64_t _PublisherElements.Iterator.Inner.__deallocating_deinit()
{
  _PublisherElements.Iterator.Inner.deinit();

  return swift_deallocClassInstance();
}

uint64_t _PublisherElements.Iterator.Inner.receive(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = *(v2 + 16);
  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  v14 = *(v13 - 1);
  (*(v14 + 16))(v29, v2 + 32, v13);
  if (v30 >= 2)
  {
LABEL_11:
    swift_beginAccess();
    v28 = *(v2 + 24);
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      os_unfair_lock_unlock(v12);
    }

    else
    {
      swift_beginAccess();
      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      swift_endAccess();
      v19 = v27;
      os_unfair_lock_unlock(v12);
      v20 = v14;
      v21 = *(AssociatedTypeWitness - 8);
      (*(v21 + 16))(v11, a1, AssociatedTypeWitness);
      (*(v21 + 56))(v11, 0, 1, AssociatedTypeWitness);
      v14 = v20;
      (*(v26 + 32))(*(*(v19 + 64) + 40), v11, v8);
      swift_continuation_resume();
    }
  }

  else
  {
    v24 = v14;
    v25 = v13;
    swift_beginAccess();
    a1 = *(v2 + 24);
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();

    Array.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    if (Array.endIndex.getter())
    {
      v12 = (AssociatedTypeWitness - 8);
      v13 = (v26 + 32);
      v14 = 4;
      do
      {
        v15 = v14 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v17 = *(a1 + 8 * v14);
          v18 = __OFADD__(v15, 1);
          v2 = v14 - 3;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v17 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v18 = __OFADD__(v15, 1);
          v2 = v14 - 3;
          if (v18)
          {
LABEL_10:
            __break(1u);
            goto LABEL_11;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
        (*v13)(*(*(v17 + 64) + 40), v11, v8);
        swift_continuation_resume();
        ++v14;
      }

      while (v2 != Array.endIndex.getter());
    }

    v14 = v24;
    v13 = v25;
  }

  v22 = static Subscribers.Demand.none.getter();
  (*(v14 + 8))(v29, v13);
  return v22;
}

Swift::Void __swiftcall _PublisherElements.Iterator.Inner.cancel()()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  v55 = *(v1 + 16);
  os_unfair_lock_lock(v55);
  swift_beginAccess();
  v9 = *(v1 + 24);
  swift_beginAccess();
  v59 = v5;
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  swift_beginAccess();
  v10 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 16);
  v11(&v70, v1 + 32, v10);
  if (v71 >= 2)
  {
    outlined init with take of PseudonymProtocol(&v70, v68);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    outlined init with copy of PseudonymProtocol(v68, v66);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v56;
    if (v28)
    {
      LODWORD(v54) = v27;
      v30 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65 = v53;
      v31 = v30;
      *v30 = 136315138;
      outlined init with copy of PseudonymProtocol(v66, v64);
      outlined init with copy of Subscription?(v64, &v62);
      if (v63)
      {
        outlined init with take of PseudonymProtocol(&v62, v61);
        outlined init with copy of PseudonymProtocol(v61, &v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v32 = String.init<A>(reflecting:)();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      outlined destroy of Subscription?(v64);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v65);

      *(v31 + 1) = v42;
      _os_log_impl(&_mh_execute_header, v26, v54, "Handling cancellation by terminating upstream subscription: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);

      v29 = v56;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v66);
    }

    memset(v66, 0, sizeof(v66));
    v67 = xmmword_1000CA6B0;
    swift_beginAccess();
    (*(v57 + 40))(v1 + 32, v66, v58);
    swift_endAccess();
    os_unfair_lock_unlock(v55);
    v43 = *(&v69 + 1);
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v44 = *(v43 + 8);
    dispatch thunk of Cancellable.cancel()();
    if (Array.endIndex.getter())
    {
      v45 = (v29 + 32);
      v46 = 4;
      do
      {
        v47 = v46 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v49 = *(v9 + 8 * v46);
          v40 = __OFADD__(v47, 1);
          v50 = v46 - 3;
          if (v40)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v49 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v40 = __OFADD__(v47, 1);
          v50 = v46 - 3;
          if (v40)
          {
LABEL_33:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
        (*v45)(*(*(v49 + 64) + 40), v8, v59);
        swift_continuation_resume();
        ++v46;
      }

      while (v50 != Array.endIndex.getter());
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v68);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v53 = v13;
      v16 = v15;
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v16 = 136315138;
      v52 = v14;
      v17 = v58;
      v11(v68, v1 + 32, v58);
      v18 = >> prefix<A>(_:)(v68, v17);
      v20 = v19;
      v21 = type metadata accessor for Optional();
      (*(*(v21 - 8) + 8))(v68, v21);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v66);

      v23 = v16;
      *(v16 + 4) = v22;
      v24 = v53;
      _os_log_impl(&_mh_execute_header, v53, v52, "Terminating sequence from state: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    else
    {

      v17 = v58;
    }

    memset(v68, 0, sizeof(v68));
    v69 = xmmword_1000CA6B0;
    swift_beginAccess();
    (*(v57 + 40))(v1 + 32, v68, v17);
    swift_endAccess();
    os_unfair_lock_unlock(v55);
    if (Array.endIndex.getter())
    {
      v35 = (v56 + 32);
      v36 = 4;
      do
      {
        v37 = v36 - 4;
        v38 = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (v38)
        {
          v39 = *(v9 + 8 * v36);
          v40 = __OFADD__(v37, 1);
          v41 = v36 - 3;
          if (v40)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v39 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v40 = __OFADD__(v37, 1);
          v41 = v36 - 3;
          if (v40)
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
        (*v35)(*(*(v39 + 64) + 40), v8, v59);
        swift_continuation_resume();
        ++v36;
      }

      while (v41 != Array.endIndex.getter());
    }

    (*(v57 + 8))(&v70, v58);
  }
}

uint64_t _PublisherElements.Iterator.Inner.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(_PublisherElements.Iterator.Inner.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.next()()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  *v2 = v0;
  v2[1] = _PublisherElements.Iterator.Inner.next();
  v6 = v0[2];
  v7 = v0[3];

  return (withUnsafeContinuation<A>(isolation:_:))(v6, 0, 0, partial apply for closure #1 in _PublisherElements.Iterator.Inner.next(), v7, v5);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v16 - v10;
  v12 = a2[2];
  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v13 - 8) + 16))(&v18, a2 + 4, v13);
  if (!v19)
  {
    v16[1] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    swift_beginAccess();
    v14 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_8;
    }

    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_8:
      v15 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v15;
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    return;
  }

  if (v19 == 1)
  {
    os_unfair_lock_unlock(v12);
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v11, v7);
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of PseudonymProtocol(&v18, v17);
    v16[4] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }
}

uint64_t withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(withUnsafeContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = withUnsafeContinuation<A>(isolation:_:);
  v4 = swift_continuation_init();
  v2(v4);

  return _swift_continuation_await(v0 + 2);
}

{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t _PublisherElements.Iterator.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized _PublisherElements.Iterator.init(_:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 32) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = closure #2 in _PublisherElements.Iterator.next();
  v2 = *(v0 + 16);

  return _PublisherElements.Iterator.Inner.next()(v2);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return (withTaskCancellationHandler<A>(operation:onCancel:isolation:))(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance _PublisherElements<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return _PublisherElements.Iterator.next()(a1, a2);
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance _PublisherElements<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _PublisherElements.makeAsyncIterator()(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t specialized _PublisherElements.Iterator.init(_:)()
{
  type metadata accessor for _PublisherElements.Iterator.Inner();
  v0 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  return v0;
}

uint64_t partial apply for closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #2 in _PublisherElements.Iterator.next()(a1, v6);
}

uint64_t specialized _PublisherElements.Iterator.Inner.receive(completion:)()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = v0[2];
  os_unfair_lock_lock(v9);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_1000CA6B0;
  swift_beginAccess();
  v10 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v10 - 8) + 40))(v0 + 4, v21, v10);
  swift_endAccess();
  swift_beginAccess();
  v11 = v0[3];
  swift_beginAccess();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  os_unfair_lock_unlock(v9);
  if (Array.endIndex.getter())
  {
    v12 = (v5 + 32);
    v13 = 4;
    do
    {
      v14 = v13 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v16 = *(v11 + 8 * v13);
        v17 = __OFADD__(v14, 1);
        v18 = v13 - 3;
        if (v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v17 = __OFADD__(v14, 1);
        v18 = v13 - 3;
        if (v17)
        {
LABEL_9:
          __break(1u);
        }
      }

      (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
      (*v12)(*(*(v16 + 64) + 40), v8, v4);
      swift_continuation_resume();
      ++v13;
    }

    while (v18 != Array.endIndex.getter());
  }
}

uint64_t outlined init with copy of Subscription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Subscription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for _PublisherElements(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator.Inner.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for _PublisherElements.Iterator.Inner.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t NearbyGroup_Member.tokenID.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NearbyGroup_Group.MemberAdded.member.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  outlined destroy of Any?(v2 + v4, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with take of NearbyGroup_Member(a1, v2 + v4, type metadata accessor for NearbyGroup_Member);
  v5 = type metadata accessor for NearbyGroup_Member(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t NearbyGroup_Group.MemberAdded.member.getter@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = a1(0);
  outlined init with copy of (String, Any)(v2 + *(v9 + 24), v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v10 = type metadata accessor for NearbyGroup_Member(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of NearbyGroup_Member(v8, a2, type metadata accessor for NearbyGroup_Member);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  v13 = (a2 + *(v10 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  }

  return result;
}

uint64_t NearbyGroup_Member.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyGroup_Member(0);
  v3 = a1 + *(v2 + 20);
  result = UnknownStorage.init()();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t NearbyGroup_Member.tokenID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t key path getter for NearbyGroup_Member.tokenID : NearbyGroup_Member@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NearbyGroup_Member.tokenID : NearbyGroup_Member(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*NearbyGroup_Member.tokenID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyGroup_Member(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NearbyProtoConnectionRequest.displayName.modify;
}

Swift::Void __swiftcall NearbyGroup_Member.clearTokenID()()
{
  v1 = (v0 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NearbyGroup_Group.initialize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of (String, Any)(v2, &v11 - v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v8 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of NearbyGroup_Member(v7, a1, type metadata accessor for NearbyGroup_Group.Initialization);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = &_swiftEmptyArrayStorage;
  v9 = a1 + *(type metadata accessor for NearbyGroup_Group.Initialization(0) + 24);
  return UnknownStorage.init()();
}

uint64_t NearbyGroup_Group.Initialization.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for NearbyGroup_Group.Initialization(0) + 24);
  return UnknownStorage.init()();
}

uint64_t outlined init with take of NearbyGroup_Member(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*NearbyGroup_Group.initialize.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  outlined init with copy of (String, Any)(v1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NearbyGroup_Member(v7, v11, type metadata accessor for NearbyGroup_Group.Initialization);
      return NearbyGroup_Group.initialize.modify;
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *v11 = xmmword_1000CAAE0;
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v14 = v11 + *(v8 + 24);
  UnknownStorage.init()();
  return NearbyGroup_Group.initialize.modify;
}

uint64_t outlined destroy of NearbyGroup_Group.OneOf_Event(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NearbyGroup_Group.memberAdded.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of (String, Any)(v2, &v14 - v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v8 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NearbyGroup_Member(v7, a1, type metadata accessor for NearbyGroup_Group.MemberAdded);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  v10 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v11 = &a1[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for NearbyGroup_Member(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

void (*NearbyGroup_Group.memberAdded.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of (String, Any)(v2, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_15:
    *v12 = xmmword_1000CAAE0;
    v15 = &v12[*(v9 + 20)];
    UnknownStorage.init()();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for NearbyGroup_Member(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
    return NearbyGroup_Group.memberAdded.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
  return NearbyGroup_Group.memberAdded.modify;
}

uint64_t outlined init with copy of NearbyGroup_Group.Initialization(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NearbyGroup_Group.memberRemoved.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of (String, Any)(v2, &v14 - v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v8 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of NearbyGroup_Member(v7, a1, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  v10 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v11 = &a1[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for NearbyGroup_Member(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t NearbyGroup_Group.MemberAdded.init()@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  v3 = a1(0);
  v4 = &a2[*(v3 + 20)];
  UnknownStorage.init()();
  v5 = *(v3 + 24);
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

void (*NearbyGroup_Group.memberRemoved.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of (String, Any)(v2, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_15:
    *v12 = xmmword_1000CAAE0;
    v15 = &v12[*(v9 + 20)];
    UnknownStorage.init()();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for NearbyGroup_Member(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
    return NearbyGroup_Group.memberRemoved.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  return NearbyGroup_Group.memberRemoved.modify;
}

uint64_t NearbyGroup_Group.memberLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of (String, Any)(v2, &v11 - v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v8 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of NearbyGroup_Member(v7, a1, type metadata accessor for NearbyGroup_Group.MemberLeft);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = 0;
  v10 = a1 + *(type metadata accessor for NearbyGroup_Group.MemberLeft(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for NearbyGroup_Group.initialize : NearbyGroup_Group(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v17 - v13;
  outlined init with copy of NearbyGroup_Group.Initialization(a1, &v17 - v13, a6);
  outlined destroy of Any?(a2, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  outlined init with take of NearbyGroup_Member(v14, a2, a7);
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t NearbyGroup_Group.initialize.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of Any?(v2, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  outlined init with take of NearbyGroup_Member(a1, v2, a2);
  v5 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t NearbyGroup_Group.MemberLeft.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for NearbyGroup_Group.MemberLeft(0) + 24);
  return UnknownStorage.init()();
}

void (*NearbyGroup_Group.memberLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  outlined init with copy of (String, Any)(v1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_15:
    *v11 = xmmword_1000CAAE0;
    *(v11 + 16) = 0;
    v14 = v11 + *(v8 + 24);
    UnknownStorage.init()();
    return NearbyGroup_Group.memberLeft.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of NearbyGroup_Member(v7, v11, type metadata accessor for NearbyGroup_Group.MemberLeft);
  return NearbyGroup_Group.memberLeft.modify;
}

void NearbyGroup_Group.initialize.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyGroup_Group.Initialization((*a1)[3], v10, a5);
    outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of NearbyGroup_Group.OneOf_Event(v11, a6);
  }

  else
  {
    outlined destroy of Any?(**a1, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t NearbyGroup_Member.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyGroup_Member.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static NearbyGroup_Group.Initialization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NearbyGroup_Group.Initialization(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static NearbyGroup_Group.MemberLeft.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for NearbyGroup_Group.MemberLeft(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*NearbyGroup_Group.MemberAdded.member.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for NearbyGroup_Group.MemberAdded(0) + 24);
  *(v4 + 12) = v14;
  outlined init with copy of (String, Any)(v1 + v14, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v8 + 20);
    UnknownStorage.init()();
    v17 = (v13 + *(v8 + 24));
    *v17 = 0;
    v17[1] = 0;
    if (v15(v7, 1, v8) != 1)
    {
      outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v7, v13, type metadata accessor for NearbyGroup_Member);
  }

  return NearbyGroup_Group.MemberAdded.member.modify;
}

uint64_t key path getter for NearbyGroup_Group.MemberAdded.member : NearbyGroup_Group.MemberAdded@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = a2(0);
  outlined init with copy of (String, Any)(a1 + *(v10 + 24), v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v11 = type metadata accessor for NearbyGroup_Member(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of NearbyGroup_Member(v9, a3, type metadata accessor for NearbyGroup_Member);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  v13 = a3 + *(v11 + 20);
  UnknownStorage.init()();
  v14 = (a3 + *(v11 + 24));
  *v14 = 0;
  v14[1] = 0;
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Any?(v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  }

  return result;
}

uint64_t key path setter for NearbyGroup_Group.MemberAdded.member : NearbyGroup_Group.MemberAdded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NearbyGroup_Group.Initialization(a1, v12, type metadata accessor for NearbyGroup_Member);
  v13 = *(a5(0) + 24);
  outlined destroy of Any?(a2 + v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with take of NearbyGroup_Member(v12, a2 + v13, type metadata accessor for NearbyGroup_Member);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t (*NearbyGroup_Group.MemberRemoved.member.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for NearbyGroup_Group.MemberRemoved(0) + 24);
  *(v4 + 12) = v14;
  outlined init with copy of (String, Any)(v1 + v14, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v8 + 20);
    UnknownStorage.init()();
    v17 = (v13 + *(v8 + 24));
    *v17 = 0;
    v17[1] = 0;
    if (v15(v7, 1, v8) != 1)
    {
      outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v7, v13, type metadata accessor for NearbyGroup_Member);
  }

  return NearbyGroup_Group.MemberRemoved.member.modify;
}

void NearbyGroup_Group.MemberAdded.member.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyGroup_Group.Initialization((*a1)[5], v4, type metadata accessor for NearbyGroup_Member);
    outlined destroy of Any?(v9 + v3, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    outlined init with take of NearbyGroup_Member(v4, v9 + v3, type metadata accessor for NearbyGroup_Member);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NearbyGroup_Group.OneOf_Event(v5, type metadata accessor for NearbyGroup_Member);
  }

  else
  {
    outlined destroy of Any?(v9 + v3, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    outlined init with take of NearbyGroup_Member(v5, v9 + v3, type metadata accessor for NearbyGroup_Member);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NearbyGroup_Group.MemberAdded.hasMember.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  outlined init with copy of (String, Any)(v1 + *(v7 + 24), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  return v9;
}

uint64_t NearbyGroup_Group.MemberAdded.clearMember()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  outlined destroy of Any?(v1 + v2, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v3 = type metadata accessor for NearbyGroup_Member(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t NearbyGroup_Group.Initialization.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyGroup_Group.Initialization.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NearbyGroup_Group.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for NearbyGroup_Group(0) + 20);
  return UnknownStorage.init()();
}

uint64_t NearbyGroup_Member.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for NearbyGroup_Member(0) + 24);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NearbyGroup_Member.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in NearbyGroup_Member.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for NearbyGroup_Member(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Member.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyGroup_Member(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Member@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Member(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Member()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Member()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member);

  return Message.hash(into:)();
}

uint64_t NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of (String, Any)(a1, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }

    else
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
      v35 = v43;
      outlined init with take of NearbyGroup_Member(v20, v43, type metadata accessor for NearbyGroup_Group.Initialization);
      outlined init with take of NearbyGroup_Member(v35, v28, type metadata accessor for NearbyGroup_Group.Initialization);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  }

  outlined init with copy of (String, Any)(v28, v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
    return outlined destroy of Any?(v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of NearbyGroup_Member(v36, v44, type metadata accessor for NearbyGroup_Group.Initialization);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
    v40 = v42;
    outlined destroy of Any?(v42, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v39, v40, type metadata accessor for NearbyGroup_Group.Initialization);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of (String, Any)(a1, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
      v35 = v44;
      outlined init with take of NearbyGroup_Member(v20, v44, type metadata accessor for NearbyGroup_Group.MemberAdded);
      outlined init with take of NearbyGroup_Member(v35, v28, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  }

  outlined init with copy of (String, Any)(v28, v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
    return outlined destroy of Any?(v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of NearbyGroup_Member(v36, v43, type metadata accessor for NearbyGroup_Group.MemberAdded);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
    v40 = v42;
    outlined destroy of Any?(v42, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v39, v40, type metadata accessor for NearbyGroup_Group.MemberAdded);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of (String, Any)(a1, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
      v35 = v44;
      outlined init with take of NearbyGroup_Member(v20, v44, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      outlined init with take of NearbyGroup_Member(v35, v28, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  }

  outlined init with copy of (String, Any)(v28, v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
    return outlined destroy of Any?(v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of NearbyGroup_Member(v36, v43, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
    v40 = v42;
    outlined destroy of Any?(v42, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v39, v40, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of (String, Any)(a1, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
      v35 = v44;
      outlined init with take of NearbyGroup_Member(v20, v44, type metadata accessor for NearbyGroup_Group.MemberLeft);
      outlined init with take of NearbyGroup_Member(v35, v28, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  }

  outlined init with copy of (String, Any)(v28, v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
    return outlined destroy of Any?(v36, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of NearbyGroup_Member(v36, v43, type metadata accessor for NearbyGroup_Group.MemberLeft);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
    v40 = v42;
    outlined destroy of Any?(v42, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v39, v40, type metadata accessor for NearbyGroup_Group.MemberLeft);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of (String, Any)(v3, &v16 - v10, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v12 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #4 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v11, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for NearbyGroup_Group(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.Initialization);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Group.Initialization);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #3 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #4 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberLeft);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Group.MemberLeft);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(int a1)
{
  v1._countAndFlagsBits = 0x6C616974696E492ELL;
  v1._object = 0xEF6E6F6974617A69;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.Initialization.protoMessageName, &static NearbyGroup_Group.Initialization.protoMessageName[1]);
}

{
  v1._countAndFlagsBits = 0x417265626D654D2ELL;
  v1._object = 0xEC00000064656464;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.MemberAdded.protoMessageName, &static NearbyGroup_Group.MemberAdded.protoMessageName[1]);
}

{
  v1._countAndFlagsBits = 0x527265626D654D2ELL;
  v1._object = 0xEE006465766F6D65;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.MemberRemoved.protoMessageName, &static NearbyGroup_Group.MemberRemoved.protoMessageName[1]);
}

{
  v1._countAndFlagsBits = 0x4C7265626D654D2ELL;
  v1._object = 0xEB00000000746665;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.MemberLeft.protoMessageName, &static NearbyGroup_Group.MemberLeft.protoMessageName[1]);
}

void *NearbyGroup_Group.Initialization.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.Initialization.protoMessageName;
}

uint64_t NearbyGroup_Group.Initialization.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for NearbyGroup_Member(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NearbyGroup_Group.Initialization.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0[2] + 16) || (type metadata accessor for NearbyGroup_Member(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for NearbyGroup_Group.Initialization(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group.Initialization@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.Initialization(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.Initialization()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.Initialization()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroup_Group.Initialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void *NearbyGroup_Group.MemberAdded.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.MemberAdded.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.MemberAdded(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.MemberAdded()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.MemberAdded()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded);

  return Message.hash(into:)();
}

void *NearbyGroup_Group.MemberRemoved.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.MemberRemoved.protoMessageName;
}

uint64_t NearbyGroup_Group.MemberAdded.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in NearbyGroup_Group.MemberAdded.decodeMessage<A>(decoder:)(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t closure #2 in NearbyGroup_Group.MemberAdded.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for NearbyGroup_Member(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NearbyGroup_Group.MemberAdded.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in NearbyGroup_Group.MemberAdded.traverse<A>(visitor:)(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v18 = v5 + *(a5(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Group.MemberAdded.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for NearbyGroup_Member(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  outlined init with copy of (String, Any)(a1 + *(v16 + 24), v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Any?(v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  }

  outlined init with take of NearbyGroup_Member(v10, v15, type metadata accessor for NearbyGroup_Member);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NearbyGroup_Group.OneOf_Event(v15, type metadata accessor for NearbyGroup_Member);
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group.MemberAdded@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.MemberRemoved(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.MemberRemoved()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.MemberRemoved()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(int a1, Swift::String a2, void *a3, void *a4)
{
  String.append(_:)(a2);
  *a3 = 0x70756F72472E7063;
  *a4 = 0xE800000000000000;
}

void *NearbyGroup_Group.MemberLeft.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.MemberLeft.protoMessageName;
}

uint64_t NearbyGroup_Group.MemberLeft.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t NearbyGroup_Group.MemberLeft.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v0 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for NearbyGroup_Group.MemberLeft(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int NearbyGroup_Member.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group.MemberLeft@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.MemberLeft(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.MemberLeft()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.MemberLeft()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroup_Group.MemberLeft(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (&v27 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_24:
    v25 = 0;
    return v25 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of NearbyGroup_Group.Initialization(v14, v11, type metadata accessor for NearbyGroup_Member);
      outlined init with copy of NearbyGroup_Group.Initialization(v15, v8, type metadata accessor for NearbyGroup_Member);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 24);
      v19 = (v11 + v18);
      v20 = *(v11 + v18 + 8);
      v21 = (v8 + v18);
      v22 = v21[1];
      if (v20)
      {
        if (!v22)
        {
          break;
        }

        v23 = *v19 == *v21 && v20 == v22;
        if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      v24 = *(v4 + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Member);
      outlined destroy of NearbyGroup_Group.OneOf_Event(v11, type metadata accessor for NearbyGroup_Member);
      if (v25)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Member);
    outlined destroy of NearbyGroup_Group.OneOf_Event(v11, type metadata accessor for NearbyGroup_Member);
    goto LABEL_24;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t specialized static NearbyGroup_Group.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of (String, Any)(a1, &v24 - v16, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  outlined init with copy of (String, Any)(a2, &v17[v18], &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for NearbyGroup_Group(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of (String, Any)(v17, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Group.OneOf_Event);
LABEL_6:
    outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of NearbyGroup_Member(&v17[v18], v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  v21 = specialized static NearbyGroup_Group.OneOf_Event.__derived_enum_equals(_:_:)(v12, v8);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NearbyGroup_Group.OneOf_Event.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v50 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v3 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v12 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v49 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v49 - v23;
  __chkstk_darwin(v22);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v49 - v30;
  v32 = *(v29 + 56);
  outlined init with copy of NearbyGroup_Group.Initialization(a1, &v49 - v30, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  outlined init with copy of NearbyGroup_Group.Initialization(v54, &v31[v32], type metadata accessor for NearbyGroup_Group.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined init with copy of NearbyGroup_Group.Initialization(v31, v18, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v34 = type metadata accessor for NearbyGroup_Group.MemberLeft;
        v35 = v18;
        goto LABEL_19;
      }

      v40 = v53;
      outlined init with take of NearbyGroup_Member(&v31[v32], v53, type metadata accessor for NearbyGroup_Group.MemberLeft);
      if ((specialized static Data.== infix(_:_:)(*v18, *(v18 + 1), *v40, *(v40 + 8)) & 1) != 0 && v18[16] == *(v40 + 16))
      {
        v41 = *(v50 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v42 = type metadata accessor for NearbyGroup_Group.MemberLeft;
          outlined destroy of NearbyGroup_Group.OneOf_Event(v40, type metadata accessor for NearbyGroup_Group.MemberLeft);
          v43 = v18;
LABEL_25:
          outlined destroy of NearbyGroup_Group.OneOf_Event(v43, v42);
          outlined destroy of NearbyGroup_Group.OneOf_Event(v31, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v37 = 1;
          return v37 & 1;
        }
      }

      v44 = type metadata accessor for NearbyGroup_Group.MemberLeft;
      outlined destroy of NearbyGroup_Group.OneOf_Event(v40, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v45 = v18;
LABEL_27:
      outlined destroy of NearbyGroup_Group.OneOf_Event(v45, v44);
      outlined destroy of NearbyGroup_Group.OneOf_Event(v31, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      goto LABEL_28;
    }

    outlined init with copy of NearbyGroup_Group.Initialization(v31, v21, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v34 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
      v35 = v21;
      goto LABEL_19;
    }

    v36 = v52;
    outlined init with take of NearbyGroup_Member(&v31[v32], v52, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v37 = specialized static NearbyGroup_Group.MemberRemoved.== infix(_:_:)(v21, v36, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v38 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
    outlined destroy of NearbyGroup_Group.OneOf_Event(v36, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v39 = v21;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of NearbyGroup_Group.Initialization(v31, v26, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      if (swift_getEnumCaseMultiPayload())
      {
        v34 = type metadata accessor for NearbyGroup_Group.Initialization;
        v35 = v26;
LABEL_19:
        outlined destroy of NearbyGroup_Group.OneOf_Event(v35, v34);
        outlined destroy of Any?(v31, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMR);
LABEL_28:
        v37 = 0;
        return v37 & 1;
      }

      v46 = v51;
      outlined init with take of NearbyGroup_Member(&v31[v32], v51, type metadata accessor for NearbyGroup_Group.Initialization);
      if (specialized static Data.== infix(_:_:)(*v26, *(v26 + 1), *v46, *(v46 + 8)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(*(v26 + 2), *(v46 + 16)))
      {
        v47 = *(v49 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v42 = type metadata accessor for NearbyGroup_Group.Initialization;
          outlined destroy of NearbyGroup_Group.OneOf_Event(v46, type metadata accessor for NearbyGroup_Group.Initialization);
          v43 = v26;
          goto LABEL_25;
        }
      }

      v44 = type metadata accessor for NearbyGroup_Group.Initialization;
      outlined destroy of NearbyGroup_Group.OneOf_Event(v46, type metadata accessor for NearbyGroup_Group.Initialization);
      v45 = v26;
      goto LABEL_27;
    }

    outlined init with copy of NearbyGroup_Group.Initialization(v31, v24, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = type metadata accessor for NearbyGroup_Group.MemberAdded;
      v35 = v24;
      goto LABEL_19;
    }

    outlined init with take of NearbyGroup_Member(&v31[v32], v11, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v37 = specialized static NearbyGroup_Group.MemberRemoved.== infix(_:_:)(v24, v11, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v38 = type metadata accessor for NearbyGroup_Group.MemberAdded;
    outlined destroy of NearbyGroup_Group.OneOf_Event(v11, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v39 = v24;
  }

  outlined destroy of NearbyGroup_Group.OneOf_Event(v39, v38);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v31, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  return v37 & 1;
}

uint64_t specialized static NearbyGroup_Group.MemberRemoved.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = v10;
  v28 = a3(0);
  v19 = *(v28 + 24);
  v20 = *(v15 + 48);
  outlined init with copy of (String, Any)(a1 + v19, v18, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with copy of (String, Any)(a2 + v19, &v18[v20], &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      outlined destroy of Any?(v18, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
LABEL_11:
      v26 = *(v28 + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of (String, Any)(v18, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v14, type metadata accessor for NearbyGroup_Member);
LABEL_7:
    outlined destroy of Any?(v18, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMR);
    goto LABEL_8;
  }

  v24 = v27;
  outlined init with take of NearbyGroup_Member(&v18[v20], v27, type metadata accessor for NearbyGroup_Member);
  v25 = specialized static NearbyGroup_Member.== infix(_:_:)(v14, v24);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v24, type metadata accessor for NearbyGroup_Member);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v14, type metadata accessor for NearbyGroup_Member);
  outlined destroy of Any?(v18, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static NearbyGroup_Member.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for NearbyGroup_Member(0);
    v6 = *(v5 + 24);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        if (*v7 == *v9 && v8 == v10)
        {
          goto LABEL_13;
        }

        v12 = v5;
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v5 = v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v10)
    {
LABEL_13:
      v14 = *(v5 + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_47Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CompactMap<CurrentValueSubject<[FilteredBluetoothScanner<NearbyRangingFilter>.FilteredDevice], Never>, [NearbyAdvertisement]>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMR);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TQ0_;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TY2_;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TY1_;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<NearbyGroupMember>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMR);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TQ0_;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TY2_;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TY1_;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t NearbyGroupFirewall.__allocating_init(group:service:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = Pseudonym.__allocating_init(service:configuration:);

  return NearbyGroupFirewall.init(group:service:)(a1, a2);
}

void NearbyGroupFirewall.group.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*NearbyGroupFirewall.group.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return NearbyGroupFirewall.group.modify;
}

void NearbyGroupFirewall.group.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t NearbyGroupFirewall.firewall.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  outlined init with take of PseudonymProtocol(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t closure #1 in NearbyGroupFirewall.init(group:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMR);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyGroupFirewall.init(group:service:), 0, 0);
}

uint64_t closure #1 in NearbyGroupFirewall.init(group:service:)()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = closure #1 in NearbyGroupFirewall.init(group:service:);
  v5 = v0[17];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(0, 0);
}

{
  v21 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {
      v4 = Strong;
      if (one-time initialization token for firewall != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      v0[21] = __swift_project_value_buffer(v5, static Log.firewall);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v20 = v9;
        *v8 = 136315138;
        v0[12] = v1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
        v10 = String.init<A>(reflecting:)();
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Donating %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
      }

      (*(*v4 + 120))();
      v13 = v0[5];
      v14 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
      v15 = specialized _copyCollectionToContiguousArray<A>(_:)(v1);
      v0[22] = v15;
      v16 = swift_task_alloc();
      v0[23] = v16;
      *v16 = v0;
      v16[1] = closure #1 in NearbyGroupFirewall.init(group:service:);

      return FirewallProvider.donateEntries(_:)(v15, v13, v14);
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v18 = v0[17];

  v19 = v0[1];

  return v19();
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  v2[24] = v0;

  v5 = v2[22];
  if (v0)
  {
    v6 = v2[19];

    v7 = closure #1 in NearbyGroupFirewall.init(group:service:);
  }

  else
  {

    v7 = closure #1 in NearbyGroupFirewall.init(group:service:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v18 = v0;
  v1 = v0[21];
  v2 = v0[19];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[11] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Donated %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
  }

  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = closure #1 in NearbyGroupFirewall.init(group:service:);
  v15 = v0[17];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(0, 0);
}

{
  v18 = v0;
  v1 = v0[24];
  v2 = v0[21];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[10] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to donate, error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    v12 = v0[24];
    v13 = v0[20];
  }

  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = closure #1 in NearbyGroupFirewall.init(group:service:);
  v15 = v0[17];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(0, 0);
}

uint64_t closure #1 in NearbyGroupFirewall.init(group:service:)(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v5 = *v2;
  *(*v2 + 152) = a1;

  if (!v1)
  {

    return _swift_task_switch(closure #1 in NearbyGroupFirewall.init(group:service:), 0, 0);
  }

  return result;
}

uint64_t FirewallProvider.donateEntries(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(FirewallProvider.donateEntries(_:), 0, 0);
}

uint64_t FirewallProvider.donateEntries(_:)()
{
  v43 = v0;
  v1 = *(v0 + 32);
  v2 = _swiftEmptyArrayStorage;
  v41 = _swiftEmptyArrayStorage;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_30:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v38[4];
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v1;
  }

  v38[8] = v2;
  if (v4)
  {
    v6 = 0;
    v36 = v1 & 0xC000000000000001;
    v7 = v5 + 32;
    v35 = v4;
    v39 = v5 + 32;
    do
    {
      v34 = v2;
      v8 = v6;
      v2 = v36;
      while (1)
      {
        if (v2)
        {
          v26 = v38[4];
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(v7 + 8 * v8);
        }

        v1 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        NearbyGroupMember.handle.getter();
        v10 = objc_allocWithZone(IDSURI);
        v11 = String._bridgeToObjectiveC()();

        v12 = [v10 initWithPrefixedURI:v11];

        if (!v12)
        {
          if (one-time initialization token for firewall != -1)
          {
            swift_once();
          }

          v14 = type metadata accessor for Logger();
          v15 = __swift_project_value_buffer(v14, static Log.firewall);
          v16 = v1;
          v1 = v15;
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = v3;
            v21 = swift_slowAlloc();
            v42 = v21;
            *v19 = 136315138;
            v38[2] = NearbyGroupMember.handle.getter();
            v38[3] = v22;
            v23 = String.init<A>(reflecting:)();
            v1 = v24;
            v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v42);

            *(v19 + 4) = v25;
            v2 = v36;
            _os_log_impl(&_mh_execute_header, v17, v18, "Failed to convert handle %s to IDSURI", v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v21);
            v3 = v20;
            v4 = v35;
          }

          v7 = v39;
          goto LABEL_7;
        }

        v13 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v12];

        if (v13)
        {
          break;
        }

LABEL_7:
        ++v8;
        if (v6 == v4)
        {
          v2 = v34;
          goto LABEL_25;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v1 = &v41;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v41;
      v38[8] = v41;
    }

    while (v6 != v4);
  }

LABEL_25:
  v37 = (v38[6] + 8);
  v40 = (*v37 + **v37);
  v28 = (*v37)[1];
  v29 = swift_task_alloc();
  v38[9] = v29;
  *v29 = v38;
  v29[1] = FirewallProvider.donateEntries(_:);
  v30 = v38[6];
  v31 = v38[7];
  v32 = v38[5];

  return (v40)(v2, v32, v30);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = FirewallProvider.donateEntries(_:);
  }

  else
  {
    v3 = FirewallProvider.donateEntries(_:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t NearbyGroupFirewall.deinit()
{
  swift_unknownObjectWeakDestroy();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  return v0;
}

uint64_t NearbyGroupFirewall.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14NearbySessions0H13AdvertisementC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t partial apply for closure #1 in NearbyGroupFirewall.init(group:service:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyGroupFirewall.init(group:service:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14NearbySessions0H13AdvertisementC_Tt1g5Tm(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    outlined consume of Set<IDSAccount>.Iterator._Variant();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

id specialized Sequence._copySequenceContents(initializing:)(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for NearbyGroupMember();
  lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for NearbyGroupMember();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_SSs5NeverOTg5024_s44com_apple_SharePlay_d138InvitationsService18IDSServiceProtocolPAAE4send_4from2to8priority7options10identifiery10Foundation4DataV_So10IDSAccountCShy0E8Sessions0E11fG78CGSo18IDSMessagePriorityVSDys11AnyHashableVypGSAySo8NSStringCSgGSgtKFSSAQXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
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
    v42 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_37;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        specialized Set.subscript.getter(v39, v40, v41, v1);
        v13 = v12;
        v14 = NearbyGroupMember.tokenID.getter();
        if (!v15)
        {
          v14 = NearbyGroupMember.handle.getter();
        }

        v16 = v14;
        v17 = v15;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v16;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_42;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMd, &_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_34:
            outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_43;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v9, v36, 0);
          }

LABEL_33:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(_BYTE *, uint64_t))
{
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30[-v19];
  if (!a1)
  {
    goto LABEL_17;
  }

  v31 = 1835365481;
  v32 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v35);
  outlined destroy of AnyHashable(v33);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v31 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v31)
    {
      goto LABEL_17;
    }
  }

  else if (v31 != a4)
  {
    goto LABEL_17;
  }

  v31 = 0x64616F6C796170;
  v32 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v24 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v33);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v23, v35);
  outlined destroy of AnyHashable(v33);
  if (swift_dynamicCast())
  {
    v25 = v31;
    v26 = v32;
    v35[0] = v31;
    v35[1] = v32;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    outlined copy of Data._Representation(v31, v32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v16, v20, type metadata accessor for NearbyProtoConnectionRequest);
    (*(v13 + 56))(v20, 0, 1, v12);
    a6(v20, 0);
    outlined consume of Data._Representation(v25, v26);
    outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyProtoConnectionRequest);
  }

LABEL_17:
  (*(v13 + 56))(v20, 1, 1, v12);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v27 = swift_allocError();
  *v28 = 3;
  a6(v20, v27);

  return outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30[-v19];
  if (!a1)
  {
    goto LABEL_17;
  }

  v31 = 1835365481;
  v32 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v35);
  outlined destroy of AnyHashable(v33);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v31 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v31)
    {
      goto LABEL_17;
    }
  }

  else if (v31 != a4)
  {
    goto LABEL_17;
  }

  v31 = 0x64616F6C796170;
  v32 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v24 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v33);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v23, v35);
  outlined destroy of AnyHashable(v33);
  if (swift_dynamicCast())
  {
    v25 = v31;
    v26 = v32;
    v35[0] = v31;
    v35[1] = v32;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    outlined copy of Data._Representation(v31, v32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v16, v20, type metadata accessor for NearbyProtoConnectionResponse.Content);
    (*(v13 + 56))(v20, 0, 1, v12);
    a6(v20, 0);
    outlined consume of Data._Representation(v25, v26);
    outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyProtoConnectionResponse.Content);
  }

LABEL_17:
  (*(v13 + 56))(v20, 1, 1, v12);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v27 = swift_allocError();
  *v28 = 3;
  a6(v20, v27);

  return outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30[-v19];
  if (!a1)
  {
    goto LABEL_17;
  }

  v31 = 1835365481;
  v32 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v35);
  outlined destroy of AnyHashable(v33);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v31 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v31)
    {
      goto LABEL_17;
    }
  }

  else if (v31 != a4)
  {
    goto LABEL_17;
  }

  v31 = 0x64616F6C796170;
  v32 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v24 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v33);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v23, v35);
  outlined destroy of AnyHashable(v33);
  if (swift_dynamicCast())
  {
    v25 = v31;
    v26 = v32;
    v35[0] = v31;
    v35[1] = v32;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    outlined copy of Data._Representation(v31, v32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v16, v20, type metadata accessor for NearbyProtoJoinRequest.Content);
    (*(v13 + 56))(v20, 0, 1, v12);
    a6(v20, 0);
    outlined consume of Data._Representation(v25, v26);
    outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyProtoJoinRequest.Content);
  }

LABEL_17:
  (*(v13 + 56))(v20, 1, 1, v12);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v27 = swift_allocError();
  *v28 = 3;
  a6(v20, v27);

  return outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30[-v19];
  if (!a1)
  {
    goto LABEL_17;
  }

  v31 = 1835365481;
  v32 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v35);
  outlined destroy of AnyHashable(v33);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v31 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v31)
    {
      goto LABEL_17;
    }
  }

  else if (v31 != a4)
  {
    goto LABEL_17;
  }

  v31 = 0x64616F6C796170;
  v32 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v24 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v33);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v23, v35);
  outlined destroy of AnyHashable(v33);
  if (swift_dynamicCast())
  {
    v25 = v31;
    v26 = v32;
    v35[0] = v31;
    v35[1] = v32;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    outlined copy of Data._Representation(v31, v32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v16, v20, type metadata accessor for NearbyProtoJoinResponse.Content);
    (*(v13 + 56))(v20, 0, 1, v12);
    a6(v20, 0);
    outlined consume of Data._Representation(v25, v26);
    outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyProtoJoinResponse.Content);
  }

LABEL_17:
  (*(v13 + 56))(v20, 1, 1, v12);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v27 = swift_allocError();
  *v28 = 3;
  a6(v20, v27);

  return outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for NearbyGroup_Group(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30[-v19];
  if (!a1)
  {
    goto LABEL_17;
  }

  v31 = 1835365481;
  v32 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v35);
  outlined destroy of AnyHashable(v33);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v31 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v31)
    {
      goto LABEL_17;
    }
  }

  else if (v31 != a4)
  {
    goto LABEL_17;
  }

  v31 = 0x64616F6C796170;
  v32 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v24 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v33);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v23, v35);
  outlined destroy of AnyHashable(v33);
  if (swift_dynamicCast())
  {
    v25 = v31;
    v26 = v32;
    v35[0] = v31;
    v35[1] = v32;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    outlined copy of Data._Representation(v31, v32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v16, v20, type metadata accessor for NearbyGroup_Group);
    (*(v13 + 56))(v20, 0, 1, v12);
    a6(v20, 0);
    outlined consume of Data._Representation(v25, v26);
    outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyGroup_Group);
  }

LABEL_17:
  (*(v13 + 56))(v20, 1, 1, v12);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v27 = swift_allocError();
  *v28 = 3;
  a6(v20, v27);

  return outlined destroy of Any?(v20, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
}

id NearbyIDSServiceController.__allocating_init(queue:service:delegate:joinRequestsController:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(a1, v18, a3, a4, a5, v12, v13, v14);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v20;
}

uint64_t IDSServiceProtocol.send(_:from:to:priority:options:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_SSs5NeverOTg5024_s44com_apple_SharePlay_d138InvitationsService18IDSServiceProtocolPAAE4send_4from2to8priority7options10identifiery10Foundation4DataV_So10IDSAccountCShy0E8Sessions0E11fG78CGSo18IDSMessagePriorityVSDys11AnyHashableVypGSAySo8NSStringCSgGSgtKFSSAQXEfU_Tf1cn_n(a4);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v14);

  v16 = specialized _setUpCast<A, B>(_:)(v15);

  (*(a9 + 48))(a1, a2, a3, v16, a5, a6, a7, a8, a9);
}

uint64_t specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = *v13;
    v22 = v13[1];

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v16];
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v25;
    *v11 = v23;
    *(v11 + 16) = v24;
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id @nonobjc IDSService.send(_:toDestinations:priority:options:identifier:)(uint64_t a1, unint64_t a2, objc_class *a3, uint64_t a4, Class a5, uint64_t a6)
{
  v7 = v6;
  v11 = a3;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a3)
  {
LABEL_5:
    v11 = Set._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  if (a5)
  {
    a5 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v16 = 0;
  v13 = [v7 sendData:isa toDestinations:v11 priority:a4 options:a5 identifier:a6 error:&v16];

  if (v13)
  {
    return v16;
  }

  v15 = v16;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id @nonobjc IDSService.send(_:from:toDestinations:priority:options:identifier:)(uint64_t a1, unint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, Class a6, uint64_t a7)
{
  v8 = v7;
  v12 = a4;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a4)
  {
LABEL_5:
    v12 = Set._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  if (a6)
  {
    a6 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v18 = 0;
  v15 = [v8 sendData:isa fromAccount:a3 toDestinations:v12 priority:a5 options:a6 identifier:a7 error:&v18];

  if (v15)
  {
    return v18;
  }

  v17 = v18;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t NearbyIDSServiceController.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t NearbyIDSServiceController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyIDSServiceController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return NearbyInvitationAdvertiser.delegate.modify;
}

uint64_t NearbyIDSServiceController.firewall.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall;
  swift_beginAccess();
  return outlined init with copy of (String, Any)(v1 + v3, a1, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMR);
}

uint64_t NearbyIDSServiceController.firewall.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall;
  swift_beginAccess();
  outlined assign with take of FirewallProvider?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t NearbyIDSServiceController.requesterCredentialsByOwnerPseudonym.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyIDSServiceController.requesterCredentialsByOwnerPseudonym.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id NearbyIDSServiceController.contactStore.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore);
  }

  else
  {
    v4 = closure #1 in NearbyIDSServiceController.contactStore.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in NearbyIDSServiceController.contactStore.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 tu_contactStoreConfigurationForBundleIdentifier:v3];

  v5 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v4];
  return v5;
}

id NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = specialized NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(a1, v16, a3, a4, a5, v5, v11, v12);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v18;
}

uint64_t closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return _swift_task_switch(closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:), 0, 0);
}

uint64_t closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)()
{
  v1 = *(v0 + 72);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);

  return v8(v0 + 16, v2, v3);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);
  }

  else
  {
    v3 = closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  (*((swift_isaMask & **(v0 + 64)) + 0xA8))(v0 + 16);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched firewall.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v15 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[7] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch firewall, error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyIDSServiceController.denyConnectionRequest(id:destinationHandle:)(Swift::String id, Swift::String destinationHandle)
{
  v43 = destinationHandle;
  v3 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyProtoSessionMessage(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  UnknownStorage.init()();
  v18 = &v10[v7[5]];
  *v18 = 0;
  v18[4] = 1;
  v19 = &v10[v7[6]];
  *v19 = 0;
  *(v19 + 4) = 256;
  v20 = &v10[v7[7]];
  *v20 = xmmword_1000C8990;
  *v19 = 4;
  *(v19 + 4) = 1;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);
  v21 = v44;
  static Message.with(_:)();
  v22 = Message.serializedData(partial:)();
  v3 = v21;
  if (v21)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v6, type metadata accessor for NearbyProtoConnectionResponse.Content);
    goto LABEL_10;
  }

  v24 = v22;
  v25 = v23;
  v44 = v6;
  outlined consume of Data?(*v20, *(v20 + 1));
  *v20 = v24;
  *(v20 + 1) = v25;
  if (one-time initialization token for host != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.host);
  object = v43._object;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v31;
    *v30 = 136315138;
    countAndFlagsBits = v43._countAndFlagsBits;
    v46 = object;

    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v47);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Sending deny connection message to %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
  v35 = Message.serializedData(partial:)();
  if (!v3)
  {
    v37 = v35;
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    v40 = v43._object;
    *(inited + 32) = v43._countAndFlagsBits;
    *(inited + 40) = v40;

    v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    (*((swift_isaMask & *v42) + 0x120))(v37, v38, v41, 0, 0, 0);

    outlined consume of Data._Representation(v37, v38);
  }

  outlined destroy of NearbyProtoConnectionResponse.Content(v44, type metadata accessor for NearbyProtoConnectionResponse.Content);
LABEL_10:
  outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoSessionMessage);
}

uint64_t closure #1 in NearbyIDSServiceController.denyConnectionRequest(id:destinationHandle:)(uint64_t a1)
{
  v2 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
  static Message.with(_:)();
  v6 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined destroy of Any?(a1 + v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v5, a1 + v6, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a1 + v6, 0, 1, v7);
}

uint64_t NearbyIDSServiceController.approveConnectionRequest(id:localInvitation:destinationHandle:)(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v59 = a2;
  v54 = a5;
  v55 = a6;
  v57 = a1;
  v58 = a4;
  v56 = a3;
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoSessionMessage(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v6;
  v20 = *(v6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v23 = *(v16 + 8);
  v22 = (v16 + 8);
  v23(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v24 = UnknownStorage.init()();
  v25 = &v14[v11[5]];
  *v25 = 0;
  v25[4] = 1;
  v26 = &v14[v11[6]];
  *v26 = 0;
  *(v26 + 4) = 256;
  v22 = v14;
  v27 = &v14[v11[7]];
  *v27 = xmmword_1000C8990;
  *v26 = 4;
  *(v26 + 4) = 1;
  __chkstk_darwin(v24);
  v28 = v57;
  v29 = v58;
  *(&v53 - 4) = v56;
  *(&v53 - 3) = v29;
  *(&v53 - 2) = v28;
  *(&v53 - 1) = v59;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);
  v30 = v60;
  static Message.with(_:)();
  v31 = Message.serializedData(partial:)();
  v19 = v30;
  if (v30)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v33 = v14;
    return outlined destroy of NearbyProtoConnectionResponse.Content(v33, type metadata accessor for NearbyProtoSessionMessage);
  }

  v34 = v31;
  v35 = v32;
  v60 = v10;
  outlined consume of Data?(*v27, *(v27 + 1));
  *v27 = v34;
  *(v27 + 1) = v35;
  if (one-time initialization token for host != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Log.host);
  v37 = v55;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  v33 = v22;
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63 = v59;
    *v40 = 136315138;
    v61 = v54;
    v62 = v37;

    v41 = String.init<A>(reflecting:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v63);

    *(v40 + 4) = v43;
    v44 = v60;
    _os_log_impl(&_mh_execute_header, v38, v39, "Sending approve connection message to %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  else
  {

    v44 = v60;
  }

  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
  v45 = Message.serializedData(partial:)();
  if (!v19)
  {
    v47 = v45;
    v48 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    v50 = v55;
    *(inited + 32) = v54;
    *(inited + 40) = v50;

    v51 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    (*((swift_isaMask & *v53) + 0x120))(v47, v48, v51, 0, 0, 1);

    outlined consume of Data._Representation(v47, v48);
  }

  outlined destroy of NearbyProtoConnectionResponse.Content(v44, type metadata accessor for NearbyProtoConnectionResponse.Content);
  return outlined destroy of NearbyProtoConnectionResponse.Content(v33, type metadata accessor for NearbyProtoSessionMessage);
}

uint64_t closure #1 in NearbyIDSServiceController.approveConnectionRequest(id:localInvitation:destinationHandle:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined init with copy of (String, Any)(&a1[v15], v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v16 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    outlined destroy of Any?(v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_6:
    *v14 = xmmword_1000CAAE0;
    v18 = &v14[*(v11 + 20)];
    UnknownStorage.init()();
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    goto LABEL_6;
  }

  outlined init with take of NearbyProtoSessionMessage(v10, v14, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
LABEL_7:
  v19 = *v14;
  v20 = *(v14 + 1);
  v21 = v26;
  outlined copy of Data._Representation(a2, v26);
  outlined consume of Data._Representation(v19, v20);
  *v14 = a2;
  *(v14 + 1) = v21;
  outlined destroy of Any?(&a1[v15], &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v14, &a1[v15], type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  swift_storeEnumTagMultiPayload();
  (*(v17 + 56))(&a1[v15], 0, 1, v16);
  v22 = *(a1 + 1);
  v23 = v28;

  *a1 = v27;
  *(a1 + 1) = v23;
  return result;
}

void NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(void *a1, void *a2)
{
  v3 = v2;
  v99 = a2;
  v5 = type metadata accessor for NearbyProtoSessionMessage(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v96 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v19 = dispatch thunk of IncomingInvitationJoinRequest.hostInfo.getter();
  if (v19)
  {
    v94 = v5;
    v20 = v19;
    v95 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v97 = v21;
    __chkstk_darwin(v95);
    v22 = v99;
    *(&v87 - 2) = a1;
    *(&v87 - 1) = v22;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);
    v23 = v98;
    static Message.with(_:)();
    v24 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController);
    v25 = Message.serializedData(partial:)();
    if (v23)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content(v11, type metadata accessor for NearbyProtoJoinResponse.Content);
    }

    else
    {
      v38 = v25;
      v39 = v26;
      v91 = v3;
      v93 = v11;
      v98 = v20;
      v92 = a1;
      v40 = IncomingInvitationJoinRequest.remotePublicKey.getter();
      v42 = v41;
      v43 = v97;
      v44 = (*((swift_isaMask & *v24) + 0xB8))(v38, v39, v40, v41, v95, v97);
      v45 = v43;
      v47 = v46;
      v48 = v44;
      outlined consume of Data._Representation(v40, v42);
      v49 = outlined consume of Data._Representation(v38, v39);
      __chkstk_darwin(v49);
      *(&v87 - 2) = v48;
      *(&v87 - 1) = v47;
      v50 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
      v51 = v96;
      static Message.with(_:)();
      v88 = v50;
      v89 = v48;
      v90 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      v87 = xmmword_1000C8970;
      *(inited + 16) = xmmword_1000C8970;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v95;
      *(inited + 40) = v54;
      *(inited + 48) = v53;
      *(inited + 56) = v45;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of Any?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Log.host);
      v56 = v99;
      v57 = v92;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412546;
        *(v60 + 4) = v56;
        *(v60 + 12) = 2112;
        *(v60 + 14) = v57;
        *v61 = v56;
        v61[1] = v57;
        v62 = v56;
        v63 = v57;
        _os_log_impl(&_mh_execute_header, v58, v59, "We are about to send a join response with this response %@ and this %@", v60, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
      }

      v64 = IncomingInvitationJoinRequest.destinationToken.getter();
      if (v65)
      {
        v66 = v64;
        v67 = v65;
        v68 = Message.serializedData(partial:)();
        v70 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v71 = swift_initStackObject();
        *(v71 + 16) = v87;
        *(v71 + 32) = v66;
        v72 = v71 + 32;
        *(v71 + 40) = v67;
        v73 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v71);
        swift_setDeallocating();
        v74 = v70;
        v75 = v97;
        outlined destroy of String(v72);
        (*((swift_isaMask & *v91) + 0x120))(v68, v74, v73, v95, v75, 1);

        outlined consume of Data._Representation(v89, v90);

        outlined consume of Data._Representation(v68, v74);
      }

      else
      {
        v76 = IncomingInvitationJoinRequest.remotePseudonym.getter();
        v78 = v77;
        v79 = Message.serializedData(partial:)();
        v81 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v82 = swift_initStackObject();
        *(v82 + 16) = v87;
        *(v82 + 32) = v76;
        v83 = v82 + 32;
        *(v82 + 40) = v78;
        v84 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v82);
        swift_setDeallocating();
        v85 = v81;
        v86 = v97;
        outlined destroy of String(v83);
        (*((swift_isaMask & *v91) + 0x120))(v79, v85, v84, v95, v86, 1);

        outlined consume of Data._Representation(v89, v90);

        outlined consume of Data._Representation(v79, v85);
      }

      outlined destroy of NearbyProtoConnectionResponse.Content(v51, type metadata accessor for NearbyProtoSessionMessage);
      outlined destroy of NearbyProtoConnectionResponse.Content(v93, type metadata accessor for NearbyProtoJoinResponse.Content);
    }

    return;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.host);
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v101 = v32;
    *v31 = 136315138;
    v100 = v28;
    type metadata accessor for IncomingInvitationJoinRequest();
    v33 = v28;
    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v101);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to find hostInfo on pendingMember: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
  swift_allocError();
  *v37 = 0;
  swift_willThrow();
}

uint64_t closure #1 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IncomingInvitationJoinRequest.invitationID.getter();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v17 = a1[1];

  *a1 = v14;
  a1[1] = v16;
  v22 = a3;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  static Message.with(_:)();
  v18 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(a1 + v18, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v8, a1 + v18, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  v19 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v19 - 8) + 56))(a1 + v18, 0, 1, v19);
}

uint64_t closure #1 in closure #1 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t *a1)
{
  v2 = InvitationJoinResponse.sessionIdentifier.getter();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = a1[1];

    *a1 = v4;
    a1[1] = v5;
  }

  v7 = InvitationJoinResponse.userInfo.getter();
  if (v8 >> 60 != 15)
  {
    v9 = v7;
    v10 = v8;
    v11 = a1 + *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 28);
    outlined consume of Data?(*v11, *(v11 + 1));
    *v11 = v9;
    *(v11 + 1) = v10;
  }

  result = InvitationJoinResponse.memberHandles.getter();
  if (result)
  {
    v13 = result;
    v14 = a1[2];

    a1[2] = v13;
  }

  return result;
}

void NearbyIDSServiceController.sendRejectedRequestResponse(pendingMember:)(void *a1)
{
  v92 = type metadata accessor for NearbyProtoSessionMessage(0);
  v3 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v17 = dispatch thunk of IncomingInvitationJoinRequest.hostInfo.getter();
  if (v17)
  {
    v18 = v17;
    v90 = v5;
    v91 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v20 = v19;
    __chkstk_darwin(v91);
    *(&v84 - 2) = a1;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);
    v21 = v93;
    static Message.with(_:)();
    v22 = *(v94 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController);
    v23 = Message.serializedData(partial:)();
    if (v21)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content(v9, type metadata accessor for NearbyProtoJoinResponse.Content);

      return;
    }

    v36 = v23;
    v37 = v24;
    v89 = v9;
    v93 = v18;
    v38 = IncomingInvitationJoinRequest.remotePublicKey.getter();
    v40 = v39;
    v41 = (*((swift_isaMask & *v22) + 0xB8))(v36, v37, v38, v39, v91, v20);
    v43 = v42;
    v88 = v20;
    v44 = v41;
    outlined consume of Data._Representation(v38, v40);
    v45 = outlined consume of Data._Representation(v36, v37);
    __chkstk_darwin(v45);
    *(&v84 - 2) = v44;
    *(&v84 - 1) = v43;
    v46 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
    v47 = v43;
    v48 = v90;
    static Message.with(_:)();
    v85 = v46;
    v86 = 0;
    v87 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    v84 = xmmword_1000C8970;
    *(inited + 16) = xmmword_1000C8970;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v91;
    *(inited + 40) = v51;
    *(inited + 48) = v50;
    *(inited + 56) = v88;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Any?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);

    v52 = v93;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Log.host);
    v54 = a1;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v58 = v54;
      v59 = v54;
      _os_log_impl(&_mh_execute_header, v55, v56, "We are about to send a reject response for %@", v57, 0xCu);
      outlined destroy of Any?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v52 = v93;
    }

    v60 = IncomingInvitationJoinRequest.destinationToken.getter();
    if (v61)
    {
      v62 = v60;
      v63 = v61;
      v64 = v48;
      v65 = v86;
      v66 = Message.serializedData(partial:)();
      if (!v65)
      {
        v68 = v66;
        v69 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v70 = swift_initStackObject();
        *(v70 + 16) = v84;
        *(v70 + 32) = v62;
        v71 = v70 + 32;
        *(v70 + 40) = v63;
        v72 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v70);
        swift_setDeallocating();
        outlined destroy of String(v71);
        (*((swift_isaMask & *v94) + 0x120))(v68, v69, v72, v91, v88, 0);

        outlined consume of Data._Representation(v87, v47);

        outlined consume of Data._Representation(v68, v69);

LABEL_19:
        outlined destroy of NearbyProtoConnectionResponse.Content(v90, type metadata accessor for NearbyProtoSessionMessage);
        outlined destroy of NearbyProtoConnectionResponse.Content(v89, type metadata accessor for NearbyProtoJoinResponse.Content);
        return;
      }
    }

    else
    {
      v73 = IncomingInvitationJoinRequest.remotePseudonym.getter();
      v75 = v74;
      v64 = v48;
      v76 = v86;
      v77 = Message.serializedData(partial:)();
      if (!v76)
      {
        v79 = v77;
        v80 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v81 = swift_initStackObject();
        *(v81 + 16) = v84;
        *(v81 + 32) = v73;
        v82 = v81 + 32;
        *(v81 + 40) = v75;
        v83 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v81);
        swift_setDeallocating();
        outlined destroy of String(v82);
        (*((swift_isaMask & *v94) + 0x120))(v79, v80, v83, v91, v88, 0);

        outlined consume of Data._Representation(v87, v47);

        outlined consume of Data._Representation(v79, v80);
        goto LABEL_19;
      }
    }

    outlined consume of Data._Representation(v87, v47);

    outlined destroy of NearbyProtoConnectionResponse.Content(v64, type metadata accessor for NearbyProtoSessionMessage);
    outlined destroy of NearbyProtoConnectionResponse.Content(v89, type metadata accessor for NearbyProtoJoinResponse.Content);
    return;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.host);
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v96 = v30;
    *v29 = 136315138;
    v95 = v26;
    type metadata accessor for IncomingInvitationJoinRequest();
    v31 = v26;
    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v96);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to find hostInfo on pendingMember: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
  swift_allocError();
  *v35 = 0;
  swift_willThrow();
}

uint64_t closure #1 in NearbyIDSServiceController.sendRejectedRequestResponse(pendingMember:)(uint64_t *a1)
{
  v2 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  IncomingInvitationJoinRequest.invitationID.getter();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = a1[1];

  *a1 = v11;
  a1[1] = v13;
  UnknownStorage.init()();
  v15 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(a1 + v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v5, a1 + v15, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
  v16 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a1 + v15, 0, 1, v16);
}

uint64_t closure #2 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NearbyProtoJoinResponse(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NearbyProtoSessionMessage(0);
  v12 = a1 + *(v11 + 24);
  *v12 = 2;
  *(v12 + 8) = 1;
  v20 = a2;
  v21 = a3;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);
  static Message.with(_:)();
  v13 = Message.serializedData(partial:)();
  if (v3)
  {
    return outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoJoinResponse);
  }

  v16 = v13;
  v17 = v14;
  outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoJoinResponse);
  v18 = a1 + *(v11 + 28);
  result = outlined consume of Data?(*v18, *(v18 + 8));
  *v18 = v16;
  *(v18 + 8) = v17;
  return result;
}

uint64_t closure #1 in closure #2 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for NearbyProtoJoinResponse(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(a2, a3);
  result = outlined consume of Data?(v6, v7);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t NearbyIDSServiceController.sendRequestConnectionWithNearbyHost(fromHandle:nearbyAdvertisement:)(NSObject *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v77 = a1;
  v7 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v79 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyProtoSessionMessage(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v76 = a2;
  v20 = NearbyAdvertisement.contactID.getter();
  if (!v21)
  {
    lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
    swift_allocError();
    v31 = 1;
LABEL_10:
    *v30 = v31;
    return swift_willThrow();
  }

  v22 = v20;
  v23 = v21;
  NearbyAdvertisement.handle.getter();
  if (!v24)
  {

    lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
    swift_allocError();
    v31 = 2;
    goto LABEL_10;
  }

  v25 = String._bridgeToObjectiveC()();

  v26 = [v25 IDSFormattedDestinationID];

  if (!v26)
  {

    lazy protocol witness table accessor for type IDSServiceError and conformance IDSServiceError();
    swift_allocError();
    return swift_willThrow();
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000C8980;
  *(v28 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  type metadata accessor for NearbyAdvertisement();
  if (v22 == static NearbyAdvertisement.meContactID.getter() && v23 == v29)
  {

    goto LABEL_14;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_14:

    v34 = NearbyIDSServiceController.contactStore.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v80 = 0;
    v36 = [v34 _ios_meContactWithKeysToFetch:isa error:&v80];

    v37 = v80;
    if (v36)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v50 = NearbyIDSServiceController.contactStore.getter();
  v51 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v80 = 0;
  v36 = [v50 unifiedContactWithIdentifier:v51 keysToFetch:v52 error:&v80];

  v37 = v80;
  if (!v36)
  {
LABEL_18:
    v53 = v37;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

LABEL_15:
  v71 = v4;
  v38 = v37;
  v4 = v36;
  v39 = v78;
  v40 = UnknownStorage.init()();
  v73 = &v70;
  v41 = &v39[v10[5]];
  *v41 = 0;
  v41[4] = 1;
  v42 = &v39[v10[6]];
  *v42 = 0;
  *(v42 + 4) = 256;
  v43 = &v39[v10[7]];
  *v43 = xmmword_1000C8990;
  *v42 = 3;
  *(v42 + 4) = 1;
  __chkstk_darwin(v40);
  v44 = v76;
  v45 = v77;
  *(&v70 - 4) = v4;
  *(&v70 - 3) = v45;
  *(&v70 - 2) = v44;
  *(&v70 - 1) = a3;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest);
  v46 = v79;
  v47 = v75;
  static Message.with(_:)();

  v48 = Message.serializedData(partial:)();
  if (!v47)
  {
    v54 = v48;
    v55 = v49;
    outlined consume of Data?(*v43, *(v43 + 1));
    *v43 = v54;
    *(v43 + 1) = v55;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
    v10 = Message.serializedData(partial:)();
    a3 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    *(inited + 32) = v72;
    v59 = inited + 32;
    *(inited + 40) = v74;
    v60 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v59);
    v61 = (*((swift_isaMask & *v71) + 0x120))(v10, a3, v60, v77, v76, 1);
    v17 = v62;
    v76 = v61;

    if (one-time initialization token for host == -1)
    {
LABEL_22:
      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Log.host);

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();

      v77 = v64;
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v80 = v67;
        *v66 = 136315138;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v17, &v80);

        *(v66 + 4) = v68;
        v69 = v77;
        _os_log_impl(&_mh_execute_header, v77, v65, "Sent IDS message with identifier: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);

        outlined consume of Data._Representation(v10, a3);
      }

      else
      {

        outlined consume of Data._Representation(v10, a3);
      }

      outlined destroy of NearbyProtoConnectionResponse.Content(v79, type metadata accessor for NearbyProtoConnectionRequest);
      v56 = v78;
      return outlined destroy of NearbyProtoConnectionResponse.Content(v56, type metadata accessor for NearbyProtoSessionMessage);
    }

LABEL_27:
    swift_once();
    goto LABEL_22;
  }

  outlined destroy of NearbyProtoConnectionResponse.Content(v46, type metadata accessor for NearbyProtoConnectionRequest);

  v56 = v39;
  return outlined destroy of NearbyProtoConnectionResponse.Content(v56, type metadata accessor for NearbyProtoSessionMessage);
}

uint64_t closure #1 in NearbyIDSServiceController.sendRequestConnectionWithNearbyHost(fromHandle:nearbyAdvertisement:)(uint64_t *a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 givenName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v12 = (a1 + *(v11 + 28));
  v13 = v12[1];

  *v12 = v8;
  v12[1] = v10;
  v14 = a1[3];

  a1[2] = a3;
  a1[3] = a4;
  v15 = NearbyAdvertisement.identifier.getter();
  v17 = v16;
  v18 = a1[1];

  *a1 = v15;
  a1[1] = v17;
  result = NearbyAdvertisement.userInfo.getter();
  if (v20 >> 60 != 15)
  {
    v21 = result;
    v22 = v20;
    v23 = a1 + *(v11 + 32);
    result = outlined consume of Data?(*v23, *(v23 + 1));
    *v23 = v21;
    *(v23 + 1) = v22;
  }

  return result;
}

uint64_t NearbyIDSServiceController.sendJoinRequest(for:from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v146 = a3;
  v140 = a2;
  v137 = type metadata accessor for NearbyProtoSessionMessage(0);
  v7 = *(*(v137 - 8) + 64);
  v8 = __chkstk_darwin(v137);
  v135 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v138 = &v133 - v10;
  v148 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v11 = *(*(v148 - 8) + 64);
  v12 = __chkstk_darwin(v148);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v151 = &v133 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v149 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = v4;
  v24 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v134 = a4;
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
  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Log.host);
  v28 = v146;

  v29 = a1;
  v150 = v27;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v142 = v16;
  v143 = v15;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v33 = 136315394;
    v152 = v140;
    v153 = v28;

    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v154);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v152 = v29;
    type metadata accessor for InvitationApprovalRequest();
    v37 = v29;
    v38 = String.init<A>(reflecting:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v154);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Attempting to create and send joinRequest from: %s for request: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  v41 = v151;
  v42 = InvitationApprovalRequest.remoteInvitationData.getter();
  v43 = NearbyInvitationData.hostConnectionInfo.getter();

  v136 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  v141 = v44;

  v45 = v149;
  v46 = UUID.init()();
  __chkstk_darwin(v46);
  *(&v133 - 2) = v29;
  *(&v133 - 1) = v45;
  v47 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content);
  v48 = v144;
  static Message.with(_:)();
  v144 = v48;
  v49 = v145;
  outlined init with copy of NearbyProtoJoinRequest.Content(v41, v145, type metadata accessor for NearbyProtoJoinRequest.Content);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  v52 = os_log_type_enabled(v50, v51);
  v139 = v47;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v152 = v54;
    *v53 = 136315138;
    v55 = Message.debugDescription.getter();
    v56 = v49;
    v58 = v57;
    outlined destroy of NearbyProtoConnectionResponse.Content(v56, type metadata accessor for NearbyProtoJoinRequest.Content);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v58, &v152);

    *(v53 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "Request content: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {

    outlined destroy of NearbyProtoConnectionResponse.Content(v49, type metadata accessor for NearbyProtoJoinRequest.Content);
  }

  v60 = v29;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v154 = v64;
    *v63 = 136315138;
    v65 = InvitationApprovalRequest.remoteInvitationData.getter();
    v66 = NearbyInvitationData.hostConnectionInfo.getter();

    v67 = NearbyInvitationJoinRequestMetadata.publicKey.getter();
    v69 = v68;

    v152 = v67;
    v153 = v69;
    v70 = String.init<A>(reflecting:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v154);

    *(v63 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v61, v62, "Creating RequesterCredentials with publicKey: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  v73 = v151;
  v74 = v147;
  v75 = InvitationApprovalRequest.remoteInvitationData.getter();
  v76 = NearbyInvitationData.hostConnectionInfo.getter();

  NearbyInvitationJoinRequestMetadata.publicKey.getter();
  v77 = type metadata accessor for RequesterCredentials();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  v80 = v144;
  v81 = RequesterCredentials.init(ownerPublicKey:)();
  if (v80)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v73, type metadata accessor for NearbyProtoJoinRequest.Content);

    return (*(v142 + 8))(v149, v143);
  }

  else
  {
    v82 = v81;
    v83 = Message.serializedData(partial:)();
    v85 = v84;
    v86 = (*(*v82 + 144))();
    v89 = v88;
    v144 = v86;
    v145 = v90;
    v148 = v91;
    outlined consume of Data._Representation(v83, v85);
    v92 = InvitationApprovalRequest.remoteInvitationData.getter();
    v93 = NearbyInvitationData.hostConnectionInfo.getter();

    v94 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v96 = v95;

    v97 = *((swift_isaMask & *v74) + 0xC8);

    v98 = v97(&v152);
    v100 = v99;
    v101 = *v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = *v100;
    *v100 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, v94, v96, isUniquelyReferenced_nonNull_native);
    v103 = v148;

    *v100 = v154;
    v104 = v98(&v152, 0);
    v139 = &v133;
    __chkstk_darwin(v104);
    v105 = v144;
    *(&v133 - 4) = v145;
    *(&v133 - 3) = v103;
    *(&v133 - 2) = v105;
    *(&v133 - 1) = v89;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
    static Message.with(_:)();
    v106 = Message.serializedData(partial:)();
    v108 = v107;
    v139 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    *(inited + 32) = v136;
    v110 = inited + 32;
    *(inited + 40) = v141;
    v111 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v110);
    v112 = (*((swift_isaMask & *v147) + 0x120))(v106, v108, v111, v140, v146, 1);
    v114 = v113;
    v115 = v112;

    outlined consume of Data._Representation(v106, v108);
    v116 = v138;
    v117 = v135;
    outlined init with copy of NearbyProtoJoinRequest.Content(v138, v135, type metadata accessor for NearbyProtoSessionMessage);

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = v117;
      v121 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v152 = v150;
      *v121 = 136315394;
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v114, &v152);
      v123 = v118;
      v124 = v122;

      *(v121 + 4) = v124;
      *(v121 + 12) = 2080;
      v125 = Message.debugDescription.getter();
      v127 = v126;
      outlined destroy of NearbyProtoConnectionResponse.Content(v120, type metadata accessor for NearbyProtoSessionMessage);
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v152);

      *(v121 + 14) = v128;
      _os_log_impl(&_mh_execute_header, v123, v119, "Sent JoinRequest (%s), message: %s", v121, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v145, v148);
      outlined consume of Data._Representation(v144, v139);

      v129 = v138;
    }

    else
    {
      outlined consume of Data._Representation(v145, v148);
      outlined consume of Data._Representation(v144, v139);

      outlined destroy of NearbyProtoConnectionResponse.Content(v117, type metadata accessor for NearbyProtoSessionMessage);
      v129 = v116;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content(v129, type metadata accessor for NearbyProtoSessionMessage);
    outlined destroy of NearbyProtoConnectionResponse.Content(v151, type metadata accessor for NearbyProtoJoinRequest.Content);
    v131 = v142;
    v130 = v143;
    v132 = v149;
    (*(v142 + 16))(v134, v149, v143);
    return (*(v131 + 8))(v132, v130);
  }
}

void closure #1 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t *a1)
{
  v2 = InvitationApprovalRequest.displayName.getter();
  v4 = v3;
  v5 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v6 = (a1 + v5[6]);
  v7 = v6[1];

  *v6 = v2;
  v6[1] = v4;
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = a1[1];

  *a1 = v8;
  a1[1] = v10;
  *(a1 + v5[8]) = 1;
  v12 = InvitationApprovalRequest.userInfo.getter();
  if (v13 >> 60 != 15)
  {
    v15 = v12;
    v17 = v13;
    goto LABEL_5;
  }

  v14 = InvitationApprovalRequest.remoteInvitationData.getter();
  v15 = NearbyInvitationData.userInfo.getter();
  v17 = v16;

  if (v17 >> 60 != 15)
  {
LABEL_5:
    v18 = a1 + v5[7];
    outlined consume of Data?(*v18, *(v18 + 1));
    *v18 = v15;
    *(v18 + 1) = v17;
  }
}

uint64_t closure #2 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for NearbyProtoJoinRequest(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for NearbyProtoSessionMessage(0);
  v16 = a1 + *(v15 + 24);
  *v16 = 1;
  *(v16 + 8) = 1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);
  static Message.with(_:)();
  v17 = Message.serializedData(partial:)();
  if (v5)
  {
    return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoJoinRequest);
  }

  v20 = v17;
  v21 = v18;
  outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoJoinRequest);
  v22 = a1 + *(v15 + 28);
  result = outlined consume of Data?(*v22, *(v22 + 8));
  *v22 = v20;
  *(v22 + 8) = v21;
  return result;
}

uint64_t closure #1 in closure #2 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for NearbyProtoJoinRequest(0);
  v11 = (a1 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  outlined copy of Data._Representation(a2, a3);
  outlined consume of Data?(v12, v13);
  *v11 = a2;
  v11[1] = a3;
  v14 = (a1 + *(v10 + 24));
  v15 = *v14;
  v16 = v14[1];
  outlined copy of Data._Representation(a4, a5);
  result = outlined consume of Data?(v15, v16);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

void NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v43 = a6;
  v44 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C8970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  v17 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v18.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  *(inited + 72) = v17;
  *(inited + 48) = v18;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v42 = v14;
  if (a5)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v24 = IDSCopyBestGuessIDForID();

    if (!v24)
    {
      __break(1u);
      return;
    }

    v49 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    *&v48 = v24;
    outlined init with take of Any(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v20, v22, isUniquelyReferenced_nonNull_native);

    v19 = v46;
  }

  v26 = *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 24];
  v27 = *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 32];
  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service], v26);
  v28 = specialized _setUpCast<A, B>(_:)(a3);
  v29 = a3;
  v30 = v7;
  v31 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  *&v48 = 0;
  v32 = v45;
  (*(v27 + 40))(a1, v44, v28, 300, v31, &v48, v26, v27);

  v33 = v48;
  if (v32)
  {
    v34 = v48;
LABEL_6:
    swift_willThrow();

    return;
  }

  if (v43)
  {
    v35 = type metadata accessor for TaskPriority();
    v36 = v42;
    (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v30;
    v37[5] = v29;
    v38 = v33;
    v39 = v30;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:), v37);

    if (!v33)
    {
LABEL_9:
      lazy protocol witness table accessor for type IDSServiceError and conformance IDSServiceError();
      swift_allocError();
      v34 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v40 = v48;
    if (!v33)
    {
      goto LABEL_9;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  return _swift_task_switch(closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:), 0, 0);
}

uint64_t closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)()
{
  v49 = v0;
  (*((swift_isaMask & **(v0 + 128)) + 0xA0))();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 136);
    outlined init with take of PseudonymProtocol((v0 + 56), v0 + 16);
    v44 = *(v0 + 48);
    v45 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v45);
    v2 = v1 + 56;
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 56);
    v6 = (63 - v4) >> 6;

    v7 = 0;
    v46 = v1;
LABEL_5:
    *(v0 + 144) = _swiftEmptyArrayStorage;
    while (v5)
    {
LABEL_12:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v1 + 48) + ((v7 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = objc_allocWithZone(IDSURI);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 initWithPrefixedURI:v14];

      if (v15)
      {
        v16 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v15];

        if (v16)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = v1;
            v25 = v0;
            v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v0 = v25;
            v1 = v24;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_5;
        }
      }

      else
      {
        if (one-time initialization token for firewall != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.firewall);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v48 = v43;
          *v20 = 136315138;
          *(v0 + 96) = v11;
          *(v0 + 104) = v12;

          v21 = String.init<A>(reflecting:)();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v48);

          *(v20 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to convert URI: %s to IDSURI", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
        }

        v1 = v46;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_12;
      }
    }

    v27 = *(v0 + 136);

    v28 = *(v44 + 8);
    v47 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 152) = v30;
    *v30 = v0;
    v30[1] = closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:);

    return (v47)(_swiftEmptyArrayStorage, v45, v44);
  }

  else
  {
    outlined destroy of Any?(v0 + 56, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMR);
    if (one-time initialization token for firewall != -1)
    {
LABEL_32:
      swift_once();
    }

    v32 = *(v0 + 136);
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.firewall);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 136);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      *(v0 + 112) = v36;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v48);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Message sent without firewall being ready to destinations: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
    }

    v42 = *(v0 + 8);

    return v42();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:);
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for firewall != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.firewall);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[15] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Donated entries: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v11 = v0[1];

  return v11();
}

{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

id NearbyIDSServiceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyIDSServiceController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);

  return a8(a3, a4, a5, a6, a7, v8, v14, v15);
}

uint64_t closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v27 - v9);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  outlined init with copy of NearbyProtoJoinRequest.Content(a1, v10, type metadata accessor for NearbyProtoConnectionRequest);
  outlined init with copy of NearbyProtoJoinRequest.Content(a1, v8, type metadata accessor for NearbyProtoConnectionRequest);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = a1;
    v28 = v15;
    *v14 = 136315394;
    v16 = *v10;
    v17 = v10[1];

    outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoConnectionRequest);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = *(v8 + 2);
    v20 = *(v8 + 3);

    outlined destroy of NearbyProtoConnectionResponse.Content(v8, type metadata accessor for NearbyProtoConnectionRequest);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Got connection request: %s from: %s", v14, 0x16u);
    swift_arrayDestroy();
    a1 = v27;
  }

  else
  {

    outlined destroy of NearbyProtoConnectionResponse.Content(v8, type metadata accessor for NearbyProtoConnectionRequest);
    v22 = outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoConnectionRequest);
  }

  result = (*((swift_isaMask & *a2) + 0x88))(v22);
  if (result)
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(a2, &protocol witness table for NearbyIDSServiceController, a1, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2)
{
  result = (*((swift_isaMask & *a1) + 0x88))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, &protocol witness table for NearbyIDSServiceController, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = (*((swift_isaMask & *a1) + 0x88))();
  if (result)
  {
    if (a4)
    {
      v18 = v17;
      ObjectType = swift_getObjectType();
      (*(v18 + 24))(a1, &protocol witness table for NearbyIDSServiceController, a2, a3, a4, a5, a6, a7, a8, ObjectType, v18);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[0] = a3;
  v36 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v35[1] = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v35 - v9;
  v11 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v35 - v16;
  outlined init with copy of (String, Any)(a1, v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Any?(v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.host);
    v19 = v36;
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, aBlock);
      *(v22 + 12) = 2112;
      if (v19)
      {
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v22 + 14) = v25;
      *v23 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s Failed to parse join response: %@", v22, 0x16u);
      outlined destroy of Any?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }
  }

  else
  {
    outlined init with take of NearbyProtoSessionMessage(v10, v17, type metadata accessor for NearbyProtoJoinResponse.Content);
    v27 = v35[0];
    v28 = *(v35[0] + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
    outlined init with copy of NearbyProtoJoinRequest.Content(v17, v15, type metadata accessor for NearbyProtoJoinResponse.Content);
    v29 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    outlined init with take of NearbyProtoSessionMessage(v15, v30 + v29, type metadata accessor for NearbyProtoJoinResponse.Content);
    aBlock[4] = partial apply for closure #1 in closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_59_0;
    _Block_copy(aBlock);
    v37 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    v31 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = type metadata accessor for DispatchWorkItem();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.async(execute:)();

    outlined destroy of NearbyProtoConnectionResponse.Content(v17, type metadata accessor for NearbyProtoJoinResponse.Content);
  }
}

uint64_t closure #1 in closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2)
{
  result = (*((swift_isaMask & *a1) + 0x88))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a1, &protocol witness table for NearbyIDSServiceController, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMd, &_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService0H12Group_MemberVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService0H12Group_MemberVGMR);
  v10 = *(type metadata accessor for NearbyGroup_Member(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NearbyGroup_Member(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void specialized Set.subscript.getter(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for NearbyGroupMember();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for NearbyGroupMember();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t specialized closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, char *a2)
{
  v27 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  outlined init with copy of (String, Any)(a1, v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of Any?(v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  }

  outlined init with take of NearbyProtoSessionMessage(v9, v16, type metadata accessor for NearbyProtoConnectionRequest);
  v18 = v27;
  v19 = *&v27[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue];
  outlined init with copy of NearbyProtoJoinRequest.Content(v16, v14, type metadata accessor for NearbyProtoConnectionRequest);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  outlined init with take of NearbyProtoSessionMessage(v14, v21 + v20, type metadata accessor for NearbyProtoConnectionRequest);
  *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = partial apply for closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_47_0;
  _Block_copy(aBlock);
  v29 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  v22 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = type metadata accessor for DispatchWorkItem();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  OS_dispatch_queue.async(execute:)();

  return outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyProtoConnectionRequest);
}

void specialized closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, char *a2)
{
  v31 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  outlined init with copy of (String, Any)(a1, v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Any?(v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, aBlock);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s Failed to parse NearbyProtoConnectionResponse", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }
  }

  else
  {
    outlined init with take of NearbyProtoSessionMessage(v9, v16, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v22 = v31;
    v23 = *&v31[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue];
    outlined init with copy of NearbyProtoJoinRequest.Content(v16, v14, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v24 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    outlined init with take of NearbyProtoSessionMessage(v14, v25 + v24, type metadata accessor for NearbyProtoConnectionResponse.Content);
    aBlock[4] = partial apply for closure #1 in closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_53;
    _Block_copy(aBlock);
    v33 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = type metadata accessor for DispatchWorkItem();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.async(execute:)();

    outlined destroy of NearbyProtoConnectionResponse.Content(v16, type metadata accessor for NearbyProtoConnectionResponse.Content);
  }
}

uint64_t specialized closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v45 = a4;
  v46 = a6;
  v43 = a3;
  v44 = a5;
  v47 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v42 - v21;
  outlined init with copy of (String, Any)(a1, v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  }

  outlined init with take of NearbyProtoSessionMessage(v15, v22, type metadata accessor for NearbyProtoJoinRequest.Content);
  v24 = v47;
  v42 = *&v47[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue];
  outlined init with copy of NearbyProtoJoinRequest.Content(v22, v20, type metadata accessor for NearbyProtoJoinRequest.Content);
  v25 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  outlined init with take of NearbyProtoSessionMessage(v20, v29 + v25, type metadata accessor for NearbyProtoJoinRequest.Content);
  v30 = (v29 + v26);
  v31 = v44;
  v32 = v45;
  *v30 = v43;
  v30[1] = v32;
  v33 = (v29 + v27);
  v34 = v46;
  *v33 = v31;
  v33[1] = v34;
  v35 = (v29 + v28);
  v37 = v48;
  v36 = v49;
  *v35 = v48;
  v35[1] = v36;
  aBlock[4] = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_66;
  _Block_copy(aBlock);
  v51 = _swiftEmptyArrayStorage;

  v38 = v24;
  outlined copy of Data._Representation(v37, v36);
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = type metadata accessor for DispatchWorkItem();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  OS_dispatch_queue.async(execute:)();

  return outlined destroy of NearbyProtoConnectionResponse.Content(v22, type metadata accessor for NearbyProtoJoinRequest.Content);
}

id specialized NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v35[3] = a7;
  v35[4] = a8;
  __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a7 - 8) + 32))();
  v18 = &a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate];
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym] = &_swiftEmptyDictionarySingleton;
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore] = 0;
  swift_beginAccess();
  *(v18 + 1) = a4;
  swift_unknownObjectWeakAssign();
  outlined init with copy of PseudonymProtocol(v35, &a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service]);
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue] = a1;
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController] = a5;
  v20 = type metadata accessor for NearbyIDSServiceController();
  v34.receiver = a6;
  v34.super_class = v20;
  v21 = a1;
  v22 = a5;
  v23 = objc_msgSendSuper2(&v34, "init");
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  outlined init with copy of PseudonymProtocol(v35, v33);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  outlined init with take of PseudonymProtocol(v33, (v25 + 5));
  v26 = v23;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:), v25);

  v27 = [objc_allocWithZone(IDSServiceDelegateProperties) init];
  [v27 setWantsCrossAccountMessaging:1];
  v28 = *(a8 + 32);
  v29 = v21;
  v30 = v27;
  v28(v26, v27, v21, a7, a8);

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v26;
}

uint64_t outlined assign with take of FirewallProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSServiceError and conformance IDSServiceError()
{
  result = lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError;
  if (!lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError;
  if (!lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError);
  }

  return result;
}

void partial apply for closure #1 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #1 in NearbyIDSServiceController.sendJoinRequest(for:from:)(a1);
}

uint64_t partial apply for closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(a1, v4, v5, v7, v6);
}

void _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC30handleIncomingMessageBlastDoor_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0Q0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t (*a6)(uint64_t a1))
{
  v306 = a5;
  v304 = a3;
  v291 = type metadata accessor for NearbyProtoJoinResponse(0);
  v10 = *(*(v291 - 8) + 64);
  __chkstk_darwin(v291);
  v292 = &v271 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v285 = *(v282 - 8);
  v16 = *(v285 + 64);
  v17 = __chkstk_darwin(v282);
  v278 = &v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v276 = &v271 - v20;
  v277 = v21;
  __chkstk_darwin(v19);
  v280 = &v271 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v281 = &v271 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v286 = &v271 - v28;
  v29 = __chkstk_darwin(v27);
  v283 = &v271 - v30;
  __chkstk_darwin(v29);
  v284 = &v271 - v31;
  v32 = type metadata accessor for String.Encoding();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v287 = &v271 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for NearbyProtoJoinRequest(0);
  v35 = *(*(v293 - 8) + 64);
  v36 = __chkstk_darwin(v293);
  v288 = &v271 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v294 = &v271 - v38;
  v39 = type metadata accessor for BinaryDecodingOptions();
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v290 = &v271 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v289 = &v271 - v44;
  __chkstk_darwin(v43);
  v300 = &v271 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMR);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v305 = &v271 - v48;
  v302 = type metadata accessor for NearbyProtoSessionMessage(0);
  v301 = *(v302 - 8);
  v49 = *(v301 + 64);
  v50 = __chkstk_darwin(v302);
  v295 = &v271 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v297 = &v271 - v53;
  __chkstk_darwin(v52);
  v55 = &v271 - v54;
  v56 = type metadata accessor for DispatchPredicate();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  v60 = (&v271 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = a6;
  v61 = *(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v60 = v61;
  (*(v57 + 104))(v60, enum case for DispatchPredicate.onQueue(_:), v56);
  v279 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  (*(v57 + 8))(v60, v56);
  if (v61)
  {
    v274 = v12;
    v275 = v15;
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
  v62 = type metadata accessor for Logger();
  v63 = __swift_project_value_buffer(v62, static Log.host);
  v64 = v306;

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v303 = v64;

  if (os_log_type_enabled(v65, v66))
  {
    v299 = v63;
    v296 = v55;
    v67 = a1;
    v68 = a2;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v311 = v71;
    *v69 = 136315394;
    if (a4)
    {
      *&aBlock = v304;
      *(&aBlock + 1) = a4;

      v72 = String.init<A>(reflecting:)();
      v74 = v73;
    }

    else
    {
      v72 = 7104878;
      v74 = 0xE300000000000000;
    }

    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v311);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2112;
    v76 = v303;
    *(v69 + 14) = v303;
    *v70 = v306;
    v77 = v76;
    _os_log_impl(&_mh_execute_header, v65, v66, "Handling incoming data from: %s context: %@", v69, 0x16u);
    outlined destroy of Any?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v71);

    a2 = v68;
    a1 = v67;
    v55 = v296;
    v63 = v299;
  }

  else
  {
  }

  if (a4)
  {
    v78 = String._bridgeToObjectiveC()();
  }

  else
  {
    v78 = 0;
  }

  v79 = IDSCopyAddressDestinationForDestination();

  v80 = IDSCopyRawAddressForDestination();
  if (!v80)
  {
    return;
  }

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (String.count.getter() < 1 || a2 >> 60 == 15)
  {

    return;
  }

  v84 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v84 != 2)
    {
      goto LABEL_33;
    }

    v86 = *(a1 + 16);
    v85 = *(a1 + 24);
    v87 = v85 - v86;
    if (!__OFSUB__(v85, v86))
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_121;
    }

    v87 = HIDWORD(a1) - a1;
LABEL_26:
    outlined copy of Data._Representation(a1, a2);
    if (v87 < 1)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v84)
  {
    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v306)
  {
    __break(1u);
    goto LABEL_134;
  }

  v88 = [v303 toID];
  v89 = IDSCopyAddressDestinationForDestination();

  v90 = IDSCopyRawAddressForDestination();
  if (v90)
  {
    v273 = v81;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v92;

    v93 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v93 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      v272 = v91;
      v311 = a1;
      v312 = a2;
      v309 = 0;
      aBlock = 0u;
      v308 = 0u;
      outlined copy of Data._Representation(a1, a2);
      BinaryDecodingOptions.init()();
      v94 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
      v95 = v302;
      Message.init<A>(serializedBytes:extensions:partial:options:)();
      v300 = v94;
      v299 = v63;
      v271 = a4;
      v105 = v305;
      (*(v301 + 56))(v305, 0, 1, v95);
      outlined init with take of NearbyProtoSessionMessage(v105, v55, type metadata accessor for NearbyProtoSessionMessage);
      v107 = *(v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 24);
      v106 = *(v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 32);
      __swift_project_boxed_opaque_existential_1((v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service), v107);
      (*(*(v106 + 8) + 8))(v107);
      if (v108)
      {
        v109 = objc_allocWithZone(IDSServiceProperties);
        v110 = String._bridgeToObjectiveC()();

        v111 = [v109 initWithServiceIdentifier:v110];

        if (v111)
        {
          v112 = v302;
          v113 = &v55[*(v302 + 24)];
          v114 = v297;
          if (v113[9] & 1) == 0 && (v113[8])
          {
            v115 = *v113;
            if (v115 <= 2)
            {
              if (v115)
              {
                if (v115 != 1)
                {
                  v296 = v55;

                  v161 = Logger.logObject.getter();
                  v162 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v161, v162))
                  {
                    v163 = swift_slowAlloc();
                    *v163 = 0;
                    _os_log_impl(&_mh_execute_header, v161, v162, "Handling join response", v163, 2u);
                  }

                  v164 = &v296[*(v112 + 28)];
                  v165 = *v164;
                  v166 = v164[1];
                  if (v166 >> 60 == 15)
                  {
                    v167 = 0;
                  }

                  else
                  {
                    v167 = *v164;
                  }

                  v168 = 0xC000000000000000;
                  if (v166 >> 60 != 15)
                  {
                    v168 = v166;
                  }

                  v311 = v167;
                  v312 = v168;
                  v309 = 0;
                  aBlock = 0u;
                  v308 = 0u;
                  outlined copy of Data?(v165, v166);
                  BinaryDecodingOptions.init()();
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);
                  v169 = v292;
                  v170 = v291;
                  v171 = Message.init<A>(serializedBytes:extensions:partial:options:)();
                  v188 = (*((swift_isaMask & *v298) + 0xB8))(v171);
                  v189 = v188;
                  if (!*(v188 + 16) || (v190 = specialized __RawDictionaryStorage.find<A>(_:)(v273, v83), (v191 & 1) == 0))
                  {

                    v199 = Logger.logObject.getter();
                    v200 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v199, v200))
                    {
                      v201 = swift_slowAlloc();
                      *&aBlock = swift_slowAlloc();
                      *v201 = 136315394;
                      *(v201 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, &aBlock);
                      *(v201 + 12) = 2080;
                      v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v83, &aBlock);

                      *(v201 + 14) = v202;
                      _os_log_impl(&_mh_execute_header, v199, v200, "%s No credentials to parse join response for: %s", v201, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    outlined consume of Data?(a1, a2);
                    v236 = type metadata accessor for NearbyProtoJoinResponse;
                    v203 = v169;
                    goto LABEL_132;
                  }

                  v192 = v190;
                  v305 = v111;

                  v193 = *(*(v189 + 56) + 8 * v192);

                  v194 = &v169[*(v170 + 20)];
                  v195 = v194[1];
                  if (v195 >> 60 == 15)
                  {
                    v196 = 0;
                  }

                  else
                  {
                    v196 = *v194;
                  }

                  if (v195 >> 60 == 15)
                  {
                    v197 = 0xC000000000000000;
                  }

                  else
                  {
                    v197 = v194[1];
                  }

                  v198 = *(*v193 + 152);
                  outlined copy of Data?(*v194, v195);
                  v231 = v198(v196, v197);
                  v233 = v232;
                  outlined consume of Data._Representation(v196, v197);
                  v234 = v298;
                  v235 = v305;
                  specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v231, v233, 2, 1, v305, v234);

                  outlined consume of Data._Representation(v231, v233);

                  outlined consume of Data?(a1, a2);
                  v236 = type metadata accessor for NearbyProtoJoinResponse;
                  v237 = &aBlock + 8;
LABEL_131:
                  v203 = *(v237 - 32);
LABEL_132:
                  outlined destroy of NearbyProtoConnectionResponse.Content(v203, v236);
                  outlined destroy of NearbyProtoConnectionResponse.Content(v296, type metadata accessor for NearbyProtoSessionMessage);
                  return;
                }

                v116 = v302;

                v117 = Logger.logObject.getter();
                v118 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  *v119 = 0;
                  _os_log_impl(&_mh_execute_header, v117, v118, "Handling join request", v119, 2u);
                  v116 = v302;
                }

                v120 = &v55[*(v116 + 28)];
                v121 = *v120;
                v122 = v120[1];
                if (v122 >> 60 == 15)
                {
                  v123 = 0;
                }

                else
                {
                  v123 = *v120;
                }

                v124 = 0xC000000000000000;
                if (v122 >> 60 != 15)
                {
                  v124 = v122;
                }

                v311 = v123;
                v312 = v124;
                v309 = 0;
                aBlock = 0u;
                v308 = 0u;
                outlined copy of Data?(v121, v122);
                BinaryDecodingOptions.init()();
                lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);
                v125 = v294;
                Message.init<A>(serializedBytes:extensions:partial:options:)();
                v305 = v111;
                v301 = a1;
                v302 = a2;
                v172 = v288;
                outlined init with copy of NearbyProtoJoinRequest.Content(v125, v288, type metadata accessor for NearbyProtoJoinRequest);
                v173 = Logger.logObject.getter();
                v174 = static os_log_type_t.default.getter();
                v175 = os_log_type_enabled(v173, v174);
                v296 = v55;
                if (v175)
                {
                  v176 = swift_slowAlloc();
                  v177 = swift_slowAlloc();
                  v311 = v177;
                  *v176 = 136315138;
                  v178 = (v172 + *(v293 + 20));
                  v179 = v178[1];
                  if (v179 >> 60 == 15)
                  {
                    v180 = 0;
                  }

                  else
                  {
                    v180 = *v178;
                  }

                  if (v179 >> 60 == 15)
                  {
                    v181 = 0xC000000000000000;
                  }

                  else
                  {
                    v181 = v178[1];
                  }

                  outlined copy of Data?(*v178, v179);
                  static String.Encoding.utf8.getter();
                  v182 = String.init(data:encoding:)();
                  v184 = v183;
                  outlined consume of Data._Representation(v180, v181);
                  if (v184)
                  {
                    *&aBlock = v182;
                    *(&aBlock + 1) = v184;
                    v185 = String.init<A>(reflecting:)();
                    v187 = v186;
                  }

                  else
                  {
                    v185 = 7104878;
                    v187 = 0xE300000000000000;
                  }

                  outlined destroy of NearbyProtoConnectionResponse.Content(v288, type metadata accessor for NearbyProtoJoinRequest);
                  v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, &v311);

                  *(v176 + 4) = v204;
                  _os_log_impl(&_mh_execute_header, v173, v174, "Attempting to decrypt data with publicKey: %s", v176, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v177);

                  v125 = v294;
                }

                else
                {

                  outlined destroy of NearbyProtoConnectionResponse.Content(v172, type metadata accessor for NearbyProtoJoinRequest);
                }

                v205 = v298;
                v206 = v272;
                v207 = (*((swift_isaMask & **(v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController)) + 0xC0))(v125, v272, v81);
                v83 = v208;
                a4 = v209;
                v300 = v207;
                v303 = v210;
                v211 = swift_allocObject();
                v212 = v304;
                v211[2] = v205;
                v211[3] = v212;
                v211[4] = v271;
                v211[5] = v206;
                v211[6] = v81;
                v211[7] = v83;
                v211[8] = a4;
                v213 = objc_opt_self();

                v214 = v205;

                outlined copy of Data._Representation(v83, a4);

                v306 = v214;

                outlined copy of Data._Representation(v83, a4);
                v299 = [v213 getBlastDoorSharedConnection];
                if (v299)
                {
                  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                  v215 = v305;
                  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
                  v217 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v215 command:isa];

                  if (v217)
                  {
                    [v217 setPayloadType:1];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1000CA970;
                    *(inited + 32) = 1835365481;
                    *(inited + 40) = 0xE400000000000000;
                    *(inited + 48) = 1;
                    *(inited + 72) = &type metadata for Int;
                    *(inited + 80) = 0x64616F6C796170;
                    *(inited + 120) = &type metadata for Data;
                    *(inited + 88) = 0xE700000000000000;
                    v219 = v300;
                    v220 = v303;
                    *(inited + 96) = v300;
                    *(inited + 104) = v220;
                    outlined copy of Data._Representation(v219, v220);
                    v221 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
                    swift_arrayDestroy();
                    specialized _dictionaryUpCast<A, B, C, D>(_:)(v221);

                    v222 = Dictionary._bridgeToObjectiveC()().super.isa;

                    v223 = swift_allocObject();
                    *(v223 + 16) = 1;
                    *(v223 + 24) = 1;
                    *(v223 + 32) = closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                    *(v223 + 40) = v211;
                    v309 = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
                    v310 = v223;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v308 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
                    *(&v308 + 1) = &block_descriptor_91;
                    v224 = _Block_copy(&aBlock);

                    v225 = v299;
                    [v299 diffuseClientMessage:v222 context:v217 withCompletionBlock:v224];
                    _Block_release(v224);

                    outlined consume of Data._Representation(v300, v220);

LABEL_130:
                    outlined consume of Data._Representation(v83, a4);
                    outlined consume of Data._Representation(v83, a4);
                    outlined consume of Data?(v301, v302);
                    v236 = type metadata accessor for NearbyProtoJoinRequest;
                    v237 = &v308 + 8;
                    goto LABEL_131;
                  }

                  v238 = v285;
                  v239 = v286;
                  v240 = v282;
                  (*(v285 + 56))(v286, 1, 1, v282);
                  v241 = v239;
                  v242 = v281;
                  outlined init with copy of (String, Any)(v241, v281, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  if ((*(v238 + 48))(v242, 1, v240) == 1)
                  {
                    outlined destroy of Any?(v281, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  }

                  else
                  {
                    v298 = type metadata accessor for NearbyProtoJoinRequest.Content;
                    v257 = v276;
                    outlined init with take of NearbyProtoSessionMessage(v281, v276, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v258 = v278;
                    outlined init with copy of NearbyProtoJoinRequest.Content(v257, v278, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v259 = (*(v285 + 80) + 24) & ~*(v285 + 80);
                    v260 = (v277 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v261 = (v260 + 23) & 0xFFFFFFFFFFFFFFF8;
                    v262 = swift_allocObject();
                    *(v262 + 16) = v306;
                    outlined init with take of NearbyProtoSessionMessage(v258, v262 + v259, v298);
                    v263 = (v262 + v260);
                    v264 = v271;
                    *v263 = v304;
                    v263[1] = v264;
                    v265 = (v262 + v261);
                    *v265 = v272;
                    v265[1] = v81;
                    v266 = (v262 + ((v261 + 23) & 0xFFFFFFFFFFFFFFF8));
                    *v266 = v83;
                    v266[1] = a4;
                    v309 = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                    v310 = v262;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v308 = thunk for @escaping @callee_guaranteed () -> ();
                    *(&v308 + 1) = &block_descriptor_84_0;
                    _Block_copy(&aBlock);
                    v311 = _swiftEmptyArrayStorage;

                    v267 = v306;

                    outlined copy of Data._Representation(v83, a4);
                    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    v268 = type metadata accessor for DispatchWorkItem();
                    v269 = *(v268 + 48);
                    v270 = *(v268 + 52);
                    swift_allocObject();
                    DispatchWorkItem.init(flags:block:)();

                    OS_dispatch_queue.async(execute:)();

                    outlined destroy of NearbyProtoConnectionResponse.Content(v276, type metadata accessor for NearbyProtoJoinRequest.Content);
                  }

LABEL_129:
                  outlined destroy of Any?(v286, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);

                  outlined consume of Data._Representation(v300, v303);

                  goto LABEL_130;
                }

LABEL_121:
                v226 = v285;
                v227 = v284;
                v228 = v282;
                (*(v285 + 56))(v284, 1, 1, v282);
                v229 = v227;
                v230 = v283;
                outlined init with copy of (String, Any)(v229, v283, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                if ((*(v226 + 48))(v230, 1, v228) == 1)
                {
                  outlined destroy of Any?(v283, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                }

                else
                {
                  v299 = type metadata accessor for NearbyProtoJoinRequest.Content;
                  v243 = v280;
                  outlined init with take of NearbyProtoSessionMessage(v283, v280, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v244 = v278;
                  outlined init with copy of NearbyProtoJoinRequest.Content(v243, v278, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v245 = (*(v285 + 80) + 24) & ~*(v285 + 80);
                  v246 = (v277 + v245 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v247 = (v246 + 23) & 0xFFFFFFFFFFFFFFF8;
                  v248 = swift_allocObject();
                  *(v248 + 16) = v306;
                  outlined init with take of NearbyProtoSessionMessage(v244, v248 + v245, v299);
                  v249 = (v248 + v246);
                  v250 = v271;
                  *v249 = v304;
                  v249[1] = v250;
                  v251 = (v248 + v247);
                  *v251 = v272;
                  v251[1] = v81;
                  v252 = (v248 + ((v247 + 23) & 0xFFFFFFFFFFFFFFF8));
                  *v252 = v83;
                  v252[1] = a4;
                  v309 = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                  v310 = v248;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v308 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v308 + 1) = &block_descriptor_77;
                  _Block_copy(&aBlock);
                  v311 = _swiftEmptyArrayStorage;

                  v253 = v306;

                  outlined copy of Data._Representation(v83, a4);
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v254 = type metadata accessor for DispatchWorkItem();
                  v255 = *(v254 + 48);
                  v256 = *(v254 + 52);
                  swift_allocObject();
                  DispatchWorkItem.init(flags:block:)();

                  OS_dispatch_queue.async(execute:)();

                  outlined destroy of NearbyProtoConnectionResponse.Content(v280, type metadata accessor for NearbyProtoJoinRequest.Content);
                }

                v286 = v284;
                goto LABEL_129;
              }

              goto LABEL_66;
            }

            if (v115 == 3)
            {
              v305 = v111;
              v126 = v55;

              v153 = Logger.logObject.getter();
              v154 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                *v155 = 0;
                _os_log_impl(&_mh_execute_header, v153, v154, "Handling connection request message", v155, 2u);
              }

              v156 = (v126 + *(v112 + 28));
              v157 = *v156;
              v158 = v156[1];
              if (v158 >> 60 == 15)
              {
                v133 = 0;
              }

              else
              {
                v133 = *v156;
              }

              if (v158 >> 60 == 15)
              {
                v134 = 0xC000000000000000;
              }

              else
              {
                v134 = v156[1];
              }

              v159 = v298;
              outlined copy of Data?(v157, v158);
              v160 = v305;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v133, v134, 3, 1, v305, v159);

              goto LABEL_83;
            }

            if (v115 == 4)
            {
              v305 = v111;
              v126 = v55;

              v127 = Logger.logObject.getter();
              v128 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                *v129 = 0;
                _os_log_impl(&_mh_execute_header, v127, v128, "Handling connection response", v129, 2u);
              }

              v130 = (v126 + *(v112 + 28));
              v131 = *v130;
              v132 = v130[1];
              if (v132 >> 60 == 15)
              {
                v133 = 0;
              }

              else
              {
                v133 = *v130;
              }

              if (v132 >> 60 == 15)
              {
                v134 = 0xC000000000000000;
              }

              else
              {
                v134 = v130[1];
              }

              v135 = v298;
              outlined copy of Data?(v131, v132);
              v136 = v305;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v133, v134, 4, 1, v305, v135);

LABEL_83:
              outlined consume of Data._Representation(v133, v134);
              outlined consume of Data?(a1, a2);
              outlined destroy of NearbyProtoConnectionResponse.Content(v126, type metadata accessor for NearbyProtoSessionMessage);
              return;
            }
          }

LABEL_66:

          v137 = v55;
          outlined init with copy of NearbyProtoJoinRequest.Content(v55, v114, type metadata accessor for NearbyProtoSessionMessage);
          v138 = v295;
          outlined init with copy of NearbyProtoJoinRequest.Content(v55, v295, type metadata accessor for NearbyProtoSessionMessage);
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v296 = v137;
            v142 = v112;
            v143 = v141;
            v144 = swift_slowAlloc();
            v305 = v111;
            v145 = v144;
            *&aBlock = v144;
            *v143 = 134218242;
            v146 = v114 + *(v142 + 24);
            v147 = v114;
            if (*(v146 + 9))
            {
              v148 = 0;
            }

            else
            {
              v148 = *v146;
            }

            outlined destroy of NearbyProtoConnectionResponse.Content(v147, type metadata accessor for NearbyProtoSessionMessage);
            *(v143 + 4) = v148;
            *(v143 + 12) = 2080;
            v149 = Message.debugDescription.getter();
            v151 = v150;
            outlined destroy of NearbyProtoConnectionResponse.Content(v138, type metadata accessor for NearbyProtoSessionMessage);
            v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, &aBlock);

            *(v143 + 14) = v152;
            _os_log_impl(&_mh_execute_header, v139, v140, "Not able to handle message type: %ld, message: %s", v143, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v145);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v296, type metadata accessor for NearbyProtoSessionMessage);
          }

          else
          {
            outlined destroy of NearbyProtoConnectionResponse.Content(v114, type metadata accessor for NearbyProtoSessionMessage);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v138, type metadata accessor for NearbyProtoSessionMessage);
            outlined destroy of NearbyProtoConnectionResponse.Content(v137, type metadata accessor for NearbyProtoSessionMessage);
          }

          return;
        }

        outlined destroy of NearbyProtoConnectionResponse.Content(v55, type metadata accessor for NearbyProtoSessionMessage);

LABEL_33:

        outlined consume of Data?(a1, a2);
        return;
      }

LABEL_134:
      __break(1u);
      return;
    }
  }

  v96 = v303;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *&aBlock = v100;
    *v99 = 136315138;
    v311 = v96;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSMessageContext, IDSMessageContext_ptr);
    v101 = v96;
    v102 = String.init<A>(reflecting:)();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &aBlock);

    *(v99 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v97, v98, "Failed to find toID for message: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
  }

  outlined consume of Data?(a1, a2);
}

void _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC21handleIncomingMessage_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0O0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v288 = a4;
  v286 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v255 = &v248 - v12;
  v254 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v253 = *(v254 - 8);
  v13 = *(v253 + 64);
  __chkstk_darwin(v254);
  v251 = &v248 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for NearbyProtoJoinResponse(0);
  v15 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v17 = &v248 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v260 = &v248 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v257 = &v248 - v22;
  v23 = type metadata accessor for String.Encoding();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v256 = &v248 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for NearbyProtoJoinRequest(0);
  v26 = *(*(v274 - 8) + 64);
  v27 = __chkstk_darwin(v274);
  v287 = &v248 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v275 = &v248 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v272 = &v248 - v32;
  v270 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v263 = *(v270 - 8);
  v33 = *(v263 + 64);
  __chkstk_darwin(v270);
  v258 = &v248 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v269 = &v248 - v37;
  v268 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v262 = *(v268 - 8);
  v38 = *(v262 + 64);
  v39 = __chkstk_darwin(v268);
  v259 = &v248 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v271 = (&v248 - v42);
  __chkstk_darwin(v41);
  v261 = &v248 - v43;
  v44 = type metadata accessor for BinaryDecodingOptions();
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v252 = &v248 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v267 = &v248 - v49;
  v50 = __chkstk_darwin(v48);
  v265 = &v248 - v51;
  v52 = __chkstk_darwin(v50);
  v266 = &v248 - v53;
  v54 = __chkstk_darwin(v52);
  v264 = &v248 - v55;
  __chkstk_darwin(v54);
  v278 = &v248 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMR);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  v280 = &v248 - v59;
  v281 = type metadata accessor for NearbyProtoSessionMessage(0);
  v279 = *(v281 - 8);
  v60 = v279[8];
  v61 = __chkstk_darwin(v281);
  v277 = &v248 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v61);
  v276 = &v248 - v64;
  __chkstk_darwin(v63);
  v66 = &v248 - v65;
  v67 = type metadata accessor for DispatchPredicate();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  __chkstk_darwin(v67);
  v71 = (&v248 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = *(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v71 = v72;
  (*(v68 + 104))(v71, enum case for DispatchPredicate.onQueue(_:), v67);
  v73 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  (*(v68 + 8))(v71, v67);
  if (v72)
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
  v74 = type metadata accessor for Logger();
  v75 = __swift_project_value_buffer(v74, static Log.host);
  v285 = a5;
  v76 = a5;
  v77 = v288;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v284 = v76;

  if (os_log_type_enabled(v78, v79))
  {
    v282 = v75;
    v250 = v17;
    v283 = v66;
    v80 = a1;
    v81 = a2;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v292 = v84;
    *v82 = 136315394;
    v85 = a6;
    if (v77)
    {
      *&v289 = v286;
      *(&v289 + 1) = v77;

      v86 = String.init<A>(reflecting:)();
      v88 = v87;
    }

    else
    {
      v86 = 7104878;
      v88 = 0xE300000000000000;
    }

    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v292);

    *(v82 + 4) = v90;
    *(v82 + 12) = 2112;
    v92 = v284;
    v91 = v285;
    *(v82 + 14) = v284;
    *v83 = v91;
    v93 = v92;
    _os_log_impl(&_mh_execute_header, v78, v79, "Handling incoming data from: %s context: %@", v82, 0x16u);
    outlined destroy of Any?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v84);

    a2 = v81;
    a1 = v80;
    v75 = v282;
    v66 = v283;
    a6 = v85;
    v17 = v250;
    v77 = v288;
    v89 = v287;
    if (v288)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v89 = v287;
    if (v77)
    {
LABEL_10:
      v77 = String._bridgeToObjectiveC()();
    }
  }

  v94 = IDSCopyAddressDestinationForDestination();

  v95 = IDSCopyRawAddressForDestination();
  if (!v95)
  {
    return;
  }

  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  if (String.count.getter() < 1 || a2 >> 60 == 15)
  {

    return;
  }

  v250 = v96;
  v99 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v100 = v285;
    if (v99 != 2)
    {
      goto LABEL_33;
    }

    v102 = *(a1 + 16);
    v101 = *(a1 + 24);
    v103 = v101 - v102;
    if (!__OFSUB__(v101, v102))
    {
LABEL_26:
      outlined copy of Data._Representation(a1, a2);
      if (v103 >= 1)
      {
        goto LABEL_27;
      }

LABEL_33:

      outlined consume of Data?(a1, a2);
      return;
    }

    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_107:
      v243 = v255;
      (*(v253 + 56))(v255, 0, 1, v254);
      v244 = outlined init with take of NearbyProtoSessionMessage(v243, v251, type metadata accessor for NearbyProtoJoinResponse.Content);
      if ((*((*a2 & *v281) + 0x88))(v244))
      {
        v246 = v245;
        ObjectType = swift_getObjectType();
        (*(v246 + 32))(v281, &protocol witness table for NearbyIDSServiceController, v251, ObjectType, v246);
        swift_unknownObjectRelease();
      }

      outlined consume of Data._Representation(v89, v98);
      outlined consume of Data?(v280, v278);
      outlined destroy of NearbyProtoConnectionResponse.Content(v251, type metadata accessor for NearbyProtoJoinResponse.Content);
      v241 = type metadata accessor for NearbyProtoJoinResponse;
      v242 = v17;
      goto LABEL_105;
    }

    v103 = HIDWORD(a1) - a1;
    goto LABEL_26;
  }

  v100 = v285;
  if (v99)
  {
    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v100)
  {
    __break(1u);
    goto LABEL_111;
  }

  v104 = [v284 toID];
  v105 = IDSCopyAddressDestinationForDestination();

  v106 = IDSCopyRawAddressForDestination();
  if (!v106)
  {
    goto LABEL_35;
  }

  v283 = v66;
  v107 = a2;
  v108 = a1;
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  v112 = HIBYTE(v111) & 0xF;
  v248 = v109;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v112 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (!v112)
  {

    a1 = v108;
    a2 = v107;
LABEL_35:

    v117 = v284;
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v289 = v121;
      *v120 = 136315138;
      v292 = v117;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSMessageContext, IDSMessageContext_ptr);
      v122 = v117;
      v123 = String.init<A>(reflecting:)();
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v289);

      *(v120 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v118, v119, "Failed to find toID for message: %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v121);
    }

    outlined consume of Data?(a1, a2);

    return;
  }

  v113 = v111;
  v249 = v98;
  v282 = v75;
  v291 = 0;
  v289 = 0u;
  v290 = 0u;
  v114 = v108;
  outlined copy of Data._Representation(v108, v107);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
  v115 = v280;
  v116 = v281;
  Message.init(serializedData:extensions:partial:options:)();
  v278 = v107;
  (v279[7])(v115, 0, 1, v116);
  v126 = v283;
  outlined init with take of NearbyProtoSessionMessage(v115, v283, type metadata accessor for NearbyProtoSessionMessage);
  v127 = v126 + *(v116 + 24);
  if (*(v127 + 9) & 1) == 0 && (*(v127 + 8))
  {
    v128 = *v127;
    if (v128 > 2)
    {
      if (v128 == 3)
      {

        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&_mh_execute_header, v158, v159, "Handling connection request message", v160, 2u);
        }

        v161 = (v126 + *(v281 + 28));
        v162 = *v161;
        v163 = v161[1];
        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        outlined copy of Data?(v162, v163);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest);
        v164 = v269;
        v165 = v268;
        Message.init(serializedData:extensions:partial:options:)();
        v166 = v271;
        v281 = a6;
        (*(v262 + 56))(v164, 0, 1, v165);
        v175 = v261;
        outlined init with take of NearbyProtoSessionMessage(v164, v261, type metadata accessor for NearbyProtoConnectionRequest);
        outlined init with copy of NearbyProtoJoinRequest.Content(v175, v166, type metadata accessor for NearbyProtoConnectionRequest);
        v176 = v259;
        outlined init with copy of NearbyProtoJoinRequest.Content(v175, v259, type metadata accessor for NearbyProtoConnectionRequest);
        v177 = Logger.logObject.getter();
        v178 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          *&v289 = swift_slowAlloc();
          *v179 = 136315394;
          v180 = *v166;
          v181 = v166[1];

          outlined destroy of NearbyProtoConnectionResponse.Content(v166, type metadata accessor for NearbyProtoConnectionRequest);
          v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v181, &v289);

          *(v179 + 4) = v182;
          *(v179 + 12) = 2080;
          v183 = *(v176 + 16);
          v184 = *(v176 + 24);

          v175 = v261;
          outlined destroy of NearbyProtoConnectionResponse.Content(v176, type metadata accessor for NearbyProtoConnectionRequest);
          v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v184, &v289);
          v126 = v283;

          *(v179 + 14) = v185;
          _os_log_impl(&_mh_execute_header, v177, v178, "Got connection request: %s from: %s", v179, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          outlined destroy of NearbyProtoConnectionResponse.Content(v176, type metadata accessor for NearbyProtoConnectionRequest);
          v186 = outlined destroy of NearbyProtoConnectionResponse.Content(v166, type metadata accessor for NearbyProtoConnectionRequest);
        }

        v225 = v281;
        if ((*((swift_isaMask & *v281) + 0x88))(v186))
        {
          v227 = v226;
          v228 = swift_getObjectType();
          (*(v227 + 8))(v225, &protocol witness table for NearbyIDSServiceController, v175, v228, v227);
          swift_unknownObjectRelease();
        }

        outlined consume of Data?(v108, v278);
        v206 = type metadata accessor for NearbyProtoConnectionRequest;
        v207 = v175;
        goto LABEL_97;
      }

      if (v128 == 4)
      {

        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&_mh_execute_header, v136, v137, "Handling connection response", v138, 2u);
        }

        v139 = (v126 + *(v281 + 28));
        v140 = *v139;
        v141 = v139[1];
        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        outlined copy of Data?(v140, v141);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v142 = v272;
        v143 = v270;
        Message.init(serializedData:extensions:partial:options:)();
        (*(v263 + 56))(v142, 0, 1, v143);
        v200 = v258;
        v201 = outlined init with take of NearbyProtoSessionMessage(v142, v258, type metadata accessor for NearbyProtoConnectionResponse.Content);
        if ((*((swift_isaMask & *a6) + 0x88))(v201))
        {
          v204 = v203;
          v205 = swift_getObjectType();
          (*(v204 + 16))(a6, &protocol witness table for NearbyIDSServiceController, v200, v205, v204);
          swift_unknownObjectRelease();
        }

        outlined consume of Data?(v108, v278);
        v206 = type metadata accessor for NearbyProtoConnectionResponse.Content;
        v207 = v200;
        goto LABEL_97;
      }
    }

    else if (v128)
    {
      if (v128 == 1)
      {
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "Handling join request", v131, 2u);
          v89 = v287;
        }

        v132 = (v126 + *(v281 + 28));
        v133 = *v132;
        v134 = v132[1];
        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        outlined copy of Data?(v133, v134);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);
        v135 = v275;
        Message.init(serializedData:extensions:partial:options:)();
        outlined init with copy of NearbyProtoJoinRequest.Content(v135, v89, type metadata accessor for NearbyProtoJoinRequest);
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v187, v188))
        {
          v280 = v114;
          v281 = a6;
          v189 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          v292 = v279;
          *v189 = 136315138;
          v190 = (v89 + *(v274 + 20));
          v191 = v190[1];
          if (v191 >> 60 == 15)
          {
            v192 = 0;
          }

          else
          {
            v192 = *v190;
          }

          if (v191 >> 60 == 15)
          {
            v193 = 0xC000000000000000;
          }

          else
          {
            v193 = v190[1];
          }

          outlined copy of Data?(*v190, v191);
          static String.Encoding.utf8.getter();
          v194 = String.init(data:encoding:)();
          v196 = v195;
          outlined consume of Data._Representation(v192, v193);
          if (v196)
          {
            *&v289 = v194;
            *(&v289 + 1) = v196;
            v197 = String.init<A>(reflecting:)();
            v199 = v198;
          }

          else
          {
            v197 = 7104878;
            v199 = 0xE300000000000000;
          }

          outlined destroy of NearbyProtoConnectionResponse.Content(v287, type metadata accessor for NearbyProtoJoinRequest);
          v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v199, &v292);

          *(v189 + 4) = v229;
          _os_log_impl(&_mh_execute_header, v187, v188, "Attempting to decrypt data with publicKey: %s", v189, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v279);

          v114 = v280;
          a6 = v281;
          v135 = v275;
        }

        else
        {

          outlined destroy of NearbyProtoConnectionResponse.Content(v89, type metadata accessor for NearbyProtoJoinRequest);
        }

        v230 = v260;
        v231 = (*((swift_isaMask & **(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController)) + 0xC8))(v260, v135, v248, v111);
        v232 = v278;
        v233 = v231;
        v235 = v234;
        v236 = outlined init with take of NearbyProtoSessionMessage(v230, v257, type metadata accessor for NearbyProtoJoinRequest.Content);
        v237 = a6;
        if (!(*((swift_isaMask & *a6) + 0x88))(v236))
        {
          outlined consume of Data._Representation(v233, v235);

          goto LABEL_104;
        }

        if (v288)
        {
          v239 = v238;
          v240 = swift_getObjectType();

          (*(v239 + 24))(v237, &protocol witness table for NearbyIDSServiceController, v257, v286, v288, v248, v113, v233, v235, v240, v239);
          outlined consume of Data._Representation(v233, v235);

          swift_unknownObjectRelease();
LABEL_104:
          outlined consume of Data?(v114, v232);
          outlined destroy of NearbyProtoConnectionResponse.Content(v257, type metadata accessor for NearbyProtoJoinRequest.Content);
          v241 = type metadata accessor for NearbyProtoJoinRequest;
          v242 = v275;
LABEL_105:
          outlined destroy of NearbyProtoConnectionResponse.Content(v242, v241);
          outlined destroy of NearbyProtoConnectionResponse.Content(v283, type metadata accessor for NearbyProtoSessionMessage);
          return;
        }

LABEL_111:
        __break(1u);
        return;
      }

      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&_mh_execute_header, v167, v168, "Handling join response", v169, 2u);
      }

      v170 = (v126 + *(v281 + 28));
      v171 = *v170;
      v172 = v170[1];
      v291 = 0;
      v289 = 0u;
      v290 = 0u;
      outlined copy of Data?(v171, v172);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);
      v173 = v273;
      v174 = Message.init(serializedData:extensions:partial:options:)();
      v280 = v108;
      a2 = &swift_isaMask;
      v208 = (*((swift_isaMask & *a6) + 0xB8))(v174);
      v209 = v208;
      if (*(v208 + 16))
      {
        v210 = specialized __RawDictionaryStorage.find<A>(_:)(v250, v249);
        if (v211)
        {
          v212 = v210;
          v281 = a6;

          v213 = *(*(v209 + 56) + 8 * v212);

          v214 = &v17[*(v173 + 20)];
          v215 = v214[1];
          if (v215 >> 60 == 15)
          {
            v216 = 0;
          }

          else
          {
            v216 = *v214;
          }

          if (v215 >> 60 == 15)
          {
            v217 = 0xC000000000000000;
          }

          else
          {
            v217 = v214[1];
          }

          v218 = *(*v213 + 152);
          outlined copy of Data?(*v214, v215);
          v89 = v218(v216, v217);
          v98 = v219;
          outlined consume of Data._Representation(v216, v217);
          v291 = 0;
          v289 = 0u;
          v290 = 0u;
          outlined copy of Data._Representation(v89, v98);
          BinaryDecodingOptions.init()();
          lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);
          Message.init(serializedData:extensions:partial:options:)();
          goto LABEL_107;
        }
      }

      v220 = v249;

      v221 = Logger.logObject.getter();
      v222 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        *&v289 = swift_slowAlloc();
        *v223 = 136315394;
        *(v223 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000046, 0x80000001000D0200, &v289);
        *(v223 + 12) = 2080;
        v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v250, v220, &v289);

        *(v223 + 14) = v224;
        _os_log_impl(&_mh_execute_header, v221, v222, "%s No credentials to parse join response for: %s", v223, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      outlined consume of Data?(v280, v278);
      v206 = type metadata accessor for NearbyProtoJoinResponse;
      v207 = v17;
LABEL_97:
      outlined destroy of NearbyProtoConnectionResponse.Content(v207, v206);
      outlined destroy of NearbyProtoConnectionResponse.Content(v126, type metadata accessor for NearbyProtoSessionMessage);
      return;
    }
  }

  v144 = v276;
  outlined init with copy of NearbyProtoJoinRequest.Content(v126, v276, type metadata accessor for NearbyProtoSessionMessage);
  v145 = v277;
  outlined init with copy of NearbyProtoJoinRequest.Content(v126, v277, type metadata accessor for NearbyProtoSessionMessage);
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v150 = v144;
    v151 = v149;
    *&v289 = v149;
    *v148 = 134218242;
    v152 = v150 + *(v281 + 24);
    if (*(v152 + 9))
    {
      v153 = 0;
    }

    else
    {
      v153 = *v152;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content(v150, type metadata accessor for NearbyProtoSessionMessage);
    *(v148 + 4) = v153;
    *(v148 + 12) = 2080;
    v154 = Message.debugDescription.getter();
    v156 = v155;
    outlined destroy of NearbyProtoConnectionResponse.Content(v145, type metadata accessor for NearbyProtoSessionMessage);
    v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, &v289);

    *(v148 + 14) = v157;
    _os_log_impl(&_mh_execute_header, v146, v147, "Not able to handle message type: %ld, message: %s", v148, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v151);

    outlined consume of Data?(v108, v278);
    outlined destroy of NearbyProtoConnectionResponse.Content(v283, type metadata accessor for NearbyProtoSessionMessage);
  }

  else
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v144, type metadata accessor for NearbyProtoSessionMessage);

    outlined consume of Data?(v108, v278);
    outlined destroy of NearbyProtoConnectionResponse.Content(v145, type metadata accessor for NearbyProtoSessionMessage);
    outlined destroy of NearbyProtoConnectionResponse.Content(v126, type metadata accessor for NearbyProtoSessionMessage);
  }
}

void specialized NearbyIDSServiceController.service(_:account:incomingData:fromID:context:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = [objc_allocWithZone(CPFeatureFlags) init];
  v14 = [v13 nearbyInvitationsBlastDoorEnabled];

  if (!v14)
  {
    if (a1)
    {
      v15 = a1;
      _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC21handleIncomingMessage_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0O0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(a2, a3, a4, a5, a6, v6);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = a1;
  _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC30handleIncomingMessageBlastDoor_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0Q0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(a2, a3, a4, a5, a6, v6);
LABEL_6:
}

void specialized NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t (*a6)(uint64_t a1))
{
  v306 = a5;
  v304 = a3;
  v291 = type metadata accessor for NearbyProtoJoinResponse(0);
  v10 = *(*(v291 - 8) + 64);
  __chkstk_darwin(v291);
  v292 = &v271 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v285 = *(v282 - 8);
  v16 = *(v285 + 64);
  v17 = __chkstk_darwin(v282);
  v278 = &v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v276 = &v271 - v20;
  v277 = v21;
  __chkstk_darwin(v19);
  v280 = &v271 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v281 = &v271 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v286 = &v271 - v28;
  v29 = __chkstk_darwin(v27);
  v283 = &v271 - v30;
  __chkstk_darwin(v29);
  v284 = &v271 - v31;
  v32 = type metadata accessor for String.Encoding();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v287 = &v271 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for NearbyProtoJoinRequest(0);
  v35 = *(*(v293 - 8) + 64);
  v36 = __chkstk_darwin(v293);
  v288 = &v271 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v294 = &v271 - v38;
  v39 = type metadata accessor for BinaryDecodingOptions();
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v290 = &v271 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v289 = &v271 - v44;
  __chkstk_darwin(v43);
  v300 = &v271 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMR);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v305 = &v271 - v48;
  v302 = type metadata accessor for NearbyProtoSessionMessage(0);
  v301 = *(v302 - 8);
  v49 = *(v301 + 64);
  v50 = __chkstk_darwin(v302);
  v295 = &v271 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v297 = &v271 - v53;
  __chkstk_darwin(v52);
  v55 = &v271 - v54;
  v56 = type metadata accessor for DispatchPredicate();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  v60 = (&v271 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = a6;
  v61 = *(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v60 = v61;
  (*(v57 + 104))(v60, enum case for DispatchPredicate.onQueue(_:), v56);
  v279 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  (*(v57 + 8))(v60, v56);
  if (v61)
  {
    v274 = v12;
    v275 = v15;
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
  v62 = type metadata accessor for Logger();
  v63 = __swift_project_value_buffer(v62, static Log.host);
  v64 = v306;

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v303 = v64;

  if (os_log_type_enabled(v65, v66))
  {
    v299 = v63;
    v296 = v55;
    v67 = a1;
    v68 = a2;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v311 = v71;
    *v69 = 136315394;
    if (a4)
    {
      *&aBlock = v304;
      *(&aBlock + 1) = a4;

      v72 = String.init<A>(reflecting:)();
      v74 = v73;
    }

    else
    {
      v72 = 7104878;
      v74 = 0xE300000000000000;
    }

    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v311);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2112;
    v76 = v303;
    *(v69 + 14) = v303;
    *v70 = v306;
    v77 = v76;
    _os_log_impl(&_mh_execute_header, v65, v66, "Handling incoming data from: %s context: %@", v69, 0x16u);
    outlined destroy of Any?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v71);

    a2 = v68;
    a1 = v67;
    v55 = v296;
    v63 = v299;
  }

  else
  {
  }

  if (a4)
  {
    v78 = String._bridgeToObjectiveC()();
  }

  else
  {
    v78 = 0;
  }

  v79 = IDSCopyAddressDestinationForDestination();

  v80 = IDSCopyRawAddressForDestination();
  if (!v80)
  {
    return;
  }

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (String.count.getter() < 1 || a2 >> 60 == 15)
  {

    return;
  }

  v84 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v84 != 2)
    {
      goto LABEL_33;
    }

    v86 = *(a1 + 16);
    v85 = *(a1 + 24);
    v87 = v85 - v86;
    if (!__OFSUB__(v85, v86))
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_121;
    }

    v87 = HIDWORD(a1) - a1;
LABEL_26:
    outlined copy of Data._Representation(a1, a2);
    if (v87 < 1)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v84)
  {
    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v306)
  {
    __break(1u);
    goto LABEL_134;
  }

  v88 = [v303 toID];
  v89 = IDSCopyAddressDestinationForDestination();

  v90 = IDSCopyRawAddressForDestination();
  if (v90)
  {
    v273 = v81;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v92;

    v93 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v93 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      v272 = v91;
      v311 = a1;
      v312 = a2;
      v309 = 0;
      aBlock = 0u;
      v308 = 0u;
      outlined copy of Data._Representation(a1, a2);
      BinaryDecodingOptions.init()();
      v94 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);
      v95 = v302;
      Message.init<A>(serializedBytes:extensions:partial:options:)();
      v300 = v94;
      v299 = v63;
      v271 = a4;
      v105 = v305;
      (*(v301 + 56))(v305, 0, 1, v95);
      outlined init with take of NearbyProtoSessionMessage(v105, v55, type metadata accessor for NearbyProtoSessionMessage);
      v107 = *(v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 24);
      v106 = *(v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 32);
      __swift_project_boxed_opaque_existential_1((v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service), v107);
      (*(*(v106 + 8) + 8))(v107);
      if (v108)
      {
        v109 = objc_allocWithZone(IDSServiceProperties);
        v110 = String._bridgeToObjectiveC()();

        v111 = [v109 initWithServiceIdentifier:v110];

        if (v111)
        {
          v112 = v302;
          v113 = &v55[*(v302 + 24)];
          v114 = v297;
          if (v113[9] & 1) == 0 && (v113[8])
          {
            v115 = *v113;
            if (v115 <= 2)
            {
              if (v115)
              {
                if (v115 != 1)
                {
                  v296 = v55;

                  v161 = Logger.logObject.getter();
                  v162 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v161, v162))
                  {
                    v163 = swift_slowAlloc();
                    *v163 = 0;
                    _os_log_impl(&_mh_execute_header, v161, v162, "Handling join response", v163, 2u);
                  }

                  v164 = &v296[*(v112 + 28)];
                  v165 = *v164;
                  v166 = v164[1];
                  if (v166 >> 60 == 15)
                  {
                    v167 = 0;
                  }

                  else
                  {
                    v167 = *v164;
                  }

                  v168 = 0xC000000000000000;
                  if (v166 >> 60 != 15)
                  {
                    v168 = v166;
                  }

                  v311 = v167;
                  v312 = v168;
                  v309 = 0;
                  aBlock = 0u;
                  v308 = 0u;
                  outlined copy of Data?(v165, v166);
                  BinaryDecodingOptions.init()();
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);
                  v169 = v292;
                  v170 = v291;
                  v171 = Message.init<A>(serializedBytes:extensions:partial:options:)();
                  v188 = (*((swift_isaMask & *v298) + 0xB8))(v171);
                  v189 = v188;
                  if (!*(v188 + 16) || (v190 = specialized __RawDictionaryStorage.find<A>(_:)(v273, v83), (v191 & 1) == 0))
                  {

                    v199 = Logger.logObject.getter();
                    v200 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v199, v200))
                    {
                      v201 = swift_slowAlloc();
                      *&aBlock = swift_slowAlloc();
                      *v201 = 136315394;
                      *(v201 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, &aBlock);
                      *(v201 + 12) = 2080;
                      v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v83, &aBlock);

                      *(v201 + 14) = v202;
                      _os_log_impl(&_mh_execute_header, v199, v200, "%s No credentials to parse join response for: %s", v201, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    outlined consume of Data?(a1, a2);
                    v236 = type metadata accessor for NearbyProtoJoinResponse;
                    v203 = v169;
                    goto LABEL_132;
                  }

                  v192 = v190;
                  v305 = v111;

                  v193 = *(*(v189 + 56) + 8 * v192);

                  v194 = &v169[*(v170 + 20)];
                  v195 = v194[1];
                  if (v195 >> 60 == 15)
                  {
                    v196 = 0;
                  }

                  else
                  {
                    v196 = *v194;
                  }

                  if (v195 >> 60 == 15)
                  {
                    v197 = 0xC000000000000000;
                  }

                  else
                  {
                    v197 = v194[1];
                  }

                  v198 = *(*v193 + 152);
                  outlined copy of Data?(*v194, v195);
                  v231 = v198(v196, v197);
                  v233 = v232;
                  outlined consume of Data._Representation(v196, v197);
                  v234 = v298;
                  v235 = v305;
                  specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v231, v233, 2, 1, v305, v234);

                  outlined consume of Data._Representation(v231, v233);

                  outlined consume of Data?(a1, a2);
                  v236 = type metadata accessor for NearbyProtoJoinResponse;
                  v237 = &aBlock + 8;
LABEL_131:
                  v203 = *(v237 - 32);
LABEL_132:
                  outlined destroy of NearbyProtoConnectionResponse.Content(v203, v236);
                  outlined destroy of NearbyProtoConnectionResponse.Content(v296, type metadata accessor for NearbyProtoSessionMessage);
                  return;
                }

                v116 = v302;

                v117 = Logger.logObject.getter();
                v118 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  *v119 = 0;
                  _os_log_impl(&_mh_execute_header, v117, v118, "Handling join request", v119, 2u);
                  v116 = v302;
                }

                v120 = &v55[*(v116 + 28)];
                v121 = *v120;
                v122 = v120[1];
                if (v122 >> 60 == 15)
                {
                  v123 = 0;
                }

                else
                {
                  v123 = *v120;
                }

                v124 = 0xC000000000000000;
                if (v122 >> 60 != 15)
                {
                  v124 = v122;
                }

                v311 = v123;
                v312 = v124;
                v309 = 0;
                aBlock = 0u;
                v308 = 0u;
                outlined copy of Data?(v121, v122);
                BinaryDecodingOptions.init()();
                lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);
                v125 = v294;
                Message.init<A>(serializedBytes:extensions:partial:options:)();
                v305 = v111;
                v301 = a1;
                v302 = a2;
                v172 = v288;
                outlined init with copy of NearbyProtoJoinRequest.Content(v125, v288, type metadata accessor for NearbyProtoJoinRequest);
                v173 = Logger.logObject.getter();
                v174 = static os_log_type_t.default.getter();
                v175 = os_log_type_enabled(v173, v174);
                v296 = v55;
                if (v175)
                {
                  v176 = swift_slowAlloc();
                  v177 = swift_slowAlloc();
                  v311 = v177;
                  *v176 = 136315138;
                  v178 = (v172 + *(v293 + 20));
                  v179 = v178[1];
                  if (v179 >> 60 == 15)
                  {
                    v180 = 0;
                  }

                  else
                  {
                    v180 = *v178;
                  }

                  if (v179 >> 60 == 15)
                  {
                    v181 = 0xC000000000000000;
                  }

                  else
                  {
                    v181 = v178[1];
                  }

                  outlined copy of Data?(*v178, v179);
                  static String.Encoding.utf8.getter();
                  v182 = String.init(data:encoding:)();
                  v184 = v183;
                  outlined consume of Data._Representation(v180, v181);
                  if (v184)
                  {
                    *&aBlock = v182;
                    *(&aBlock + 1) = v184;
                    v185 = String.init<A>(reflecting:)();
                    v187 = v186;
                  }

                  else
                  {
                    v185 = 7104878;
                    v187 = 0xE300000000000000;
                  }

                  outlined destroy of NearbyProtoConnectionResponse.Content(v288, type metadata accessor for NearbyProtoJoinRequest);
                  v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, &v311);

                  *(v176 + 4) = v204;
                  _os_log_impl(&_mh_execute_header, v173, v174, "Attempting to decrypt data with publicKey: %s", v176, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v177);

                  v125 = v294;
                }

                else
                {

                  outlined destroy of NearbyProtoConnectionResponse.Content(v172, type metadata accessor for NearbyProtoJoinRequest);
                }

                v205 = v298;
                v206 = v272;
                v207 = (*((swift_isaMask & **(v298 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController)) + 0xC0))(v125, v272, v81);
                v83 = v208;
                a4 = v209;
                v300 = v207;
                v303 = v210;
                v211 = swift_allocObject();
                v212 = v304;
                v211[2] = v205;
                v211[3] = v212;
                v211[4] = v271;
                v211[5] = v206;
                v211[6] = v81;
                v211[7] = v83;
                v211[8] = a4;
                v213 = objc_opt_self();

                v214 = v205;

                outlined copy of Data._Representation(v83, a4);

                v306 = v214;

                outlined copy of Data._Representation(v83, a4);
                v299 = [v213 getBlastDoorSharedConnection];
                if (v299)
                {
                  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                  v215 = v305;
                  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
                  v217 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v215 command:isa];

                  if (v217)
                  {
                    [v217 setPayloadType:1];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1000CA970;
                    *(inited + 32) = 1835365481;
                    *(inited + 40) = 0xE400000000000000;
                    *(inited + 48) = 1;
                    *(inited + 72) = &type metadata for Int;
                    *(inited + 80) = 0x64616F6C796170;
                    *(inited + 120) = &type metadata for Data;
                    *(inited + 88) = 0xE700000000000000;
                    v219 = v300;
                    v220 = v303;
                    *(inited + 96) = v300;
                    *(inited + 104) = v220;
                    outlined copy of Data._Representation(v219, v220);
                    v221 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
                    swift_arrayDestroy();
                    specialized _dictionaryUpCast<A, B, C, D>(_:)(v221);

                    v222 = Dictionary._bridgeToObjectiveC()().super.isa;

                    v223 = swift_allocObject();
                    *(v223 + 16) = 1;
                    *(v223 + 24) = 1;
                    *(v223 + 32) = partial apply for closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
                    *(v223 + 40) = v211;
                    v309 = _s44com_apple_SharePlay_NearbyInvitationsService0eF25BlastDoorConnectionHelperV6defuse_4item10completiony10Foundation4DataV_AA0e5ProtoE18SessionMessageTypeOyxSg_s5Error_pSgtct21InternalSwiftProtobuf0S0RzlFySDys11AnyHashableVypGSg_So09IDSClientsT0VANtYbcfU_AA0eQ11JoinRequestV7ContentV_Tg5TA_0;
                    v310 = v223;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v308 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
                    *(&v308 + 1) = &block_descriptor_41;
                    v224 = _Block_copy(&aBlock);

                    v225 = v299;
                    [v299 diffuseClientMessage:v222 context:v217 withCompletionBlock:v224];
                    _Block_release(v224);

                    outlined consume of Data._Representation(v300, v220);

LABEL_130:
                    outlined consume of Data._Representation(v83, a4);
                    outlined consume of Data._Representation(v83, a4);
                    outlined consume of Data?(v301, v302);
                    v236 = type metadata accessor for NearbyProtoJoinRequest;
                    v237 = &v308 + 8;
                    goto LABEL_131;
                  }

                  v238 = v285;
                  v239 = v286;
                  v240 = v282;
                  (*(v285 + 56))(v286, 1, 1, v282);
                  v241 = v239;
                  v242 = v281;
                  outlined init with copy of (String, Any)(v241, v281, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  if ((*(v238 + 48))(v242, 1, v240) == 1)
                  {
                    outlined destroy of Any?(v281, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  }

                  else
                  {
                    v298 = type metadata accessor for NearbyProtoJoinRequest.Content;
                    v257 = v276;
                    outlined init with take of NearbyProtoSessionMessage(v281, v276, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v258 = v278;
                    outlined init with copy of NearbyProtoJoinRequest.Content(v257, v278, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v259 = (*(v285 + 80) + 24) & ~*(v285 + 80);
                    v260 = (v277 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v261 = (v260 + 23) & 0xFFFFFFFFFFFFFFF8;
                    v262 = swift_allocObject();
                    *(v262 + 16) = v306;
                    outlined init with take of NearbyProtoSessionMessage(v258, v262 + v259, v298);
                    v263 = (v262 + v260);
                    v264 = v271;
                    *v263 = v304;
                    v263[1] = v264;
                    v265 = (v262 + v261);
                    *v265 = v272;
                    v265[1] = v81;
                    v266 = (v262 + ((v261 + 23) & 0xFFFFFFFFFFFFFFF8));
                    *v266 = v83;
                    v266[1] = a4;
                    v309 = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                    v310 = v262;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v308 = thunk for @escaping @callee_guaranteed () -> ();
                    *(&v308 + 1) = &block_descriptor_35;
                    _Block_copy(&aBlock);
                    v311 = _swiftEmptyArrayStorage;

                    v267 = v306;

                    outlined copy of Data._Representation(v83, a4);
                    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    v268 = type metadata accessor for DispatchWorkItem();
                    v269 = *(v268 + 48);
                    v270 = *(v268 + 52);
                    swift_allocObject();
                    DispatchWorkItem.init(flags:block:)();

                    OS_dispatch_queue.async(execute:)();

                    outlined destroy of NearbyProtoConnectionResponse.Content(v276, type metadata accessor for NearbyProtoJoinRequest.Content);
                  }

LABEL_129:
                  outlined destroy of Any?(v286, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);

                  outlined consume of Data._Representation(v300, v303);

                  goto LABEL_130;
                }

LABEL_121:
                v226 = v285;
                v227 = v284;
                v228 = v282;
                (*(v285 + 56))(v284, 1, 1, v282);
                v229 = v227;
                v230 = v283;
                outlined init with copy of (String, Any)(v229, v283, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                if ((*(v226 + 48))(v230, 1, v228) == 1)
                {
                  outlined destroy of Any?(v283, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                }

                else
                {
                  v299 = type metadata accessor for NearbyProtoJoinRequest.Content;
                  v243 = v280;
                  outlined init with take of NearbyProtoSessionMessage(v283, v280, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v244 = v278;
                  outlined init with copy of NearbyProtoJoinRequest.Content(v243, v278, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v245 = (*(v285 + 80) + 24) & ~*(v285 + 80);
                  v246 = (v277 + v245 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v247 = (v246 + 23) & 0xFFFFFFFFFFFFFFF8;
                  v248 = swift_allocObject();
                  *(v248 + 16) = v306;
                  outlined init with take of NearbyProtoSessionMessage(v244, v248 + v245, v299);
                  v249 = (v248 + v246);
                  v250 = v271;
                  *v249 = v304;
                  v249[1] = v250;
                  v251 = (v248 + v247);
                  *v251 = v272;
                  v251[1] = v81;
                  v252 = (v248 + ((v247 + 23) & 0xFFFFFFFFFFFFFFF8));
                  *v252 = v83;
                  v252[1] = a4;
                  v309 = partial apply for closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
                  v310 = v248;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v308 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v308 + 1) = &block_descriptor_28;
                  _Block_copy(&aBlock);
                  v311 = _swiftEmptyArrayStorage;

                  v253 = v306;

                  outlined copy of Data._Representation(v83, a4);
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v254 = type metadata accessor for DispatchWorkItem();
                  v255 = *(v254 + 48);
                  v256 = *(v254 + 52);
                  swift_allocObject();
                  DispatchWorkItem.init(flags:block:)();

                  OS_dispatch_queue.async(execute:)();

                  outlined destroy of NearbyProtoConnectionResponse.Content(v280, type metadata accessor for NearbyProtoJoinRequest.Content);
                }

                v286 = v284;
                goto LABEL_129;
              }

              goto LABEL_66;
            }

            if (v115 == 3)
            {
              v305 = v111;
              v126 = v55;

              v153 = Logger.logObject.getter();
              v154 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                *v155 = 0;
                _os_log_impl(&_mh_execute_header, v153, v154, "Handling connection request message", v155, 2u);
              }

              v156 = (v126 + *(v112 + 28));
              v157 = *v156;
              v158 = v156[1];
              if (v158 >> 60 == 15)
              {
                v133 = 0;
              }

              else
              {
                v133 = *v156;
              }

              if (v158 >> 60 == 15)
              {
                v134 = 0xC000000000000000;
              }

              else
              {
                v134 = v156[1];
              }

              v159 = v298;
              outlined copy of Data?(v157, v158);
              v160 = v305;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v133, v134, 3, 1, v305, v159);

              goto LABEL_83;
            }

            if (v115 == 4)
            {
              v305 = v111;
              v126 = v55;

              v127 = Logger.logObject.getter();
              v128 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                *v129 = 0;
                _os_log_impl(&_mh_execute_header, v127, v128, "Handling connection response", v129, 2u);
              }

              v130 = (v126 + *(v112 + 28));
              v131 = *v130;
              v132 = v130[1];
              if (v132 >> 60 == 15)
              {
                v133 = 0;
              }

              else
              {
                v133 = *v130;
              }

              if (v132 >> 60 == 15)
              {
                v134 = 0xC000000000000000;
              }

              else
              {
                v134 = v130[1];
              }

              v135 = v298;
              outlined copy of Data?(v131, v132);
              v136 = v305;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v133, v134, 4, 1, v305, v135);

LABEL_83:
              outlined consume of Data._Representation(v133, v134);
              outlined consume of Data?(a1, a2);
              outlined destroy of NearbyProtoConnectionResponse.Content(v126, type metadata accessor for NearbyProtoSessionMessage);
              return;
            }
          }

LABEL_66:

          v137 = v55;
          outlined init with copy of NearbyProtoJoinRequest.Content(v55, v114, type metadata accessor for NearbyProtoSessionMessage);
          v138 = v295;
          outlined init with copy of NearbyProtoJoinRequest.Content(v55, v295, type metadata accessor for NearbyProtoSessionMessage);
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v296 = v137;
            v142 = v112;
            v143 = v141;
            v144 = swift_slowAlloc();
            v305 = v111;
            v145 = v144;
            *&aBlock = v144;
            *v143 = 134218242;
            v146 = v114 + *(v142 + 24);
            v147 = v114;
            if (*(v146 + 9))
            {
              v148 = 0;
            }

            else
            {
              v148 = *v146;
            }

            outlined destroy of NearbyProtoConnectionResponse.Content(v147, type metadata accessor for NearbyProtoSessionMessage);
            *(v143 + 4) = v148;
            *(v143 + 12) = 2080;
            v149 = Message.debugDescription.getter();
            v151 = v150;
            outlined destroy of NearbyProtoConnectionResponse.Content(v138, type metadata accessor for NearbyProtoSessionMessage);
            v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, &aBlock);

            *(v143 + 14) = v152;
            _os_log_impl(&_mh_execute_header, v139, v140, "Not able to handle message type: %ld, message: %s", v143, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v145);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v296, type metadata accessor for NearbyProtoSessionMessage);
          }

          else
          {
            outlined destroy of NearbyProtoConnectionResponse.Content(v114, type metadata accessor for NearbyProtoSessionMessage);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v138, type metadata accessor for NearbyProtoSessionMessage);
            outlined destroy of NearbyProtoConnectionResponse.Content(v137, type metadata accessor for NearbyProtoSessionMessage);
          }

          return;
        }

        outlined destroy of NearbyProtoConnectionResponse.Content(v55, type metadata accessor for NearbyProtoSessionMessage);

LABEL_33:

        outlined consume of Data?(a1, a2);
        return;
      }

LABEL_134:
      __break(1u);
      return;
    }
  }

  v96 = v303;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *&aBlock = v100;
    *v99 = 136315138;
    v311 = v96;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSMessageContext, IDSMessageContext_ptr);
    v101 = v96;
    v102 = String.init<A>(reflecting:)();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &aBlock);

    *(v99 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v97, v98, "Failed to find toID for message: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
  }

  outlined consume of Data?(a1, a2);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)()
{
  v1 = *(type metadata accessor for NearbyProtoConnectionRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v0 + v2, v3);
}

uint64_t partial apply for closure #1 in closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t objectdestroy_24Tm()
{
  v1 = (type metadata accessor for NearbyProtoJoinRequest.Content(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = type metadata accessor for UnknownStorage();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = (v0 + v3 + v1[9]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v9, v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v11 + 8);

  v15 = *(v0 + v12 + 8);

  outlined consume of Data._Representation(*(v0 + v13), *(v0 + v13 + 8));

  return _swift_deallocObject(v0, v13 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)()
{
  v1 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v5, v0 + v2, v7, v8, v9, v10, v12, v13);
}

uint64_t outlined init with take of NearbyProtoSessionMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of NearbyProtoJoinRequest.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularBytesField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularBytesField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}