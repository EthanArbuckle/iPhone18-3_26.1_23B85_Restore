uint64_t closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:);
  }

  else
  {
    v5 = closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "NearbyInvitationsProviderDataSource advertiseNearbyInvitation", v16, 2u);
  }

  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v17;
    v36 = v34;
    *v20 = 136315138;
    type metadata accessor for NearbyAdvertisementRequest();
    v21 = v17;
    v22 = String.init<A>(reflecting:)();
    v24 = v12;
    v25 = v5;
    v26 = a4;
    v27 = a3;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v36);

    *(v20 + 4) = v28;
    a3 = v27;
    a4 = v26;
    v5 = v25;
    v12 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Got pseud %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v5;
  v30[5] = v17;
  v30[6] = a3;
  v30[7] = a4;
  v31 = v17;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:), v30);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)()
{
  v1 = *(v0[2] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:);
  v3 = v0[3];

  return NearbyInvitationServiceBluetoothController.broadcast(invitation:)(v3);
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:);
  }

  else
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:);
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource advertiseNearbySessionEndpoint", v15, 2u);
  }

  v16 = type metadata accessor for NearbyInvitationAdvertiser();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();

  v20 = specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(a1, v4, v19);

  v21 = *(v4 + 80);
  *(v4 + 80) = v20;

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v20;
  v23[5] = a2;
  v23[6] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:), v23);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)()
{
  (*(**(v0 + 16) + 320))();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = v14;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "NearbyInvitationsProviderDataSource stopAdvertising", v18, 2u);
    v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = v24;
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  (*(v8 + 16))(v10, a1, v7);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v4;
  (*(v8 + 32))(&v21[v20], v10, v7);
  v22 = &v21[(v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v25;
  *(v22 + 1) = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:), v21);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)()
{
  v1 = *(v0[2] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:);
  v3 = v0[3];

  return NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(v3);
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:);
  }

  else
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationsProviderDataSource stopAdvertisingEndpoint", v12, 2u);
  }

  v13 = *(v2 + 80);
  if (v13)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a1;
    v15[6] = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:), v15);
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "NearbyInvitationsProviderDataSource unable to create nearbyInvitationsBrowser", v19, 2u);
    }

    lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
    swift_allocError();
    *v20 = 2;
    a1();
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(*a4 + 328);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:);

  return v11();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:), 0, 0);
}

{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)()
{
  v1 = v0[3];
  v2 = *(v0[2] + 48);
  v3 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  (*((swift_isaMask & *v2) + 0xD8))(v3);
  v5 = v0[4];
  v4 = v0[5];

  v5(0);
  v6 = v0[1];

  return v6();
}

uint64_t NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v42 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = &v37 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v43 = a2;
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = *(v10 + 16);
  v40 = a1;
  v17(v15, a1, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v17;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v10 + 8))(v15, v9);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v46);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2048;
    v27 = v43;
    *(v21 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v18, v19, "NearbyInvitationsProviderDataSource assertAdvertisementPublic invitation: %s for %lu rotations", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    v17 = v37;
  }

  else
  {

    (*(v10 + 8))(v15, v9);
    v27 = v43;
  }

  v28 = type metadata accessor for TaskPriority();
  v29 = v41;
  (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
  v30 = v38;
  v17(v38, v40, v9);
  v31 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v32 = (v39 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v45;
  (*(v10 + 32))(&v33[v31], v30, v9);
  *&v33[v32] = v27;
  v34 = &v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8];
  v35 = v42;
  *v34 = v44;
  *(v34 + 1) = v35;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v29, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:), v33);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[9] = v10;
  v11 = *(v10 - 8);
  v8[10] = v11;
  v12 = *(v11 + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)()
{
  v1 = *(v0[3] + 40);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:);
  v3 = v0[12];
  v4 = v0[4];
  v5 = v0[5];

  return NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(v3, v4, v5);
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:);
  }

  else
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5(v4, 0);
  outlined destroy of Any?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v3 + 8))(v1, v2);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

{
  v33 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v13 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v0[2] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v32);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to assert invitation %s as public, reason: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[14];
  v25 = v0[8];
  v26 = v0[6];
  (*(v0[10] + 56))(v25, 1, 1, v0[9]);
  swift_errorRetain();
  v26(v25, v24);

  outlined destroy of Any?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = v0[11];
  v27 = v0[12];
  v29 = v0[8];

  v30 = v0[1];

  return v30();
}

uint64_t NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a3;
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = v49 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v56 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v55 = v49 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v49 - v15;
  __chkstk_darwin(v14);
  v18 = v49 - v17;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.host);
  v20 = *(v9 + 16);
  v57 = a1;
  v20(v18, a1, v8);
  v20(v16, v61, v8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v23;
    v53 = swift_slowAlloc();
    v63 = v53;
    *v23 = 136315394;
    v49[1] = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v52 = v22;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v16;
    v26 = v8;
    v28 = v27;
    v54 = v20;
    v51 = v21;
    v29 = *(v9 + 8);
    v29(v18, v26);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v28, &v63);
    v8 = v26;

    v31 = v50;
    *(v50 + 1) = v30;
    *(v31 + 6) = 2080;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v29(v25, v8);
    v20 = v54;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v63);

    *(v31 + 14) = v35;
    v36 = v51;
    _os_log_impl(&_mh_execute_header, v51, v52, "NearbyInvitationsProviderDataSource releaseAdvertisementPublicAssertion invitation: %s assertionIdentifier: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v37 = *(v9 + 8);
    v37(v16, v8);
    v37(v18, v8);
  }

  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
  v39 = v55;
  v20(v55, v57, v8);
  v40 = v56;
  v20(v56, v61, v8);
  v41 = *(v9 + 80);
  v42 = (v41 + 40) & ~v41;
  v43 = (v10 + v41 + v42) & ~v41;
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v59;
  v45 = *(v9 + 32);
  v45(&v44[v42], v39, v8);
  v45(&v44[v43], v40, v8);
  v46 = &v44[(v10 + v43 + 7) & 0xFFFFFFFFFFFFFFF8];
  v47 = v60;
  *v46 = v58;
  *(v46 + 1) = v47;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v62, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:), v44);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)()
{
  v1 = *(v0[3] + 40);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:);
  v4 = v0[4];
  v3 = v0[5];

  return NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(v4, v3);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:);
  }

  else
  {
    v3 = closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

{
  v44 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[4];
  v6 = v0[5];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = *(v5 + 16);
  v9(v3, v7, v4);
  v9(v2, v6, v4);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v42 = v11;
    v12 = v0[11];
    v40 = v0[10];
    v41 = v0[13];
    v14 = v0[8];
    v13 = v0[9];
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v15 = 136315650;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v43);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v19(v40, v14);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v43);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v0[2] = v41;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v43);

    *(v15 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v10, v42, "Failed to release invitation %s's assertion %s, reason: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[8];
    v31 = v0[9];

    v32 = *(v31 + 8);
    v32(v29, v30);
    v32(v28, v30);
  }

  v33 = v0[13];
  v35 = v0[6];
  v34 = v0[7];
  swift_errorRetain();
  v35(v33);

  v37 = v0[10];
  v36 = v0[11];

  v38 = v0[1];

  return v38();
}

uint64_t NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v8 = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, a4, v19, 2u);
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v8;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;

  v22 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, v25, v21);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)()
{
  v1 = v0[3];
  v2 = *(v0[2] + 48);
  v3 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  (*((swift_isaMask & *v2) + 0xB0))(v3);
  v5 = v0[4];
  v4 = v0[5];

  v5(0);
  v6 = v0[1];

  return v6();
}

uint64_t NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "NearbyInvitationsProviderDataSource scanNearbyInvitations", v16, 2u);
  }

  v17 = [objc_allocWithZone(TUFeatureFlags) init];
  v18 = [v17 btScanAbstraction];

  if (v18)
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v6);
    v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v4;
    (*(v7 + 32))(&v21[v20], &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v22 = &v21[(v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v22 = v28;
    *(v22 + 1) = a3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v21);
  }

  else
  {
    v28(0);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v6);
    v24 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v4;
    (*(v7 + 32))(&v25[v24], &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v25);
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v7[12] = *(v9 + 64);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v57 = v0;
  if (!*((*(**(v0 + 48) + 376))() + 16))
  {

    goto LABEL_8;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 56));
  v2 = v1;

  if ((v2 & 1) == 0)
  {
LABEL_8:
    v20 = *(v0 + 112);
    v21 = *(v0 + 88);
    v51 = *(v0 + 120);
    v52 = *(v0 + 80);
    v55 = *(v0 + 72);
    v22 = *(v0 + 56);
    v53 = *(v0 + 96);
    v54 = *(v0 + 64);
    v23 = *(v0 + 48);
    v24 = [objc_allocWithZone(CBDiscovery) init];
    [v24 setUseCase:131092];
    [v24 addDiscoveryType:21];
    v25 = type metadata accessor for BluetoothScanner();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v28 = swift_allocObject();
    v29 = specialized BluetoothScanner.init(discoveryEngine:)(v24, v28);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAA0E13RangingFilterCGMd, &_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAA0E13RangingFilterCGMR);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = specialized FilteredBluetoothScanner.init(scanner:config:)(v29, 1, 3);

    v34 = *(*v23 + 392);

    v35 = v34(v0 + 16);
    v37 = v36;
    v38 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *v37;
    *v37 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v22, isUniquelyReferenced_nonNull_native);
    *v37 = v56;
    v35(v0 + 16, 0);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v51, 1, 1, v40);
    (*(v21 + 16))(v20, v22, v52);
    v41 = (*(v21 + 80) + 56) & ~*(v21 + 80);
    v42 = swift_allocObject();
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    *(v42 + 4) = v54;
    *(v42 + 5) = v55;
    *(v42 + 6) = v33;
    (*(v21 + 32))(&v42[v41], v20, v52);
    *&v42[(v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v42);

    goto LABEL_11;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  (*(v5 + 16))(v3, v6, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v14 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v56);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received request to scan for ID: %s which already exists.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v44 = *(v0 + 64);
  v43 = *(v0 + 72);
  lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
  swift_allocError();
  *v45 = 4;
  v44();

LABEL_11:
  v47 = *(v0 + 112);
  v46 = *(v0 + 120);
  v48 = *(v0 + 104);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMR);
  v8[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMd, &_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMR);
  v8[17] = v11;
  v12 = *(v11 - 8);
  v8[18] = v12;
  v13 = *(v12 + 64) + 15;
  v8[19] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0Q6DeviceVyAJ0N13RangingFilterC_GGs5NeverOGSay0N8Sessions0N13AdvertisementCGGGMd, &_s7Combine14AsyncPublisherVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0Q6DeviceVyAJ0N13RangingFilterC_GGs5NeverOGSay0N8Sessions0N13AdvertisementCGGGMR);
  v8[20] = v14;
  v15 = *(v14 - 8);
  v8[21] = v15;
  v16 = *(v15 + 64) + 15;
  v8[22] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMR);
  v8[23] = v17;
  v18 = *(v17 - 8);
  v8[24] = v18;
  v19 = *(v18 + 64) + 15;
  v8[25] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v8[26] = v20;
  v21 = *(v20 - 8);
  v8[27] = v21;
  v8[28] = *(v21 + 64);
  v8[29] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMR);
  v8[30] = v22;
  v23 = *(v22 - 8);
  v8[31] = v23;
  v24 = *(v23 + 64) + 15;
  v8[32] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v18 = *(v0 + 200);
  v6 = *(v0 + 176);
  v19 = *(v0 + 168);
  v16 = *(v0 + 256);
  v17 = *(v0 + 160);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = (*(v0 + 80))(0);
  *(v0 + 48) = (*(*v8 + 192))(v10);
  (*(v3 + 16))(v2, v7, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMR);
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[FilteredBluetoothScanner<NearbyRangingFilter>.FilteredDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMR);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<[FilteredBluetoothScanner<NearbyRangingFilter>.FilteredDevice], Never>, [NearbyAdvertisement]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMR);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v19 + 8))(v6, v17);
  *(v0 + 272) = _swiftEmptyArrayStorage;
  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
  v14 = *(v0 + 200);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5(0, 0);
}

