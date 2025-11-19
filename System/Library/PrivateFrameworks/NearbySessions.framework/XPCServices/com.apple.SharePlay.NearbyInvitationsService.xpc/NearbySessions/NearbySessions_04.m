uint64_t NearbyGroupHostManager.createGroup(id:generator:)()
{
  v58 = v0;
  v1 = v0[14];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0[9] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[11]);
    v3 = v2;

    if (v3)
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v4 = v0[18];
      v5 = v0[15];
      v6 = v0[16];
      v7 = v0[11];
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Log.host);
      (*(v6 + 16))(v4, v7, v5);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[18];
      v13 = v0[15];
      v14 = v0[16];
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v57[0] = v16;
        *v15 = 136315138;
        lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v14 + 8))(v12, v13);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v57);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v9, v10, "Trying to create a NearbyGroup with %s when one already exists.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }

      else
      {

        (*(v14 + 8))(v12, v13);
      }

      v47 = 0;
LABEL_20:
      lazy protocol witness table accessor for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors();
      swift_allocError();
      *v48 = v47;
      swift_willThrow();
      v50 = v0[25];
      v49 = v0[26];
      v51 = v0[24];
      v53 = v0[19];
      v52 = v0[20];
      v54 = v0[18];

      v55 = v0[1];

      return v55();
    }
  }

  else
  {
    v21 = v0[9];
  }

  v22 = v0[14];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = *(v0[10] + 16);

  v24 = specialized NearbyGroupServerBag.numericConfig(for:)(3u);
  v25 = [v24 integerValue];

  if (v23 >= v25)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v30 = v0[19];
    v31 = v0[15];
    v32 = v0[16];
    v33 = v0[11];
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.host);
    (*(v32 + 16))(v30, v33, v31);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[19];
    v39 = v0[15];
    v40 = v0[16];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57[0] = v42;
      *v41 = 136315138;
      lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v38, v39);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v57);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to create new NearbyGroupHost with %s due to group count limit", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
    }

    else
    {

      (*(v40 + 8))(v38, v39);
    }

    v47 = 1;
    goto LABEL_20;
  }

  v56 = (v0[12] + *v0[12]);
  v26 = *(v0[12] + 4);
  v27 = swift_task_alloc();
  v0[27] = v27;
  *v27 = v0;
  v27[1] = NearbyGroupHostManager.createGroup(id:generator:);
  v28 = v0[13];

  return v56();
}

{
  v1 = v0[28];
  v38 = v0[26];
  v36 = v0[25];
  v29 = v0[24];
  v32 = v0[23];
  v26 = v0[22];
  v37 = v0[21];
  v34 = v0[19];
  v35 = v0[18];
  v33 = v0[17];
  v28 = v0[16];
  v30 = v0[15];
  v31 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  v25 = v2;
  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v3, isUniquelyReferenced_nonNull_native);
  *v7 = v39;
  v5(v0 + 2, 0);

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v38, 1, 1, v10);
  v24 = swift_allocObject();
  v11 = swift_weakInit();
  (*((swift_isaMask & *v4) + 0x158))(v11);
  v12 = v26 + 32;
  v27 = *(v26 + 32);
  v27(v29, v36, v37);
  (*(v28 + 16))(v31, v3, v30);
  v13 = (*(v12 + 48) + 32) & ~*(v12 + 48);
  v14 = (v32 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v28 + 80) + v14 + 8) & ~*(v28 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v27(v16 + v13, v29, v37);
  *(v16 + v14) = v24;
  (*(v28 + 32))(v16 + v15, v31, v30);
  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.createGroup(id:generator:), v16);
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v19 = *(v25 + v18);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v25 + v18);
  *(v25 + v18) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v3, v20);
  *(v25 + v18) = v40;
  swift_endAccess();

  v21 = v0[1];
  v22 = v0[28];

  return v21(v22);
}

uint64_t NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[25];
    v7 = v4[26];
    v9 = v4[24];
    v11 = v4[19];
    v10 = v4[20];
    v12 = v4[18];

    v13 = *(v6 + 8);

    return v13();
  }

  else
  {
    v15 = v4[14];
    v4[28] = a1;

    return _swift_task_switch(NearbyGroupHostManager.createGroup(id:generator:), v15, 0);
  }
}

uint64_t NearbyGroupHostManager.createGroup(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.createGroup(with:), v1, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 24);
  v7 = *v2;
  v4[8] = v1;

  v8 = v4[6];
  v9 = v4[5];
  v10 = v4[4];
  v11 = v4[3];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v12 = NearbyGroupHostManager.createGroup(with:);
  }

  else
  {
    v4[9] = a1;
    (*(v9 + 8))(v8, v10);
    v12 = NearbyGroupHostManager.createGroup(with:);
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t NearbyGroupHostManager.createGroup(with:)()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  NearbyGroupCreationRequest.id.getter();
  v4 = v3;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = NearbyGroupHostManager.createGroup(with:);
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];

  return specialized NearbyGroupHostManager.createGroup(id:generator:)(v6, v7, v8, v7);
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = (*((swift_isaMask & *v1) + 0x208))();

  v4 = v0[1];

  return v4(v3);
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t NearbyGroupHostManager.deinit()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners);

  v4 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask);

  v5 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_abcReporter);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NearbyGroupHostManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners);

  v4 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask);

  v5 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_abcReporter);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t specialized _PublisherElements.Iterator.Inner.cancel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  v6 = *(v0 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v0 + 24);
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v0 + 32, &v50, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  if (v51 >= 2)
  {
    outlined init with take of PseudonymProtocol(&v50, v48);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.default);
    outlined init with copy of PseudonymProtocol(v48, &v46);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v38 = v6;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v19;
      *v18 = 136315138;
      outlined init with copy of PseudonymProtocol(&v46, v44);
      outlined init with copy of (String, Any)(v44, &v42, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      if (v43)
      {
        outlined init with take of PseudonymProtocol(&v42, v40);
        outlined init with copy of PseudonymProtocol(v40, &v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v20 = String.init<A>(reflecting:)();
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
      }

      else
      {
        v20 = 7104878;
        v22 = 0xE300000000000000;
      }

      outlined destroy of Any?(v44, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&v46);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v41);

      *(v18 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Handling cancellation by terminating upstream subscription: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);

      v6 = v38;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v46);
    }

    v46 = 0uLL;
    *v47 = 0;
    *&v47[8] = xmmword_1000CA6B0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner.State(&v46, v1 + 32);
    swift_endAccess();
    os_unfair_lock_unlock(v6);
    v31 = *(&v49 + 1);
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v32 = *(v31 + 8);
    dispatch thunk of Cancellable.cancel()();
    v33 = *(v7 + 16);
    if (v33)
    {
      v34 = (v7 + 32);
      do
      {
        v35 = *v34++;
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
        (*(*(v36 - 8) + 56))(v5, 1, 1, v36);
        outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(v5, *(*(v35 + 64) + 40));
        swift_continuation_resume();
        --v33;
      }

      while (v33);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v38 = v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40[0] = v12;
      *v11 = 136315138;
      outlined init with copy of (String, Any)(v1 + 32, v48, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
      outlined init with copy of (String, Any)(v48, &v46, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMR);
      if (*&v47[8] == 2)
      {
        v13 = 7104878;
        v14 = 0xE300000000000000;
      }

      else
      {
        v44[0] = v46;
        v44[1] = *v47;
        v45 = *&v47[16];
        outlined init with copy of (String, Any)(v44, &v42, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
        v13 = String.init<A>(reflecting:)();
        v14 = v23;
        outlined destroy of Any?(v44, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
      }

      outlined destroy of Any?(v48, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GSgMR);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v40);

      *(v11 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v9, v10, "Terminating sequence from state: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);

      v6 = v38;
    }

    else
    {
    }

    memset(v48, 0, sizeof(v48));
    v49 = xmmword_1000CA6B0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner.State(v48, v1 + 32);
    swift_endAccess();
    os_unfair_lock_unlock(v6);
    v25 = *(v7 + 16);
    if (v25)
    {
      v26 = (v7 + 32);
      do
      {
        v27 = *v26++;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
        outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(v5, *(*(v27 + 64) + 40));
        swift_continuation_resume();
        --v25;
      }

      while (v25);
    }

    return outlined destroy of Any?(&v50, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *specialized NearbyGroupHostIDSService.init(idsService:)(void *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  __chkstk_darwin(v4);
  v52 = &v43 - v6;
  v58 = type metadata accessor for Publishers.PrefetchStrategy();
  v50 = *(v58 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v58);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v51 = *(v53 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v53);
  v49 = &v43 - v10;
  v47 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v47 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v47);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v62[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
  v62[4] = &protocol witness table for IDSService;
  v62[0] = a1;
  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = PassthroughSubject.init()();
  v56 = a2;
  v43 = v16;
  *&a2[v16] = v20;
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v60 = 0xD00000000000001ALL;
  v61 = 0x80000001000CEEC0;
  v57 = a1;
  v21 = [a1 serviceIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE700000000000000;
    v23 = 0x4E574F4E4B4E55;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  static DispatchQoS.unspecified.getter();
  v60 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v46 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v56;
  *&v56[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue] = v27;
  outlined init with copy of PseudonymProtocol(v62, &v28[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service]);
  v60 = *&v28[v43];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v47 = Publisher.eraseToAnyPublisher()();
  v60 = v47;
  v29 = v50;
  v30 = v48;
  (*(v50 + 104))(v48, enum case for Publishers.PrefetchStrategy.byRequest(_:), v58);
  v32 = v54;
  v31 = v55;
  v33 = v52;
  (*(v54 + 104))(v52, enum case for Publishers.BufferingStrategy.dropOldest<A>(_:), v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v34 = v49;
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v32 + 8))(v33, v31);
  (*(v29 + 8))(v30, v58);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v35 = v53;
  v36 = Publisher.eraseToAnyPublisher()();

  (*(v51 + 8))(v34, v35);
  *&v28[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages] = v36;
  v37 = type metadata accessor for NearbyGroupHostIDSService();
  v59.receiver = v28;
  v59.super_class = v37;
  v38 = objc_msgSendSuper2(&v59, "init");
  v39 = objc_allocWithZone(IDSServiceDelegateProperties);
  v40 = v38;
  v41 = [v39 init];
  [v41 setWantsCrossAccountMessaging:1];
  [v57 addDelegate:v40 withDelegateProperties:v41 queue:*&v40[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue]];

  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  return v40;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.init(serviceName:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHostManager.init(serviceName:)();
}

uint64_t type metadata accessor for NearbyGroupHostManager()
{
  result = type metadata singleton initialization cache for NearbyGroupHostManager;
  if (!type metadata singleton initialization cache for NearbyGroupHostManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of NearbyGroupHostIDSService.MessageEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyGroupHostIDSService.MessageEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.listenForEvents()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHostManager.listenForEvents()(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of NearbyGroupHostIDSService.MessageEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.handle(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupHostManager.handle(_:);

  return closure #1 in NearbyGroupHostManager.handle(_:)(v2, v3);
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.handle(_:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHostManager.createGroup(id:generator:)(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t specialized NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v6 = type metadata accessor for UUID();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v4[20] = *(v7 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v4[26] = *(v9 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(specialized NearbyGroupHostManager.createGroup(id:generator:), a2, 0);
}

void type metadata completion function for NearbyGroupHostManager()
{
  type metadata accessor for Published<[UUID : NearbyGroupHost]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(unint64_t *a1, void (*a2)(uint64_t))
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

id NearbyInvitationsBlastDoorConnectionHelper.init(service:)()
{
  v0 = objc_allocWithZone(IDSServiceProperties);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithServiceIdentifier:v1];

  return v2;
}

void specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t), uint64_t a6, void *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &aBlock[-1] - v16;
  v18 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v34) = a4;
    type metadata accessor for NSNumber();
    v20 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v34) & 1;
      *(v26 + 32) = a5;
      *(v26 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_74;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v31 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 2;
    a5(v17, v32);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v29 = swift_allocError();
    *v30 = 0;
    a5(v17, v29);
  }

  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &aBlock[-1] - v16;
  v18 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v34) = a4;
    type metadata accessor for NSNumber();
    v20 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v34) & 1;
      *(v26 + 32) = a5;
      *(v26 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_67;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v31 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 2;
    a5(v17, v32);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v29 = swift_allocError();
    *v30 = 0;
    a5(v17, v29);
  }

  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &aBlock[-1] - v16;
  v18 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v34) = a4;
    type metadata accessor for NSNumber();
    v20 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v34) & 1;
      *(v26 + 32) = a5;
      *(v26 + 40) = a6;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_60;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v31 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 2;
    a5(v17, v32);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v29 = swift_allocError();
    *v30 = 0;
    a5(v17, v29);
  }

  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &aBlock[-1] - v16;
  v18 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v34) = a4;
    type metadata accessor for NSNumber();
    v20 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v34) & 1;
      *(v26 + 32) = a5;
      *(v26 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_54;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v31 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 2;
    a5(v17, v32);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v29 = swift_allocError();
    *v30 = 0;
    a5(v17, v29);
  }

  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &aBlock[-1] - v16;
  v18 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v34) = a4;
    type metadata accessor for NSNumber();
    v20 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v34) & 1;
      *(v26 + 32) = a5;
      *(v26 + 40) = a6;
      aBlock[4] = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_47;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v31 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 2;
    a5(v17, v32);
  }

  else
  {
    v28 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v29 = swift_allocError();
    *v30 = 0;
    a5(v17, v29);
  }

  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
}

void NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v41 = a3;
  v40 = a2;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v20)
  {
    v21 = v20;
    v38 = a4;
    v39 = a6;
    type metadata accessor for NSNumber();
    v22 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v24 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v22 command:isa];

    if (v24)
    {
      [v24 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      v26 = v41;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v26;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      v27 = v40;
      *(inited + 104) = v40;
      outlined copy of Data._Representation(a1, v27);
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v28);

      v29 = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = swift_allocObject();
      *(v30 + 16) = a8;
      *(v30 + 24) = a9;
      *(v30 + 32) = v26;
      *(v30 + 40) = v38 & 1;
      v31 = v39;
      *(v30 + 48) = a5;
      *(v30 + 56) = v31;
      aBlock[4] = partial apply for closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_4;
      v32 = _Block_copy(aBlock);

      [v21 diffuseClientMessage:v29 context:v24 withCompletionBlock:v32];
      _Block_release(v32);

      return;
    }

    (*(*(a8 - 8) + 56))(v19, 1, 1, a8);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v35 = swift_allocError();
    *v36 = 2;
    a5(v19, v35);
  }

  else
  {
    (*(*(a8 - 8) + 56))(v19, 1, 1, a8);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v33 = swift_allocError();
    *v34 = 0;
    a5(v19, v33);
  }

  (*(v16 + 8))(v19, v15);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors);
  }

  return result;
}

uint64_t closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v33[1] = a7;
  v34 = a6;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v33 - v15;
  v17 = type metadata accessor for BinaryDecodingOptions();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_17;
  }

  v35 = 1835365481;
  v36 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
  if ((v25 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v24, v39);
  outlined destroy of AnyHashable(v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v35 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v35 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v35 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v35 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v35 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v35)
    {
      goto LABEL_17;
    }
  }

  else if (v35 != a4)
  {
    goto LABEL_17;
  }

  v35 = 0x64616F6C796170;
  v36 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v27 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v37);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v26, v39);
  outlined destroy of AnyHashable(v37);
  if (swift_dynamicCast())
  {
    v28 = v35;
    v29 = v36;
    v39[0] = v35;
    v39[1] = v36;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    outlined copy of Data._Representation(v35, v36);
    BinaryDecodingOptions.init()();
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    (*(v20 + 16))(v16, v23, a8);
    (*(v20 + 56))(v16, 0, 1, a8);
    v34(v16, 0);
    outlined consume of Data._Representation(v28, v29);
    (*(v13 + 8))(v16, v12);
    return (*(v20 + 8))(v23, a8);
  }

LABEL_17:
  (*(v20 + 56))(v16, 1, 1, a8);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v30 = swift_allocError();
  *v31 = 3;
  v34(v16, v30);

  return (*(v13 + 8))(v16, v12);
}

void specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &aBlock[-1] - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = objc_opt_self();
  v18 = a6;
  v19 = [v17 getBlastDoorSharedConnection];
  if (v19)
  {
    v20 = v19;
    HIDWORD(v31) = a4;
    type metadata accessor for NSNumber();
    v21 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v23 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v21 command:isa];

    if (v23)
    {
      [v23 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v25);

      v26 = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      *(v27 + 24) = BYTE4(v31) & 1;
      *(v27 + 32) = partial apply for closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
      *(v27 + 40) = v16;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_13;
      v28 = _Block_copy(aBlock);

      [v20 diffuseClientMessage:v26 context:v23 withCompletionBlock:v28];
      _Block_release(v28);

      return;
    }

    v30 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    specialized closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v15, v18);
  }

  else
  {
    v29 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
    specialized closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v15, v18);
  }

  outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &aBlock[-1] - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = objc_opt_self();
  v18 = a6;
  v19 = [v17 getBlastDoorSharedConnection];
  if (v19)
  {
    v20 = v19;
    HIDWORD(v31) = a4;
    type metadata accessor for NSNumber();
    v21 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v23 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v21 command:isa];

    if (v23)
    {
      [v23 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v25);

      v26 = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      *(v27 + 24) = BYTE4(v31) & 1;
      *(v27 + 32) = partial apply for closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
      *(v27 + 40) = v16;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_22;
      v28 = _Block_copy(aBlock);

      [v20 diffuseClientMessage:v26 context:v23 withCompletionBlock:v28];
      _Block_release(v28);

      return;
    }

    v30 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    specialized closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v15, v18);
  }

  else
  {
    v29 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
    specialized closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v15, v18);
  }

  outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &aBlock[-1] - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = objc_opt_self();
  v18 = a6;
  v19 = [v17 getBlastDoorSharedConnection];
  if (v19)
  {
    v20 = v19;
    HIDWORD(v35) = a4;
    type metadata accessor for NSNumber();
    v21 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v23 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v21 command:isa];

    if (v23)
    {
      [v23 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v25);

      v26 = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      *(v27 + 24) = BYTE4(v35) & 1;
      *(v27 + 32) = partial apply for closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
      *(v27 + 40) = v16;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_31_0;
      v28 = _Block_copy(aBlock);

      [v20 diffuseClientMessage:v26 context:v23 withCompletionBlock:v28];
      _Block_release(v28);

      return;
    }

    v32 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v33 = swift_allocError();
    *v34 = 2;
    closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v15, v33, v18);
  }

  else
  {
    v29 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v30 = swift_allocError();
    *v31 = 0;
    closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v15, v30, v18);
  }

  outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
}

