Swift::Int InvitationRequest.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InvitationRequest<A>.Errors()
{
  Hasher.init(_seed:)();
  InvitationRequest.Errors.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t InvitationRequest.displayName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InvitationRequest.displayName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t InvitationRequest.userInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t InvitationRequest.userInfo.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of Data?(v5, v6);
}

uint64_t InvitationRequest.invitationDisplayName.getter()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InvitationRequest.invitationUserInfo.getter()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t InvitationRequest.__allocating_init(remoteInvitationData:providerType:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  InvitationRequest.init(remoteInvitationData:providerType:displayName:)(a1, v8, a3, a4);
  return v7;
}

void *InvitationRequest.init(remoteInvitationData:providerType:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = 0;
  v4[5] = 0xF000000000000000;
  v4[6] = a1;
  swift_beginAccess();
  v4[2] = a3;
  v4[3] = a4;
  swift_beginAccess();
  v7 = v4[4];
  v8 = v4[5];
  *(v4 + 2) = xmmword_25B82C300;
  outlined consume of Data?(v7, v8);
  return v4;
}

void *InvitationRequest.__allocating_init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_allocObject();
  v10 = specialized InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(a1, a2, a3, a4, a5);
  outlined consume of Data?(a4, a5);
  return v10;
}

void *InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = specialized InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(a1, a2, a3, a4, a5);
  outlined consume of Data?(a4, a5);
  return v7;
}

uint64_t InvitationRequest.requestApproval()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](InvitationRequest.requestApproval(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = static NearbyInvitationsController.shared;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for InvitationJoinResponse();
  *v5 = v0;
  v5[1] = InvitationRequest.requestApproval();

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000011, 0x800000025B830D90, partial apply for closure #1 in InvitationRequest.requestApproval(), v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = InvitationRequest.requestApproval();
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = NearbyInvitationsController.createGroup(with:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void closure #1 in InvitationRequest.requestApproval()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  v13 = (*(v6 + 120))(v10);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v45 = v7;
    v17 = a2[6];
    v18 = (*(*a2 + 144))();
    v46 = a3;
    v20 = v19;
    v21 = type metadata accessor for InvitationApprovalRequest();
    v44 = a1;
    v22 = v21;
    v23 = objc_allocWithZone(v21);
    *&v23[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = v17;
    v24 = &v23[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
    *v24 = v15;
    *(v24 + 1) = v16;
    v25 = &v23[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo];
    *v25 = v18;
    v25[1] = v20;
    v47.receiver = v23;
    v47.super_class = v22;
    v26 = v17;
    v27 = objc_msgSendSuper2(&v47, sel_init);
    v28 = v45;
    (*(v8 + 16))(v12, v44, v45);
    v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = *(v6 + 80);
    *(v30 + 24) = *(v6 + 88);
    (*(v8 + 32))(v30 + v29, v12, v28);
    NearbyInvitationsController.requestApproval(with:completion:)(v27, partial apply for closure #1 in closure #1 in InvitationRequest.requestApproval(), v30);
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.client);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = *(v6 + 80);
      v37 = *(v6 + 88);
      type metadata accessor for InvitationRequest.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v38 = 1;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v39;
      *v35 = v39;
      _os_log_impl(&dword_25B7C4000, v32, v33, "Passed an invalid displayName to the provider %@", v34, 0xCu);
      outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v35, -1, -1);
      MEMORY[0x25F86FE20](v34, -1, -1);
    }

    else
    {

      v40 = *(v6 + 80);
      v41 = *(v6 + 88);
      type metadata accessor for InvitationRequest.Errors();
    }

    swift_getWitnessTable();
    v42 = swift_allocError();
    *v43 = 1;
    v48 = v42;
    CheckedContinuation.resume(throwing:)();
  }
}

id InvitationApprovalRequest.__allocating_init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = a1;
  v12 = &v11[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t closure #1 in closure #1 in InvitationRequest.requestApproval()(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    type metadata accessor for InvitationRequest.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v5 = 2;
    goto LABEL_3;
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t InvitationRequest.deinit()
{
  v1 = *(v0 + 24);

  outlined consume of Data?(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t InvitationRequest.__deallocating_deinit()
{
  InvitationRequest.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t Handle.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Handle.tokenDestination.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

NearbySessions::Handle __swiftcall Handle.init(handle:tokenDestination:)(Swift::String handle, Swift::String_optional tokenDestination)
{
  v2->value = handle;
  v2[1] = tokenDestination;
  result.tokenDestination = tokenDestination;
  result.handle = handle;
  return result;
}

uint64_t Handle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _StringGuts.grow(_:)(46);
  MEMORY[0x25F86F070](0xD000000000000016, 0x800000025B830DB0);
  MEMORY[0x25F86F070](v1, v2);
  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830DD0);
  if (v3)
  {

    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x25F86F070](v5, v7);

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Handle()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _StringGuts.grow(_:)(46);
  MEMORY[0x25F86F070](0xD000000000000016, 0x800000025B830DB0);
  MEMORY[0x25F86F070](v1, v2);
  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830DD0);
  if (v3)
  {

    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x25F86F070](v5, v7);

  return 0;
}

uint64_t NearbyInvitation.displayName.getter()
{
  v1 = *(v0 + direct field offset for NearbyInvitation.displayName);
  v2 = *(v0 + direct field offset for NearbyInvitation.displayName + 8);

  return v1;
}

uint64_t NearbyInvitation.userInfo.getter()
{
  v1 = *(v0 + direct field offset for NearbyInvitation.userInfo);
  outlined copy of Data?(v1, *(v0 + direct field offset for NearbyInvitation.userInfo + 8));
  return v1;
}

uint64_t NearbyInvitation.invitationData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyInvitationData(0);

  v3 = objc_allocWithZone(v2);
  v4 = specialized NearbyInvitationData.init<A>(from:)(v1);

  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x80))(v5);

  return v6;
}

id NearbyInvitationData.__allocating_init<A>(from:)(uint64_t a1)
{
  v1 = specialized NearbyInvitationData.__allocating_init<A>(from:)(a1);

  return v1;
}

Swift::Int NearbyInvitation.PendingMember.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

uint64_t NearbyInvitation.PendingMember.displayName.getter()
{
  v0 = specialized NearbyInvitation.PendingMember.displayName.getter();

  return v0;
}

uint64_t NearbyInvitation.PendingMember.joinRequestUserInfo.getter()
{
  v1 = *v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t NearbyInvitation.PendingMember.invitationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t key path getter for NearbyInvitation.PendingMember.invitation : <A>NearbyInvitation<A>.PendingMember@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 16);
  v8 = *(v6 - 8);
  v9 = type metadata accessor for NearbyInvitation.PendingMember();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v13, a1, v9);
  Strong = swift_weakLoadStrong();
  result = (*(v10 + 8))(v13, v9);
  *a4 = Strong;
  return result;
}

uint64_t NearbyInvitation.PendingMember.invitation.setter()
{
  swift_weakAssign();
}

uint64_t (*NearbyInvitation.PendingMember.invitation.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return NearbyInvitation.PendingMember.invitation.modify;
}

uint64_t NearbyInvitation.PendingMember.invitation.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_weakAssign();
}

uint64_t NearbyInvitation.PendingMember.description.getter()
{
  _StringGuts.grow(_:)(27);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](2108704, 0xE300000000000000);
  v2 = *v0;
  v3 = *(*v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName);
  v4 = *(*v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8);

  MEMORY[0x25F86F070](v3, v4);

  MEMORY[0x25F86F070](0xD000000000000010, 0x800000025B830DF0);
  v5 = [v2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x25F86F070](v6, v8);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 60;
}

uint64_t NearbyInvitation.PendingMember.init(joinRequest:invitation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_weakInit();
  v6 = *(a2 + direct field offset for NearbyInvitation.invitationHostInfo);
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x90);
  v8 = a1;
  v9 = v6;
  v7(v6);

  *a3 = v8;
  swift_weakAssign();
}

uint64_t static NearbyInvitation.PendingMember.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t NearbyInvitation.PendingMember.approve()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return NearbyInvitation.PendingMember.approve(userInfo:)(0, 0xF000000000000000, a1);
}

uint64_t NearbyInvitation.PendingMember.approve(userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](NearbyInvitation.PendingMember.approve(userInfo:), 0, 0);
}

uint64_t NearbyInvitation.PendingMember.approve(userInfo:)()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(*Strong + 264);
    v14 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = NearbyInvitation.PendingMember.approve(userInfo:);
    v6 = v0[5];
    v7 = v0[2];
    v8 = v0[3];

    return v14(v6, v7, v8);
  }

  else
  {
    v10 = v0[4];
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    type metadata accessor for NearbyInvitation.PendingMember.Errors();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = NearbyInvitation.PendingMember.approve(userInfo:);
  }

  else
  {
    v3 = NearbyInvitation.PendingMember.approve(userInfo:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t NearbyInvitation.PendingMember.reject()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](NearbyInvitation.PendingMember.reject(), 0, 0);
}