{
  v1 = v0[36];
  if (v1)
  {
    v0[8] = v0[34];
    v2 = v0 + 8;
    v3 = v0[33];
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    v45 = v1;
    v0[7] = v1;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [NearbyAdvertisement] and conformance [A], &_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR);
    BidirectionalCollection.difference<A>(from:by:)();

    (*(v5 + 16))(v7, v4, v6);
    v9 = *(v8 + 36);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CollectionDifference<NearbyAdvertisement> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMd, &_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMR);
    v10 = v46;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v7 + v9) == v2[1])
    {
LABEL_3:
      v12 = v10[18];
      v11 = v10[19];
      v13 = v10[17];
      outlined destroy of Any?(v10[16], &_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMR);
      (*(v12 + 8))(v11, v13);
      v10[34] = v45;
      v14 = swift_task_alloc();
      v10[35] = v14;
      *v14 = v10;
      v14[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
      v15 = v10[25];

      return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5(0, 0);
    }

    v28 = v7;
    while (1)
    {
      v33 = v10[16];
      v32 = v10[17];
      v34 = v10[14];
      v35 = v28;
      v36 = dispatch thunk of Collection.subscript.read();
      v38 = v37[1];
      v39 = *(v37 + 25);
      v48 = v37[2];
      v50 = *v37;
      v47 = *(v37 + 24);
      outlined copy of CollectionDifference<NearbyAdvertisement>.Change();
      v36(v46 + 2, 0);
      v28 = v35;
      v40 = dispatch thunk of Collection.formIndex(after:)();
      v41 = (*(*v34 + 208))(v40);
      v43 = v42;
      if (v39)
      {
        break;
      }

      v10 = v46;
      if (v41)
      {
        ObjectType = swift_getObjectType();
        (*(v43 + 32))(v38, ObjectType, v43);
LABEL_12:
        swift_unknownObjectRelease();
      }

LABEL_13:
      v31 = v10[16];
      v30 = v10[17];
      outlined consume of CollectionDifference<NearbyAdvertisement>.Change();
      dispatch thunk of Collection.endIndex.getter();
      if (*(v28 + v9) == v10[9])
      {
        goto LABEL_3;
      }
    }

    v10 = v46;
    if (!v41)
    {
      goto LABEL_13;
    }

    v44 = swift_getObjectType();
    (*(v43 + 40))(v38, v44, v43);
    goto LABEL_12;
  }

  v17 = v0[34];
  v19 = v0[31];
  v18 = v0[32];
  v21 = v0[29];
  v20 = v0[30];
  v23 = v0[24];
  v22 = v0[25];
  v25 = v0[22];
  v24 = v0[23];
  v26 = v0[19];
  v49 = v0[16];

  (*(v23 + 8))(v22, v24);
  (*(v19 + 8))(v18, v20);

  v27 = v0[1];

  return v27();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v3 = *(*v2 + 280);
  v5 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v3 = *isUniquelyReferenced_nonNull_native;
  v4 = *(*isUniquelyReferenced_nonNull_native + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    v26 = *(*isUniquelyReferenced_nonNull_native + 16);
    v21 = v4 - 1;
    v25 = _swiftEmptyArrayStorage;
    v22 = v3 + 48;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v10 = *(v7 - 2);
        v9 = *(v7 - 1);
        v11 = *v7;
        v5 = v8 + 1;
        v12 = *(**v7 + 208);

        if (v12(v13))
        {
          break;
        }

        v7 += 3;
        ++v8;
        if (v26 == v5)
        {
          goto LABEL_15;
        }
      }

      v14 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1);
        v14 = v27;
      }

      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v27;
      }

      v14[2] = v16 + 1;
      v25 = v14;
      v17 = &v14[3 * v16];
      v17[4] = v10;
      v17[5] = v9;
      v17[6] = v11;
      v6 = v22;
    }

    while (v21 != v8);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v20[2] = v23;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v20, v25);

  v27 = specialized Array._copyToContiguousArray()(v18);
  specialized MutableCollection<>.sort(by:)(&v27);

  *v24 = v27;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  type metadata accessor for NearbyAdvertisement();
  v12 = (*(v7 + 16))(v10, a2, v6);
  (*(*v11 + 152))(v15, v12);
  v19 = v15[2];
  v20 = v15[3];
  v21 = v15[4];
  v22 = v16;
  v17 = v15[0];
  v18 = v15[1];
  outlined init with copy of (String, Any)(&v17, v23, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  outlined destroy of BluetoothScanner.Device(v15);
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  result = NearbyAdvertisement.init(scannerID:device:)(v10, v23);
  *a3 = result;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = NearbyAdvertisement.identifier.getter();
  v6 = v5;
  if (v4 == NearbyAdvertisement.identifier.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v5[7] = *(v8 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v1 = v0[9];
  v2 = *(v0[2] + 40);
  NearbyInvitationServiceBluetoothController.findInvitations(scannerID:for:ignoringDistance:)(v0[3], 1, 0);
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v18 = v7;
  v9 = v0[2];
  v10 = type metadata accessor for TaskPriority();
  v19 = *(*(v10 - 8) + 56);
  v19(v7, 1, 1, v10);
  v11 = v8;
  (*(v6 + 16))(v4, v3, v8);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v6 + 32))(v14 + v12, v4, v11);
  *(v14 + v13) = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v14);

  v19(v18, 1, 1, v10);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v15);

  (*(v6 + 8))(v3, v11);

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMd, &_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMR);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v1 = v0[7];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
  v5 = v0[7];
  v6 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ((*(**(v0 + 32) + 208))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 32))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v8);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMd, &_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = *(v0[3] + 40);
  NearbyInvitationServiceBluetoothController.lostInvitations()(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Any?(v0[7], &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
    v5 = v0[10];
    v6 = v0[6];
    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[6];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    AsyncStream.makeAsyncIterator()();
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
    v13 = v0[6];
    v14 = v0[4];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v14);
  }
}

{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ((*(**(v0 + 24) + 208))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 40))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
    v7 = *(v0 + 48);
    v8 = *(v0 + 32);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v8);
  }

  else
  {
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v10 + 8))(v9, v11);
    v12 = *(v0 + 80);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v27 = a4;
  v29 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "NearbyInvitationsProviderDataSource scanNearbyEndpoints", v16, 2u);
  }

  v17 = v27;
  a3(0);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v28;
  (*(v7 + 32))(&v21[v19], &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v22 = v29;
  *&v21[v20] = v29;
  v23 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v23 = a3;
  *(v23 + 1) = v17;

  v24 = v22;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:), v21);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 16))(v1, v0[3], v0[5]);
  v4 = type metadata accessor for NearbyInvitationScanner();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  v8 = specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(v1, v2, v3, v7);

  v9 = *(v3 + 72);
  *(v3 + 72) = v8;

  (*(*v8 + 232))(v10);

  v11 = v0[1];

  return v11();
}

void NearbyInvitationsProviderDataSource.stopScanningNearbyInvitations(provider:response:)()
{
  v1 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "NearbyInvitationsProviderDataSource scanNearbyInvitations", v5, 2u);
  }

  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  v7 = [v6 btScanAbstraction];

  if (v7)
  {
    v8 = (*(*v1 + 392))(v17);
    v10 = v9;
    v11 = *v9;

    *v10 = &_swiftEmptyDictionarySingleton;
    v8(v17, 0);
  }

  v12 = v1[5];
  v13 = *(v12 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan);
  if (v13)
  {
    v14 = *(*v13 + 336);
    v15 = *(v12 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan);

    v14(v16);
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v39 - v9;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

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
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource requestConnection with %@", v15, 0xCu);
    outlined destroy of Any?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v22 = NearbyAdvertisement.identifier.getter();
  v24 = v23;
  v25 = *(*a2 + 344);

  v26 = v25(v43);
  v28 = v27;
  v29 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v28;
  *v28 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v22, v24, isUniquelyReferenced_nonNull_native);

  *v28 = v42;
  v26(v43, 0);
  v31 = a2[7];
  v32 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  (*((swift_isaMask & *v31) + 0x110))(v32);

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = a2;
  v34[5] = v12;
  v35 = v40;
  v36 = v41;
  v34[6] = v21;
  v34[7] = v35;
  v34[8] = v36;
  v37 = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:), v34);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMd, &_s7Combine22AsyncThrowingPublisherVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMR);
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMR);
  v8[16] = v12;
  v13 = *(v12 - 8);
  v8[17] = v13;
  v14 = *(v13 + 64) + 15;
  v8[18] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)()
{
  v27 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v3, static Log.host);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315394;
    v0[7] = v7;
    type metadata accessor for NearbyInvitationsProviderDataSource();

    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: awating requestConnection with %@", v9, 0x16u);
    outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v16 = v0[18];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[13];
  v0[4] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<Data, Error> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMR);
  Publisher.values.getter();
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v18 + 8))(v17, v19);
  v20 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncThrowingPublisher<PassthroughSubject<Data, Error>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMR);
  v21 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v22 = swift_task_alloc();
  v0[20] = v22;
  *v22 = v0;
  v22[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:);
  v23 = v0[18];
  v24 = v0[16];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v24, v20);
}

{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:);
  }

  else
  {
    v3 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v30 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  else
  {
    v28 = v0[2];
    v2 = v0[19];
    v4 = v0[8];
    v3 = v0[9];

    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[8];
      v8 = v0[9];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v10 = 136315394;
      v0[6] = v9;
      type metadata accessor for NearbyInvitationsProviderDataSource();

      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v29);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v8;
      *v11 = v8;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: received requestConnection with %@", v10, 0x16u);
      outlined destroy of Any?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    v17 = v0[17];
    v27 = v0[18];
    v18 = v0[16];
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[9];
    NearbyAdvertisement.identifier.getter();
    objc_allocWithZone(type metadata accessor for InvitationBlob());
    outlined copy of Data._Representation(v28, v1);
    v22 = InvitationBlob.init(invitationID:dataBlob:)();
    v20(v22, 0);

    outlined consume of Data?(v28, v1);
    (*(v17 + 8))(v27, v18);
  }

  v23 = v0[18];
  v24 = v0[15];

  v25 = v0[1];

  return v25();
}

{
  *(v0 + 40) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:), 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "NearbyInvitationsProviderDataSource connection request was denied %@", v6, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v9 = v0[21];
  v11 = v0[11];
  v10 = v0[12];

  swift_errorRetain();
  v11(0, v9);

  v12 = v0[18];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[0] = a7;
  v9 = v7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v28 = *(v18 - 8);
  v29 = v18;
  v19 = *(v28 + 64);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = *(v9 + 32);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = v9;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  aBlock[4] = a6;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = v27[0];
  v23 = _Block_copy(aBlock);
  v24 = a1;

  v25 = a2;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v30 + 8))(v17, v14);
  (*(v28 + 8))(v21, v29);
}

void closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v73 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for NWEndpoint();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NWBrowser.Result();
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  __chkstk_darwin(v15);
  v77 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v66 - v28;
  v74 = a1;
  NearbyAdvertisement.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    outlined destroy of Any?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Log.client);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80 = a2;
      v81 = v50;
      *v49 = 136315138;
      type metadata accessor for NearbyInvitationsProviderDataSource();

      v51 = String.init<A>(reflecting:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v81);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s: Received no scannerID in connection request", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    return;
  }

  v30 = (*(v23 + 32))(v29, v21, v22);
  v31 = (*(*a2 + 352))(v30);
  if (!*(v31 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v33 & 1) == 0))
  {

    (*(v23 + 8))(v29, v22);
    goto LABEL_11;
  }

  (*(v78 + 16))(v77, *(v31 + 56) + *(v78 + 72) * v32, v79);

  v34 = a2[9];
  if (v34)
  {
    v35 = one-time initialization token for host;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.host);
    (*(v23 + 16))(v27, v29, v22);
    v37 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v70))
    {
      v38 = swift_slowAlloc();
      v68 = v38;
      v69 = swift_slowAlloc();
      v81 = v69;
      *v38 = 136315138;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v67 = v37;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = *(v23 + 8);
      v71 = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v41(v27, v22);
      v42 = v41;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v40, &v81);

      v45 = v67;
      v44 = v68;
      *(v68 + 1) = v43;
      _os_log_impl(&_mh_execute_header, v45, v70, "NearbyInvitationsProviderDataSource connecting to endpoint to %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
    }

    else
    {

      v58 = *(v23 + 8);
      v71 = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58(v27, v22);
      v42 = v58;
    }

    v59 = v77;
    NWBrowser.Result.endpoint.getter();
    (*(*v34 + 240))(v14);
    (*(v72 + 8))(v14, v11);
    v60 = type metadata accessor for TaskPriority();
    (*(*(v60 - 8) + 56))(v10, 1, 1, v60);
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v63 = v73;
    v62 = v74;
    v61[4] = v34;
    v61[5] = v63;
    v61[6] = v62;

    v64 = v63;
    v65 = v62;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:), v61);

    v76(0);

    (*(v78 + 8))(v59, v79);
    v42(v29, v22);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Log.host);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "NearbyInvitationsProviderDataSource requestEndpointConnection cannot find nearbyInvitationsBrowser", v57, 2u);
    }

    (*(v78 + 8))(v77, v79);
    (*(v23 + 8))(v29, v22);
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMR);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  (*(**(v0 + 40) + 200))();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[NWConnection]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  Publisher<>.values.getter();
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
  v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v12, v8);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
  }

  else
  {
    v3 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 16);
  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = v3;
  v4 = *(v3 + 152);
  if (v4)
  {
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v30 = *(v3 + 152);
      }

      a1 = _CocoaArrayWrapper.endIndex.getter();
      v5 = a1;
      if (!a1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }

    v6 = 0;
    v37 = *(**(v3 + 40) + 248);
    v36 = *(v3 + 152) & 0xC000000000000001;
    v35 = v4;
    do
    {
      if (v36)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v4 + 8 * v6 + 32);
      }

      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v12 = *(v3 + 48);
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.client);
      v14 = v12;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v3 + 48);
        v18 = v5;
        v19 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v19 = 136315394;
        v20 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v38);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v3 + 32) = v11;
        type metadata accessor for NWConnection();

        v23 = String.init<A>(reflecting:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v38);

        *(v19 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "NearbyInvitationsProviderDataSource Sending pre-lmi data %s to %s", v19, 0x16u);
        swift_arrayDestroy();

        v5 = v18;
        v4 = v35;
      }

      ++v6;
      v7 = *(v3 + 48);
      v8 = *(v3 + 56);
      v9 = *(v3 + 40);
      v10 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
      v37(v10);
    }

    while (v5 != v6);
LABEL_20:

    v31 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
    v32 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v33 = swift_task_alloc();
    *(v3 + 136) = v33;
    *v33 = v3;
    v33[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
    v34 = *(v3 + 128);
    a2 = *(v3 + 112);
    a1 = v3 + 16;
    a3 = v31;

    return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
  }

  v26 = *(v3 + 104);
  v27 = *(v3 + 80);
  (*(*(v3 + 120) + 8))(*(v3 + 128), *(v3 + 112));

  v28 = *(v3 + 8);

  return v28();
}

uint64_t NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + 32);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_90;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  outlined copy of Data._Representation(a2, a3);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource approveConnectionRequest", v15, 2u);
  }

  v16 = [objc_allocWithZone(CPFeatureFlags) init];
  v17 = [v16 wranglerHomePodBoopEnabled];

  if (v17)
  {
    v18 = *(a1 + 80);
    if (v18)
    {
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v18;
      v20[5] = a2;
      v20[6] = a3;
      v20[7] = a4;

      v21 = a2;
      outlined copy of Data._Representation(a3, a4);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:), v20);
    }

    else
    {
      v28 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v28, v25, "NearbyInvitationsProviderDataSource nearbyInvitationsListener is nil", v26, 2u);
      }

      v27 = v28;
    }
  }

  else
  {
    NearbyAdvertisement.handle.getter();
    if (v22)
    {
      v23 = *(a1 + 56);
      v24 = NearbyAdvertisement.identifier.getter();
      (*((swift_isaMask & *v23) + 0xF8))(v24);
    }
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMR);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
  v7[14] = v14;
  v15 = *(v14 - 8);
  v7[15] = v15;
  v16 = *(v15 + 64) + 15;
  v7[16] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  (*(**(v0 + 32) + 184))();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[NWConnection]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  Publisher<>.values.getter();
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
  v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v12, v8);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  }

  else
  {
    v3 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 16);
  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:), 0, 0);
}

{
  *(v0 + 24) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[19];
  if (v4)
  {
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v19 = v3[19];
      }

      a1 = _CocoaArrayWrapper.endIndex.getter();
      v5 = a1;
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }

    v6 = 0;
    v24 = v3[19] & 0xC000000000000001;
    v7 = v4;
    do
    {
      if (v24)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v10 = v3[6];
      v9 = v3[7];
      ++v6;
      v12 = v3[4];
      v11 = v3[5];
      v13 = NearbyAdvertisement.identifier.getter();
      NearbyInvitationAdvertiser.approveConnectionRequest(id:localInvitation:connection:)(v13, v14, v10, v9, v8);

      v4 = v7;
    }

    while (v5 != v6);