uint64_t partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  v4 = *(v3 + 40);
  return specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

void specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v41 = a3;
  v40 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - v16;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v19 = objc_opt_self();
  v20 = a6;

  v21 = [v19 getBlastDoorSharedConnection];
  if (v21)
  {
    v22 = v21;
    HIDWORD(v39) = a4;
    type metadata accessor for NSNumber();
    v23 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v25 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v23 command:isa];

    if (v25)
    {
      [v25 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      v27 = v41;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v27;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      v28 = v40;
      *(inited + 104) = v40;
      outlined copy of Data._Representation(a1, v28);
      v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v29);

      v30 = Dictionary._bridgeToObjectiveC()().super.isa;

      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      *(v31 + 24) = BYTE4(v39) & 1;
      *(v31 + 32) = partial apply for closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:);
      *(v31 + 40) = v18;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_40_0;
      v32 = _Block_copy(aBlock);

      [v22 diffuseClientMessage:v30 context:v25 withCompletionBlock:v32];
      _Block_release(v32);

      return;
    }

    v36 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v37 = swift_allocError();
    *v38 = 2;
    closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(v17, v37, v20, a7, a8);
  }

  else
  {
    v33 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v34 = swift_allocError();
    *v35 = 0;
    closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(v17, v34, v20, a7, a8);
  }

  outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
}

uint64_t NearbyProtoJoinRequest.encryptedData.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

void protocol witness for Enum.init(rawValue:) in conformance NearbyProtoNearbySessionMessageType(uint64_t a1@<X8>)
{
  specialized NearbyProtoNearbySessionMessageType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyProtoNearbySessionMessageType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specialized NearbyProtoNearbySessionMessageType.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyProtoNearbySessionMessageType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoNearbySessionMessageType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyProtoNearbySessionMessageType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static NearbyProtoNearbySessionMessageType.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static NearbyProtoNearbySessionMessageType.allCases = a1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance NearbyProtoNearbySessionMessageType@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static NearbyProtoNearbySessionMessageType.allCases;
}

uint64_t NearbyProtoSessionMessage.version.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t NearbyProtoSessionMessage.version.setter(int a1)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*NearbyProtoSessionMessage.version.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return NearbyProtoSessionMessage.version.modify;
}

uint64_t NearbyProtoSessionMessage.version.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall NearbyProtoSessionMessage.clearVersion()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t NearbyProtoSessionMessage.type.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 24));
  v2 = v1[8];
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t NearbyProtoSessionMessage.type.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*NearbyProtoSessionMessage.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return NearbyProtoSessionMessage.type.modify;
}

uint64_t NearbyProtoSessionMessage.type.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall NearbyProtoSessionMessage.clearType()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t (*NearbyProtoSessionMessage.data.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

double NearbyProtoSessionMessage.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for NearbyProtoSessionMessage(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 256;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoConnectionRequest.handle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NearbyProtoConnectionRequest.handle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NearbyProtoConnectionRequest.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
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

uint64_t key path getter for NearbyProtoConnectionRequest.displayName : NearbyProtoConnectionRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
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

uint64_t key path setter for NearbyProtoConnectionRequest.displayName : NearbyProtoConnectionRequest(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NearbyProtoConnectionRequest.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NearbyProtoConnectionRequest.displayName.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28);
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

Swift::Void __swiftcall NearbyProtoConnectionRequest.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NearbyProtoConnectionRequest.userInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path setter for NearbyProtoConnectionRequest.userInfo : NearbyProtoConnectionRequest(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NearbyProtoConnectionRequest.userInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoConnectionRequest.userInfo.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

Swift::Void __swiftcall NearbyProtoConnectionRequest.clearUserInfo()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_1000C8990;
}

double NearbyProtoConnectionRequest.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v3 = a1 + v2[6];
  UnknownStorage.init()();
  v4 = (a1 + v2[7]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[8]) = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoConnectionResponse.Content.denied.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v7 + 24), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a1, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
}

uint64_t key path getter for NearbyProtoConnectionResponse.Content.denied : NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v8 + 24), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v9 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, a2, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
}

void (*NearbyProtoConnectionResponse.Content.denied.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
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
  v8 = *(*(type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  *(v4 + 12) = v11;
  outlined init with copy of (String, Any)(v1 + v11, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      return NearbyProtoConnectionResponse.Content.denied.modify;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  UnknownStorage.init()();
  return NearbyProtoConnectionResponse.Content.denied.modify;
}

uint64_t NearbyProtoConnectionResponse.Content.approved.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v7 + 24), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a1, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  *a1 = xmmword_1000CAAE0;
  v10 = a1 + *(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for NearbyProtoConnectionResponse.Content.approved : NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v8 + 24), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v9 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, a2, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  *a2 = xmmword_1000CAAE0;
  v11 = a2 + *(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for NearbyProtoConnectionResponse.Content.denied : NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined destroy of Any?(a2 + v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t NearbyProtoConnectionResponse.Content.denied.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined destroy of Any?(v2 + v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(a1, v2 + v5, a2);
  v6 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1000CAAE0;
  v1 = a1 + *(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) + 20);
  return UnknownStorage.init()();
}

void (*NearbyProtoConnectionResponse.Content.approved.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
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
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
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
  v12 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  *(v4 + 12) = v12;
  outlined init with copy of (String, Any)(v1 + v12, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = xmmword_1000CAAE0;
    v15 = v11 + *(v8 + 20);
    UnknownStorage.init()();
    return NearbyProtoConnectionResponse.Content.approved.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v11, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  return NearbyProtoConnectionResponse.Content.approved.modify;
}

void NearbyProtoConnectionResponse.Content.denied.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v10, a3);
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v11, a5);
  }

  else
  {
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t NearbyProtoConnectionResponse.Content.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyProtoConnectionResponse.Content.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static NearbyProtoConnectionResponse.Content.ApprovalContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NearbyGroup_Group.MemberLeft.groupUuid.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t NearbyGroup_Group.MemberLeft.groupUuid.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NearbyProtoConnectionResponse.Content.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  return UnknownStorage.init()();
}

uint64_t (*NearbyProtoJoinRequest.publicKey.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

uint64_t key path setter for NearbyProtoJoinRequest.encryptedData : NearbyProtoJoinRequest(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NearbyProtoJoinRequest.encryptedData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.encryptedData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoJoinRequest.encryptedData.modify;
}

Swift::Void __swiftcall NearbyProtoJoinRequest.clearEncryptedData()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_1000C8990;
}

uint64_t NearbyProtoJoinRequest.Content.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
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

uint64_t key path getter for NearbyProtoJoinRequest.Content.displayName : NearbyProtoJoinRequest.Content@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
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

uint64_t key path setter for NearbyProtoJoinRequest.Content.displayName : NearbyProtoJoinRequest.Content(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NearbyProtoJoinRequest.Content.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.Content.displayName.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24);
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

  return NearbyProtoJoinRequest.Content.displayName.modify;
}

void NearbyProtoConnectionRequest.displayName.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall NearbyProtoJoinRequest.Content.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NearbyProtoSessionMessage.data.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >> 60 != 15)
  {
    v5 = v2[1];
  }

  outlined copy of Data?(*v2, v3);
  return v4;
}

uint64_t key path setter for NearbyProtoSessionMessage.data : NearbyProtoSessionMessage(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of Data._Representation(v5, v6);
  result = outlined consume of Data?(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t NearbyProtoSessionMessage.data.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 28);
  result = outlined consume of Data?(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.Content.userInfo.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

double NearbyProtoSessionMessage.clearData()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  outlined consume of Data?(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoJoinRequest.Content.wantsTokenUri.setter(char a1)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.Content.wantsTokenUri.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NearbyProtoJoinRequest.Content.wantsTokenUri.modify;
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double NearbyProtoJoinRequest.Content.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_1000C8990;
  *(a1 + v2[8]) = 2;
  return result;
}

double NearbyProtoJoinRequest.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for NearbyProtoJoinRequest(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_1000C8990;
  *(a1 + *(v2 + 24)) = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoJoinRequest.publicKey.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >> 60 != 15)
  {
    v5 = v2[1];
  }

  outlined copy of Data?(*v2, v3);
  return v4;
}

uint64_t key path setter for NearbyProtoJoinRequest.publicKey : NearbyProtoJoinRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of Data._Representation(v5, v6);
  result = outlined consume of Data?(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t NearbyProtoJoinRequest.publicKey.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 20);
  result = outlined consume of Data?(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoJoinResponse.encryptedData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinResponse(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

double NearbyProtoJoinRequest.clearPublicKey()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  outlined consume of Data?(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoJoinResponse.Content.denied.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v7 + 20), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a1, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
}

uint64_t key path getter for NearbyProtoJoinResponse.Content.denied : NearbyProtoJoinResponse.Content@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v8 + 20), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v9 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, a2, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
}