uint64_t NearbyInvitation.PendingMember.reject()()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(*Strong + 272);
    v12 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = NearbyInvitation.PendingMember.reject();
    v6 = v0[3];

    return v12(v6);
  }

  else
  {
    v8 = v0[2];
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    type metadata accessor for NearbyInvitation.PendingMember.Errors();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = NearbyInvitation.PendingMember.reject();
  }

  else
  {
    v3 = NearbyInvitation.PendingMember.reject();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

Swift::Int NearbyInvitation.PendingMember.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t property wrapper backing initializer of NearbyInvitation.pendingMembers(uint64_t a1)
{
  v3 = a1;
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  v1 = type metadata accessor for Set();
  return Published.init(wrappedValue:)(&v3, v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitation<A>.PendingMember()
{
  Hasher.init(_seed:)();
  NearbyInvitation.PendingMember.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path getter for NearbyInvitation.pendingMembers : <A>NearbyInvitation<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t key path setter for NearbyInvitation.pendingMembers : <A>NearbyInvitation<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t NearbyInvitation.pendingMembers.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v4;
}

uint64_t NearbyInvitation.pendingMembers.setter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitation.pendingMembers.modify(uint64_t *a1))(void *a1)
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
  v5 = *v1;
  MEMORY[0x28223BE20](v3);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  v4[4] = KeyPath;
  MEMORY[0x28223BE20](KeyPath);
  v4[5] = swift_getKeyPath();
  v4[6] = static Published.subscript.modify();
  return NearbyInvitationsController.groups.modify;
}

uint64_t key path setter for NearbyInvitation.$pendingMembers : <A>NearbyInvitation<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v8 = type metadata accessor for Published.Publisher();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return (*(**a2 + 200))(v11);
}

uint64_t NearbyInvitation.$pendingMembers.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitation.$pendingMembers.setter(uint64_t a1)
{
  v3 = *v1;
  specialized NearbyInvitation.$pendingMembers.setter(a1);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v6 = type metadata accessor for Published.Publisher();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*NearbyInvitation.$pendingMembers.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v8 = type metadata accessor for Published.Publisher();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[4] = v11;
  NearbyInvitation.$pendingMembers.getter();
  return NearbyInvitation.$pendingMembers.modify;
}

void NearbyInvitation.$pendingMembers.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    specialized NearbyInvitation.$pendingMembers.setter(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized NearbyInvitation.$pendingMembers.setter((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NearbyInvitation.cancellables.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyInvitation.cancellables.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*NearbyInvitation.cancellables.modify())()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return static NearbyGroupInterface.hostObjectInterface.modify;
}

uint64_t NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:), 0, 0);
}

uint64_t NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v2[3];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  UUID.init()();
  outlined copy of Data?(v4, v3);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static NearbyInvitationsController.shared;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v0[9] = v9;
  (*(v7 + 16))();

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  return NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(v11, v15, v16, v13, v14, v6, v9, v5);
}

{
  v1 = v0[8];
  v2 = v0[6];
  outlined consume of Data?(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_0(v2);

  v3 = v0[1];
  v4 = v0[12];

  return v3(v4);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  outlined consume of Data?(v0[4], v0[5]);

  __swift_destroy_boxed_opaque_existential_0(v3);

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:);
  }

  else
  {
    v8 = *(v4 + 72);
    *(v4 + 96) = a1;

    v7 = NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v17;
  v9[12] = v8;
  v9[9] = a7;
  v9[10] = a8;
  v9[7] = a5;
  v9[8] = a6;
  v9[5] = a3;
  v9[6] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(a8 - 8);
  v9[13] = v10;
  v11 = *(v10 + 64) + 15;
  v9[14] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v9[15] = v12;
  v13 = *(v12 - 8);
  v9[16] = v13;
  v14 = *(v13 + 64) + 15;
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:), 0, 0);
}

uint64_t NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  v3 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
  *v2 = v0;
  v2[1] = NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:);
  v4 = *(v0 + 64);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000042, 0x800000025B830E10, partial apply for closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:), v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);

    v5 = NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:);
  }

  else
  {
    v5 = NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[9];
  v28 = v0[8];
  v29 = v0[19];
  v27 = v0[7];
  v25 = v0[11];
  v26 = v0[6];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  (*(v0[16] + 16))(v1, v0[3], v0[15]);
  (*(v4 + 16))(v2, v6, v5);
  v10 = (*(v3 + 240))(v1, v7, v8, v9, v26, v27, v28, v2, v5, v25);
  if (v29)
  {
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[3];
    (*(v0[13] + 8))(v0[9], v0[10]);
    (*(v12 + 8))(v13, v11);
    v14 = v0[17];
    v15 = v0[14];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[16];
    v18 = v0[17];
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[3];
    v23 = v10;
    (*(v0[13] + 8))(v0[9], v0[10]);
    (*(v19 + 8))(v22, v20);

    v24 = v0[1];

    return v24(v23);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = v0[3];

  outlined consume of Data?(v8, v7);
  (*(v3 + 8))(v5, v4);
  (*(v2 + 8))(v9, v1);
  v10 = v0[19];
  v11 = v0[17];
  v12 = v0[14];

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  NearbyInvitationsController.generateNearbyInvitation(response:)(partial apply for closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:), v8);
}

void *closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(void *result, id a2)
{
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = specialized NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  (*(*(a9 - 8) + 8))(a8, a9);

  outlined consume of Data?(a5, a6);

  return v14;
}

uint64_t closure #1 in NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
    if (v4)
    {
      v6 = *(v4 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
      v5 = *(v4 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);
      v7 = v4;

      v8 = (*(v3 + direct field offset for NearbyInvitation.invitationHostInfo) + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
      if (v6 == *v8 && v5 == v8[1])
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
        }
      }

      v11 = v1;

      NearbyInvitation.PendingMember.init(joinRequest:invitation:)(v11, v3, &v15);
      v12 = (*(*v3 + 184))(v14);
      v13 = type metadata accessor for NearbyInvitation.PendingMember();
      swift_getWitnessTable();
      type metadata accessor for Set();
      Set.insert(_:)();
      (*(*(v13 - 8) + 8))(v16, v13);
      v12(v14, 0);
    }
  }

  return result;
}

char *NearbyInvitation.deinit()
{
  v1 = v0;
  v24 = *v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = direct field offset for NearbyInvitation.controller;
  v6 = *&v0[direct field offset for NearbyInvitation.controller];
  v23 = direct field offset for NearbyInvitation.invitationHostInfo;
  v7 = *&v1[direct field offset for NearbyInvitation.invitationHostInfo];
  v8 = direct field offset for NearbyInvitation.id;
  (*(v3 + 16))(v5, &v1[direct field offset for NearbyInvitation.id], v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v7;
  v12 = v7;

  NearbyInvitationsController.releaseInvitation(_:response:)(v12, partial apply for closure #1 in NearbyInvitation.deinit, v11);

  (*(v3 + 8))(&v1[v8], v2);
  v13 = *&v1[v22];

  v14 = *&v1[direct field offset for NearbyInvitation.displayName + 8];

  outlined consume of Data?(*&v1[direct field offset for NearbyInvitation.userInfo], *&v1[direct field offset for NearbyInvitation.userInfo + 8]);

  __swift_destroy_boxed_opaque_existential_0(&v1[direct field offset for NearbyInvitation.sourceProvider]);
  v15 = *(*v1 + 144);
  v16 = *(v24 + 80);
  v17 = *(v24 + 88);
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v18 = type metadata accessor for Published();
  (*(*(v18 - 8) + 8))(&v1[v15], v18);
  v19 = *&v1[*(*v1 + 152)];

  return v1;
}

void closure #1 in NearbyInvitation.deinit(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  if (a1)
  {
    v14 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.client);
    (*(v7 + 16))(v13, a2, v6);
    v16 = a1;
    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v20 = 136315650;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v44 = v18;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v7 + 8))(v13, v6);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v46);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v17;
      *(v20 + 22) = 2112;
      v26 = a1;
      v27 = v17;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v28;
      v21[1] = v28;
      v29 = v44;
      _os_log_impl(&dword_25B7C4000, v44, v19, "Failed to release invitation: %s - %@, reason: %@", v20, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v21, -1, -1);
      v30 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x25F86FE20](v30, -1, -1);
      MEMORY[0x25F86FE20](v20, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.client);
    (*(v7 + 16))(v11, a2, v6);
    v32 = a3;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v35 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v7 + 8))(v11, v6);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v46);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v36 = v32;
      v41 = v32;
      _os_log_impl(&dword_25B7C4000, v33, v34, "Successfully released invitation: %s - %@", v35, 0x16u);
      outlined destroy of NSObject?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v36, -1, -1);
      v42 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x25F86FE20](v42, -1, -1);
      MEMORY[0x25F86FE20](v35, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }
  }
}