LABEL_16:

    v20 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
    v21 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v22 = swift_task_alloc();
    v3[17] = v22;
    *v22 = v3;
    v22[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
    v23 = v3[16];
    a2 = v3[14];
    a1 = (v3 + 2);
    a3 = v20;

    return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
  }

  v15 = v3[13];
  v16 = v3[10];
  (*(v3[15] + 8))(v3[16], v3[14]);

  v17 = v3[1];

  return v17();
}

uint64_t NearbyInvitationsProviderDataSource.denyConnectionRequest(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.denyConnectionRequest(_:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_96;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.denyConnectionRequest(_:)(uint64_t a1, uint64_t a2)
{
  result = NearbyAdvertisement.handle.getter();
  if (v4)
  {
    if (one-time initialization token for host != -1)
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
      _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationsProviderDataSource denyConnectionRequest", v8, 2u);
    }

    v9 = *(a2 + 56);
    v10 = NearbyAdvertisement.identifier.getter();
    (*((swift_isaMask & *v9) + 0xF0))(v10);
  }

  return result;
}

uint64_t NearbyInvitationsProviderDataSource.deinit()
{
  outlined destroy of weak PeerConnectionDelegate?(v0 + 16);

  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource__dataReceived;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource_cancellables);

  return v0;
}

uint64_t NearbyInvitationsProviderDataSource.__deallocating_deinit()
{
  NearbyInvitationsProviderDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)()
{
  v1 = v0[7];
  v2 = *(v0[6] + 96);
  _StringGuts.grow(_:)(22);

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v6);

  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = dispatch thunk of ABCReporter.signature(subType:context:process:)();
  v0[8] = v9;

  if (v9)
  {
    v10 = *(&async function pointer to dispatch thunk of ABCReporter.report(with:duration:) + 1);
    v19 = (&async function pointer to dispatch thunk of ABCReporter.report(with:duration:) + async function pointer to dispatch thunk of ABCReporter.report(with:duration:));
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:);
    v12.n128_u64[0] = 0;

    return v19(v9, v12);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.abcReporter);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to generate signature for session unsuspend failure", v17, 2u);
    }

    v18 = v0[1];

    return v18();
  }
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t NearbyInvitationsProviderDataSource.connectionChanged(added:endpoint:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.host);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = v3;
    v25 = v19;
    v26 = a2;
    v27 = v24;
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v21;
    *v28 = v21;
    v29 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "NearbyInvitationsProviderDataSource is adding connection from delegate %@)", v27, 0xCu);
    outlined destroy of Any?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    a2 = v26;
    v19 = v25;
    v3 = v41;
  }

  NearbyAdvertisement.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return outlined destroy of Any?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v14 + 32))(v19, v12, v13);
  v31 = v42;
  (*(v14 + 16))(v42, v19, v13);
  v32 = type metadata accessor for NWBrowser.Result();
  v33 = *(v32 - 8);
  v34 = v43;
  (*(v33 + 16))(v43, a2, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = (*(*v3 + 368))(v44);
  specialized Dictionary.subscript.setter(v34, v31);
  v36 = v35(v44, 0);
  if ((*(*v3 + 208))(v36))
  {
    v38 = v37;
    ObjectType = swift_getObjectType();
    (*(v38 + 32))(v21, ObjectType, v38);
    swift_unknownObjectRelease();
  }

  return (*(v14 + 8))(v19, v13);
}

uint64_t NearbyInvitationsProviderDataSource.connectionChanged(removed:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v43 = &v39 - v17;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = v19;
    v45[0] = v24;
    *v23 = 136315138;
    type metadata accessor for NearbyAdvertisement();
    v40 = v12;
    v25 = v19;
    v26 = String.init<A>(reflecting:)();
    v28 = v19;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v45);
    v12 = v40;

    *(v23 + 4) = v29;
    v19 = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "NearbyInvitationsProviderDataSource is removing connection from delegate %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);

    v16 = v41;
  }

  NearbyAdvertisement.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Any?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v31 = v43;
  (*(v12 + 32))(v43, v10, v11);
  (*(v12 + 16))(v16, v31, v11);
  v32 = type metadata accessor for NWBrowser.Result();
  v33 = v42;
  (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
  v34 = (*(*v2 + 368))(v45);
  specialized Dictionary.subscript.setter(v33, v16);
  v35 = v34(v45, 0);
  if ((*(*v2 + 208))(v35))
  {
    v37 = v36;
    ObjectType = swift_getObjectType();
    (*(v37 + 40))(v19, ObjectType, v37);
    swift_unknownObjectRelease();
  }

  return (*(v12 + 8))(v43, v11);
}

uint64_t specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t *a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  v28 = a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(*a2 + 168);

  v10 = v8(v9);
  v11 = (v10 + 48);
  v12 = *(v10 + 16) + 1;
  while (1)
  {
    if (!--v12)
    {

      type metadata accessor for NearbyRangingFilter();
      swift_allocObject();
      outlined init with copy of BluetoothScanner.Device(a1, v27);
      v15 = specialized NearbyRangingFilter.init(scannerDevice:config:)(a1, a4 & 1, a5);
      outlined destroy of BluetoothScanner.Device(a1);
      v17 = v28;
      v18 = *v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        v18 = result;
        *v17 = result;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      if (v21 < v20 >> 1)
      {
        v13 = v7;
        v14 = v6;
        goto LABEL_17;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      v18 = result;
      v13 = v7;
      v14 = v6;
      goto LABEL_20;
    }

    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (v7 == v13 && v6 == v14)
    {
      break;
    }

    v11 += 3;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_14;
    }
  }

  v13 = v7;
LABEL_14:

  (*(*v15 + 200))(a1);
  v17 = v28;
  v18 = *v28;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v18;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    v18 = result;
    *v17 = result;
  }

  v21 = v18[2];
  v23 = v18[3];
  v22 = v21 + 1;
  if (v21 >= v23 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v21 + 1, 1, v18);
    v18 = result;
LABEL_20:
    *v17 = v18;
  }

LABEL_17:
  v18[2] = v22;
  v24 = &v18[3 * v21];
  v24[4] = v13;
  v24[5] = v14;
  v24[6] = v15;
  return result;
}

uint64_t partial apply for closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for NearbyAdvertisement();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = NearbyAdvertisement.identifier.getter();
      v14 = v13;
      if (NearbyAdvertisement.identifier.getter() == v12 && v15 == v14)
      {

LABEL_5:
        ++v4;
        v6 = v22 + 8;
        v7 = v21 - 1;
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

      v18 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v18;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_106:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v102 = *(v9 + 2);
      if (v102 >= 2)
      {
        while (*v6)
        {
          v103 = v9;
          v9 = (v102 - 1);
          v104 = *&v103[16 * v102];
          v105 = *&v103[16 * v102 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v104), (*v6 + 8 * *&v103[16 * v102 + 16]), (*v6 + 8 * v105), v8);
          if (v5)
          {
            goto LABEL_116;
          }

          if (v105 < v104)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
          }

          if (v102 - 2 >= *(v103 + 2))
          {
            goto LABEL_132;
          }

          v106 = &v103[16 * v102];
          *v106 = v104;
          *(v106 + 1) = v105;
          specialized Array.remove(at:)(v102 - 1);
          v9 = v103;
          v102 = *(v103 + 2);
          if (v102 <= 1)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_142;
      }

LABEL_116:

      return;
    }

LABEL_138:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_108;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (2)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_33;
    }

    v112 = v9;
    v11 = *v6;
    v12 = *(*v6 + 8 * v10);
    v13 = *(*v6 + 8 * v8);
    v14 = v12;
    v15 = NearbyAdvertisement.identifier.getter();
    v17 = v16;
    if (NearbyAdvertisement.identifier.getter() == v15 && v18 == v17)
    {
      v117 = 0;
    }

    else
    {
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_25;
    }

    v108 = v10;
    v20 = (v11 + 8 * v10 + 16);
    while (1)
    {
      v22 = v8;
      v23 = *(v20 - 1);
      v24 = *v20;
      v25 = v23;
      v26 = NearbyAdvertisement.identifier.getter();
      v28 = v27;
      if (NearbyAdvertisement.identifier.getter() == v26 && v29 == v28)
      {

        if (v117)
        {
          v6 = a3;
          v9 = v112;
          v8 = v22;
          v10 = v108;
          goto LABEL_26;
        }

        goto LABEL_14;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v117 ^ v21))
      {
        break;
      }

LABEL_14:
      v8 = (v22 + 1);
      ++v20;
      if (v7 == v22 + 1)
      {
        v8 = v7;
        goto LABEL_24;
      }
    }

    v8 = v22;
LABEL_24:
    v10 = v108;
LABEL_25:
    v6 = a3;
    v9 = v112;
    if (v117)
    {
LABEL_26:
      if (v8 < v10)
      {
        goto LABEL_135;
      }

      if (v10 < v8)
      {
        v31 = 8 * v8 - 8;
        v32 = 8 * v10;
        v33 = v8;
        v34 = v10;
        do
        {
          if (v34 != --v33)
          {
            v35 = *v6;
            if (!*v6)
            {
              goto LABEL_141;
            }

            v36 = *(v35 + v32);
            *(v35 + v32) = *(v35 + v31);
            *(v35 + v31) = v36;
          }

          ++v34;
          v31 -= 8;
          v32 += 8;
        }

        while (v34 < v33);
      }
    }

LABEL_33:
    v37 = v6[1];
    if (v8 >= v37)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_134;
    }

    if (v8 - v10 >= a4)
    {
LABEL_55:
      if (v8 < v10)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v56 = *(v9 + 2);
      v55 = *(v9 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v9);
      }

      *(v9 + 2) = v57;
      v58 = &v9[16 * v56];
      *(v58 + 4) = v10;
      *(v58 + 5) = v8;
      v59 = *a1;
      if (!*a1)
      {
        goto LABEL_143;
      }

      if (!v56)
      {
LABEL_3:
        v7 = v6[1];
        if (v8 >= v7)
        {
          goto LABEL_106;
        }

        continue;
      }

      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v9 + 4);
          v62 = *(v9 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_75:
          if (v64)
          {
            goto LABEL_122;
          }

          v77 = &v9[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_125;
          }

          v83 = &v9[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_129;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v87 = &v9[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_89:
        if (v82)
        {
          goto LABEL_124;
        }

        v90 = &v9[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_127;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_96:
        v98 = v60 - 1;
        if (v60 - 1 >= v57)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v6)
        {
          goto LABEL_140;
        }

        v99 = *&v9[16 * v98 + 32];
        v100 = *&v9[16 * v60 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v99), (*v6 + 8 * *&v9[16 * v60 + 32]), (*v6 + 8 * v100), v59);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v100 < v99)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v98 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v101 = &v9[16 * v98];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        specialized Array.remove(at:)(v60);
        v57 = *(v9 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v9[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_120;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_121;
      }

      v72 = &v9[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_123;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_126;
      }

      if (v76 >= v68)
      {
        v94 = &v9[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  v38 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  if (v38 >= v37)
  {
    v38 = v6[1];
  }

  if (v38 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v38)
  {
    goto LABEL_55;
  }

  v113 = v9;
  v107 = v5;
  v109 = v10;
  v39 = *v6;
  v40 = v39 + 8 * v8 - 8;
  v41 = v10 - v8;
  v115 = v38;
LABEL_44:
  v116 = v40;
  v118 = v8;
  v42 = *(v39 + 8 * v8);
  v43 = v41;
  while (1)
  {
    v44 = *v40;
    v45 = v42;
    v46 = v44;
    v47 = NearbyAdvertisement.identifier.getter();
    v49 = v48;
    if (NearbyAdvertisement.identifier.getter() == v47 && v50 == v49)
    {

LABEL_43:
      v8 = v118 + 1;
      v40 = v116 + 8;
      --v41;
      if ((v118 + 1) == v115)
      {
        v8 = v115;
        v5 = v107;
        v10 = v109;
        v6 = a3;
        v9 = v113;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v39)
    {
      break;
    }

    v53 = *v40;
    v42 = *(v40 + 8);
    *v40 = v42;
    *(v40 + 8) = v53;
    v40 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, void **a2, id *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v15 = v5;
      goto LABEL_48;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v17 = *v14;
      v18 = *v12;
      v19 = v17;
      v20 = NearbyAdvertisement.identifier.getter();
      v22 = v21;
      v24 = NearbyAdvertisement.identifier.getter() == v20 && v23 == v22;
      if (v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      v16 = v12;
      v24 = v5 == v12++;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v5;
      if (v14 >= v44)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v16 = v14;
    v24 = v5 == v14++;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v16;
    goto LABEL_13;
  }

  v14 = a4;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v26 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v26;
  }

  v15 = a2;
  v44 = &v14[v11];
  if (v9 >= 8 && a2 > v5)
  {
    v43 = v14;
LABEL_31:
    __dst = v15;
    v27 = v15 - 1;
    v28 = v4;
    v29 = v44;
    v42 = v15 - 1;
    do
    {
      v30 = *--v29;
      v31 = *v27;
      v32 = v30;
      v33 = v31;
      v34 = NearbyAdvertisement.identifier.getter();
      v36 = v35;
      if (NearbyAdvertisement.identifier.getter() == v34 && v37 == v36)
      {

        v4 = v28 - 1;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v28 - 1;
        if (v39)
        {
          if (v28 != __dst)
          {
            *v4 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v15 = v42, v42 <= v5))
          {
            v15 = v42;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      v27 = v42;
      if (v44 != v28)
      {
        *v4 = *v29;
      }

      v44 = v29;
      v28 = v4;
    }

    while (v29 > v43);
    v44 = v29;
    v14 = v43;
    v15 = __dst;
  }

LABEL_48:
  if (v15 != v14 || v15 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v14, 8 * (v44 - v14));
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

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14NearbySessions0H13AdvertisementC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [NearbyAdvertisement] and conformance [A], &_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NearbyAdvertisement();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 168))(result);
    (*(*v1 + 176))(v2);
  }

  return result;
}

uint64_t specialized NearbyInvitationsProviderDataSource.receivedMessage(content:message:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions21InvitationRequestDataVSgMd, &_s14NearbySessions21InvitationRequestDataVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for InvitationRequestData();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  outlined copy of Data?(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);
  if (os_log_type_enabled(v15, v16))
  {
    v33 = v3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    v34 = v11;
    v32 = a1;
    if (a2 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v36 = a1;
      v37 = a2;
      outlined copy of Data._Representation(a1, a2);
      v20 = String.init<A>(reflecting:)();
      v19 = v21;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v38);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "NearbyInvitationsProviderDataSource is getting data from delegate %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);

    v3 = v33;
    v11 = v34;
  }

  else
  {
  }

  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  result = JSONDecoder.init()();
  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, &type metadata accessor for InvitationRequestData);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v35, v9, v10);
    type metadata accessor for InvitationJoinResponse();
    InvitationRequestData.id.getter();
    v27 = static InvitationJoinResponse.approved(sessionIdentifier:memberHandles:userInfo:)();

    if ((*(*v3 + 208))(v28))
    {
      v30 = v29;
      ObjectType = swift_getObjectType();
      (*(v30 + 56))(v27, ObjectType, v30);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return (*(v11 + 8))(v35, v10);
  }

  return result;
}

void specialized NearbyInvitationsProviderDataSource.scannerError(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NWError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NWError and conformance NWError, &type metadata accessor for NWError);
    swift_allocError();
    v8(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationsProviderDataSource received error from browser connection %@", v11, 0xCu);
    outlined destroy of Any?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t specialized NearbyInvitationsProviderDataSource.receivedApprovalMessage(content:message:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions21InvitationRequestDataVSgMd, &_s14NearbySessions21InvitationRequestDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for InvitationRequestData();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "NearbyInvitationsProviderDataSource received approval message", v17, 2u);
  }

  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  result = JSONDecoder.init()();
  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, &type metadata accessor for InvitationRequestData);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(v10 + 56))(v8, 0, 1, v9);
    v22 = (*(v10 + 32))(v13, v8, v9);
    if (!(*(*v3 + 208))(v22))
    {

      return (*(v10 + 8))(v13, v9);
    }

    v24 = v23;
    v31[0] = InvitationRequestData.id.getter();
    v26 = v25;
    result = InvitationRequestData.invitationData.getter();
    if (v27 >> 60 != 15)
    {
      v28 = result;
      v29 = v27;
      ObjectType = swift_getObjectType();
      (*(v24 + 48))(v31[0], v26, v28, v29, ObjectType, v24);

      outlined consume of Data?(v28, v29);
      swift_unknownObjectRelease();

      return (*(v10 + 8))(v13, v9);
    }
  }

  __break(1u);
  return result;
}