void (*NearbyProtoJoinResponse.Content.denied.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
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
  v8 = *(*(type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  *(v4 + 12) = v11;
  outlined init with copy of (String, Any)(v1 + v11, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      return NearbyProtoJoinResponse.Content.denied.modify;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  }

  UnknownStorage.init()();
  return NearbyProtoJoinResponse.Content.denied.modify;
}

void NearbyProtoJoinResponse.Content.approved.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v10, a3);
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v11, a5);
  }

  else
  {
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

double NearbyProtoJoinResponse.Content.approved.getter@<D0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v7 + 20), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a1, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      return result;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = &_swiftEmptyArrayStorage;
  v10 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v11 = a1 + *(v10 + 24);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v10 + 28)) = xmmword_1000C8990;
  return result;
}

uint64_t key path setter for NearbyProtoJoinResponse.Content.denied : NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(a2 + v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t NearbyProtoJoinResponse.Content.denied.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(v2 + v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(a1, v2 + v5, a2);
  v6 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

double NearbyProtoJoinResponse.Content.ApprovalContent.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v3 = a1 + *(v2 + 24);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 28)) = xmmword_1000C8990;
  return result;
}

void (*NearbyProtoJoinResponse.Content.approved.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
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
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
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
  v12 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  *(v4 + 12) = v12;
  outlined init with copy of (String, Any)(v1 + v12, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = _swiftEmptyArrayStorage;
    v15 = v11 + *(v8 + 24);
    UnknownStorage.init()();
    *(v11 + *(v8 + 28)) = xmmword_1000C8990;
    return NearbyProtoJoinResponse.Content.approved.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v11, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  return NearbyProtoJoinResponse.Content.approved.modify;
}

uint64_t NearbyProtoConnectionRequest.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyProtoConnectionRequest.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NearbyGroup_Group.Initialization.members.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*NearbyProtoJoinResponse.Content.ApprovalContent.userInfo.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

uint64_t NearbyProtoSessionMessage.data.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t NearbyProtoSessionMessage.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NearbyProtoSessionMessage.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NearbyProtoJoinResponse.Content.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return UnknownStorage.init()();
}

double NearbyProtoJoinResponse.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for NearbyProtoJoinResponse(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_1000C8990;
  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoNearbySessionMessageType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoNearbySessionMessageType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "joinRequest";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "joinResponse";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "connectionRequest";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "connectionResponse";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "groupMessage";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoSessionMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoSessionMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAB00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKey";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptedData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinRequest.Content._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinRequest.Content._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C8E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "userInfo";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "wantsTokenURI";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinResponse.Content._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinResponse.Content._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAB00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "denied";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "approved";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinResponse.Content.ApprovalContent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinResponse.Content.ApprovalContent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAB00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberHandles";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userInfo";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C8E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberAdded";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "memberRemoved";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "memberLeft";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group.MemberAdded._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group.MemberAdded._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group.MemberRemoved._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group.MemberRemoved._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group.MemberLeft._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group.MemberLeft._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "usesToken";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t NearbyProtoSessionMessage.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 28);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 2:
        closure #2 in NearbyProtoSessionMessage.decodeMessage<A>(decoder:)();
        break;
      case 1:
        v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in NearbyProtoSessionMessage.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 24);
  lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #2 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3);
    closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoSessionMessage);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v3 = (a1 + *(result + 24));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoSessionMessage@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 256;
  result = 0.0;
  *(a2 + a1[7]) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoSessionMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoSessionMessage()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoSessionMessage()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionRequest._protobuf_nameMap, "displayName", 11, "userInfo");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse.Content._protobuf_nameMap, "denied", 6, "approved");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse.Content.ApprovalContent._protobuf_nameMap, 1, "invitationData", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse.Content.DeniedContent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoJoinResponse._protobuf_nameMap, 2, "encryptedData", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoJoinResponse.Content.DeniedContent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyGroup_Member._protobuf_nameMap, "handle", 6, "tokenID");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyGroup_Group.Initialization._protobuf_nameMap, "groupUUID", 9, "members");
}

uint64_t NearbyProtoConnectionRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        v4 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoConnectionRequest.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      result = closure #1 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        closure #2 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(v0);
        v8 = v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoConnectionRequest@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[8];
  v6 = (a2 + a1[7]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_1000C8990;
  return result;
}

void (__swiftcall *protocol witness for Message.unknownFields.modify in conformance NearbyProtoConnectionRequest(uint64_t a1, uint64_t a2))()
{
  result = Log.init();
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest);

  return Message.hash(into:)();
}

uint64_t static NearbyProtoConnectionResponse.Content.DeniedContent.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse and conformance NearbyProtoConnectionResponse, type metadata accessor for NearbyProtoConnectionResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse and conformance NearbyProtoConnectionResponse, type metadata accessor for NearbyProtoConnectionResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse and conformance NearbyProtoConnectionResponse, type metadata accessor for NearbyProtoConnectionResponse);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName()
{
  v0._countAndFlagsBits = 0x746E65746E6F432ELL;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  static NearbyProtoConnectionResponse.Content.protoMessageName = 0xD000000000000015;
  unk_1000F7BF0 = 0x80000001000CEF50;
}

uint64_t *NearbyProtoConnectionResponse.Content.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoConnectionResponse.Content.protoMessageName;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C8E90;
  v11 = (v10 + v9);
  v12 = v11 + v7[14];
  *v11 = 1;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = type metadata accessor for _NameMap.NameDescription();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = "handle";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v15();
  v17 = v7[14];
  v18 = (v11 + 2 * v8);
  *v18 = 3;
  v19 = v18 + v17;
  *v19 = a3;
  *(v19 + 1) = a4;
  v19[16] = 2;
  v15();
  v20 = (v11 + 3 * v8);
  v21 = v20 + v7[14];
  *v20 = 4;
  *v21 = a5;
  *(v21 + 1) = 8;
  v21[16] = 2;
  v15();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C8970;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = enum case for _NameMap.NameDescription.same(_:);
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v8 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000CA970;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = enum case for _NameMap.NameDescription.same(_:);
  v16 = type metadata accessor for _NameMap.NameDescription();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 7;
  v18[16] = 2;
  v17();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  v47 = a1;
  v45 = v32;
  outlined init with copy of (String, Any)(a1 + v32, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v14, v22, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v22, v20, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v20, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      v35 = v53;
    }

    else
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
      v36 = v20;
      v37 = v49;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v36, v49, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v37, v28, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  }

  outlined init with copy of (String, Any)(v28, v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
    return outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v38, v48, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
    v42 = v47;
    v43 = v45;
    outlined destroy of Any?(v47 + v45, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v41, v42 + v43, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t closure #4 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  v47 = a1;
  v45 = v32;
  outlined init with copy of (String, Any)(a1 + v32, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    v34 = v15;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v14, v22, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v22, v20, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
      v35 = v20;
      v36 = v49;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v35, v49, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v36, v28, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v20, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  }

  outlined init with copy of (String, Any)(v28, v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
    return outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v38, v48, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
    v42 = v47;
    v43 = v45;
    outlined destroy of Any?(v47 + v45, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v41, v42 + v43, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  v13 = *v3;
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v17 = v3[3];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v19 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
      outlined init with copy of (String, Any)(v5 + *(v19 + 24), v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
      v20 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
      if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
      {
        goto LABEL_14;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        closure #2 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(v5, a1, a2, a3);
      }

      else
      {
        closure #1 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(v5, a1, a2, a3);
      }

      result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      if (!v4)
      {
LABEL_14:
        v21 = v5 + *(v19 + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v13 + 24), v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v8, v12, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v8, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v13 + 24), v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v8, v12, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v8, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void (__swiftcall *protocol witness for Message.unknownFields.modify in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2))()
{
  result = Log.init();
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse.Content()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse.Content()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoConnectionResponse.Content.protoMessageName;
  v3 = qword_1000F7BF0;
  swift_bridgeObjectRetain_n();
  v0._object = 0x80000001000CEFA0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);

  static NearbyProtoConnectionResponse.Content.ApprovalContent.protoMessageName = v2;
  *algn_1000F7C18 = v3;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoConnectionResponse.Content.protoMessageName;
  v3 = qword_1000F7BF0;
  swift_bridgeObjectRetain_n();
  v0._countAndFlagsBits = 0x436465696E65442ELL;
  v0._object = 0xEE00746E65746E6FLL;
  String.append(_:)(v0);

  static NearbyProtoConnectionResponse.Content.DeniedContent.protoMessageName = v2;
  unk_1000F7C40 = v3;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoJoinResponse.Content.protoMessageName;
  v3 = qword_1000F7CC0;
  swift_bridgeObjectRetain_n();
  v0._object = 0x80000001000CEFA0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);

  static NearbyProtoJoinResponse.Content.ApprovalContent.protoMessageName = v2;
  *algn_1000F7CE8 = v3;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoJoinResponse.Content.protoMessageName;
  v3 = qword_1000F7CC0;
  swift_bridgeObjectRetain_n();
  v0._countAndFlagsBits = 0x436465696E65442ELL;
  v0._object = 0xEE00746E65746E6FLL;
  String.append(_:)(v0);

  static NearbyProtoJoinResponse.Content.DeniedContent.protoMessageName = v2;
  unk_1000F7D10 = v3;
  return result;
}

uint64_t *NearbyProtoConnectionResponse.Content.ApprovalContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoConnectionResponse.Content.ApprovalContent.protoMessageName;
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.decodeMessage<A>(decoder:)()
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
  }

  return result;
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
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

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance NearbyProtoConnectionResponse.Content.ApprovalContent@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

void (__swiftcall *protocol witness for Message.unknownFields.modify in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2))()
{
  result = Log.init();
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse.Content.ApprovalContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse.Content.ApprovalContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *NearbyProtoConnectionResponse.Content.DeniedContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoConnectionResponse.Content.DeniedContent.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse.Content.DeniedContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse.Content.DeniedContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);

  return Message.hash(into:)();
}