uint64_t NearbyInvitation.__deallocating_deinit()
{
  NearbyInvitation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NearbyInvitation.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(28);
  v2 = _typeName(_:qualified:)();

  v9 = v2;
  MEMORY[0x25F86F070](1029990688, 0xE400000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0x3D656D616E20, 0xE600000000000000);
  MEMORY[0x25F86F070](*(v0 + direct field offset for NearbyInvitation.displayName), *(v0 + direct field offset for NearbyInvitation.displayName + 8));
  MEMORY[0x25F86F070](0x666E4974736F6820, 0xEA00000000003D6FLL);
  v4 = [*(v0 + direct field offset for NearbyInvitation.invitationHostInfo) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x25F86F070](v5, v7);

  return v9;
}

uint64_t NearbyInvitation.markUsed()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](NearbyInvitation.markUsed(), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = *(*v6 + 248);

    v11 = v9(v10);
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646573556B72616DLL, 0xEA00000000002928, &v20);
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  else
  {
  }

  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  *(v0 + 24) = v16;
  *v16 = v0;
  v16[1] = NearbyInvitation.markUsed();
  v17 = *(v0 + 16);
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0x646573556B72616DLL, 0xEA00000000002928, partial apply for closure #1 in NearbyInvitation.markUsed(), v17, v18);
}

{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = NearbyInvitation.markUsed();
  }

  else
  {
    v3 = NearbyInvitationAdvertiser.stop();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t closure #1 in NearbyInvitation.markUsed()(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v20 = *(a2 + direct field offset for NearbyInvitation.controller);
  v18 = *(a2 + direct field offset for NearbyInvitation.invitationHostInfo);
  v11 = direct field offset for NearbyInvitation.id;
  (*(v7 + 16))(&v17 - v9, v19, v6);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + v11, v3);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + *(v4 + 80) + v12) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v10, v6);
  (*(v4 + 32))(v14 + v13, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v15 = v18;
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  NearbyInvitationsController.markInvitationUsed(_:response:)(v15, partial apply for closure #1 in closure #1 in NearbyInvitation.markUsed(), v14);
}

uint64_t closure #1 in closure #1 in NearbyInvitation.markUsed()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v30 = v10;
    v13 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.client);
    (*(v8 + 16))(v12, a3, v7);
    v16 = a4;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v19 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v8 + 8))(v12, v7);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      v24 = v28;
      *v28 = v16;
      v25 = v16;
      _os_log_impl(&dword_25B7C4000, v17, v18, "Successfully marked invitation: %s - %@ as used.", v19, 0x16u);
      outlined destroy of NSObject?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v24, -1, -1);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F86FE20](v26, -1, -1);
      MEMORY[0x25F86FE20](v19, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t NearbyInvitation.approve(_:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](NearbyInvitation.approve(_:userInfo:), 0, 0);
}

uint64_t NearbyInvitation.approve(_:userInfo:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v8 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = NearbyInvitation.approve(_:userInfo:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000014, 0x800000025B830E60, partial apply for closure #1 in NearbyInvitation.approve(_:userInfo:), v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = NearbyInvitation.approve(_:userInfo:);
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = NearbyInvitation.approve(_:userInfo:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Log.client);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Successfully approved, now telling sourceProvider to add the member", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[7];

  v7 = *v6;
  v8 = (*v6 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym);
  v10 = *v8;
  v9 = v8[1];
  v0[15] = v9;
  v11 = (v7 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken);
  v13 = *v11;
  v12 = v11[1];
  v0[16] = v12;
  v14 = (v5 + direct field offset for NearbyInvitation.sourceProvider);
  v15 = *(v5 + direct field offset for NearbyInvitation.sourceProvider + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v0[2] = v10;
  v0[3] = v9;
  v0[4] = v13;
  v0[5] = v12;
  v17 = *(v16 + 24);

  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = NearbyInvitation.approve(_:userInfo:);

  return (v21)(v0 + 2, v15, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = NearbyInvitation.approve(_:userInfo:);
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);

    v4 = NearbyInvitation.approve(_:userInfo:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "SourceProvider successfully handled adding the approvedMember", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

{
  v20 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v0[6] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v6, v7, "SourceProvider failed to handle adding the approvedMember, error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F86FE20](v10, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v15 = v0[18];
  swift_willThrow();
  v16 = v0[18];
  v17 = v0[1];

  return v17();
}

void closure #1 in NearbyInvitation.approve(_:userInfo:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, unint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v37 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + direct field offset for NearbyInvitation.controller);
  v33 = *a3;
  v34 = v17;
  v18 = *(a2 + direct field offset for NearbyInvitation.sourceProvider + 24);
  v19 = *(a2 + direct field offset for NearbyInvitation.sourceProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + direct field offset for NearbyInvitation.sourceProvider), v18);
  (*(v19 + 16))(v18, v19);
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v13 + 8))(v16, v12);
  v23 = type metadata accessor for InvitationJoinResponse();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  *v25 = v20;
  v25[1] = v22;
  *&v24[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles] = MEMORY[0x277D84F90];
  v26 = &v24[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo];
  v27 = v35;
  v28 = v36;
  *v26 = v35;
  v26[1] = v28;
  outlined copy of Data?(v27, v28);
  v38.receiver = v24;
  v38.super_class = v23;
  v29 = objc_msgSendSuper2(&v38, sel_init);
  (*(v8 + 16))(v11, v37, v7);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = swift_allocObject();
  (*(v8 + 32))(v31 + v30, v11, v7);
  NearbyInvitationsController.approve(pendingMember:response:completion:)(v33, v29, partial apply for closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:), v31);
}

uint64_t closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t InvitationApprovalRequest.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName + 8);

  return v1;
}

uint64_t InvitationApprovalRequest.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8));
  return v1;
}

id InvitationApprovalRequest.init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = a1;
  v6 = &v5[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for InvitationApprovalRequest();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t InvitationApprovalRequest.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  _StringGuts.grow(_:)(60);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0xD000000000000017, 0x800000025B830E80);
  v3 = [*(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x25F86F070](v4, v6);

  MEMORY[0x25F86F070](0x616C70736964202CLL, 0xEF203A656D614E79);
  MEMORY[0x25F86F070](*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName), *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName + 8));
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v7 = *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8);
  if (v7 >> 60 == 15)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo), v7);
    v9 = String.init<A>(reflecting:)();
    v8 = v10;
  }

  MEMORY[0x25F86F070](v9, v8);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall InvitationApprovalRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData);
  v4 = MEMORY[0x25F86F000](0xD000000000000014, 0x800000025B830EA0);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName), *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName + 8));
  v6 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo);
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t InvitationApprovalRequest.init(coder:)(void *a1)
{
  type metadata accessor for NearbyInvitationData(0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v4 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v4)
    {
      v5 = v4;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    a1 = v3;
  }

  type metadata accessor for InvitationApprovalRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance InvitationApprovalRequest.CodingKeys()
{
  v1 = 0x4E79616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvitationApprovalRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized InvitationApprovalRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvitationApprovalRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvitationApprovalRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationApprovalRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData);
  v18 = 0;
  type metadata accessor for NearbyInvitationData(0);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationData and conformance NearbyInvitationData, 255, type metadata accessor for NearbyInvitationData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName);
    v13 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName + 8);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8);
    v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo);
    v17 = v14;
    v18 = 2;
    outlined copy of Data?(v16, v14);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v16, v17);
  }

  return (*(v6 + 8))(v9, v5);
}

id InvitationApprovalRequest.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for InvitationApprovalRequest();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for NearbyInvitationData(0);
    v18 = 0;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationData and conformance NearbyInvitationData, 255, type metadata accessor for NearbyInvitationData);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v1[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = v17;
    LOBYTE(v17) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = &v1[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
    *v13 = v12;
    v13[1] = v14;
    v18 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v1[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo] = v17;
    v15 = type metadata accessor for InvitationApprovalRequest();
    v16.receiver = v1;
    v16.super_class = v15;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance InvitationApprovalRequest@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NearbyInvitationData.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8);

  return v1;
}

uint64_t NearbyInvitationData.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8));
  return v1;
}

uint64_t NearbyInvitationData.sourceProviderName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName + 8);

  return v1;
}