char *specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(void *a1, uint64_t a2, char *a3)
{
  v41 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v38 = v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v35 = v33 - v9;
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v33[1] = "nearby-group-host-limit";
  v33[2] = v18;
  static DispatchQoS.unspecified.getter();
  *&v43 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *(a3 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 4) = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  *&v43 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v20 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(&a3[v19], v20, v37);
  v21 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v43 = xmmword_1000C8990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v22 = v38;
  Published.init(initialValue:)();
  (*(v39 + 32))(&a3[v21], v22, v40);
  v23 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_connectionRequests;
  *&a3[v23] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7Network12NWConnectionCSgTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.client);
  v25 = v41;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "NearbyInvitationsAdvertiser init %@", v28, 0xCu);
    outlined destroy of Any?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  *(a3 + 3) = v25;
  v31 = &a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate];
  swift_beginAccess();
  *(v31 + 1) = &protocol witness table for NearbyInvitationsProviderDataSource;
  swift_unknownObjectWeakAssign();
  return a3;
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_38Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(a1, v9, v10, v12, v1 + v6, v11);
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t specialized BluetoothScanner.init(discoveryEngine:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  v13 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v32[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v9 + 32))(a2 + v13, v12, v8);
  *(a2 + 16) = a1;
  *(a2 + 24) = &protocol witness table for CBDiscovery;
  [a1 setBleScanRate:20];
  v14 = swift_allocObject();
  *(v14 + 24) = &protocol witness table for CBDiscovery;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssertionManager();
  v15 = swift_allocObject();
  v16 = type metadata accessor for Lock();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  v15[4] = Lock.init()();
  v15[5] = 0;
  v15[2] = partial apply for closure #1 in BluetoothScanner.init(discoveryEngine:);
  v15[3] = v14;

  *(a2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion) = v15;
  v19 = *(a2 + 16);
  v20 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v20 + 96);
  swift_unknownObjectRetain();

  v23(partial apply for closure #2 in BluetoothScanner.init(discoveryEngine:), v22, ObjectType, v20);
  swift_unknownObjectRelease();

  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  v26 = swift_getObjectType();
  v27 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v28 = *(v25 + 72);

  v28(partial apply for closure #3 in BluetoothScanner.init(discoveryEngine:), v27, v26, v25);
  swift_unknownObjectRelease();

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #4 in BluetoothScanner.init(discoveryEngine:), v30);

  return a2;
}

char *specialized FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  *(v4 + 2) = &_swiftEmptySetSingleton;
  *(v4 + 3) = &_swiftEmptySetSingleton;
  v13 = *(*v4 + 112);
  v19 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GGMR);
  CurrentSubject.init(wrappedValue:)();
  v14 = (*(v9 + 32))(&v4[v13], v12, v8);
  v19 = (*(*a1 + 128))(v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2 & 1;
  *(v16 + 40) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

char *specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v38 = a2;
  v39 = a3;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v34);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v33[0] = "InvitationsAdvertiser";
  v33[1] = v16;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *(a4 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 6) = 0;
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v41 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v18 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(&a4[v17], v18, v37);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.client);
  v20 = v38;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41 = v24;
    *v23 = 136315138;
    v25 = [v20 debugDescription];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v41);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "NearbyInvitationScanner init with parameters %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  *(a4 + 3) = v20;
  swift_beginAccess();
  *(a4 + 5) = &protocol witness table for NearbyInvitationsProviderDataSource;
  swift_unknownObjectWeakAssign();
  v30 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 32))(&a4[v30], v40, v31);
  return a4;
}

void specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveConnection:)(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  UUID.init()();
  v4 = a1[1];
  v5 = a1[3];
  v23 = *a1;
  v24 = a1[2];
  v6 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v7 = (a1 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  v10 = (a1 + *(v6 + 32));
  v11 = *v10;
  v12 = v10[1];
  if (v12 >> 60 != 15)
  {
    v13 = *v10;
  }

  objc_allocWithZone(type metadata accessor for NearbyAdvertisement());

  outlined copy of Data?(v11, v12);
  v14 = NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Marking all generated pseudonyms as used due to incoming connection request", v18, 2u);
  }

  v19 = (*((swift_isaMask & *v25[6]) + 0xD0))();
  if (((*v25)[26])(v19))
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(v14, ObjectType, v21);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v79 = a6;
  v80 = a7;
  v81 = a4;
  v82 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v69 - v26;
  v28 = *a1;
  v29 = a1[1];
  UUID.init(uuidString:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v83 = v15;
    outlined destroy of Any?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
    v30 = swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v32 = a2;
    v33 = a3;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.host);

    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v83;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v85);
      *(v39 + 12) = 2080;
      v84 = v30;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v40 = String.init<A>(reflecting:)();
      v42 = v8;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v85);

      *(v39 + 14) = v43;
      v8 = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Dropping joinRequest from: %s, reason: %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    static TaskPriority.background.getter();
    v44 = type metadata accessor for TaskPriority();
    (*(*(v44 - 8) + 56))(v38, 0, 1, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v8;
    v45[5] = v30;
    swift_errorRetain();

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:), v45);

    return outlined destroy of Any?(v38, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    v78 = v8;
    (*(v21 + 32))(v27, v19, v20);
    v77 = a2;
    v47 = String._bridgeToObjectiveC()();
    v48 = IDSCopyAddressDestinationForDestination();

    v49 = IDSCopyRawAddressForDestination();
    if (v49)
    {
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (String.count.getter() < 1)
      {
        (*(v21 + 8))(v27, v20);
      }

      v53 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
      v54 = *(a1 + v53[8]);
      if (v54 == 2 || (v54 & 1) != 0)
      {

        v70 = v77;
        v75 = a3;
      }

      else
      {
        v70 = 0;
        v75 = 0;
      }

      v83 = v15;
      (*(v21 + 16))(v25, v27, v20);
      v55 = (a1 + v53[6]);
      v56 = v55[1];
      v76 = v52;
      v71 = v50;
      if (v56)
      {
        v69 = *v55;
        v74 = v56;
      }

      else
      {
        v69 = 0;
        v74 = 0xE000000000000000;
      }

      v57 = (a1 + v53[7]);
      v58 = *v57;
      v59 = v57[1];
      if (v59 >> 60 == 15)
      {
        v60 = 0;
      }

      else
      {
        v60 = *v57;
      }

      v61 = 0xC000000000000000;
      if (v59 >> 60 != 15)
      {
        v61 = v59;
      }

      v72 = v61;
      v73 = v60;
      v62 = *((swift_isaMask & *v78[6]) + 0xE0);

      outlined copy of Data?(v58, v59);
      v62(v81, v82);
      objc_allocWithZone(type metadata accessor for IncomingInvitationJoinRequest());
      outlined copy of Data._Representation(v79, v80);
      v63 = IncomingInvitationJoinRequest.init(invitationID:remotePseudonym:destinationToken:remotePublicKey:displayName:userInfo:hostInfo:)();
      if (((*v78)[26])(v63, v64, v65))
      {
        v67 = v66;
        ObjectType = swift_getObjectType();
        (*(v67 + 24))(v63, ObjectType, v67);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return (*(v21 + 8))(v27, v20);
  }
}

uint64_t specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveConnection:)(uint64_t *a1)
{
  v141 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v2 = *(*(v141 - 8) + 64);
  v3 = __chkstk_darwin(v141);
  v140 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v138 = (&v134 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v139 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v137 = &v134 - v11;
  __chkstk_darwin(v10);
  v13 = &v134 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v136 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v144 = &v134 - v19;
  v20 = __chkstk_darwin(v18);
  v135 = &v134 - v21;
  v22 = __chkstk_darwin(v20);
  v142 = &v134 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v134 - v25;
  __chkstk_darwin(v24);
  v28 = &v134 - v27;
  v29 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v145 = (&v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v147 = (&v134 - v35);
  v36 = __chkstk_darwin(v34);
  v152 = &v134 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v134 - v39;
  v41 = __chkstk_darwin(v38);
  v148 = &v134 - v42;
  __chkstk_darwin(v41);
  v44 = &v134 - v43;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = __swift_project_value_buffer(v45, static Log.host);
  outlined init with copy of NearbyProtoJoinResponse.Content(a1, v44, type metadata accessor for NearbyProtoConnectionResponse.Content);
  v149 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  v49 = os_log_type_enabled(v47, v48);
  v143 = v30;
  if (v49)
  {
    v150 = a1;
    v146 = v13;
    v50 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v153 = v134;
    *v50 = 136315138;
    outlined init with copy of NearbyProtoJoinResponse.Content(v44, v28, type metadata accessor for NearbyProtoConnectionResponse.Content);
    (*(v30 + 56))(v28, 0, 1, v29);
    outlined init with copy of (String, Any)(v28, v26, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    if ((*(v30 + 48))(v26, 1, v29) == 1)
    {
      v51 = 7104878;
      v52 = 0xE300000000000000;
    }

    else
    {
      v53 = v29;
      v54 = v148;
      outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v26, v148, type metadata accessor for NearbyProtoConnectionResponse.Content);
      outlined init with copy of NearbyProtoJoinResponse.Content(v54, v40, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v51 = String.init<A>(reflecting:)();
      v52 = v55;
      v56 = v54;
      v29 = v53;
      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v56, type metadata accessor for NearbyProtoConnectionResponse.Content);
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v44, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v153);

    *(v50 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v47, v48, "NearbyInvitationsProviderDataSource got didReceiveConnection response: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v134);

    v13 = v146;
    a1 = v150;
  }

  else
  {

    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v44, type metadata accessor for NearbyProtoConnectionResponse.Content);
  }

  v58 = *(v29 + 24);
  outlined init with copy of (String, Any)(a1 + v58, v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v59 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v60 = *(*(v59 - 8) + 48);
  result = v60(v13, 1, v59);
  v62 = v152;
  if (result != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v72 = v147;
      outlined init with copy of NearbyProtoJoinResponse.Content(a1, v147, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = a1;
        v76 = v13;
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v153 = v78;
        *v77 = 136315138;
        v79 = v72;
        v80 = v144;
        outlined init with copy of NearbyProtoJoinResponse.Content(v79, v144, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v81 = v143;
        (*(v143 + 56))(v80, 0, 1, v29);
        v82 = v80;
        v83 = v136;
        outlined init with copy of (String, Any)(v82, v136, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
        if ((*(v81 + 48))(v83, 1, v29) == 1)
        {
          v84 = 7104878;
          v85 = 0xE300000000000000;
        }

        else
        {
          v100 = v148;
          outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v83, v148, type metadata accessor for NearbyProtoConnectionResponse.Content);
          outlined init with copy of NearbyProtoJoinResponse.Content(v100, v40, type metadata accessor for NearbyProtoConnectionResponse.Content);
          v84 = String.init<A>(reflecting:)();
          v85 = v101;
          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v100, type metadata accessor for NearbyProtoConnectionResponse.Content);
        }

        outlined destroy of Any?(v144, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v147, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v153);

        *(v77 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v73, v74, "NearbyInvitationsProviderDataSource: Connection response got denied %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v78);

        v13 = v76;
        a1 = v75;
      }

      else
      {

        v86 = outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v72, type metadata accessor for NearbyProtoConnectionResponse.Content);
      }

      v103 = *a1;
      v104 = a1[1];
      v105 = (*(*v151 + 328))(v86);
      v106 = v145;
      if (*(v105 + 16) && (v107 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v104), (v108 & 1) != 0))
      {
        v109 = *(*(v105 + 56) + 8 * v107);

        lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
        v110 = swift_allocError();
        *v111 = 1;
        v153 = v110;
        PassthroughSubject.send(completion:)();

        v112 = (*(*v151 + 344))(&v153);
        specialized Dictionary._Variant.removeValue(forKey:)(v103, v104);

        v112(&v153, 0);
      }

      else
      {

        outlined init with copy of NearbyProtoJoinResponse.Content(a1, v106, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v153 = v116;
          *v115 = 136315138;
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);
          v117 = Message.debugDescription.getter();
          v119 = v118;
          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v106, type metadata accessor for NearbyProtoConnectionResponse.Content);
          v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v153);

          *(v115 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v113, v114, "NearbyInvitationsProviderDataSource Could not find a request in flight for %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v116);
        }

        else
        {

          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v106, type metadata accessor for NearbyProtoConnectionResponse.Content);
        }
      }

      return outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v13, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    }

    outlined init with copy of NearbyProtoJoinResponse.Content(a1, v62, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v63 = v62;
    v64 = Logger.logObject.getter();
    LODWORD(v149) = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v64, v149);
    v150 = a1;
    if (v65)
    {
      v146 = v13;
      v66 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v153 = v145;
      v147 = v66;
      *v66 = 136315138;
      v67 = v142;
      outlined init with copy of NearbyProtoJoinResponse.Content(v63, v142, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v68 = v143;
      (*(v143 + 56))(v67, 0, 1, v29);
      v69 = v135;
      outlined init with copy of (String, Any)(v67, v135, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
      if ((*(v68 + 48))(v69, 1, v29) == 1)
      {
        v70 = 7104878;
        v71 = 0xE300000000000000;
      }

      else
      {
        v87 = v148;
        outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v69, v148, type metadata accessor for NearbyProtoConnectionResponse.Content);
        outlined init with copy of NearbyProtoJoinResponse.Content(v87, v40, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v70 = String.init<A>(reflecting:)();
        v71 = v88;
        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v87, type metadata accessor for NearbyProtoConnectionResponse.Content);
      }

      outlined destroy of Any?(v142, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v152, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v153);

      v90 = v147;
      *(v147 + 1) = v89;
      _os_log_impl(&_mh_execute_header, v64, v149, "NearbyInvitationsProviderDataSource: Connection approved with: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v145);

      v13 = v146;
      a1 = v150;
    }

    else
    {

      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v63, type metadata accessor for NearbyProtoConnectionResponse.Content);
    }

    v92 = *a1;
    v91 = a1[1];
    v93 = (*(*v151 + 344))(&v153);
    v152 = v91;
    v94 = specialized Dictionary._Variant.removeValue(forKey:)(v92, v91);
    v95 = v93(&v153, 0);
    if (!v94)
    {
LABEL_37:
      if (!(*(*v151 + 208))(v95))
      {
        return outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v13, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      }

      v125 = v124;
      v126 = v139;
      outlined init with copy of (String, Any)(v150 + v58, v139, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
      if (v60(v126, 1, v59) == 1)
      {
        outlined destroy of Any?(v126, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
        v127 = v140;
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v127 = v140;
        if (EnumCaseMultiPayload == 1)
        {
          v129 = v13;
          outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v126, v140, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
LABEL_44:
          ObjectType = swift_getObjectType();
          v132 = *v127;
          v133 = v127[1];
          outlined copy of Data._Representation(*v127, v133);
          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v127, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
          (*(v125 + 48))(v92, v152, v132, v133, ObjectType, v125);
          swift_unknownObjectRelease();
          outlined consume of Data._Representation(v132, v133);
          v13 = v129;
          return outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v13, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
        }

        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v126, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      }

      v129 = v13;
      *v127 = xmmword_1000CAAE0;
      v130 = v127 + *(v141 + 20);
      UnknownStorage.init()();
      goto LABEL_44;
    }

    v96 = v137;
    outlined init with copy of (String, Any)(v150 + v58, v137, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    if (v60(v96, 1, v59) == 1)
    {
      outlined destroy of Any?(v96, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
      v97 = v138;
    }

    else
    {
      v98 = swift_getEnumCaseMultiPayload();
      v97 = v138;
      if (v98 == 1)
      {
        v99 = v92;
        outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v96, v138, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
LABEL_36:
        v123 = *v97;
        v122 = v97[1];
        outlined copy of Data._Representation(*v97, v122);
        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v97, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
        v153 = v123;
        v154 = v122;
        PassthroughSubject.send(_:)();

        v95 = outlined consume of Data._Representation(v153, v154);
        v92 = v99;
        goto LABEL_37;
      }

      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v96, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    }

    v99 = v92;
    *v97 = xmmword_1000CAAE0;
    v121 = v97 + *(v141 + 20);
    UnknownStorage.init()();
    goto LABEL_36;
  }

  return result;
}

uint64_t specialized static InvitationJoinResponse.from(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v10 + 20), v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    outlined destroy of Any?(v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_12:
    type metadata accessor for InvitationJoinResponse();
    return static InvitationJoinResponse.denied.getter();
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    goto LABEL_12;
  }

  outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v5, v9, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  v12 = *v9;
  v13 = v9[1];
  v14 = v9[2];
  v15 = (v9 + *(v6 + 28));
  v16 = *v15;
  v17 = v15[1];
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v15;
  }

  if (v17 >> 60 == 15)
  {
    v19 = 0xC000000000000000;
  }

  else
  {
    v19 = v15[1];
  }

  type metadata accessor for InvitationJoinResponse();
  outlined copy of Data?(v16, v17);
  v20 = static InvitationJoinResponse.approved(sessionIdentifier:memberHandles:userInfo:)();
  outlined consume of Data._Representation(v18, v19);
  outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v9, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  return v20;
}

void specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v67 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v71 = &v67 - v14;
  __chkstk_darwin(v13);
  v75 = &v67 - v15;
  v16 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Log.host);
  outlined init with copy of NearbyProtoJoinResponse.Content(a1, v19, type metadata accessor for NearbyProtoJoinResponse.Content);
  v73 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v74 = v2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v69 = v8;
    v27 = v9;
    v28 = v26;
    v77[0] = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);
    v29 = Message.debugDescription.getter();
    v31 = v30;
    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v19, type metadata accessor for NearbyProtoJoinResponse.Content);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v77);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "NearbyInvitationsProviderDataSource didReceiveJoinResponse: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v9 = v27;
    v8 = v69;

    v2 = v74;
  }

  else
  {

    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v19, type metadata accessor for NearbyProtoJoinResponse.Content);
  }

  v33 = v75;
  v34 = specialized static InvitationJoinResponse.from(content:)(a1);
  v35 = *a1;
  v36 = a1[1];
  UUID.init(uuidString:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v37 = outlined destroy of Any?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v9 + 32))(v33, v7, v8);
    v38 = v71;
    v69 = *(v9 + 16);
    v69(v71, v33, v8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v70 = v9;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = v38;
      v68 = swift_slowAlloc();
      v77[0] = v68;
      *v42 = 136315138;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v44 = v34;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v71 = *(v9 + 8);
      (v71)(v43, v8);
      v48 = v45;
      v34 = v44;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v77);
      v33 = v75;

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Looking up waitingJoinRequest with identifier: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);

      v2 = v74;
    }

    else
    {

      v71 = *(v9 + 8);
      (v71)(v38, v8);
    }

    v50 = v72;
    v51 = (*(*v2 + 320))(v77);
    v52 = specialized Dictionary.removeValue(forKey:)(v33);
    v72 = v53;
    v51(v77, 0);
    if (v52)
    {
      v69(v50, v33, v8);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v77[0] = v73;
        *v56 = 136315138;
        v57 = v56;
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        (v71)(v50, v8);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v77);

        *(v57 + 1) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "Calling callback that was waiting for a joinResponse, identifier: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);

        v33 = v75;

        v62 = v71;
      }

      else
      {

        v62 = v71;
        (v71)(v50, v8);
      }

      v76 = 0;
      v77[0] = v34;
      v63 = v34;
      v52(v77, &v76);
      _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v52);
      v62(v33, v8);
    }

    else
    {
      v37 = (v71)(v33, v8);
    }

    v2 = v74;
  }

  if ((*(*v2 + 208))(v37))
  {
    v65 = v64;
    ObjectType = swift_getObjectType();
    (*(v65 + 56))(v34, ObjectType, v65);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for NearbyInvitationsProviderDataSource()
{
  result = type metadata singleton initialization cache for NearbyInvitationsProviderDataSource;
  if (!type metadata singleton initialization cache for NearbyInvitationsProviderDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NearbyInvitationsProviderDataSource()
{
  type metadata accessor for Published<Data?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Data?>()
{
  if (!lazy cache variable for type metadata for Published<Data?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Data?>);
    }
  }
}

uint64_t outlined init with copy of NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v6, a2);
}