uint64_t NearbyProtoJoinRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for NearbyProtoJoinRequest(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t NearbyProtoJoinRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NearbyProtoJoinRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinRequest);
  if (!v4)
  {
    closure #2 in NearbyProtoJoinRequest.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in NearbyProtoJoinRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoJoinRequest(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinRequest@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_1000C8990;
  *(a2 + v5) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(uint64_t a1)
{
  one-time initialization function for protoMessageName(a1, 0xEE00747365757165, static NearbyProtoJoinRequest.Content.protoMessageName, &static NearbyProtoJoinRequest.Content.protoMessageName[1]);
}

{
  one-time initialization function for protoMessageName(a1, 0xEF65736E6F707365, &static NearbyProtoJoinResponse.Content.protoMessageName, &qword_1000F7CC0);
}

void *NearbyProtoJoinRequest.Content.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyProtoJoinRequest.Content.protoMessageName;
}

uint64_t NearbyProtoJoinRequest.Content.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        v1 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 28);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 5)
      {
        v5 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 32);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 3)
    {
      v4 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(v3);
    if (!v4)
    {
      closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinRequest.Content);
      closure #3 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(v3);
      v12 = v3 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

uint64_t closure #3 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinRequest.Content@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_1000C8990;
  *(a2 + a1[8]) = 2;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NearbyProtoConnectionResponse.Content.ApprovalContent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinRequest.Content(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinRequest.Content()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinRequest.Content()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content);

  return Message.hash(into:)();
}

uint64_t NearbyProtoJoinResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = *(type metadata accessor for NearbyProtoJoinResponse(0) + 20);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoJoinResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NearbyProtoJoinRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinResponse);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyProtoJoinRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinResponse@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6._countAndFlagsBits = 0x746E65746E6F432ELL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  *a3 = 0x526E696F4A2E7063;
  *a4 = a2;
}

uint64_t *NearbyProtoJoinResponse.Content.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinResponse.Content.protoMessageName;
}

uint64_t NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        closure #3 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 3:
        closure #2 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  v47 = a1;
  v45 = v32;
  outlined init with copy of (String, Any)(a1 + v32, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v14, v22, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v22, v20, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v20, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
      v35 = v53;
    }

    else
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
      v36 = v20;
      v37 = v49;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v36, v49, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v37, v28, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  }

  outlined init with copy of (String, Any)(v28, v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
    return outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v38, v48, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
    v42 = v47;
    v43 = v45;
    outlined destroy of Any?(v47 + v45, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v41, v42 + v43, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t closure #3 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  v47 = a1;
  v45 = v32;
  outlined init with copy of (String, Any)(a1 + v32, v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    v34 = v15;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v14, v22, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v22, v20, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
      v35 = v20;
      v36 = v49;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v35, v49, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v36, v28, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v20, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  }

  outlined init with copy of (String, Any)(v28, v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
    return outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  }

  else
  {
    v41 = v48;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v38, v48, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v28, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
    v42 = v47;
    v43 = v45;
    outlined destroy of Any?(v47 + v45, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v41, v42 + v43, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = *v3;
  v15 = v3[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v18 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(v6 + *(v18 + 20), v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v19 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v13, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  if (!v5)
  {
LABEL_11:
    v20 = v6 + *(v18 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v13 + 20), v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v8, v12, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v8, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v13 + 20), v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v8, v12, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v8, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyProtoJoinResponse.Content@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse.Content()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse.Content()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content);

  return Message.hash(into:)();
}

uint64_t *NearbyProtoJoinResponse.Content.ApprovalContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinResponse.Content.ApprovalContent.protoMessageName;
}

uint64_t NearbyProtoJoinResponse.Content.ApprovalContent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 28);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t NearbyProtoJoinResponse.Content.ApprovalContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
    {
      result = closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      if (!v4)
      {
        v12 = v3 + *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinResponse.Content.ApprovalContent@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = _swiftEmptyArrayStorage;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 28)) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NearbyProtoConnectionRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NearbyProtoConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse.Content.ApprovalContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse.Content.ApprovalContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);

  return Message.hash(into:)();
}

uint64_t *NearbyProtoJoinResponse.Content.DeniedContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinResponse.Content.DeniedContent.protoMessageName;
}

uint64_t static NearbyProtoConnectionResponse.Content.protoMessageName.getter(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t NearbyProtoNearbySessionMessageType._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static NearbyProtoNearbySessionMessageType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t NearbyProtoJoinResponse.Content.DeniedContent.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

Swift::Int NearbyProtoSessionMessage.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse.Content.DeniedContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance NearbyProtoNearbySessionMessageType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse.Content.DeniedContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);

  return Message.debugDescription.getter();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyProtoSessionMessage()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse.Content.DeniedContent()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyProtoSessionMessage()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
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
      result = __DataStorage._length.getter();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  result = __DataStorage._length.getter();
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
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
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
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

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

  __DataStorage._length.getter();
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

uint64_t specialized static NearbyProtoConnectionResponse.Content.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v8;
  v26 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of (String, Any)(a1 + v17, v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with copy of (String, Any)(a2 + v17, &v16[v18], &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_15:
      v23 = *(v26 + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of (String, Any)(v16, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
LABEL_12:
    outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMR);
    goto LABEL_13;
  }

  v21 = v25;
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v16[v18], v25, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  v22 = specialized static NearbyProtoConnectionResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(v12, v21);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v21, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NearbyProtoConnectionResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v4 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v30 - v21, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a2, &v22[v23], type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v22, v17, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v22[v23], v10, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v17, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v22, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      return v26 & 1;
    }

    v27 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent;
    v28 = v17;
    goto LABEL_9;
  }

  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v22, v15, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent;
    v28 = v15;
LABEL_9:
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v28, v27);
    outlined destroy of Any?(v22, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMR);
LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v22[v23], v6, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  if ((specialized static Data.== infix(_:_:)(*v15, *(v15 + 1), *v6, *(v6 + 1)) & 1) == 0)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    goto LABEL_12;
  }

  v24 = *(v31 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  if ((v25 & 1) == 0)
  {
LABEL_12:
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v15, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v22, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    goto LABEL_13;
  }

  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v15, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v22, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  v26 = 1;
  return v26 & 1;
}

uint64_t specialized static NearbyProtoConnectionRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v7 = v6[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v6[8];
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 != 15)
  {
    if (v17 >> 60 == 15)
    {
      goto LABEL_24;
    }

    outlined copy of Data?(v15, v14);
    outlined copy of Data?(v18, v17);
    v20 = specialized static Data.== infix(_:_:)(v15, v14, v18, v17);
    outlined consume of Data?(v18, v17);
    outlined consume of Data?(v15, v14);
    if (v20)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v17 >> 60 != 15)
  {
LABEL_24:
    outlined copy of Data?(v15, v14);
    outlined copy of Data?(v18, v17);
    outlined consume of Data?(v15, v14);
    outlined consume of Data?(v18, v17);
    return 0;
  }

  outlined copy of Data?(v15, v14);
  outlined copy of Data?(v18, v17);
  outlined consume of Data?(v15, v14);
LABEL_27:
  v21 = v6[6];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoSessionMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoSessionMessage(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 9);
  v13 = a2 + v10;
  v14 = *(a2 + v10 + 9);
  if (v12)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    v21 = *v11;
    v22 = *v13;
    if (*(v13 + 8))
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          if (v21 != 3)
          {
            return 0;
          }
        }

        else if (v22 == 4)
        {
          if (v21 != 4)
          {
            return 0;
          }
        }

        else if (v21 != 5)
        {
          return 0;
        }
      }

      else if (v22)
      {
        if (v22 == 1)
        {
          if (v21 != 1)
          {
            return 0;
          }
        }

        else if (v21 != 2)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }
    }

    else if (v21 != v22)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      outlined copy of Data?(v17, v16);
      outlined copy of Data?(v20, v19);
      outlined consume of Data?(v17, v16);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    goto LABEL_20;
  }

  if (v19 >> 60 == 15)
  {
LABEL_20:
    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v20, v19);
    outlined consume of Data?(v17, v16);
    outlined consume of Data?(v20, v19);
    return 0;
  }

  outlined copy of Data?(v17, v16);
  outlined copy of Data?(v20, v19);
  v23 = specialized static Data.== infix(_:_:)(v17, v16, v20, v19);
  outlined consume of Data?(v20, v19);
  outlined consume of Data?(v17, v16);
  if (v23)
  {
    goto LABEL_24;
  }

  return 0;
}