Swift::Int NearbyInvitationData.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationData.encodedData.getter()
{
  v1 = type metadata accessor for Invitation_InvitationData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, 255, type metadata accessor for Invitation_InvitationData);
  static Message.with(_:)();
  v5 = Message.serializedData(partial:)();
  outlined destroy of Invitation_InvitationData(v4, type metadata accessor for Invitation_InvitationData);
  return v5;
}

uint64_t closure #1 in NearbyInvitationData.encodedData.getter(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = UUID.data.getter();
  v11 = v10;
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v9;
  a1[1] = v11;
  v13 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
  v12 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8);
  v14 = a1[3];

  a1[2] = v13;
  a1[3] = v12;
  v16 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8);
  if (v16 >> 60 != 15)
  {
    v17 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
    v18 = (a1 + *(type metadata accessor for Invitation_InvitationData(0) + 28));
    v28 = v4;
    v19 = v5;
    v27 = v8;
    v20 = *v18;
    v21 = v18[1];
    outlined copy of Data._Representation(v17, v16);
    v22 = v20;
    v5 = v19;
    v4 = v28;
    v23 = v21;
    v8 = v27;
    v15 = outlined consume of Data?(v22, v23);
    *v18 = v17;
    v18[1] = v16;
  }

  MEMORY[0x28223BE20](v15);
  *(&v26 - 2) = a2;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, 255, type metadata accessor for Invitation_HostConnectionInfo);
  static Message.with(_:)();
  v24 = *(type metadata accessor for Invitation_InvitationData(0) + 32);
  outlined destroy of NSObject?(a1 + v24, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  outlined init with take of Invitation_HostConnectionInfo(v8, a1 + v24);
  return (*(v5 + 56))(a1 + v24, 0, 1, v4);
}

uint64_t closure #1 in closure #1 in NearbyInvitationData.encodedData.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo);
  v4 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  v5 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8);
  v6 = *a1;
  v7 = a1[1];
  outlined copy of Data._Representation(v4, v5);
  outlined consume of Data._Representation(v6, v7);
  *a1 = v4;
  a1[1] = v5;
  v9 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
  v8 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);
  v10 = a1[3];

  a1[2] = v9;
  a1[3] = v8;
  return result;
}

id InvitationBlob.__allocating_init(invitationID:dataBlob:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[*a5];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[*a6];
  *v15 = a3;
  *(v15 + 1) = a4;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id NearbyInvitationData.__allocating_init(invitationID:displayName:userInfo:hostConnectionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v29 = a1;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v7);
  (*(v15 + 16))(&v19[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], a1, v14);
  v20 = &v19[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = &v19[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v21 = a4;
  v21[1] = a5;
  *&v19[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  outlined copy of Data?(a4, a5);
  v22 = a6;
  UUID.init()();
  (*(v15 + 32))(&v19[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v18, v14);
  v23 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v24 = &v19[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v24 = v23;
  v24[1] = v25;
  v30.receiver = v19;
  v30.super_class = v28;
  v26 = objc_msgSendSuper2(&v30, sel_init);

  outlined consume of Data?(a4, a5);
  (*(v15 + 8))(v29, v14);
  return v26;
}

id NearbyInvitationData.init<A>(from:)(uint64_t a1)
{
  v1 = specialized NearbyInvitationData.init<A>(from:)(a1);

  return v1;
}

id NearbyInvitationData.__allocating_init(invitationID:displayName:userInfo:hostConnectionInfo:sourceProviderID:sourceProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = objc_allocWithZone(v9);
  v15 = OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v14[v15], a1, v16);
  v19 = &v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v20 = a4;
  *(v20 + 1) = a5;
  *&v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  v18(&v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], a7, v16);
  v21 = &v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v21 = a8;
  *(v21 + 1) = a9;
  v30.receiver = v14;
  v30.super_class = v10;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  v23 = *(v17 + 8);
  v23(a7, v16);
  v23(a1, v16);
  return v22;
}

id NearbyInvitationData.init(invitationID:displayName:userInfo:hostConnectionInfo:sourceProviderID:sourceProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v9[v14], a1, v15);
  v18 = &v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v19 = a4;
  *(v19 + 1) = a5;
  *&v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  v17(&v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], a7, v15);
  v20 = &v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v20 = a8;
  *(v20 + 1) = a9;
  v28.receiver = v9;
  v28.super_class = type metadata accessor for NearbyInvitationData(0);
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = *(v16 + 8);
  v22(a7, v15);
  v22(a1, v15);
  return v21;
}

id NearbyInvitationData.init(invitationID:displayName:userInfo:hostConnectionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(&v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], a1, v13);
  v18 = &v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v19 = a4;
  v19[1] = a5;
  *&v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  outlined copy of Data?(a4, a5);
  v20 = a6;
  UUID.init()();
  (*(v14 + 32))(&v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v17, v13);
  v21 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v22 = &v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v22 = v21;
  v22[1] = v23;
  v24 = type metadata accessor for NearbyInvitationData(0);
  v27.receiver = v6;
  v27.super_class = v24;
  v25 = objc_msgSendSuper2(&v27, sel_init);

  outlined consume of Data?(a4, a5);
  (*(v14 + 8))(a1, v13);
  return v25;
}

uint64_t NearbyInvitationData.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(75);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x74617469766E6920, 0xEF203A44496E6F69);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x79616C7073696420, 0xEE00203A656D614ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName), *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8));
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo), v3);
    v5 = String.init<A>(reflecting:)();
    v4 = v6;
  }

  MEMORY[0x25F86F070](v5, v4);

  MEMORY[0x25F86F070](0xD000000000000016, 0x800000025B830EF0);
  v7 = [*(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x25F86F070](v8, v10);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall NearbyInvitationData.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName), *(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8));
  v7 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v10 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v10];
  swift_unknownObjectRelease();

  v11 = *(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo);
  v12 = MEMORY[0x25F86F000](0xD000000000000012, 0x800000025B830210);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
}

id NearbyInvitationData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v9 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v11 || (v35 = 0uLL, v12 = v11, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v12, (v13 = *(&v35 + 1)) == 0))
  {

LABEL_9:
LABEL_10:
    type metadata accessor for NearbyInvitationData(0);
    v23 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v35;
  type metadata accessor for NearbyInvitationJoinRequestMetadata();
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v15)
  {

    goto LABEL_10;
  }

  v16 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = *(v5 + 32);
  v17(&v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], v8, v4);
  v18 = &v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v18 = v14;
  *(v18 + 1) = v13;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v19 && (v35 = xmmword_25B82C300, v20 = v19, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v20, v21 = *(&v35 + 1), *(&v35 + 1) >> 60 != 15))
  {
    v22 = v35;
  }

  else
  {
    v22 = 0;
    v21 = 0xF000000000000000;
  }

  v26 = &v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v26 = v22;
  *(v26 + 1) = v21;
  *&v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v16;
  v27 = v16;
  UUID.init()();
  v17(&v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v8, v4);
  v28 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v30 = v29;

  v31 = &v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v31 = v28;
  v31[1] = v30;
  v32 = type metadata accessor for NearbyInvitationData(0);
  v34.receiver = v2;
  v34.super_class = v32;
  v33 = objc_msgSendSuper2(&v34, sel_init);

  return v33;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NearbyInvitationData.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6974617469766E69;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbyInvitationData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NearbyInvitationData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbyInvitationData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyInvitationData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearbyInvitationData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8);
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8);
    v20 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
    v21 = v13;
    v19 = 2;
    outlined copy of Data?(v20, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v20, v21);
    v20 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo);
    v19 = 3;
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata and conformance NearbyInvitationJoinRequestMetadata, v14, type metadata accessor for NearbyInvitationJoinRequestMetadata);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName);
    v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName + 8);
    LOBYTE(v20) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void *NearbyInvitationData.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for UUID();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = v38 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v43);
    v37 = v44;
    type metadata accessor for NearbyInvitationData(0);
    v20 = *((*MEMORY[0x277D85000] & *v37) + 0x30);
    v21 = *((*MEMORY[0x277D85000] & *v37) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v7;
    v16 = v10;
    LOBYTE(v46) = 0;
    v17 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    v18 = v41;
    v19 = v13;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38[3] = v17;
    v23 = v40 + 32;
    v24 = *(v40 + 32);
    v24(v44 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID, v9, v18);
    LOBYTE(v46) = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v16;
    v38[1] = v23;
    v27 = v44;
    v28 = (v44 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
    *v28 = v25;
    v28[1] = v29;
    v47 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    v38[2] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v27;
    *&v27[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo] = v46;
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v47 = 3;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata and conformance NearbyInvitationJoinRequestMetadata, v31, type metadata accessor for NearbyInvitationJoinRequestMetadata);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v27[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v46;
    LOBYTE(v46) = 4;
    v32 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24(&v30[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v32, v18);
    LOBYTE(v46) = 5;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = &v30[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
    *v34 = v33;
    v34[1] = v35;
    v36 = type metadata accessor for NearbyInvitationData(0);
    v45.receiver = v30;
    v45.super_class = v36;
    v37 = objc_msgSendSuper2(&v45, sel_init);
    (*(v26 + 8))(v19, v42);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  return v37;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbyInvitationData@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NearbyAdvertisement.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8);

  return v1;
}

uint64_t NearbyAdvertisement.contactID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);

  return v1;
}