uint64_t specialized closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v57 = a3 & 1;
  v58 = a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v47 = result;
  if (result)
  {
    if (one-time initialization token for host != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Log.host);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v56 = v10;
        *v9 = 136315138;
        v11 = (*(*a2 + 104))();
        v12 = *(v11 + 16);
        if (v12)
        {
          v41 = v10;
          v42 = v9;
          v43 = a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
          v44 = v8;
          v45 = v7;
          v46 = a2;
          v55 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
          v13 = v55;
          v14 = v12 - 1;
          for (i = 32; ; i += 104)
          {
            v16 = *(v11 + i + 16);
            v49 = *(v11 + i);
            v50 = v16;
            v17 = *(v11 + i + 32);
            v18 = *(v11 + i + 48);
            v19 = *(v11 + i + 64);
            v54 = *(v11 + i + 80);
            v52 = v18;
            v53 = v19;
            v51 = v17;
            outlined init with copy of (String, Any)(&v49, &v48, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
            v55 = v13;
            v21 = v13[2];
            v20 = v13[3];
            if (v21 >= v20 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
              v13 = v55;
            }

            v13[2] = v21 + 1;
            v22 = &v13[11 * v21];
            v23 = v50;
            *(v22 + 2) = v49;
            *(v22 + 3) = v23;
            v24 = v51;
            v25 = v52;
            v26 = v53;
            *(v22 + 112) = v54;
            *(v22 + 5) = v25;
            *(v22 + 6) = v26;
            *(v22 + 4) = v24;
            if (!v14)
            {
              break;
            }

            --v14;
          }

          a2 = v46;
          v7 = v45;
          LOBYTE(v8) = v44;
          v9 = v42;
          v10 = v41;
        }

        else
        {

          v13 = _swiftEmptyArrayStorage;
        }

        *&v49 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
        v27 = String.init<A>(reflecting:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v56);

        *(v9 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v7, v8, "Learned about updated BT devices: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }

      else
      {
      }

      *&v49 = _swiftEmptyArrayStorage;
      v30 = (*(*a2 + 104))();
      __chkstk_darwin(v30);
      v40[2] = v47;
      v40[3] = &v49;
      v40[4] = &v57;
      specialized Sequence.forEach(_:)(partial apply for specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:), v40, v30);

      a2 = v49;
      v31 = *(v49 + 16);
      if (!v31)
      {
        break;
      }

      v48 = _swiftEmptyArrayStorage;

      specialized ContiguousArray.reserveCapacity(_:)();
      v32 = 0;
      v33 = (a2 + 48);
      while (v32 < *(a2 + 16))
      {
        ++v32;
        v34 = *(v33 - 1);
        v35 = *v33;
        type metadata accessor for NearbyRangingFilter();
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter, type metadata accessor for NearbyRangingFilter);

        dispatch thunk of ObservableObject.objectWillChange.getter();
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ObservableObjectPublisher();

        Publisher<>.sink(receiveValue:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = v48[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v33 += 3;
        if (v31 == v32)
        {
          v37 = v48;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_20:
    v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7Combine14AnyCancellableC_SayAFGTt0g5Tf4g_n(v37);

    v39 = v47;
    (*(*v47 + 152))(v38);
    (*(*v39 + 176))(a2);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v10 = *(a1 + 96);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(v9, v2, v3, *v4, *(v4 + 8));
}

uint64_t partial apply for closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v4, v5, v6);
}

void *AssertionManager.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = type metadata accessor for Lock();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v4[4] = Lock.init()();
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

uint64_t AssertionManager.updateCallback.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssertionManager.assertionCount.getter()
{
  v1 = *(v0 + 32);
  Lock.withLock<A>(_:)();
  return v3;
}

void AssertionManager.assertionCount.setter(uint64_t a1)
{
  v2 = v1;
  v4 = v1[4];
  Lock.lock()();
  v5 = v1[5];
  if (v5 == a1)
  {
    Lock.unlock()();
  }

  else
  {
    v1[5] = a1;
    Lock.unlock()();
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = a1 <= 0;
    }

    if (!v6 || (v5 >= 1 ? (v7 = a1 == 0) : (v7 = 0), v7))
    {
      v8 = v1[3];
      (v2[2])(a1);
    }
  }

  Lock.assertNotOwned()();
}

void *AssertionManager.init(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Lock();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v2[4] = Lock.init()();
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t AssertionManager.subscribe()()
{
  type metadata accessor for AssertionManager.Assertion();
  swift_allocObject();

  v1 = specialized AssertionManager.Assertion.init(manager:)(v0);

  return v1;
}

uint64_t AssertionManager.Assertion.__allocating_init(manager:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v2;
}

uint64_t AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  v1 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v1;
}

uint64_t AssertionManager.Assertion.deinit()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return v1;
  }

  v3 = Strong;
  v4 = *(Strong + 32);
  result = Lock.withLock<A>(_:)();
  v6 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    v7 = *(v3 + 32);
    Lock.lock()();
    v8 = *(v3 + 40);
    if (v8 == v6)
    {
      Lock.unlock()();
    }

    else
    {
      *(v3 + 40) = v6;
      Lock.unlock()();
      if (!v8 && v6 >= 1 || v8 >= 1 && v10 == 1)
      {
        v9 = *(v3 + 24);
        (*(v3 + 16))(v6);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.Assertion.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return swift_deallocClassInstance();
  }

  v1 = Strong;
  v2 = *(Strong + 32);
  result = Lock.withLock<A>(_:)();
  v4 = v8 - 1;
  if (!__OFSUB__(v8, 1))
  {
    v5 = *(v1 + 32);
    Lock.lock()();
    v6 = *(v1 + 40);
    if (v6 == v4)
    {
      Lock.unlock()();
    }

    else
    {
      *(v1 + 40) = v4;
      Lock.unlock()();
      if (!v6 && v4 >= 1 || v6 >= 1 && v8 == 1)
      {
        v7 = *(v1 + 24);
        (*(v1 + 16))(v4);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t AssertionManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t specialized AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  v2 = v1;
  swift_weakInit();
  swift_weakAssign();
  v4 = *(a1 + 32);
  result = Lock.withLock<A>(_:)();
  v6 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    Lock.lock()();
    v7 = *(a1 + 40);
    if (v7 == v6)
    {
      Lock.unlock()();
    }

    else
    {
      *(a1 + 40) = v6;
      Lock.unlock()();
      if (!v7 && v6 > 0 || v7 >= 1 && v9 == -1)
      {
        v8 = *(a1 + 24);
        (*(a1 + 16))(v6);
      }
    }

    Lock.assertNotOwned()();
    return v2;
  }

  return result;
}

uint64_t NearbySession.isRunning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7[-v4];
  (*(v2 + 16))(&v7[-v4], v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__isRunning, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[15];
}

uint64_t NearbySession.isRunning.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  (*(v4 + 16))(&v9[-v6], v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__isRunning, v3);
  v9[15] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

uint64_t (*NearbySession.isRunning.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = CurrentSubject.wrappedValue.modify();
  return NearbySession.isRunning.modify;
}

uint64_t NearbySession.config.getter()
{
  result = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config);
  v2 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8);
  return result;
}