uint64_t specialized static NearbyProtoJoinResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NearbyProtoJoinResponse(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoJoinResponse.Content.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  outlined init with copy of (String, Any)(a1 + v17, v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with copy of (String, Any)(a2 + v17, &v16[v18], &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_12:
      v23 = *(v26 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of (String, Any)(v16, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
LABEL_9:
    outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v16[v18], v25, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  v22 = specialized static NearbyProtoJoinResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(v12, v21);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v21, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NearbyProtoJoinResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v31 - v22, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a2, &v23[v24], type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v23, v16, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v23[v24], v7, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      v25 = specialized static NearbyProtoJoinResponse.Content.ApprovalContent.== infix(_:_:)(v16, v7);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      v26 = v16;
      v27 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent;
LABEL_9:
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v26, v27);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v23, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
      return v25 & 1;
    }

    v28 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent;
    v29 = v16;
  }

  else
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v23, v18, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v23[v24], v11, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v11, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      v26 = v18;
      v27 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent;
      goto LABEL_9;
    }

    v28 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent;
    v29 = v18;
  }

  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v29, v28);
  outlined destroy of Any?(v23, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static NearbyProtoJoinResponse.Content.ApprovalContent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v6 = *(v5 + 28);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      outlined copy of Data?(v8, v7);
      outlined copy of Data?(v11, v10);
      v13 = specialized static Data.== infix(_:_:)(v8, v7, v11, v10);
      outlined consume of Data?(v11, v10);
      outlined consume of Data?(v8, v7);
      if (v13)
      {
        goto LABEL_14;
      }

      return 0;
    }

LABEL_11:
    outlined copy of Data?(v8, v7);
    outlined copy of Data?(v11, v10);
    outlined consume of Data?(v8, v7);
    outlined consume of Data?(v11, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_11;
  }

  outlined copy of Data?(v8, v7);
  outlined copy of Data?(v11, v10);
  outlined consume of Data?(v8, v7);