id @objc NearbyAdvertisement.contactID.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];

    v7 = MEMORY[0x25F86F000](v5, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t NearbyAdvertisement.handle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);

  return v1;
}

uint64_t NearbyAdvertisement.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);

  return v1;
}

uint64_t NearbyAdvertisement.deviceColor.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t NearbyAdvertisement.deviceColor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t NearbyAdvertisement.deviceModel.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t NearbyAdvertisement.deviceModel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t NearbyAdvertisement.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
  return v1;
}

id NearbyAdvertisement.dataSource.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource))
  {
    v2 = v1[1];
    v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
      v6 = *v1;
    }

    v4 = static NearbyInvitationServiceClient.shared;
    *v1 = static NearbyInvitationServiceClient.shared;
    v1[1] = &protocol witness table for NearbyInvitationServiceClient;
    v3 = v4;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t NearbyAdvertisement.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  v4 = *(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t (*NearbyAdvertisement.dataSource.modify(id *a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = NearbyAdvertisement.dataSource.getter();
  a1[1] = v3;
  return NearbyAdvertisement.dataSource.modify;
}

uint64_t NearbyAdvertisement.dataSource.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource) = *a1;
  return swift_unknownObjectRelease();
}

id NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = &v18[v26];
  v30 = a1;
  (*(v28 + 16))(v29, a1, v27);
  v31 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier];
  *v31 = a2;
  *(v31 + 1) = a3;
  *&v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType] = a4;
  v32 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
  *v32 = a5;
  *(v32 + 1) = a6;
  v33 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle];
  *v33 = a7;
  *(v33 + 1) = a8;
  v34 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
  *v34 = a9;
  *(v34 + 1) = a10;
  v35 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo];
  *v35 = a11;
  *(v35 + 1) = a12;
  swift_beginAccess();
  *v22 = a13;
  v22[8] = a14 & 1;
  swift_beginAccess();
  *v23 = a15;
  *(v23 + 1) = a16;
  swift_beginAccess();
  *v24 = a17;
  *(v24 + 1) = a18;
  v43.receiver = v18;
  v43.super_class = type metadata accessor for NearbyAdvertisement(0);
  v36 = objc_msgSendSuper2(&v43, sel_init);
  (*(v28 + 8))(v30, v27);
  return v36;
}

uint64_t NearbyAdvertisement.approve(with:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v5 = v4;
  v6 = (*((*v3 & *a1) + 0x80))();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v5 + 176))(v1, v6, v8, ObjectType, v5);
  outlined consume of Data._Representation(v6, v8);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NearbyAdvertisement.reject()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 184))(v0, ObjectType, v2);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NearbyAdvertisement.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x4972656E6E616373, 0xE900000000000044);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier), *(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8));
  v7 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType);
  v9 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v10 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8))
  {
    v11 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID));
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x25F86F000](0x49746361746E6F63, 0xE900000000000044);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v14 = *(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
    v13 = Data._bridgeToObjectiveC()().super.isa;
  }

  v15 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v15];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8))
  {
    v16 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle));
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8))
  {
    v18 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName));
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  v20 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v23 = MEMORY[0x25F86F000](0x6F43656369766564, 0xEB00000000726F6CLL);
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];
  swift_unknownObjectRelease();

  v24 = (*((*v20 & *v2) + 0xC0))();
  if (v25)
  {
    v26 = MEMORY[0x25F86F000](v24);
  }

  else
  {
    v26 = 0;
  }

  v27 = MEMORY[0x25F86F000](0x6F4D656369766564, 0xEB000000006C6564);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  v28 = (*((*v20 & *v2) + 0xD8))();
  if (v29)
  {
    v30 = MEMORY[0x25F86F000](v28);
  }

  else
  {
    v30 = 0;
  }

  v31 = MEMORY[0x25F86F000](0x4449656369766564, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];
  swift_unknownObjectRelease();
}

id NearbyAdvertisement.init(coder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v80 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor;
  *v11 = 0;
  v11[8] = 1;
  v12 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID);
  *v13 = 0;
  v13[1] = 0;
  v83 = v13;
  v14 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  *v14 = 0;
  v14[1] = 0;
  v15 = MEMORY[0x25F86F000](0x4972656E6E616373, 0xE900000000000044);
  v16 = a1;
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (!*(&v92 + 1))
  {

    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_8;
  }

  v18 = swift_dynamicCast();
  (*(v8 + 56))(v6, v18 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

LABEL_8:
    v19 = &_s10Foundation4UUIDVSgMd;
    v20 = &_s10Foundation4UUIDVSgMR;
    v21 = v6;
LABEL_9:
    outlined destroy of NSObject?(v21, v19, v20);
LABEL_10:
    v22 = v12[1];

    v23 = v83[1];

    v24 = *v14;
    swift_unknownObjectRelease();
    type metadata accessor for NearbyAdvertisement(0);
    v25 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v26 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v8 + 32))(v82, v6, v7);
  v28 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  v29 = [v16 decodeObjectForKey_];

  if (v29)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (!*(&v92 + 1))
  {
    (*(v8 + 8))(v82, v7);

    v19 = &_sypSgMd;
    v20 = &_sypSgMR;
    v21 = &v93;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v8 + 8))(v82, v7);

    goto LABEL_10;
  }

  v80 = v89;
  v81 = v90;
  v30 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  v31 = [v16 decodeObjectForKey_];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (!*(&v92 + 1))
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    goto LABEL_26;
  }

  if (!swift_dynamicCast())
  {
LABEL_26:
    v32 = 0;
    goto LABEL_27;
  }

  v32 = v89;
  if (v89 >= 2)
  {
    (*(v8 + 8))(v82, v7);

    goto LABEL_10;
  }

LABEL_27:
  v33 = MEMORY[0x25F86F000](0x49746361746E6F63, 0xE900000000000044);
  v34 = [v16 decodeObjectForKey_];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  v35 = v16;
  if (*(&v92 + 1))
  {
    v36 = swift_dynamicCast();
    if (v36)
    {
      v37 = v89;
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v90;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v37 = 0;
    v38 = 0;
  }

  (*(v8 + 16))(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID, v82, v7);
  v39 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
  v40 = v81;
  *v39 = v80;
  v39[1] = v40;
  *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType) = v32;
  v41 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
  *v41 = v37;
  v41[1] = v38;
  v42 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  v43 = [v16 decodeObjectForKey_];

  if (v43)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (*(&v92 + 1))
  {
    v44 = swift_dynamicCast();
    v45 = v89;
    v46 = v90;
    if (!v44)
    {
      v45 = 0;
      v46 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v45 = 0;
    v46 = 0xF000000000000000;
  }

  v47 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  *v47 = v45;
  v47[1] = v46;
  v48 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
  v49 = [v16 decodeObjectForKey_];

  if (v49)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (*(&v92 + 1))
  {
    v50 = swift_dynamicCast();
    v51 = v89;
    v52 = v90;
    if (!v50)
    {
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v51 = 0;
    v52 = 0;
  }

  v53 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
  *v53 = v51;
  v53[1] = v52;
  v54 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  v55 = [v16 decodeObjectForKey_];

  if (v55)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (*(&v92 + 1))
  {
    v56 = swift_dynamicCast();
    v57 = v89;
    v58 = v90;
    if (!v56)
    {
      v57 = 0;
      v58 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v57 = 0;
    v58 = 0;
  }

  v59 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
  *v59 = v57;
  v59[1] = v58;
  v60 = MEMORY[0x25F86F000](0x6F43656369766564, 0xEB00000000726F6CLL);
  v61 = [v16 decodeObjectForKey_];

  if (v61)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (*(&v92 + 1))
  {
    v62 = swift_dynamicCast();
    if (v62)
    {
      v63 = v89;
    }

    else
    {
      v63 = 0;
    }

    v64 = v62 ^ 1;
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v63 = 0;
    v64 = 1;
  }

  swift_beginAccess();
  *v11 = v63;
  v11[8] = v64;
  v65 = MEMORY[0x25F86F000](0x6F4D656369766564, 0xEB000000006C6564);
  v66 = [v16 decodeObjectForKey_];

  if (v66)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (*(&v92 + 1))
  {
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v87;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v88;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v68 = 0;
    v69 = 0;
  }

  swift_beginAccess();
  v70 = v12[1];
  *v12 = v68;
  v12[1] = v69;

  v71 = MEMORY[0x25F86F000](0x4449656369766564, 0xE800000000000000);
  v72 = [v16 decodeObjectForKey_];

  if (v72)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v82, v7);
  }

  else
  {
    (*(v8 + 8))(v82, v7);
    v91 = 0u;
    v92 = 0u;
  }

  v93 = v91;
  v94 = v92;
  if (*(&v92 + 1))
  {
    v73 = swift_dynamicCast();
    if (v73)
    {
      v74 = v84;
    }

    else
    {
      v74 = 0;
    }

    if (v73)
    {
      v75 = v85;
    }

    else
    {
      v75 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v93, &_sypSgMd, &_sypSgMR);
    v74 = 0;
    v75 = 0;
  }

  v76 = v83;
  swift_beginAccess();
  v77 = v76[1];
  *v76 = v74;
  v76[1] = v75;

  v78 = type metadata accessor for NearbyAdvertisement(0);
  v86.receiver = v1;
  v86.super_class = v78;
  v79 = objc_msgSendSuper2(&v86, sel_init);

  return v79;
}