uint64_t NearbySession.rangedDevice.getter()
{
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7[-v4];
  (*(v2 + 16))(&v7[-v4], v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__rangedDevice, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[15];
}

uint64_t NearbySession.rangedDevice.setter(char a1)
{
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  (*(v4 + 16))(&v9[-v6], v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__rangedDevice, v3);
  v9[15] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

uint64_t (*NearbySession.rangedDevice.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = CurrentSubject.wrappedValue.modify();
  return NearbySession.rangedDevice.modify;
}

uint64_t NearbySession.$isRunning.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v3 + *a3, v5);
  v10 = CurrentSubject.projectedValue.getter();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t NearbySession.stableIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_stableIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t NearbySession.stableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_stableIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t NearbySession.init(stableIdentifier:rangingConfig:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v47[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v47[-v15];
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__isRunning;
  LOBYTE(v51) = 0;
  CurrentSubject.init(wrappedValue:)();
  (*(v13 + 32))(&v4[v17], v16, v12);
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__rangedDevice;
  LOBYTE(v51) = 3;
  CurrentSubject.init(wrappedValue:)();
  (*(v8 + 32))(&v4[v18], v11, v7);
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session;
  *&v4[v19] = [objc_allocWithZone(NISession) init];
  v20 = &v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_stableIdentifier];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config];
  *v21 = v48 & 1;
  *(v21 + 1) = v49;
  v22 = type metadata accessor for NearbySession();
  v50.receiver = v4;
  v50.super_class = v22;
  v23 = objc_msgSendSuper2(&v50, "init");
  v24 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session;
  v25 = *&v23[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session];
  v26 = v23;
  [v25 setDelegate:v26];
  v27 = *&v23[v24];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v28 = v27;
  v29 = static OS_dispatch_queue.main.getter();
  [v28 setDelegateQueue:v29];

  v30 = *&v23[v24];
  v31 = *&v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8];
  v32 = objc_allocWithZone(NIRegionPredicate);
  v33 = v30;
  v34 = String._bridgeToObjectiveC()();
  v35 = [v32 initWithName:v34 devicePresencePreset:v31];

  v36 = objc_allocWithZone(NIRegionPredicate);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 initWithName:v37 devicePresencePreset:5];

  v39 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v51 = 0;
  v40 = v35;
  v41 = v38;
  v42 = [v39 initWithInnerBoundary:v40 outerBoundary:v41 error:&v51];
  if (v42)
  {
    v43 = v42;
    v44 = v51;

    [v43 setAllowedDevices:4];
    [v43 setMonitoringOption:1];

    [v33 runWithConfiguration:v43];
    return v26;
  }

  else
  {
    v46 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t NearbyRangingFilter.Config.niDevicePresenceConfig.getter(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(NIRegionPredicate);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithName:v4 devicePresencePreset:a2];

  v6 = objc_allocWithZone(NIRegionPredicate);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithName:v7 devicePresencePreset:5];

  v9 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v17 = 0;
  v10 = v5;
  v11 = v8;
  v12 = [v9 initWithInnerBoundary:v10 outerBoundary:v11 error:&v17];
  if (v12)
  {
    v13 = v12;
    v14 = v17;

    [v13 setAllowedDevices:4];
    [v13 setMonitoringOption:1];

    return v13;
  }

  else
  {
    v16 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NearbySession()
{
  result = type metadata singleton initialization cache for NearbySession;
  if (!type metadata singleton initialization cache for NearbySession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void NearbySession.handle(device:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *((swift_isaMask & *v1) + 0x78);
      v5 = v3;
      if (v4())
      {
LABEL_6:
        v20 = [*(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session) devicePresenceNotifier];
        [v20 notifyBluetoothSample:v5];

        return;
      }

      v6 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);
      v7 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8);
      v8 = objc_allocWithZone(NIRegionPredicate);
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 initWithName:v9 devicePresencePreset:v7];

      v11 = objc_allocWithZone(NIRegionPredicate);
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 initWithName:v12 devicePresencePreset:5];

      v14 = objc_allocWithZone(NIDevicePresenceConfiguration);
      v32 = 0;
      v15 = v10;
      v16 = v13;
      v17 = [v14 initWithInnerBoundary:v15 outerBoundary:v16 error:&v32];
      if (v17)
      {
        v18 = v17;
        v19 = v32;

        [v18 setAllowedDevices:4];
        [v18 setMonitoringOption:1];

        [v6 runWithConfiguration:v18];
        goto LABEL_6;
      }

      v31 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.host);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create NIBluetoothSample, can't update ranging to the device.", v29, 2u);
      }

      v30 = *((swift_isaMask & *v2) + 0xA0);

      v30(3);
    }
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.host);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device lost invitation", v24, 2u);
    }

    (*((swift_isaMask & *v2) + 0xA0))(3);
    v25 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);

    [v25 invalidate];
  }
}

Swift::Void __swiftcall NearbySession.invalidate()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session];
    v12 = v6;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v8 = v7;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "NISession %s Invalidate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  [*&v2[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session] invalidate];
}

id NearbySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall NearbySession.sessionDidStartRunning(_:)(NISession a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "NISession %s Running", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  (*((swift_isaMask & *v2) + 0x80))(1);
}

uint64_t NearbySession.session(_:didFailWithError:)(void *a1, uint64_t a2, const char *a3)
{
  v5 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = a1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v14 = v8;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0x16u);
    outlined destroy of NSObject?(v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  (*((swift_isaMask & *v5) + 0x80))(0);
  return (*((swift_isaMask & *v5) + 0xA0))(3);
}

uint64_t NearbySession.session(_:suspendedWith:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v8, v9, "NISession %s Suspended: %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  (*((swift_isaMask & *v3) + 0x80))(0);
  return (*((swift_isaMask & *v3) + 0xA0))(3);
}

void NearbySession.session(_:suspensionReasonEnded:isNoLongerSuspended:)(void *a1, uint64_t a2, char a3)
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
    v33 = v13;
    *v12 = 136315650;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    *(v12 + 22) = 1024;
    *(v12 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "NISession %s Suspension Ended: %ld, isActive: %{BOOL}d", v12, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  if (a3)
  {
    v18 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);
    v19 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8);
    v20 = objc_allocWithZone(NIRegionPredicate);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 initWithName:v21 devicePresencePreset:v19];

    v23 = objc_allocWithZone(NIRegionPredicate);
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 initWithName:v24 devicePresencePreset:5];

    v26 = objc_allocWithZone(NIDevicePresenceConfiguration);
    v33 = 0;
    v27 = v22;
    v28 = v25;
    v29 = [v26 initWithInnerBoundary:v27 outerBoundary:v28 error:&v33];
    if (v29)
    {
      v30 = v29;
      v31 = v33;

      [v30 setAllowedDevices:4];
      [v30 setMonitoringOption:1];

      [v18 runWithConfiguration:v30];
    }

    else
    {
      v32 = v33;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

Swift::Void __swiftcall NearbySession.session(_:didDiscover:)(NISession _, NINearbyObject didDiscover)
{
  v5 = [(objc_class *)didDiscover.super.isa deviceIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = (*((swift_isaMask & *v2) + 0xB8))();
  if (v9)
  {
    if (v7 == v10 && v9 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.host);
    v15 = _.super.isa;
    v16 = didDiscover.super.isa;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v18 = 136315394;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
      v21 = v15;
      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v16;
      *v19 = v16;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, oslog, v17, "NISession %s discovered device: %@", v18, 0x16u);
      outlined destroy of NSObject?(v19);

      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
    }
  }

  else
  {
  }
}

void specialized NearbySession.session(_:object:didUpdateRegion:previousRegion:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 deviceIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == (*((swift_isaMask & *v3) + 0xB8))() && v10 == v11)
    {

      if (a2)
      {
LABEL_8:
        v14 = [a2 name];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == 0x72656E6E69 && v17 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          (*((swift_isaMask & *v3) + 0xA0))(1);
          goto LABEL_23;
        }

        if (v15 == 0x726574756FLL && v17 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          (*((swift_isaMask & *v3) + 0xA0))(2);
LABEL_23:
          if (*(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config) == 1)
          {
            v31 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);

            [v31 invalidate];
          }

          return;
        }

        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Log.host);

        v28 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v28, v33))
        {

          goto LABEL_22;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38 = v35;
        *v34 = 136446210;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v38);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v28, v33, "Unexpected Region: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);

LABEL_21:

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        return;
      }

      if (a2)
      {
        goto LABEL_8;
      }
    }

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.host);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_22;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unexpected Region: none", v30, 2u);
    goto LABEL_21;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = a1;
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NINearbyObject, NINearbyObject_ptr);
    v23 = v19;
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v38);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, oslog, v20, "Found object but doesn't have a deviceIdentifier. Object: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
  }
}

void specialized NearbySession.session(_:didUpdateAlgorithmState:for:)(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Algorithm state updated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
  }
}

unint64_t lazy protocol witness table accessor for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location()
{
  result = lazy protocol witness table cache variable for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location;
  if (!lazy protocol witness table cache variable for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location);
  }

  return result;
}

void type metadata completion function for NearbySession()
{
  type metadata accessor for CurrentSubject<Bool>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CurrentSubject<NearbySession.RangedDevice?>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for CurrentSubject<Bool>()
{
  if (!lazy cache variable for type metadata for CurrentSubject<Bool>)
  {
    v0 = type metadata accessor for CurrentSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CurrentSubject<Bool>);
    }
  }
}

void type metadata accessor for CurrentSubject<NearbySession.RangedDevice?>()
{
  if (!lazy cache variable for type metadata for CurrentSubject<NearbySession.RangedDevice?>)
  {
    v0 = type metadata accessor for CurrentSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CurrentSubject<NearbySession.RangedDevice?>);
    }
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; i = (i + 104))
    {
      v7 = i[3];
      v8 = i[5];
      v31 = i[4];
      v32 = v8;
      v9 = i[1];
      v28[0] = *i;
      v28[1] = v9;
      v10 = i[3];
      v12 = *i;
      v11 = i[1];
      v29 = i[2];
      v30 = v10;
      v13 = i[5];
      v25 = v31;
      v26 = v13;
      v21 = v12;
      v22 = v11;
      v33 = *(i + 12);
      v27 = *(i + 12);
      v23 = v29;
      v24 = v7;
      outlined init with copy of BluetoothScanner.Device(v28, &v14);
      v5(&v21);
      if (v3)
      {
        break;
      }

      v18 = v25;
      v19 = v26;
      v20 = v27;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      result = outlined destroy of BluetoothScanner.Device(&v14);
      if (!--v4)
      {
        return result;
      }
    }

    v18 = v25;
    v19 = v26;
    v20 = v27;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    return outlined destroy of BluetoothScanner.Device(&v14);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *FilteredBluetoothScanner.__allocating_init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = specialized FilteredBluetoothScanner.init(scanner:config:)(a1, a2);
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);

  return v8;
}

__n128 FilteredBluetoothScanner.FilteredDevice.device.getter@<Q0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 48))(v7, a1, a2);
  v4 = v7[5];
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v4;
  *(a3 + 96) = v8;
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t FilteredBluetoothScanner.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t FilteredBluetoothScanner.FilteredDevice.filter.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t FilteredBluetoothScanner.FilteredDevice.shouldHandleUpdates(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t FilteredBluetoothScanner.showDeviceObservers.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t FilteredBluetoothScanner.showDeviceObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t property wrapper backing initializer of FilteredBluetoothScanner.filteredDevices()
{
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  return CurrentSubject.init(wrappedValue:)();
}

uint64_t FilteredBluetoothScanner.filteredDevices.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  v4 = type metadata accessor for CurrentSubject();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, v0 + *(v1 + 112), v4);
  CurrentSubject.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  return v10[1];
}

uint64_t FilteredBluetoothScanner.filteredDevices.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  v6 = type metadata accessor for CurrentSubject();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v12 - v9;
  (*(v7 + 16))(v12 - v9, v1 + *(v3 + 112), v6);
  v12[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v7 + 8))(v10, v6);
}

void (*FilteredBluetoothScanner.filteredDevices.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  v7 = type metadata accessor for CurrentSubject();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v4[5] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v4[6] = v10;
  v11 = *(*v1 + 112);
  (*(v9 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return BluetoothScanner.devices.modify;
}

uint64_t FilteredBluetoothScanner.$filteredDevices.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  v4 = type metadata accessor for CurrentSubject();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v0 + *(v1 + 112), v4);
  v9 = CurrentSubject.projectedValue.getter();
  (*(v5 + 8))(v8, v4);
  return v9;
}

char *FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized FilteredBluetoothScanner.init(scanner:config:)(a1, a2);
  v6 = *(v4 + 88);
  v7 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);

  return v5;
}

uint64_t closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.host);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      v51 = v15;
      *v15 = 136315138;
      v16 = (*(*a3 + 104))();
      v17 = *(v16 + 16);
      if (v17)
      {
        v45 = v14;
        v46 = v13;
        v47 = a5;
        v48 = a6;
        v49 = a4;
        v59 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
        v18 = _swiftEmptyArrayStorage;
        v19 = v17 - 1;
        for (i = 32; ; i += 104)
        {
          v21 = *(v16 + i + 16);
          v53 = *(v16 + i);
          v54 = v21;
          v22 = *(v16 + i + 32);
          v23 = *(v16 + i + 48);
          v24 = *(v16 + i + 64);
          v58 = *(v16 + i + 80);
          v56 = v23;
          v57 = v24;
          v55 = v22;
          outlined init with copy of IgnoreEquatable<IgnoreEquatable<BluetoothScannerDiscoveryEngineDevice>>(&v53, v52);
          v59 = v18;
          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
            v18 = v59;
          }

          v18[2] = v26 + 1;
          v27 = &v18[11 * v26];
          v28 = v54;
          *(v27 + 2) = v53;
          *(v27 + 3) = v28;
          v29 = v55;
          v30 = v56;
          v31 = v57;
          *(v27 + 112) = v58;
          *(v27 + 5) = v30;
          *(v27 + 6) = v31;
          *(v27 + 4) = v29;
          if (!v19)
          {
            break;
          }

          --v19;
        }

        a4 = v49;
        v13 = v46;
        LOBYTE(v14) = v45;
      }

      else
      {

        v18 = _swiftEmptyArrayStorage;
      }

      *&v53 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v60);

      v35 = v51;
      *(v51 + 1) = v34;
      _os_log_impl(&_mh_execute_header, v13, v14, "Learned about updated BT devices: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
    *&v53 = Array.init()();
    v36 = (*(*a3 + 104))();
    __chkstk_darwin(v36);
    v44[2] = v11;
    v44[3] = &v53;
    v44[4] = a4;
    specialized Sequence.forEach(_:)(partial apply for closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:), v44, v36);

    v37 = v53;
    v52[0] = v53;
    v38 = type metadata accessor for Array();
    v39 = type metadata accessor for AnyCancellable();

    WitnessTable = swift_getWitnessTable();
    v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:), v11, v38, v39, &type metadata for Never, WitnessTable, &protocol witness table for Never, v41);
    v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7Combine14AnyCancellableC_SayAFGTt0g5Tf4g_n(v42);

    (*(*v11 + 152))(v43);
    (*(*v11 + 176))(v37);
  }

  return result;
}