LABEL_14:
  v14 = *(v5 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoJoinRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinRequest(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_7;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    outlined consume of Data?(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v13 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    outlined copy of Data?(v16, v15);
    outlined copy of Data?(v19, v18);
    v21 = specialized static Data.== infix(_:_:)(v16, v15, v19, v18);
    outlined consume of Data?(v19, v18);
    outlined consume of Data?(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    outlined copy of Data?(v16, v15);
    outlined copy of Data?(v19, v18);
    outlined consume of Data?(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  outlined copy of Data?(v16, v15);
  outlined copy of Data?(v19, v18);
  outlined consume of Data?(v16, v15);
LABEL_15:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoJoinRequest.Content.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[7];
  v14 = *(a1 + v12);
  v13 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v17 = *v15;
  v16 = v15[1];
  if (v13 >> 60 == 15)
  {
    if (v16 >> 60 == 15)
    {
      outlined copy of Data?(v14, v13);
      outlined copy of Data?(v17, v16);
      outlined consume of Data?(v14, v13);
      goto LABEL_22;
    }

LABEL_19:
    outlined copy of Data?(v14, v13);
    outlined copy of Data?(v17, v16);
    outlined consume of Data?(v14, v13);
    outlined consume of Data?(v17, v16);
    return 0;
  }

  if (v16 >> 60 == 15)
  {
    goto LABEL_19;
  }

  outlined copy of Data?(v14, v13);
  outlined copy of Data?(v17, v16);
  v19 = specialized static Data.== infix(_:_:)(v14, v13, v17, v16);
  outlined consume of Data?(v17, v16);
  outlined consume of Data?(v14, v13);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v20 = v5[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 != 2)
  {
    if (v22 != 2 && ((v21 ^ v22) & 1) == 0)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v22 != 2)
  {
    return 0;
  }

LABEL_27:
  v23 = v5[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType()
{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [NearbyProtoNearbySessionMessageType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NearbyProtoNearbySessionMessageType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NearbyProtoNearbySessionMessageType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService0e5ProtoE18SessionMessageTypeOGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService0e5ProtoE18SessionMessageTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NearbyProtoNearbySessionMessageType] and conformance [A]);
  }

  return result;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;

  return outlined copy of Data?(v5, v6);
}

uint64_t keypath_get_18Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;

  return outlined copy of Data?(v5, v6);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyProtoNearbySessionMessageType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyProtoNearbySessionMessageType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for NearbyProtoNearbySessionMessageType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for NearbyProtoNearbySessionMessageType(uint64_t result, int a2)
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

void type metadata completion function for NearbyProtoSessionMessage()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for NearbyProtoNearbySessionMessageType?, &type metadata for NearbyProtoNearbySessionMessageType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for NearbyProtoConnectionRequest()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for NearbyProtoConnectionResponse.Content()
{
  type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation?(319, &lazy cache variable for type metadata for NearbyProtoConnectionResponse.Content.OneOf_Operation?, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for NearbyProtoConnectionResponse.Content.ApprovalContent()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NearbyProtoJoinRequest()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NearbyProtoJoinRequest.Content()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_99Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void type metadata completion function for NearbyProtoJoinResponse()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NearbyProtoJoinResponse.Content()
{
  type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation?(319, &lazy cache variable for type metadata for NearbyProtoJoinResponse.Content.OneOf_Operation?, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for NearbyProtoConnectionResponse.Content.OneOf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for NearbyProtoJoinResponse.Content.ApprovalContent()
{
  type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for [String], &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_56Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for NearbyProtoConnectionResponse()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *NearbyInvitationServiceHost.connection.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void NearbyInvitationServiceHost.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *NearbyInvitationServiceHost.init(listener:queue:featureFlags:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection] = 0;
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_dataSource;
  v9 = type metadata accessor for NearbyInvitationsProviderDataSource();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  NearbyInvitationsProviderDataSource.init()();
  *&v3[v8] = v12;
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener] = a1;
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_queue] = a2;
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_featureFlags] = a3;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = objc_msgSendSuper2(&v26, "init");
  v17 = one-time initialization token for host;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.host);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Initialized NearbyInvitationServiceHost", v22, 2u);
  }

  v23 = *(**&v18[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_dataSource] + 216);
  v24 = v18;

  v23(v18, &protocol witness table for NearbyInvitationServiceHost);

  [v13 setDelegate:{v24, v26.receiver, v26.super_class}];

  return v24;
}

id NearbyInvitationServiceHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t NearbyInvitationServiceHost.didReceiveInvitationApprovalRequest(request:)(void *a1)
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
    v18 = v5;
    v19 = v9;
    *v8 = 136315138;
    type metadata accessor for IncomingInvitationJoinRequest();
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationServiceHost: Did receive invitation request: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v16 = *(v2 + v14);
  if (v16)
  {
    v17 = v16;
    XPCHostConnection.clientObject.getter();

    [v18 didReceiveInvitationApprovalRequestWithRequest:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceHost.didDiscoverNearbyAdvertisement(advertisement:)(void *a1)
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
    v20 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationServiceHost: Updating client about nearby advertisement %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v17 = *(v2 + v15);
  if (v17)
  {
    v18 = v17;
    XPCHostConnection.clientObject.getter();

    [v19 didDiscoverNearbyAdvertisementWithAdvertisement:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceHost.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  outlined copy of Data._Representation(a3, a4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a3, a4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = Data.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHost: Updating client about discovered invitation %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v18 = *(v5 + v16);
  if (v18)
  {
    v19 = v18;
    XPCHostConnection.clientObject.getter();

    v20 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v22 didDiscoverNearbySessionInvitationWithId:v20 invitation:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceHost.didReceiveConnectionRequest(advertisement:)(void *a1, const char *a2, SEL *a3)
{
  v6 = v3;
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
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v17 = *(v6 + v15);
  if (v17)
  {
    v18 = v17;
    XPCHostConnection.clientObject.getter();

    [v19 *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized NearbyInvitationServiceHost.__allocating_init(listener:featureFlags:)(void *a1, void *a2)
{
  v15 = a1;
  v16 = a2;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = objc_allocWithZone(type metadata accessor for NearbyInvitationServiceHost());
  return NearbyInvitationServiceHost.init(listener:queue:featureFlags:)(v15, v11, v16);
}

uint64_t specialized NearbyInvitationServiceHost.listener(_:shouldAcceptNewConnection:)(void *a1)
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
    _os_log_impl(&_mh_execute_header, v6, v7, "Asked to accept new connection from %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  if ((NSXPCConnection.isEntitledToUseNearbyInvitations.getter() & 1) == 0)
  {
    v21 = v5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      v27 = "NearbyInvitationServiceHost rejecting connection %@ because client is not entitled";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v22, v23, v27, v24, 0xCu);
      outlined destroy of NSObject?(v25);

LABEL_14:
    }

LABEL_15:

    return 0;
  }

  NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    v28 = v5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v28;
      *v25 = v28;
      v29 = v28;
      v27 = "NearbyInvitationServiceHost rejecting connection because a client identifier could not be derived: %@";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v12 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_queue);
  v13 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_dataSource);
  objc_allocWithZone(type metadata accessor for NearbyInvitationServiceHostConnection());
  v14 = v5;
  v15 = v12;

  v16 = NearbyInvitationServiceHostConnection.init(connection:queue:dataSource:)(v14, v15, v13);
  if (!v16)
  {
    v31 = v14;
    v22 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v32))
    {

      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = [v31 processIdentifier];

    _os_log_impl(&_mh_execute_header, v22, v32, "NearbyInvitationServiceHost could not be created; rejecting connection from PID %d.", v33, 8u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  v19 = 1;
  swift_beginAccess();
  v20 = *(v2 + v18);
  *(v2 + v18) = v17;

  return v19;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NearbyGroupHostConnection.__allocating_init(connection:queue:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  return XPCHostConnection.init(connection:queue:)();
}

void NearbyGroupHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*NearbyGroupHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = direct field offset for NearbyGroupHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return NearbyGroupHostConnection.delegate.modify;
}

void NearbyGroupHostConnection.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
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

Swift::Void __swiftcall NearbyGroupHostConnection.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.group);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "NearbyGroupHostConnectionInvalidated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    NearbyGroupHost.handleHostConnectionInvalidated(_:)(v2);
  }
}

uint64_t NearbyGroupHostConnection.init(connection:queue:)()
{
  swift_unknownObjectWeakInit();

  return XPCHostConnection.init(connection:queue:)();
}

void NearbyGroupHostConnection.join(withNearbyGroupMembers:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = XPCHostConnection.queue.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      (*((swift_isaMask & *Strong) + 0x1D8))(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSSet?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5)
{
  isa = a3;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a4)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, v8, isa);
}

void NearbyGroupHostConnection.addMember(nearbyGroupMember:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = XPCHostConnection.queue.getter();
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      (*((swift_isaMask & *Strong) + 0x1E0))(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void NearbyGroupHostConnection.kickMember(nearbyGroupMember:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = XPCHostConnection.queue.getter();
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      (*((swift_isaMask & *Strong) + 0x1E8))(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t @objc NearbyGroupHostConnection.addMember(nearbyGroupMember:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void NearbyGroupHostConnection.leave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = XPCHostConnection.queue.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      (*((swift_isaMask & *Strong) + 0x1F0))(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t @objc NearbyGroupHostConnection.join(withNearbyGroupMembers:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

unint64_t lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject)
  {
    type metadata accessor for NearbyGroupMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject);
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v9);
  *v2 = v9;
  return v12;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  specialized _NativeDictionary._delete(at:)(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of (String, Any)(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 48); ; i += 3)
    {
      v8 = *(i - 1);
      v9 = *i;
      v13[0] = *(i - 2);
      v13[1] = v8;
      v13[2] = v9;

      a1(&v12, v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t NearbyInvitationsProviderDataSource.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NearbyInvitationsProviderDataSource.init()();
  return v3;
}

uint64_t NearbyInvitationsProviderDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyInvitationsProviderDataSource.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return NearbyInvitationsProviderDataSource.delegate.modify;
}

void NearbyInvitationsProviderDataSource.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t NearbyInvitationsProviderDataSource.waitingJoinRequests.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t NearbyInvitationsProviderDataSource.waitingJoinRequests.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t NearbyInvitationsProviderDataSource.waitingConnectionRequests.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t NearbyInvitationsProviderDataSource.waitingConnectionRequests.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t NearbyInvitationsProviderDataSource.connectionRequest.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t NearbyInvitationsProviderDataSource.connectionRequest.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t NearbyInvitationsProviderDataSource.filteredDeviceScanners.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t NearbyInvitationsProviderDataSource.filteredDeviceScanners.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t key path getter for NearbyInvitationsProviderDataSource.dataReceived : NearbyInvitationsProviderDataSource@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for NearbyInvitationsProviderDataSource.dataReceived : NearbyInvitationsProviderDataSource(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 408);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t NearbyInvitationsProviderDataSource.dataReceived.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitationsProviderDataSource.dataReceived.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitationsProviderDataSource.dataReceived.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t key path setter for NearbyInvitationsProviderDataSource.$dataReceived : NearbyInvitationsProviderDataSource(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 432))(v7);
}

uint64_t NearbyInvitationsProviderDataSource.$dataReceived.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitationsProviderDataSource.$dataReceived.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyInvitationsProviderDataSource.$dataReceived.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource__dataReceived;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t NearbyInvitationsProviderDataSource.cancellables.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource_cancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyInvitationsProviderDataSource.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource_cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void NearbyInvitationsProviderDataSource.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v58 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v62 = &v57 - v7;
  v61 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v61);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  v60 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v59 = "NearbyGroupHostManager";
  static DispatchQoS.unspecified.getter();
  *&v67 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
  *(v0 + 4) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = type metadata accessor for ABCReporter();
  *(v0 + 10) = 0;
  *(v0 + 11) = 0;
  *(v0 + 9) = 0;
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 12) = ABCReporter.init(domain:type:)();
  *(v0 + 13) = &_swiftEmptyDictionarySingleton;
  *(v0 + 14) = &_swiftEmptyDictionarySingleton;
  *(v0 + 15) = &_swiftEmptyDictionarySingleton;
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource__dataReceived;
  v67 = xmmword_1000C8990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v20 = v62;
  Published.init(initialValue:)();
  (*(v63 + 32))(&v1[v19], v20, v64);
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource_cancellables] = &_swiftEmptySetSingleton;
  *(v1 + 5) = [objc_allocWithZone(type metadata accessor for NearbyInvitationServiceBluetoothController(0)) init];
  v21 = type metadata accessor for NearbyInvitationJoinRequestController();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v22[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v22[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_sessionProvider] = 1;
  v23 = objc_allocWithZone(IDSService);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithService:v24];

  if (v25)
  {
    *&v22[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_service] = v25;
    v70.receiver = v22;
    v70.super_class = v21;
    v26 = objc_msgSendSuper2(&v70, "init");
    *(v1 + 6) = v26;
    v27 = *(v1 + 4);
    v28 = objc_allocWithZone(IDSService);
    v29 = v26;
    v30 = v27;
    v64 = "InvitationsProviderDataSource";
    v31 = String._bridgeToObjectiveC()();
    v32 = [v28 initWithService:v31];

    if (v32)
    {
      v33 = type metadata accessor for NearbyIDSServiceController();
      v34 = objc_allocWithZone(v33);
      v68 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
      v69 = &protocol witness table for IDSService;
      *&v67 = v32;
      v35 = &v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate];
      *&v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v36 = &v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall];
      *(v36 + 4) = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      *&v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym] = &_swiftEmptyDictionarySingleton;
      *&v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore] = 0;
      swift_beginAccess();
      *(v35 + 1) = 0;
      swift_unknownObjectWeakAssign();
      outlined init with copy of PseudonymProtocol(&v67, &v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service]);
      *&v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue] = v30;
      *&v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController] = v29;
      v66.receiver = v34;
      v66.super_class = v33;
      v37 = v29;
      v38 = v30;
      v39 = v32;
      v40 = objc_msgSendSuper2(&v66, "init");
      v41 = type metadata accessor for TaskPriority();
      v63 = *(*(v41 - 8) + 56);
      v42 = v58;
      (v63)(v58, 1, 1, v41);
      outlined init with copy of PseudonymProtocol(&v67, v65);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v40;
      outlined init with take of PseudonymProtocol(v65, (v43 + 5));
      v44 = v40;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:), v43);

      v45 = [objc_allocWithZone(IDSServiceDelegateProperties) init];
      [v45 setWantsCrossAccountMessaging:1];
      v46 = v38;
      v47 = v45;
      [v39 addDelegate:v44 withDelegateProperties:v47 queue:v46];

      __swift_destroy_boxed_opaque_existential_0Tm(&v67);
      *(v1 + 7) = v44;
      v48 = type metadata accessor for NearbyGroupHostManager();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      NearbyGroupHostManager.init(serviceName:)();
      *(v1 + 8) = v51;
      v52 = *(v1 + 7);
      v53 = *((swift_isaMask & *v52) + 0x90);
      v54 = v52;

      v53(v55, &protocol witness table for NearbyInvitationsProviderDataSource);

      (v63)(v42, 1, 1, v41);
      v56 = swift_allocObject();
      v56[2] = 0;
      v56[3] = 0;
      v56[4] = v1;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.init(), v56);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.init(), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.init()()
{
  v1 = *(*(v0 + 72) + 64);
  *(v0 + 104) = v1;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.init(), v1, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.init(), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UUID : NearbyGroupHost]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  Publisher<>.sink(receiveValue:)();

  v5 = (*(*v4 + 464))(v0 + 2);
  AnyCancellable.store(in:)();

  v5(v0 + 2, 0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t NearbyInvitationsProviderDataSource.createGroup(with:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v12;
    v18 = v17;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = v8;
    v22 = a3;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v34);

    *(v18 + 4) = v23;
    a3 = v22;
    v8 = v21;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    v24 = v31;
    *v31 = v14;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s received request to create group %@", v18, 0x16u);
    outlined destroy of Any?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v32);

    v12 = v33;
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v4;
  v27[5] = v14;
  v27[6] = a2;
  v27[7] = a3;
  v27[8] = v8;
  v28 = v14;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), v27);
  v29 = v4[12];
  v34[3] = type metadata accessor for ABCReporter();
  v34[4] = &protocol witness table for ABCReporter;
  v34[0] = v29;

  Task<>.reportFailure(on:function:process:)();

  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), 0, 0);
}