uint64_t NearbyAdvertisement.description.getter()
{
  v1 = 7104878;
  swift_getObjectType();
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](8250, 0xE200000000000000);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier), *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8));
  MEMORY[0x25F86F070](0x61746E6F63202D20, 0xEC000000203A7463);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
  if (v3)
  {
    v26[0] = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
    v26[1] = v3;

    v4 = String.init<A>(reflecting:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x25F86F070](v4, v6);

  MEMORY[0x25F86F070](0x3A656C646E616820, 0xE900000000000020);
  v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
  if (v7)
  {
    v26[0] = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
    v26[1] = v7;

    v8 = String.init<A>(reflecting:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x25F86F070](v8, v10);

  MEMORY[0x25F86F070](0x79616C7073696420, 0xEE00203A656D614ELL);
  v11 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
  if (v11)
  {
    v26[0] = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
    v26[1] = v11;

    v1 = String.init<A>(reflecting:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v1, v13);

  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v14);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    _StringGuts.grow(_:)(16);

    strcpy(v26, " deviceModel: ");
    HIBYTE(v26[1]) = -18;
    MEMORY[0x25F86F070](v18, v19);

    MEMORY[0x25F86F070](v26[0], v26[1]);
  }

  v20 = (*((*v15 & *v0) + 0xA8))(v16);
  if ((v21 & 1) == 0)
  {
    _StringGuts.grow(_:)(16);

    strcpy(v26, " deviceColor: ");
    HIBYTE(v26[1]) = -18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F86F070](v22);

    MEMORY[0x25F86F070](v26[0], v26[1]);
  }

  v23 = (*((*v15 & *v0) + 0xD8))(v20);
  if (v24)
  {
    strcpy(v26, "deviceID: ");
    BYTE3(v26[1]) = 0;
    HIDWORD(v26[1]) = -369098752;
    MEMORY[0x25F86F070](v23);

    MEMORY[0x25F86F070](v26[0], v26[1]);
  }

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return v27;
}

Swift::Int NearbyAdvertisement.hash.getter()
{
  Hasher.init()();
  v1 = UUID.hashValue.getter();
  MEMORY[0x25F86F720](v1);
  v2 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier), *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8));
  MEMORY[0x25F86F720](v2);
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType));
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8))
  {
    v3 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID));
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
    v5 = Data.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v5);
  }

  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8))
  {
    v6 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle));
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8))
  {
    v7 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName));
    Hasher._combine(_:)(1u);
    v8 = MEMORY[0x25F86F720](v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xA8))(v8);
  if (v10)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = Int.hashValue.getter();
    Hasher._combine(_:)(1u);
    v11 = MEMORY[0x25F86F720](v12);
  }

  v13 = (*((*v9 & *v0) + 0xC0))(v11);
  if (v14)
  {
    v15 = MEMORY[0x25F86F090](v13);

    Hasher._combine(_:)(1u);
    v16 = MEMORY[0x25F86F720](v15);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v17 = (*((*v9 & *v0) + 0xD8))(v16);
  if (v18)
  {
    v19 = MEMORY[0x25F86F090](v17);

    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v19);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

uint64_t NearbyAdvertisement.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of (UUID, Bool)(a1, v36, &_sypSgMd, &_sypSgMR);
  if (!v37)
  {
    outlined destroy of NSObject?(v36, &_sypSgMd, &_sypSgMR);
    goto LABEL_19;
  }

  type metadata accessor for NearbyAdvertisement(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v5 = 0;
    return v5 & 1;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier) == *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier) && *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8) == *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8);
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType))
  {
    goto LABEL_18;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
  v4 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
  if (v3)
  {
    if (!v4 || (*(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID) || v3 != v4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v4)
  {
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  v7 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8);
  v10 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  v9 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8);
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(*(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo), *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
      outlined copy of Data?(v8, v7);
      outlined consume of Data?(v8, v7);
      goto LABEL_27;
    }

LABEL_25:
    outlined copy of Data?(*(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo), *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
    outlined copy of Data?(v8, v7);

    outlined consume of Data?(v8, v7);
    outlined consume of Data?(v10, v9);
    goto LABEL_19;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_25;
  }

  outlined copy of Data?(*(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo), *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
  outlined copy of Data?(v10, v9);
  outlined copy of Data?(v8, v7);
  v11 = specialized static Data.== infix(_:_:)(v8, v7, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v8, v7);
  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  v12 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
  v13 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
  if (v12)
  {
    if (!v13 || (*(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v13)
  {
    goto LABEL_18;
  }

  v14 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
  v15 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
  if (v14)
  {
    if (!v15 || (*(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v15)
  {
    goto LABEL_18;
  }

  v16 = MEMORY[0x277D85000];
  v17 = v1;
  v18 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();
  v20 = v19;
  v21 = (*((*v16 & *v35) + 0xA8))();
  if (v20)
  {
    if (v22)
    {
      goto LABEL_46;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ((v22 & 1) != 0 || v18 != v21)
  {
    goto LABEL_18;
  }

LABEL_46:
  v23 = (*((*v16 & *v1) + 0xC0))(v21);
  v25 = v24;
  v26 = (*((*v16 & *v35) + 0xC0))();
  v5 = v27;
  if (!v25)
  {
    if (v27)
    {
LABEL_52:

      goto LABEL_19;
    }

    goto LABEL_55;
  }

  if (!v27)
  {

    return v5 & 1;
  }

  if (v23 == v26 && v25 == v27)
  {

    goto LABEL_55;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_55:
  v29 = (*((*v16 & *v17) + 0xD8))(v26);
  v31 = v30;
  v32 = (*((*v16 & *v35) + 0xD8))();
  v34 = v33;
  if (!v31)
  {

    if (!v34)
    {
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_19;
  }

  if (!v33)
  {
    goto LABEL_52;
  }

  if (v29 == v32 && v31 == v33)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

id NearbyAdvertisement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t NearbyAdvertisement.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F4D656369766564;
    v6 = 0x4449656369766564;
    if (a1 != 8)
    {
      v6 = 0x6F666E4972657375;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x4E79616C70736964;
    if (a1 != 5)
    {
      v7 = 0x6F43656369766564;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4972656E6E616373;
    v2 = 0x7974697669746361;
    v3 = 0x49746361746E6F63;
    if (a1 != 3)
    {
      v3 = 0x656C646E6168;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbyAdvertisement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NearbyAdvertisement.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbyAdvertisement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyAdvertisement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearbyAdvertisement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
    v13 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8);
    LOBYTE(v26) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v26) = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType);
    v28 = 2;
    lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
    v15 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
    LOBYTE(v26) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
    v17 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
    LOBYTE(v26) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
    v19 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
    LOBYTE(v26) = 5;
    v20 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v3) + 0xA8))(v20);
    LOBYTE(v26) = 6;
    v22 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*((*v21 & *v3) + 0xC0))(v22);
    LOBYTE(v26) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((*v21 & *v3) + 0xD8))(v23);
    LOBYTE(v26) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v24 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8);
    v26 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
    v27 = v24;
    v28 = 9;
    outlined copy of Data?(v26, v24);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v26, v27);
  }

  return (*(v6 + 8))(v9, v5);
}

void *NearbyAdvertisement.init(from:)(uint64_t *a1)
{
  v4 = type metadata accessor for UUID();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v53 - v10;
  v12 = v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel);
  *v13 = 0;
  v13[1] = 0;
  v62 = v1;
  v63 = v13;
  v14 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID);
  *v14 = 0;
  v14[1] = 0;
  v60 = a1;
  v61 = v14;
  v15 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  *v15 = 0;
  v15[1] = 0;
  v59 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();
  v58 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v52 = v62;
    __swift_destroy_boxed_opaque_existential_0(v60);
    v17 = v63[1];

    v18 = v61[1];

    v19 = *v59;
    swift_unknownObjectRelease();
    type metadata accessor for NearbyAdvertisement(0);
    v20 = *((*MEMORY[0x277D85000] & *v52) + 0x30);
    v21 = *((*MEMORY[0x277D85000] & *v52) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v54 = v12;
    LOBYTE(v68) = 0;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v62;
    (*(v55 + 32))(v62 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID, v7, v4);
    LOBYTE(v68) = 1;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = (v23 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
    *v25 = v24;
    v25[1] = v26;
    v67 = 2;
    lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType();
    v53[1] = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType) = v68;
    LOBYTE(v68) = 3;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = (v23 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v68) = 4;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = (v23 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v68) = 5;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = (v23 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v68) = 6;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v37;
    v39 = v54;
    swift_beginAccess();
    *v39 = v36;
    *(v39 + 8) = v38 & 1;
    v67 = 7;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v41;
    v43 = v63;
    swift_beginAccess();
    v44 = v43[1];
    *v43 = v40;
    v43[1] = v42;

    v66 = 8;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v46;
    v48 = v61;
    swift_beginAccess();
    v49 = v48[1];
    *v48 = v45;
    v48[1] = v47;

    v69 = 9;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v50 = v62;
    *(v62 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo) = v65;
    v51 = type metadata accessor for NearbyAdvertisement(0);
    v64.receiver = v50;
    v64.super_class = v51;
    v52 = objc_msgSendSuper2(&v64, sel_init);
    (*(v56 + 8))(v58, v57);
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  return v52;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbyAdvertisement@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NearbyInvitationJoinRequestMetadata.publicKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8));
  return v1;
}

uint64_t NearbyInvitationJoinRequestMetadata.pseudonym.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);

  return v1;
}