uint64_t closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(_OWORD *, char *, uint64_t, uint64_t))
{
  v27 = a4;
  v28 = a3;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  v9 = *(v25 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v23 - v10;
  v12 = *(a1 + 80);
  v35[4] = *(a1 + 64);
  v35[5] = v12;
  v36 = *(a1 + 96);
  v13 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v13;
  v14 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v14;
  v15 = *(&v35[0] + 1);
  v24 = *&v35[0];
  v16 = *(v5 + 168);

  v37 = v16(v17);
  v29 = v7;
  v30 = v6;
  v31 = v35;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();

  v18 = v33;
  if (v33)
  {
    v19 = v34;
    v20 = v32;

    (*(v6 + 32))(v35, v7, v6);
    v32 = v20;
    v33 = v18;
    v34 = v19;
  }

  else
  {
    (*(v25 + 16))(v11, v27, v26);
    v27 = *(v6 + 24);
    outlined init with copy of BluetoothScanner.Device(v35, &v32);
    v21 = v27(v35, v11, v7, v6);
    v32 = v24;
    v33 = v15;
    v34 = v21;
  }

  return Array.append(_:)();
}

uint64_t closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v4 = *(*a2 + 88);
  v5 = *(v4 + 8);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v17 - v10;
  v12 = *(a1 + 16);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = v4;
  v14[4] = v13;
  swift_getAssociatedConformanceWitness();

  v15 = Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v11, AssociatedTypeWitness);

  *v18 = v15;
  return result;
}

char *FilteredBluetoothScanner.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(*v0 + 112);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  v7 = type metadata accessor for CurrentSubject();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  return v0;
}

uint64_t FilteredBluetoothScanner.__deallocating_deinit()
{
  FilteredBluetoothScanner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *specialized FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = *v3;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v28 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v26 = &v24 - v9;
  v10 = v6;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  v11 = type metadata accessor for CurrentSubject();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  *(v3 + 2) = &_swiftEmptySetSingleton;
  v27 = v3 + 16;
  *(v3 + 3) = &_swiftEmptySetSingleton;
  v16 = *(v5 + 112);
  Array.init()();
  property wrapper backing initializer of FilteredBluetoothScanner.filteredDevices();
  v17 = (*(v12 + 32))(&v3[v16], v15, v11);
  v25 = (*(*a1 + 128))(v17);
  v31 = v25;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v26;
  v20 = AssociatedTypeWitness;
  (*(v8 + 16))(v26, v30, AssociatedTypeWitness);
  v21 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v7;
  *(v22 + 3) = v10;
  *(v22 + 4) = v18;
  *(v22 + 5) = a1;
  (*(v8 + 32))(&v22[v21], v19, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v3;
}

uint64_t type metadata completion function for FilteredBluetoothScanner(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();
  type metadata accessor for Array();
  result = type metadata accessor for CurrentSubject();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for FilteredBluetoothScanner.FilteredDevice()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FilteredBluetoothScanner.FilteredDevice(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FilteredBluetoothScanner.FilteredDevice(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in FilteredBluetoothScanner.init(scanner:config:)(a1, v6, v7, v8, v3, v4);
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of IgnoreEquatable<IgnoreEquatable<BluetoothScannerDiscoveryEngineDevice>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return specialized closure #1 in closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)();
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(void *a1)
{
  v2 = *(v1 + 32);
  if (*v2 == *a1 && v2[1] == a1[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_020com_apple_SharePlay_D18InvitationsService0df1_G0Vs5NeverOTg508_s44com_i1_jk1_dl11Service0E19f80HostIDSServiceC010distributeH14Initialization3for2toyAA0ehI0C_Shy0E8Sessions0eH6G52CGtKFyAA0eh1_H0VzXEfU_yAN0L0VzXEfU_AA0eh1_P0VAKXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for NearbyGroup_Member(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v57 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    v52 = v57;
    if (v50)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v54 = result;
    v55 = v9;
    v56 = v50 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v45 = a1 + 56;
      v46 = v12;
      v43[1] = v1;
      v44 = a1 + 64;
      v47 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_39;
        }

        v15 = v54;
        v16 = v56;
        v51 = v55;
        v17 = a1;
        specialized Set.subscript.getter(v54, v55, v56, a1);
        v19 = v18;
        v20 = v49;
        v21 = v6 + *(v49 + 20);
        UnknownStorage.init()();
        v22 = (v6 + *(v20 + 24));
        *v22 = 0;
        v22[1] = 0;
        *v6 = NearbyGroupMember.handle.getter();
        v6[1] = v23;
        v24 = v6;
        v25 = NearbyGroupMember.tokenID.getter();
        v27 = v26;

        if (v27)
        {
          *v22 = v25;
          v22[1] = v27;
        }

        v28 = v52;
        v57 = v52;
        v30 = v52[2];
        v29 = v52[3];
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
          v28 = v57;
        }

        v28[2] = v30 + 1;
        v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v52 = v28;
        v32 = v28 + v31 + *(v48 + 72) * v30;
        v6 = v24;
        result = outlined init with take of NearbyGroup_Group(v24, v32, type metadata accessor for NearbyGroup_Member);
        a1 = v17;
        if (v50)
        {
          if (!v16)
          {
            goto LABEL_44;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMd, &_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMR);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v13(v53, 0);
          if (v11 == v7)
          {
LABEL_36:
            outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v54, v55, v56);
            return v52;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_45;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v33 = 1 << *(v17 + 32);
          if (v15 >= v33)
          {
            goto LABEL_40;
          }

          v34 = v15 >> 6;
          v35 = *(v45 + 8 * (v15 >> 6));
          if (((v35 >> v15) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v17 + 36) != v51)
          {
            goto LABEL_42;
          }

          v36 = v35 & (-2 << (v15 & 0x3F));
          if (v36)
          {
            v33 = __clz(__rbit64(v36)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v37 = v34 << 6;
            v38 = v34 + 1;
            v39 = (v44 + 8 * v34);
            while (v38 < (v33 + 63) >> 6)
            {
              v41 = *v39++;
              v40 = v41;
              v37 += 64;
              ++v38;
              if (v41)
              {
                result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v15, v51, 0);
                v33 = __clz(__rbit64(v40)) + v37;
                goto LABEL_35;
              }
            }

            result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v15, v51, 0);
          }

LABEL_35:
          v42 = *(v17 + 36);
          v54 = v33;
          v55 = v42;
          v56 = 0;
          v7 = v47;
          if (v11 == v47)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  v0 = swift_allocObject();

  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = static Subscribers.Demand.none.getter();
  *v1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  return v0;
}

void NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(char *a1, void *a2)
{
  v3 = v2;
  v156 = type metadata accessor for UUID();
  v154 = *(v156 - 1);
  v6 = v154[8];
  v7 = __chkstk_darwin(v156);
  v148 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v145 = &v140 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v140 - v12;
  __chkstk_darwin(v11);
  v153 = &v140 - v14;
  v152 = type metadata accessor for NearbyGroup_Group(0);
  v15 = *(*(v152 - 8) + 64);
  v16 = __chkstk_darwin(v152);
  v18 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v155 = &v140 - v20;
  v21 = *((swift_isaMask & *a1) + 0xC0);
  v22 = v21(v19);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = __CocoaSet.count.getter();

    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = *(v22 + 16);

    if (v32)
    {
LABEL_3:
      __chkstk_darwin(v24);
      v147 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
      v25 = v157;
      v26 = static Message.with(_:)();
      v157 = v25;
      v27 = v21(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000C8980;
      *(inited + 32) = a2;
      v29 = v3;
      if ((v27 & 0xC000000000000001) != 0)
      {
        if (v27 >= 0)
        {
          v27 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v30 = a2;
        v31 = __CocoaSet.count.getter();
        v27 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(v27, v31);
      }

      else
      {
        v40 = a2;
      }

      v41 = specialized _NativeSet.subtracting<A>(_:)(inited, v27);
      swift_setDeallocating();
      v42 = *(inited + 16);
      swift_arrayDestroy();
      v43 = v153;
      UUID.init()();
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      v45 = __swift_project_value_buffer(v44, static Log.host);
      v46 = v154;
      v47 = v154[2];
      v48 = v156;
      v144 = v154 + 2;
      v143 = v47;
      v47(v13, v43, v156);
      outlined init with copy of NearbyGroup_Group(v155, v18, type metadata accessor for NearbyGroup_Group);
      v49 = v29;

      v146 = v45;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      v52 = os_log_type_enabled(v50, v51);
      v150 = v41;
      v151 = v49;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v141 = v54;
        v142 = swift_slowAlloc();
        v159[0] = v142;
        *v53 = 138413058;
        *(v53 + 4) = v49;
        *v54 = v49;
        *(v53 + 12) = 2080;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v55 = v49;
        v56 = v51;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v149 = v154[1];
        v149(v13, v156);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v159);

        *(v53 + 14) = v60;
        *(v53 + 22) = 2080;
        v61 = Message.debugDescription.getter();
        v63 = v62;
        outlined destroy of NearbyGroup_Group(v18, type metadata accessor for NearbyGroup_Group);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v159);
        v41 = v150;

        *(v53 + 24) = v64;
        *(v53 + 32) = 2080;
        type metadata accessor for NearbyGroupMember();
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
        v65 = Set.description.getter();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v159);

        *(v53 + 34) = v67;
        _os_log_impl(&_mh_execute_header, v50, v56, "%@ Distributing addMember event (%s) %s to %s", v53, 0x2Au);
        outlined destroy of Any?(v141, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v48 = v156;

        swift_arrayDestroy();

        if ((v41 & 0xC000000000000001) != 0)
        {
LABEL_18:
          v68 = __CocoaSet.count.getter();
          goto LABEL_21;
        }
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v18, type metadata accessor for NearbyGroup_Group);
        v149 = v46[1];
        v149(v13, v48);
        if ((v41 & 0xC000000000000001) != 0)
        {
          goto LABEL_18;
        }
      }

      v68 = *(v41 + 16);
LABEL_21:
      v69 = v151;
      if (v68)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
        v70 = swift_initStackObject();
        *(v70 + 16) = xmmword_1000CAB00;
        *(v70 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v70 + 40) = v71;
        *(v70 + 48) = Int._bridgeToObjectiveC()();
        *(v70 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v70 + 64) = v72;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        *(v70 + 72) = NSNumber.init(BOOLeanLiteral:)(1);
        *(v70 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v70 + 88) = v73;
        v74 = (swift_isaMask & *a1) + 264;
        v75 = *((swift_isaMask & *a1) + 0x108);
        v75();
        v76 = String._bridgeToObjectiveC()();

        v77 = IDSCopyBestGuessIDForID();

        if (v77)
        {
          v78 = a1;
          *(v70 + 96) = v77;
          v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v70);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
          swift_arrayDestroy();
          v80 = &v69[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
          v81 = *&v69[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24];
          v82 = *&v69[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
          __swift_project_boxed_opaque_existential_1(v80, v81);
          v148 = v78;
          v83 = (v75)();
          v84 = (*(v82 + 64))(v83);

          if (v84)
          {
            v151 = v84;
            outlined init with copy of PseudonymProtocol(v80, v159);
            v85 = v160;
            v86 = v161;
            __swift_project_boxed_opaque_existential_1(v159, v160);
            v87 = v155;
            v88 = v157;
            v89 = Message.serializedData(partial:)();
            if (v88)
            {

              v149(v153, v156);
              outlined destroy of NearbyGroup_Group(v87, type metadata accessor for NearbyGroup_Group);
              __swift_destroy_boxed_opaque_existential_0Tm(v159);
            }

            else
            {
              v118 = v89;
              v119 = v90;
              v120 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v79);

              v158 = 0;
              (*(v86 + 56))(v118, v119, v151, v150, 300, v120, &v158, v85, v86);
              v157 = 0;

              outlined consume of Data._Representation(v118, v119);
              v121 = v158;
              __swift_destroy_boxed_opaque_existential_0Tm(v159);
              v122 = v145;
              v123 = v153;
              v124 = v156;
              v143(v145, v153, v156);
              v125 = Logger.logObject.getter();
              v126 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                v159[0] = swift_slowAlloc();
                *v127 = 136315394;
                lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
                v128 = dispatch thunk of CustomStringConvertible.description.getter();
                v129 = v122;
                v131 = v130;
                v132 = v149;
                v149(v129, v124);
                v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v131, v159);

                *(v127 + 4) = v133;
                *(v127 + 12) = 2080;
                if (v121)
                {
                  v158 = v121;
                  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
                  v134 = v121;
                  v135 = String.init<A>(reflecting:)();
                  v137 = v136;
                }

                else
                {
                  v137 = 0xE300000000000000;
                  v135 = 7104878;
                }

                v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, v159);

                *(v127 + 14) = v139;
                _os_log_impl(&_mh_execute_header, v125, v126, "Distribution of addMember event (%s) sent with ID %s", v127, 0x16u);
                swift_arrayDestroy();

                v132(v153, v156);
              }

              else
              {

                v138 = v149;
                v149(v122, v124);
                v138(v123, v124);
              }

              outlined destroy of NearbyGroup_Group(v155, type metadata accessor for NearbyGroup_Group);
            }
          }

          else
          {
            v157 = v74;

            v106 = v151;
            v107 = v148;
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v159[0] = v112;
              *v110 = 138412546;
              *(v110 + 4) = v106;
              *v111 = v106;
              *(v110 + 12) = 2080;
              v113 = (v75)(v106);
              v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v159);

              *(v110 + 14) = v115;
              _os_log_impl(&_mh_execute_header, v108, v109, "%@ couldn't find account to send message from with handle: %s", v110, 0x16u);
              outlined destroy of Any?(v111, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

              __swift_destroy_boxed_opaque_existential_0Tm(v112);
            }

            lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
            swift_allocError();
            *v116 = 1;
            swift_willThrow();
            v149(v153, v156);
            outlined destroy of NearbyGroup_Group(v155, type metadata accessor for NearbyGroup_Group);
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        v91 = v148;
        v92 = v153;
        v143(v148, v153, v48);
        v93 = v69;
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = v48;
          v98 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v159[0] = v156;
          *v96 = 138412546;
          *(v96 + 4) = v93;
          *v98 = v93;
          *(v96 + 12) = 2080;
          lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
          v99 = v93;
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v103 = v91;
          v104 = v149;
          v149(v103, v97);
          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v159);

          *(v96 + 14) = v105;
          _os_log_impl(&_mh_execute_header, v94, v95, "%@ Not distributing addMember event %s since there are no destinations", v96, 0x16u);
          outlined destroy of Any?(v98, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          __swift_destroy_boxed_opaque_existential_0Tm(v156);

          v104(v153, v97);
        }

        else
        {

          v117 = v149;
          v149(v91, v48);
          v117(v92, v48);
        }

        outlined destroy of NearbyGroup_Group(v155, type metadata accessor for NearbyGroup_Group);
      }

      return;
    }
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.host);
  v34 = v3;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v34;
    v39 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "%@ asked to distribute add to nobody else.", v37, 0xCu);
    outlined destroy of Any?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