uint64_t NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v35);
    v33 = v12;
    v21 = a3;
    v22 = a2;
    v23 = v20;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v34 = v14;
    type metadata accessor for InvitationApprovalRequest();
    v24 = v14;
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v35);
    a2 = v22;
    a3 = v21;
    v12 = v33;

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s received request to attempt requesting approval with %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v4;
  v29[5] = v14;
  v29[6] = a2;
  v29[7] = a3;
  v30 = v14;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:), v29);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a6;
  v7[39] = a7;
  v7[36] = a4;
  v7[37] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[40] = v8;
  v9 = *(v8 - 8);
  v7[41] = v9;
  v10 = *(v9 + 64) + 15;
  v7[42] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[43] = v11;
  v12 = *(v11 - 8);
  v7[44] = v12;
  v13 = *(v12 + 64) + 15;
  v7[45] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)()
{
  v1 = *(*(v0 + 288) + 56);
  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service;
  *(v0 + 368) = v1;
  *(v0 + 376) = v2;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  *(v0 + 184) = v3;
  *(v0 + 192) = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)((v0 + 160), 1, (v0 + 64));
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  *(v0 + 384) = v10;
  *(v0 + 264) = *(v0 + 96);
  outlined destroy of Any?(v0 + 264, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v8;
  *(v0 + 40) = v7;
  *(v0 + 48) = 0xD000000000000016;
  *(v0 + 56) = 0x80000001000CEB90;
  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);

  return specialized static Pseudonym.reusable(for:configuration:)(v0 + 160, v0 + 16);
}

{
  v1 = v0[51];
  v21 = v0[52];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[45];
  v28 = v0[44];
  v29 = v0[43];
  v25 = v0[42];
  v26 = v0[40];
  v27 = v0[41];
  v23 = v0[38];
  v24 = v0[39];
  v5 = v0[36];
  v22 = v0[37];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  swift_beginAccess();
  v6 = [*(v1 + 16) URI];
  v7 = [v6 prefixedURI];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  outlined init with copy of PseudonymProtocol(v2 + v3, (v0 + 25));
  v12 = v0[28];
  v11 = v0[29];
  v13 = __swift_project_boxed_opaque_existential_1(v0 + 25, v12);
  specialized static Pseudonym.markUsed(handle:for:reuseIdentifier:)(v8, v10, v13, 0xD000000000000016, 0x80000001000CEB90, v21, v12, *(v11 + 8));

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  v14 = *(v5 + 32);
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v22;
  v15[4] = v1;
  v15[5] = v23;
  v15[6] = v24;
  v0[18] = partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);
  v0[19] = v15;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = thunk for @escaping @callee_guaranteed () -> ();
  v0[17] = &block_descriptor_198;
  v16 = _Block_copy(v0 + 14);

  v17 = v22;

  static DispatchQoS.unspecified.getter();
  v0[35] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v27 + 8))(v25, v26);
  (*(v28 + 8))(v4, v29);
  v18 = v0[19];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[48];

  v2 = v0[50];
  v3 = v0[45];
  v4 = v0[42];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v9 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v6 = closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);
  }

  else
  {
    v7 = v4[48];

    v4[51] = a1;
    v4[52] = type metadata accessor for Pseudonym();
    v6 = closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = a1[7];
  swift_beginAccess();
  v17 = [*(a3 + 16) URI];
  v18 = [v17 prefixedURI];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  (*((swift_isaMask & *v16) + 0x118))(a2, v19, v21);
  v22 = v8;

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.host);
  (*(v9 + 16))(v13, v15, v8);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = v26;
    v45 = swift_slowAlloc();
    v48[0] = v45;
    *v26 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = v13;
    v31 = *(v9 + 8);
    v31(v30, v22);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v48);

    v33 = v44;
    *(v44 + 1) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Sent joinRequest with ID: %s, staging for completion", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {

    v34 = v13;
    v31 = *(v9 + 8);
    v31(v34, v8);
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v46;
  *(v35 + 24) = v47;
  v36 = *(*a1 + 320);

  v37 = v36(v48);
  v39 = v38;
  v40 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v39;
  *v39 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:), v35, v15, isUniquelyReferenced_nonNull_native);
  *v39 = v49;
  v37(v48, 0);
  return (v31)(v15, v22);
}

uint64_t closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(void **a1, uint64_t *a2, void (*a3)(void, void))
{
  v4 = *a1;
  v5 = *a2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = v4;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 7104878;
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    v24 = a3;
    if (v4)
    {
      type metadata accessor for InvitationJoinResponse();
      v12 = v7;
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    if (v5)
    {
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v18, &v25);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received joinResponse: %s, error: %s", v11, 0x16u);
    swift_arrayDestroy();

    a3 = v24;
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_7:
    swift_errorRetain();
    a3(0, v5);
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (v4)
  {
    InvitationJoinResponse.sessionIdentifier.getter();
    if (v20)
    {

      return (a3)(v4, 0);
    }
  }

  lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
  v22 = swift_allocError();
  *v23 = 1;
  a3(0, v22);
}

uint64_t NearbyInvitationsProviderDataSource.approve(pendingMember:response:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = *v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v16 = a1;
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v10;
    aBlock[0] = v40;
    *v20 = 136315650;
    v22 = _typeName(_:qualified:)();
    v42 = a4;
    v24 = a3;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v48 = v16;
    type metadata accessor for IncomingInvitationJoinRequest();
    v26 = v16;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);
    a4 = v42;

    *(v20 + 14) = v29;
    a3 = v24;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    *v21 = v17;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s approve pendingMember %s with response: %@", v20, 0x20u);
    outlined destroy of Any?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
    v10 = v41;
  }

  v31 = v5[4];
  v32 = swift_allocObject();
  v32[2] = v5;
  v32[3] = v16;
  v32[4] = v17;
  v32[5] = a3;
  v32[6] = a4;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.approve(pendingMember:response:completion:);
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_5;
  v33 = _Block_copy(aBlock);
  v34 = v16;
  v35 = v17;

  v36 = v43;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v37 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v47 + 8))(v37, v10);
  (*(v44 + 8))(v36, v46);
}

uint64_t NearbyInvitationsProviderDataSource.reject(pendingMember:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.host);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v9;
    v22 = v21;
    aBlock[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v39 = a2;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);
    v40 = v16;
    v26 = v12;
    v27 = a3;
    v28 = v25;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v45 = v18;
    type metadata accessor for IncomingInvitationJoinRequest();
    v29 = v18;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);
    a3 = v27;
    v12 = v26;
    v16 = v40;

    *(v22 + 14) = v32;
    a2 = v39;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s reject pendingMember %s", v22, 0x16u);
    swift_arrayDestroy();

    v9 = v41;
  }

  v33 = v4[4];
  v34 = swift_allocObject();
  v34[2] = v4;
  v34[3] = v18;
  v34[4] = a2;
  v34[5] = a3;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.reject(pendingMember:completion:);
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24_0;
  v35 = _Block_copy(aBlock);
  v36 = v18;

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v44 + 8))(v12, v9);
  (*(v42 + 8))(v16, v43);
}

uint64_t NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:), v11);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)()
{
  v1 = *((swift_isaMask & **(*(v0 + 112) + 48)) + 0xA8);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:);

  return v5(v0 + 56);
}

{
  v1 = *(v0 + 144);
  v2 = outlined init with take of PseudonymProtocol((v0 + 56), v0 + 16);
  v3 = (*(*v1 + 96))(v2);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  if (v4 >> 60 == 15)
  {
    v8 = *(v0 + 128);
    v7(0, 0);
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = v3;
    v12 = v4;
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v13 = *(v10 + 16);
    outlined copy of Data._Representation(v11, v12);
    v13(v9, v10);
    v14 = objc_allocWithZone(type metadata accessor for NearbyInvitationJoinRequestMetadata());
    v15 = NearbyInvitationJoinRequestMetadata.init(publicKey:pseudonym:)();
    v16 = v15;
    v7(v15, 0);

    outlined consume of Data?(v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v17 = *(v0 + 8);

  return v17();
}

{
  v21 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v0[12] = v7;
    type metadata accessor for NearbyInvitationsProviderDataSource();

    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v0[13] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s failed to provision pseudonym, error: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[19];
  v17 = v0[15];
  v16 = v0[16];
  swift_errorRetain();
  v17(0, v15);

  v18 = v0[1];

  return v18();
}