id InvitationBlob.init(invitationID:dataBlob:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  v8 = &v7[*a5];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[*a6];
  *v9 = a3;
  *(v9 + 1) = a4;
  v11.receiver = v7;
  v11.super_class = a7();
  return objc_msgSendSuper2(&v11, sel_init);
}

id @objc NearbyInvitationParameters.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x25F86F000](v5, v7);

  return v8;
}

uint64_t NearbyInvitationJoinRequestMetadata.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(33);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x4B63696C62757020, 0xEC000000203A7965);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8);
  v4 = Data.description.getter();
  MEMORY[0x25F86F070](v4);

  MEMORY[0x25F86F070](0x6F6475657370202CLL, 0xED0000203A6D796ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym), *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8));
  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 60;
}

Swift::Void __swiftcall NearbyInvitationJoinRequestMetadata.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  v4 = *(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x25F86F000](0x654B63696C627570, 0xE900000000000079);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  v7 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym), *(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8));
  v8 = MEMORY[0x25F86F000](0x796E6F6475657370, 0xE90000000000006DLL);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

uint64_t NearbyInvitationJoinRequestMetadata.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v5 = xmmword_25B82C300;
    v3 = v2;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for NearbyInvitationJoinRequestMetadata();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NearbyInvitationJoinRequestMetadata.CodingKeys()
{
  if (*v0)
  {
    result = 0x796E6F6475657370;
  }

  else
  {
    result = 0x654B63696C627570;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbyInvitationJoinRequestMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x796E6F6475657370 && a2 == 0xE90000000000006DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbyInvitationJoinRequestMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyInvitationJoinRequestMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearbyInvitationJoinRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8);
  v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  v17 = v11;
  v15[15] = 0;
  outlined copy of Data._Representation(v16, v11);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v16, v17);
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
    v13 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

id NearbyInvitationJoinRequestMetadata.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v1[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey] = v17;
    LOBYTE(v17) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = &v1[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym];
    *v13 = v12;
    v13[1] = v14;
    v15 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v16.receiver = v1;
    v16.super_class = v15;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbyInvitationJoinRequestMetadata@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t InvitationRequestData.invitationData.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t InvitationRequestData.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InvitationRequestData.pseudonym.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t InvitationRequestData.init(invitationData:id:pseudo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t InvitationRequestData.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  _StringGuts.grow(_:)(60);
  MEMORY[0x25F86F070](0xD000000000000026, 0x800000025B830FD0);
  if (v3 >> 60 == 15)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(v2, v3);
    v9 = String.init<A>(reflecting:)();
    v8 = v10;
  }

  MEMORY[0x25F86F070](v9, v8);

  MEMORY[0x25F86F070](0x203A6469202CLL, 0xE600000000000000);
  MEMORY[0x25F86F070](v4, v5);
  MEMORY[0x25F86F070](0x6F6475657370202CLL, 0xEA0000000000203ALL);
  if (v6)
  {

    v1 = String.init<A>(reflecting:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v1, v12);

  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InvitationRequestData.CodingKeys()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x796E6F6475657370;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974617469766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvitationRequestData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized InvitationRequestData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvitationRequestData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvitationRequestData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationRequestData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v8, v9);
  lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v8;
  v17 = v9;
  v18 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v13 = v15[5];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v16, v17);
  if (!v13)
  {
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InvitationRequestData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v26;
  v25 = v27;
  LOBYTE(v26) = 1;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  LOBYTE(v26) = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v9, v5);
  v17 = v11;
  *a2 = v11;
  v18 = v24;
  v19 = v25;
  v20 = v23;
  a2[1] = v25;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;
  a2[5] = v15;
  outlined copy of Data?(v17, v19);

  __swift_destroy_boxed_opaque_existential_0(a1);
  outlined consume of Data?(v17, v19);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x25F86EA20]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x25F86EA20]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x25F86EA20]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized NearbyInvitation.PendingMember.displayName.getter()
{
  v1 = (*v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName);
  result = *v1;
  v3 = v1[1];
  return result;
}