void NearbyGroupHostIDSService.distributeRemove(for:removingMember:)(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v143 = *(v5 - 8);
  v6 = *(v143 + 64);
  v7 = __chkstk_darwin(v5);
  v137 = &v126[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v128 = &v126[-v10];
  v11 = __chkstk_darwin(v9);
  v144 = &v126[-v12];
  __chkstk_darwin(v11);
  v14 = &v126[-v13];
  v15 = type metadata accessor for NearbyGroup_Group(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v126[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v126[-v20];
  v147 = a1;
  v148 = a2;
  v135 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
  v136 = v15;
  v22 = static Message.with(_:)();
  v138 = v2;
  v23 = *((swift_isaMask & *a1) + 0xC0);
  v140 = a1;
  v146 = v23(v22);
  specialized Set._Variant.insert(_:)(v149, a2);

  UUID.init()();
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Log.host);
  v26 = v143;
  v27 = *(v143 + 16);
  v141 = v14;
  v131 = v27;
  v132 = v143 + 16;
  v27(v144, v14, v5);
  v139 = v21;
  outlined init with copy of NearbyGroup_Group(v21, v19, type metadata accessor for NearbyGroup_Group);
  v28 = v142;
  v134 = v25;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v142 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v129 = v33;
    v130 = swift_slowAlloc();
    v149[0] = v130;
    *v32 = 138413058;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v34 = v142;
    v35 = v144;
    v127 = v30;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = *(v26 + 8);
    v39(v35, v5);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v149);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2080;
    v41 = Message.debugDescription.getter();
    v43 = v42;
    outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v149);

    *(v32 + 24) = v44;
    *(v32 + 32) = 2080;
    swift_beginAccess();
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);

    v45 = Set.description.getter();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v149);
    v28 = v142;

    *(v32 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v29, v127, "%@ Distributing removeMember event (%s) %s to %s", v32, 0x2Au);
    outlined destroy of Any?(v129, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
  }

  else
  {

    outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
    v39 = *(v26 + 8);
    v39(v144, v5);
  }

  v49 = v5;
  swift_beginAccess();
  v50 = v146;
  v51 = v140;
  v52 = v137;
  if ((v146 & 0xC000000000000001) != 0)
  {

    v53 = __CocoaSet.count.getter();

    if (v53)
    {
      goto LABEL_8;
    }

LABEL_13:
    v131(v52, v141, v49);
    v73 = v28;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = v52;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      LODWORD(v136) = v75;
      v79 = v78;
      v140 = v78;
      v142 = swift_slowAlloc();
      v149[0] = v142;
      *v77 = 138412546;
      *(v77 + 4) = v73;
      *v79 = v73;
      *(v77 + 12) = 2080;
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v144 = v50;
      v80 = v73;
      v81 = v76;
      v133 = v49;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v39(v81, v49);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v149);

      *(v77 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v74, v136, "%@ Not distributing removeMember event %s since there are no destinations", v77, 0x16u);
      outlined destroy of Any?(v140, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v142);

      v39(v141, v133);
    }

    else
    {

      v39(v52, v49);
      v39(v141, v49);
    }

    outlined destroy of NearbyGroup_Group(v139, type metadata accessor for NearbyGroup_Group);

    return;
  }

  if (!*(v146 + 16))
  {
    goto LABEL_13;
  }

LABEL_8:
  v144 = v50;
  v130 = v39;
  v133 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v55;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v56;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v57;
  v58 = (swift_isaMask & *v51) + 264;
  v137 = *((swift_isaMask & *v51) + 0x108);
  v137();
  v59 = String._bridgeToObjectiveC()();

  v60 = IDSCopyBestGuessIDForID();

  if (v60)
  {
    *(inited + 96) = v60;
    v129 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    v61 = v142;
    v62 = v142 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service;
    v63 = *(v142 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32);
    __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service), *(v142 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24));
    v64 = (v137)();
    v65 = (*(v63 + 64))(v64);

    if (v65)
    {
      v66 = v129;
      v142 = v65;
      outlined init with copy of PseudonymProtocol(v62, v149);
      v67 = v150;
      v68 = v151;
      __swift_project_boxed_opaque_existential_1(v149, v150);
      v70 = v138;
      v69 = v139;
      v71 = Message.serializedData(partial:)();
      if (v70)
      {

        (v130)(v141, v133);
        outlined destroy of NearbyGroup_Group(v69, type metadata accessor for NearbyGroup_Group);
        __swift_destroy_boxed_opaque_existential_0Tm(v149);
      }

      else
      {
        v98 = v71;
        v99 = v72;
        v100 = v144;

        v101 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v66);
        v138 = 0;
        v102 = v101;

        v145 = 0;
        v103 = *(v68 + 56);
        v125 = v68;
        v104 = v142;
        v105 = v138;
        v103(v98, v99, v142, v100, 300, v102, &v145, v67, v125);
        if (v105)
        {

          outlined consume of Data._Representation(v98, v99);

          (v130)(v141, v133);
          outlined destroy of NearbyGroup_Group(v139, type metadata accessor for NearbyGroup_Group);
          v106 = v145;
          __swift_destroy_boxed_opaque_existential_0Tm(v149);
        }

        else
        {

          outlined consume of Data._Representation(v98, v99);
          v140 = v145;
          __swift_destroy_boxed_opaque_existential_0Tm(v149);
          v107 = v128;
          v108 = v141;
          v109 = v133;
          v131(v128, v141, v133);
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v149[0] = swift_slowAlloc();
            *v112 = 136315394;
            lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
            v113 = dispatch thunk of CustomStringConvertible.description.getter();
            v114 = v107;
            v116 = v115;
            v143 += 8;
            (v130)(v114, v109);
            v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v116, v149);

            *(v112 + 4) = v117;
            *(v112 + 12) = 2080;
            v118 = v140;
            if (v140)
            {
              v145 = v140;
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
              v119 = v118;
              v120 = String.init<A>(reflecting:)();
              v122 = v121;
            }

            else
            {
              v122 = 0xE300000000000000;
              v120 = 7104878;
            }

            v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v149);

            *(v112 + 14) = v124;
            _os_log_impl(&_mh_execute_header, v110, v111, "Distribution of removeMember event (%s) sent with ID %s", v112, 0x16u);
            swift_arrayDestroy();

            (v130)(v141, v133);
            outlined destroy of NearbyGroup_Group(v139, type metadata accessor for NearbyGroup_Group);
          }

          else
          {

            v123 = v130;
            (v130)(v107, v109);
            v123(v108, v109);
            outlined destroy of NearbyGroup_Group(v139, type metadata accessor for NearbyGroup_Group);
          }
        }
      }
    }

    else
    {
      v138 = v58;

      v86 = v61;
      v87 = v140;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v149[0] = v92;
        *v90 = 138412546;
        *(v90 + 4) = v86;
        *v91 = v86;
        *(v90 + 12) = 2080;
        v93 = v86;
        v94 = (v137)(v93);
        v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v149);

        *(v90 + 14) = v96;
        _os_log_impl(&_mh_execute_header, v88, v89, "%@ couldn't find account to send message from with handle: %s", v90, 0x16u);
        outlined destroy of Any?(v91, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v92);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v97 = 1;
      swift_willThrow();
      (v130)(v141, v133);
      outlined destroy of NearbyGroup_Group(v139, type metadata accessor for NearbyGroup_Group);
    }
  }

  else
  {
    __break(1u);
  }
}

void NearbyGroupHostIDSService.distributeLeave(for:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v136 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v124 = &v123 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v123 - v11;
  __chkstk_darwin(v10);
  v14 = &v123 - v13;
  v15 = type metadata accessor for NearbyGroup_Group(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v123 - v20;
  v140[3] = a1;
  v132 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
  v133 = v15;
  v22 = static Message.with(_:)();
  v131 = v1;
  v23 = *((swift_isaMask & *a1) + 0xC0);
  v138 = a1;
  v24 = v23(v22);
  v139 = v14;
  UUID.init()();
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Log.host);
  v27 = v4[2];
  v129 = v4 + 2;
  v128 = v27;
  v27(v12, v139, v3);
  v137 = v21;
  outlined init with copy of NearbyGroup_Group(v21, v19, type metadata accessor for NearbyGroup_Group);
  v28 = v135;

  v130 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v134 = v4;
  v135 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    LODWORD(v126) = v30;
    v33 = v32;
    v34 = swift_slowAlloc();
    v125 = v34;
    v127 = swift_slowAlloc();
    v141[0] = v127;
    *v33 = 138413058;
    *(v33 + 4) = v28;
    *v34 = v28;
    *(v33 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v35 = v28;
    v36 = v4;
    v37 = v35;
    v38 = v29;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = v36[1];
    v42(v12, v3);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v141);

    *(v33 + 14) = v43;
    *(v33 + 22) = 2080;
    v44 = Message.debugDescription.getter();
    v46 = v45;
    outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v141);
    v48 = v136;

    *(v33 + 24) = v47;
    *(v33 + 32) = 2080;
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
    v49 = Set.description.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v141);

    *(v33 + 34) = v51;
    _os_log_impl(&_mh_execute_header, v38, v126, "%@ Distributing leave event (%s) %s to %s", v33, 0x2Au);
    outlined destroy of Any?(v125, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
  }

  else
  {

    outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
    v42 = v4[1];
    v42(v12, v3);
    v48 = v136;
  }

  v52 = v138;
  if ((v24 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_8;
    }

LABEL_13:

    v128(v48, v139, v3);
    v74 = v135;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v136 = v42;
      v79 = v78;
      v138 = swift_slowAlloc();
      v141[0] = v138;
      *v77 = 138412546;
      *(v77 + 4) = v74;
      *v79 = v74;
      *(v77 + 12) = 2080;
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v80 = v74;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = v48;
      v85 = v136;
      (v136)(v84, v3);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v141);

      *(v77 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v75, v76, "%@ Not distributing leave event %s since there are no destinations", v77, 0x16u);
      outlined destroy of Any?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v138);

      v85(v139, v3);
    }

    else
    {

      v42(v48, v3);
      v42(v139, v3);
    }

    outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
    return;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_13;
  }

LABEL_8:
  v126 = v24;
  v136 = v42;
  v127 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v54;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v55;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v56;
  v57 = (swift_isaMask & *v52) + 264;
  v58 = *((swift_isaMask & *v52) + 0x108);
  v58();
  v59 = String._bridgeToObjectiveC()();

  v60 = IDSCopyBestGuessIDForID();

  if (v60)
  {
    *(inited + 96) = v60;
    v125 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    v61 = v135;
    v62 = &v135[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
    v63 = *&v135[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
    __swift_project_boxed_opaque_existential_1(&v135[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service], *&v135[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24]);
    v64 = (v58)();
    v65 = (*(v63 + 64))(v64);

    if (v65)
    {
      v66 = v125;
      v138 = v65;
      outlined init with copy of PseudonymProtocol(v62, v141);
      v68 = v142;
      v67 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      v69 = v137;
      v70 = v131;
      v71 = Message.serializedData(partial:)();
      v73 = v127;
      if (v70)
      {

        (v136)(v139, v73);
        outlined destroy of NearbyGroup_Group(v69, type metadata accessor for NearbyGroup_Group);
        __swift_destroy_boxed_opaque_existential_0Tm(v141);
      }

      else
      {
        v101 = v71;
        v102 = v72;
        v103 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v66);

        v140[0] = 0;
        (*(v67 + 56))(v101, v102, v138, v126, 300, v103, v140, v68, v67);

        outlined consume of Data._Representation(v101, v102);
        v104 = v140[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v141);
        v105 = v124;
        v106 = v139;
        v107 = v127;
        v128(v124, v139, v127);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v108, v109))
        {
          v131 = 0;
          v110 = swift_slowAlloc();
          v141[0] = swift_slowAlloc();
          *v110 = 136315394;
          lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v112 = v105;
          v114 = v113;
          (v136)(v112, v107);
          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v114, v141);

          *(v110 + 4) = v115;
          *(v110 + 12) = 2080;
          if (v104)
          {
            v140[0] = v104;
            type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
            v116 = v104;
            v117 = String.init<A>(reflecting:)();
            v119 = v118;
          }

          else
          {
            v119 = 0xE300000000000000;
            v117 = 7104878;
          }

          v121 = v138;
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, v141);

          *(v110 + 14) = v122;
          _os_log_impl(&_mh_execute_header, v108, v109, "Distribution of leave event (%s) sent with ID %s", v110, 0x16u);
          swift_arrayDestroy();

          (v136)(v139, v127);
          outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
        }

        else
        {

          v120 = v136;
          (v136)(v105, v107);
          v120(v106, v107);
          outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
        }
      }
    }

    else
    {
      v133 = v58;
      v132 = v57;

      v87 = v61;
      v88 = v138;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();

      v91 = os_log_type_enabled(v89, v90);
      v92 = v127;
      if (v91)
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v141[0] = v95;
        *v93 = 138412546;
        *(v93 + 4) = v87;
        *v94 = v87;
        *(v93 + 12) = 2080;
        v96 = v87;
        v97 = v133(v96);
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v141);

        *(v93 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v89, v90, "%@ couldn't find account to send message from with handle: %s", v93, 0x16u);
        outlined destroy of Any?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v95);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v100 = 1;
      swift_willThrow();
      (v136)(v139, v92);
      outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NearbyGroupHostIDSService.distributeGroupInitialization(for:)(uint64_t *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xC0))();
  NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(a1, v2);
}

void NearbyGroupHostIDSService.__allocating_init(serviceName:)()
{
  v1 = objc_allocWithZone(IDSService);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithService:v2];

  if (v3)
  {

    v4[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
    v4[4] = &protocol witness table for IDSService;
    v4[0] = v3;
    (*(v0 + 136))(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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