char *specialized static NearbyInvitationData.create(from:)(uint64_t a1, unint64_t a2)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v112 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = &v100 - v7;
  v116 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v110 = *(v116 - 8);
  v8 = *(v110 + 64);
  v9 = MEMORY[0x28223BE20](v116);
  v111 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v109 = (&v100 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v115 = &v100 - v14;
  v15 = type metadata accessor for UUID();
  v117 = *(v15 - 8);
  v118 = v15;
  v16 = *(v117 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v100 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v100 - v22;
  v24 = type metadata accessor for BinaryDecodingOptions();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Invitation_InvitationData(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = (&v100 - v33);
  v123 = 0;
  memset(v122, 0, sizeof(v122));
  outlined copy of Data._Representation(a1, v119);
  BinaryDecodingOptions.init()();
  v35 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, 255, type metadata accessor for Invitation_InvitationData);
  v36 = v124;
  Message.init(serializedData:extensions:partial:options:)();
  if (!v36)
  {
    v106 = v35;
    v107 = v32;
    v119 = v23;
    v124 = v21;
    v108 = 0;
    outlined copy of Data._Representation(*v34, v34[1]);
    v37 = v115;
    UUID.init(data:)();
    v38 = v117;
    v39 = v118;
    if ((*(v117 + 48))(v37, 1, v118) == 1)
    {
      outlined destroy of NSObject?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Log.client);
      v41 = v107;
      outlined init with copy of Invitation_InvitationData(v34, v107);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v34;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v122[0] = v46;
        *v45 = 136315138;
        v47 = Message.debugDescription.getter();
        v49 = v48;
        outlined destroy of Invitation_InvitationData(v41, type metadata accessor for Invitation_InvitationData);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v122);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_25B7C4000, v42, v43, "Invalid payload passed in: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x25F86FE20](v46, -1, -1);
        v51 = v45;
        v34 = v44;
        MEMORY[0x25F86FE20](v51, -1, -1);
      }

      else
      {

        outlined destroy of Invitation_InvitationData(v41, type metadata accessor for Invitation_InvitationData);
      }

      lazy protocol witness table accessor for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors();
      v27 = swift_allocError();
      swift_willThrow();
      outlined destroy of Invitation_InvitationData(v34, type metadata accessor for Invitation_InvitationData);
    }

    else
    {
      v52 = *(v38 + 32);
      v53 = v119;
      v107 = (v38 + 32);
      v106 = v52;
      v52(v119, v37, v39);
      v54 = *(v38 + 16);
      v103 = v38 + 16;
      v102 = v54;
      v54(v124, v53, v39);
      v55 = v34[3];
      v101 = v34[2];
      v56 = v34;
      v57 = *(v28 + 32);
      v58 = (v56 + *(v28 + 28));
      v60 = *v58;
      v59 = v58[1];
      if (v59 >> 60 == 15)
      {
        v61 = 0;
      }

      else
      {
        v61 = *v58;
      }

      v105 = v61;
      v62 = 0xC000000000000000;
      if (v59 >> 60 != 15)
      {
        v62 = v59;
      }

      v104 = v62;
      v115 = v56;
      v63 = v114;
      outlined init with copy of (UUID, Bool)(v56 + v57, v114, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
      v64 = *(v110 + 48);
      v65 = v116;
      if (v64(v63, 1, v116) == 1)
      {
        v66 = v109;
        *v109 = xmmword_25B82C2F0;
        *(v66 + 2) = 0;
        *(v66 + 3) = 0xE000000000000000;
        v67 = *(v65 + 24);

        outlined copy of Data?(v60, v59);
        v68 = v114;
        UnknownStorage.init()();
        v69 = v65;
        v70 = v66;
        v71 = v55;
        if (v64(v68, 1, v69) != 1)
        {
          outlined destroy of NSObject?(v68, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
        }
      }

      else
      {
        v70 = v109;
        outlined init with take of Invitation_HostConnectionInfo(v63, v109);

        outlined copy of Data?(v60, v59);
        v71 = v55;
      }

      v73 = *v70;
      v74 = v70[1];
      outlined copy of Data._Representation(*v70, v74);
      outlined destroy of Invitation_InvitationData(v70, type metadata accessor for Invitation_HostConnectionInfo);
      v75 = v112;
      outlined init with copy of (UUID, Bool)(v115 + v57, v112, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
      v76 = v116;
      if (v64(v75, 1, v116) == 1)
      {
        v77 = v111;
        *v111 = xmmword_25B82C2F0;
        *(v77 + 2) = 0;
        *(v77 + 3) = 0xE000000000000000;
        v78 = v77 + *(v76 + 24);
        UnknownStorage.init()();
        if (v64(v75, 1, v76) != 1)
        {
          outlined destroy of NSObject?(v75, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
        }
      }

      else
      {
        v77 = v111;
        outlined init with take of Invitation_HostConnectionInfo(v75, v111);
      }

      v80 = *(v77 + 2);
      v79 = *(v77 + 3);

      outlined destroy of Invitation_InvitationData(v77, type metadata accessor for Invitation_HostConnectionInfo);
      v81 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
      v82 = objc_allocWithZone(v81);
      v83 = &v82[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey];
      *v83 = v73;
      v83[1] = v74;
      v84 = &v82[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym];
      *v84 = v80;
      *(v84 + 1) = v79;
      v121.receiver = v82;
      v121.super_class = v81;
      v85 = objc_msgSendSuper2(&v121, sel_init);
      v86 = type metadata accessor for NearbyInvitationData(0);
      v87 = objc_allocWithZone(v86);
      v88 = v124;
      v89 = v118;
      v102(&v87[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], v124, v118);
      v90 = &v87[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
      *v90 = v101;
      *(v90 + 1) = v71;
      v91 = &v87[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
      v92 = v105;
      v93 = v104;
      *v91 = v105;
      v91[1] = v93;
      *&v87[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v85;
      outlined copy of Data._Representation(v92, v93);
      v94 = v85;
      v95 = v113;
      UUID.init()();
      v106(&v87[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v95, v89);
      v96 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
      v97 = &v87[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
      *v97 = v96;
      v97[1] = v98;
      v120.receiver = v87;
      v120.super_class = v86;
      v27 = objc_msgSendSuper2(&v120, sel_init);

      outlined consume of Data._Representation(v92, v93);
      v99 = *(v117 + 8);
      v99(v88, v89);
      v99(v119, v89);
      outlined destroy of Invitation_InvitationData(v115, type metadata accessor for Invitation_InvitationData);
    }
  }

  return v27;
}

uint64_t *specialized NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v55 = a4;
  v11 = v10;
  v51 = a6;
  v52 = a8;
  v43 = a7;
  v49 = a3;
  v50 = a5;
  v47 = a2;
  v57 = a1;
  v12 = *v10;
  v13 = *(*v10 + 80);
  v14 = *(*v10 + 88);
  v48 = a10;
  v45 = v14;
  v46 = a9;
  v44 = v13;
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v15 = type metadata accessor for Published();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = *(v12 + 144);
  v21 = Set.init()();
  property wrapper backing initializer of NearbyInvitation.pendingMembers(v21);
  (*(v16 + 32))(v10 + v20, v19, v15);
  *(v10 + *(*v10 + 152)) = MEMORY[0x277D84FA0];
  *(v10 + direct field offset for NearbyInvitation.invitationHostInfo) = v55;
  v22 = v43;
  *(v10 + direct field offset for NearbyInvitation.controller) = v43;
  v23 = direct field offset for NearbyInvitation.id;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v53 = v24;
  v54 = v25;
  (*(v25 + 16))(v11 + v23, v57, v24);
  v26 = (v11 + direct field offset for NearbyInvitation.displayName);
  v27 = v46;
  v28 = v49;
  v29 = v50;
  *v26 = v47;
  v26[1] = v28;
  v30 = (v11 + direct field offset for NearbyInvitation.userInfo);
  v31 = v51;
  *v30 = v29;
  v30[1] = v31;
  v32 = (v11 + direct field offset for NearbyInvitation.sourceProvider);
  v33 = v48;
  v32[3] = v27;
  v32[4] = v33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v52, v27);
  v35 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  swift_beginAccess();
  v56 = *(v22 + v35);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v45;
  v37[2] = v44;
  v37[3] = v27;
  v37[4] = v38;
  v37[5] = v33;
  v37[6] = v36;
  v39 = v55;

  outlined copy of Data?(v29, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>();
  Publisher<>.sink(receiveValue:)();

  v40 = *(*v11 + 152);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v54 + 8))(v57, v53);
  return v11;
}

unint64_t lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

void *specialized InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = 0;
  v5[5] = 0xF000000000000000;
  v5[6] = a1;
  swift_beginAccess();
  v5[2] = a2;
  v5[3] = a3;
  swift_beginAccess();
  v10 = v5[4];
  v11 = v5[5];
  v5[4] = a4;
  v5[5] = a5;
  outlined copy of Data?(a4, a5);
  outlined consume of Data?(v10, v11);
  return v5;
}

uint64_t outlined init with copy of InvitationSourceProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized NearbyInvitation.$pendingMembers.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for NearbyInvitation.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v11 - v7, a1);
  v9 = *(*v1 + 144);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

void partial apply for closure #1 in NearbyInvitation.deinit(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in NearbyInvitation.deinit(a1, v1 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors);
  }

  return result;
}

uint64_t type metadata completion function for IncomingInvitationJoinRequest()
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

uint64_t dispatch thunk of InvitationRequest.requestApproval()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of NearbyGroupTable.firstGroup();

  return v6();
}

uint64_t dispatch thunk of InvitationSourceProvider.didApproveMember(member:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v11(a1, a2, a3);
}

uint64_t type metadata completion function for NearbyInvitation(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    type metadata accessor for NearbyInvitation.PendingMember();
    swift_getWitnessTable();
    type metadata accessor for Set();
    result = type metadata accessor for Published();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of NearbyInvitation.markUsed()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v6();
}

uint64_t dispatch thunk of NearbyInvitation.approve(_:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 264);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of NearbyInvitation.reject(_:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return v8(a1);
}

uint64_t type metadata instantiation function for NearbyInvitation.PendingMember()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for NearbyInvitation.PendingMember(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NearbyInvitation.PendingMember(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata completion function for NearbyInvitationData()
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

uint64_t type metadata completion function for NearbyAdvertisement()
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InvitationRequestData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InvitationRequestData(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NearbyAdvertisement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyAdvertisement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyInvitationData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyInvitationData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized InvitationApprovalRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000025B830EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized NearbyInvitationData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617469766E69 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025B830210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B830320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025B830340 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized NearbyAdvertisement.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656E6E616373 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t specialized InvitationRequestData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617469766E69 && a2 == 0xEE00617461446E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796E6F6475657370 && a2 == 0xE90000000000006DLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:)(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitation.markUsed()(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyInvitation.markUsed()(a1, v1 + v4, v1 + v7, v8);
}

uint64_t objectdestroy_167Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void *partial apply for closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(a1, a2);
}

uint64_t partial apply for closure #1 in closure #1 in InvitationRequest.requestApproval()(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in InvitationRequest.requestApproval()(a1, a2);
}

uint64_t outlined init with copy of Invitation_InvitationData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_InvitationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Invitation_InvitationData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(void **a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return closure #1 in NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(a1);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return MEMORY[0x28217E2C0]();
}

{
  return MEMORY[0x28217E2C8]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}