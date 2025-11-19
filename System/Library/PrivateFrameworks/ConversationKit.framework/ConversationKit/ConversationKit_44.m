Swift::Void __swiftcall RemotePeoplePickerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for RemotePeoplePickerViewController();
  v3 = objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v5)(v3);
  if (v6)
  {
    v7 = v6;
    [v6 willMoveToParentViewController_];
  }

  v8 = v5();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 view];

    if (!v10)
    {
      __break(1u);
      return;
    }

    [v10 removeFromSuperview];
  }

  v11 = v5();
  if (v11)
  {
    v12 = v11;
    [v11 removeFromParentViewController];
  }

  v13 = v5();
  if (v13)
  {
    v14 = v13;
    [v13 didMoveToParentViewController_];
  }

  (*((*v4 & *v1) + 0x88))(0, 0);
}

Swift::Bool __swiftcall RemotePeoplePickerViewController.shouldAcceptXPCConnection(_:)(NSXPCConnection a1)
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_142();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.default);
  v3 = a1.super.isa;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Received request to accept connection for %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  OUTLINED_FUNCTION_293();
  v10 = (*(v9 + 128))();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    static OS_dispatch_queue.main.getter();
    objc_allocWithZone(type metadata accessor for PeoplePickerHostConnection());
    v14 = v3;
    v15 = PeoplePickerHostConnection.init(connection:queue:)();
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_293();
      v18 = *(v17 + 112);
      v19 = v16;
      v18(v16);
      ObjectType = swift_getObjectType();
      (*(v13 + 16))(v16, ObjectType, v13);
      lazy protocol witness table accessor for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController(&lazy protocol witness table cache variable for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController, v21, type metadata accessor for RemotePeoplePickerViewController);
      swift_unknownObjectRetain();
      PeoplePickerHostConnection.delegate.setter();

      return 1;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v29))
    {
      v30 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v30);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v31, v32, "Failed to create PeoplePickerHostConnection");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v24))
    {
      v25 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v25);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v26, v27, "Failed to create SharePlay people picker view controller");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  return 0;
}

id RemotePeoplePickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RemotePeoplePickerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___CKRemotePeoplePickerViewController_connection] = 0;
  *&v3[OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController] = xmmword_1BC4C9460;
  v5 = &v3[OBJC_IVAR___CKRemotePeoplePickerViewController_state];
  *v5 = 0;
  *(v5 + 1) = MEMORY[0x1E69E7CC8];
  v5[16] = 0;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for RemotePeoplePickerViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id RemotePeoplePickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RemotePeoplePickerViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___CKRemotePeoplePickerViewController_connection] = 0;
  *&v1[OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController] = xmmword_1BC4C9460;
  v3 = &v1[OBJC_IVAR___CKRemotePeoplePickerViewController_state];
  *v3 = 0;
  *(v3 + 1) = MEMORY[0x1E69E7CC8];
  v3[16] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RemotePeoplePickerViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id RemotePeoplePickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemotePeoplePickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RemotePeoplePickerViewController.dismissViewController()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = &v0[OBJC_IVAR___CKRemotePeoplePickerViewController_state];
  os_unfair_lock_lock(v16);
  LOBYTE(v16[4]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = partial apply for closure #2 in RemotePeoplePickerViewController.dismissViewController();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_60;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v15, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
}

Swift::Void __swiftcall RemotePeoplePickerViewController._dismissViewController()()
{
  v0 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v5 - v4);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v0);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v0);
  if (v7)
  {
    OUTLINED_FUNCTION_293();
    v9 = (*(v8 + 128))();
    if (v9)
    {
      v10 = v9;
      [v9 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall RemotePeoplePickerViewController.shareSheetSessionHasRecipients(sessionID:)(Swift::String sessionID)
{
  v1 = *(RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(sessionID._countAndFlagsBits, sessionID._object) + 16);

  return v1 != 0;
}

uint64_t RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(uint64_t a1, unint64_t a2)
{
  v5 = v2 + OBJC_IVAR___CKRemotePeoplePickerViewController_state;
  os_unfair_lock_lock((v2 + OBJC_IVAR___CKRemotePeoplePickerViewController_state));
  v6 = *(v5 + 8);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5);
  if (v9)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Log.default);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      *(v13 + 12) = 2080;
      v15 = MEMORY[0x1BFB20D10](v9, MEMORY[0x1E69E6158]);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Returning cached participants for shareSheetSessionID %s: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Log.default);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_1BBC58000, v19, v20, "Requesting participants for shareSheetSessionID %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = MEMORY[0x1E69E7CC0];
    v24 = objc_opt_self();
    v25 = MEMORY[0x1BFB209B0](a1, a2);
    aBlock[4] = partial apply for closure #2 in RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?) -> ();
    aBlock[3] = &block_descriptor_19_2;
    v26 = _Block_copy(aBlock);

    [v24 requestRecipientsForSessionID:v25 completionHandler:v26];
    _Block_release(v26);

    os_unfair_lock_lock(v5);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v5 + 8);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v5 + 8) = v28;
    os_unfair_lock_unlock(v5);
    v9 = *(v23 + 16);
  }

  return v9;
}

Swift::Void __swiftcall RemotePeoplePickerViewController.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_142();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Log.default);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v3, v4, "Connection invalidated");
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  RemotePeoplePickerViewController._dismissViewController()();
}

uint64_t RemotePeoplePickerViewController.checkIn(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_142();
  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Log.default);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    type metadata accessor for PeoplePickerConfiguration();
    v16 = v11;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Received checkIn from app configuration %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  result = dispatch thunk of PeoplePickerConfiguration.shareSheetSessionID.getter();
  if (v21)
  {
    RemotePeoplePickerViewController.updateViewControllerWithShareSheetRecipients(_:)(result, v21);
  }

  return result;
}

uint64_t RemotePeoplePickerViewController.updateViewControllerWithShareSheetRecipients(_:)(uint64_t a1, unint64_t a2)
{
  v3 = RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(a1, a2);
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    ObjectType = swift_getObjectType();
    (*(v7 + 80))(v3, ObjectType, v7);
  }

  else
  {
  }
}

void RemotePeoplePickerViewController.updateActivity(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_142();
  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Log.default);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity);
      v16 = v11;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v43);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Received updated activity %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (!a1 || (v21 = [v11 sanitizedCopy]) == 0)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v24, v25, "Received empty activity, using placeholder activity");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    v21 = [objc_opt_self() placeholderActivity];
  }

  OUTLINED_FUNCTION_293();
  v27 = (*(v26 + 104))();
  if (v27)
  {
    v28 = v27;
    if ((XPCHostConnection.isEntitledToUsePrivateAPI.getter() & 1) != 0 && (outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v21), v29))
    {
    }

    else
    {
      v30 = XPCHostConnection.bundleIdentifier.getter();
      outlined bridged method (mbnn) of @objc TUConversationActivity.bundleIdentifier.setter(v30, v31, v21);
    }
  }

  OUTLINED_FUNCTION_293();
  v34 = (*(v32 + 144))(v43);
  v35 = *v33;
  if (*v33)
  {
    v36 = v33;
    v37 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    v39 = *(v37 + 40);
    v40 = v21;
    v41 = v35;
    v39(v21, ObjectType, v37);
    v42 = *v36;
    *v36 = v35;
    *(v36 + 8) = v37;
  }

  v34(v43, 0);
}

void RemotePeoplePickerViewController.requestActivity(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  if (v6)
  {
    v7 = v6;
    XPCHostConnection.clientObject.getter();
    v8 = aBlock[6];
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = a1;
    v9[4] = a2;
    aBlock[4] = partial apply for closure #1 in RemotePeoplePickerViewController.requestActivity(completionHandler:);
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
    aBlock[3] = &block_descriptor_6_1;
    v10 = _Block_copy(aBlock);
    v11 = v3;

    [v8 requestActivity_];

    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_142();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Log.default);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_13_55(&dword_1BBC58000, v14, v15, "No connection.  Cannot request activity.", v16, v17, v18, v19, oslog);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

void closure #1 in RemotePeoplePickerViewController.requestActivity(completionHandler:)(void *a1, void *a2, void (*a3)(id))
{
  if (!a1 || (v14 = [a1 sanitizedCopy]) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Received empty activity, using placeholder activity", v8, 2u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    v14 = [objc_opt_self() placeholderActivity];
  }

  v9 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))();
  if (v9)
  {
    v10 = v9;
    if ((XPCHostConnection.isEntitledToUsePrivateAPI.getter() & 1) != 0 && (outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v14), v11))
    {
    }

    else
    {
      v12 = XPCHostConnection.bundleIdentifier.getter();
      outlined bridged method (mbnn) of @objc TUConversationActivity.bundleIdentifier.setter(v12, v13, v14);
    }
  }

  a3(v14);
}

Swift::Void __swiftcall RemotePeoplePickerViewController.dismissViewController(success:)(Swift::Bool success)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
  if (v4)
  {
    v5 = v4;
    XPCHostConnection.clientObject.getter();
    [v18 dismissViewControllerWithSuccess_];
    v6 = swift_unknownObjectRelease();
    v7 = (*((*v3 & *v1) + 0x80))(v6);
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_142();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Log.default);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_13_55(&dword_1BBC58000, v11, v12, "No connection.  Cannot dismiss.", v13, v14, v15, v16, oslog);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

void closure #2 in RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    if (a1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v13);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Received recipients %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t lazy protocol witness table accessor for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void outlined bridged method (mbnn) of @objc TUConversationActivity.bundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setBundleIdentifier_];
}

id LiveCallDurationView.__allocating_init(font:callDurationProvider:voiceOverUpdateHandler:)()
{
  OUTLINED_FUNCTION_17_6();
  v2 = objc_allocWithZone(v0);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_6_80(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_5_97();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v7;
}

uint64_t key path getter for LiveCallDurationView.voiceOverUpdateHandler : LiveCallDurationView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LiveCallDurationView.voiceOverUpdateHandler : LiveCallDurationView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t (*LiveCallDurationView.voiceOverUpdateHandler.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller);
  a1[2] = v2;
  *a1 = (*(*v2 + 192))();
  a1[1] = v4;
  return LiveCallDurationView.voiceOverUpdateHandler.modify;
}

uint64_t LiveCallDurationView.voiceOverUpdateHandler.modify(uint64_t a1, char a2)
{
  v2 = *(**(a1 + 16) + 200);
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_44_0();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
    v4 = OUTLINED_FUNCTION_44_0();
    v2(v4);
    v5 = OUTLINED_FUNCTION_44_0();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_0();
    return (v2)(v7);
  }
}

id LiveCallDurationView.init(font:callDurationProvider:voiceOverUpdateHandler:)()
{
  OUTLINED_FUNCTION_17_6();
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_6_80(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_5_97();
  __swift_destroy_boxed_opaque_existential_1(v0);
  return v6;
}

id LiveCallDurationView.__deallocating_deinit()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = *&v0[OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller];
  type metadata accessor for OS_dispatch_queue();

  v16 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in LiveCallDurationView.deinit;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_61;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v7, v17);
  _Block_release(v17);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v19;
    aBlock[0] = v23;
    *v22 = 136315138;
    type metadata accessor for LiveCallDurationView();
    v24 = v19;
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v20, v21, "%s deinit", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v29.receiver = v19;
  v29.super_class = type metadata accessor for LiveCallDurationView();
  return objc_msgSendSuper2(&v29, sel_dealloc);
}

id LiveCallDurationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LiveCallDurationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t LiveCallDurationView.accessibilityLabel.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller) + 16);

  return outlined bridged method (ob) of @objc NSObject.accessibilityLabel.getter(v1);
}

void LiveCallDurationView.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v4, sel_setAccessibilityLabel_, v3);
}

id LiveCallDurationView.alpha.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCallDurationView();
  return objc_msgSendSuper2(&v2, sel_alpha);
}

uint64_t LiveCallDurationView.alpha.setter(double a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v5, sel_setAlpha_, a1);
  OUTLINED_FUNCTION_0_143();
  return (*(v3 + 232))();
}

id LiveCallDurationView.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCallDurationView();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

uint64_t LiveCallDurationView.isHidden.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v5, sel_setHidden_, a1 & 1);
  OUTLINED_FUNCTION_0_143();
  return (*(v3 + 232))();
}

Swift::Void __swiftcall LiveCallDurationView.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  OUTLINED_FUNCTION_0_143();
  (*(v1 + 232))();
}

Swift::Void __swiftcall LiveCallDurationView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller] + 16);
  [v0 bounds];
  [v1 setFrame_];
}

CGSize __swiftcall LiveCallDurationView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_0_143();
  (*(v1 + 224))();
  result.height = v3;
  result.width = v2;
  return result;
}

id specialized LiveCallDurationView.init(font:callDurationProvider:voiceOverUpdateHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v49 = a1;
  OUTLINED_FUNCTION_2_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  (*(v13 + 32))(&v46 - v19, v18);
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    swift_once();
  }

  [v21 setTextColor_];
  [v21 setFont_];
  type metadata accessor for DurationLabelController();
  v22 = swift_allocObject();
  v23 = *(v13 + 16);
  v47 = v20;
  v23(v16, v20, a6);
  v24 = v21;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
  specialized DurationLabelController.init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v16, v24, 0, a3, a4, 0, v22, a6, a7, v45, v46, v47, a3, v49, v50, v51, v52.receiver, v52.super_class, v53, v54, v55);
  *&a5[OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller] = v25;
  v26 = *(*v25 + 248);

  v26(v27);

  v28 = type metadata accessor for LiveCallDurationView();
  v52.receiver = a5;
  v52.super_class = v28;
  v29 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v30 = one-time initialization token for conversationControls;
  v31 = v29;
  if (v30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, &static Logger.conversationControls);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v31;
    v51 = v46;
    *v35 = 136315138;
    v36 = v31;
    v37 = String.init<A>(reflecting:)();
    v39 = a6;
    v40 = v24;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v51);

    *(v35 + 4) = v41;
    v24 = v40;
    a6 = v39;
    _os_log_impl(&dword_1BBC58000, v33, v34, "%s created", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v43 = v47;
  v42 = v48;
  [v31 addSubview_];

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v42);
  (*(v13 + 8))(v43, a6);
  return v31;
}

uint64_t static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = static HorizontalAlignment.center.getter();
  v15 = 1;
  closure #1 in static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(a1, a3, a4, a2, &v11);
  v16 = v11;
  v17 = *v12;
  v18 = *&v12[16];
  v19 = *&v12[32];
  v20[0] = v11;
  v20[1] = *v12;
  v20[2] = *&v12[16];
  v20[3] = *&v12[32];
  outlined init with copy of Participant?(&v16, v13, &_s7SwiftUI9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuD0V_AFSgtGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuD0V_AFSgtGMd);
  *&__src[7] = v16;
  *&__src[23] = v17;
  *&__src[39] = v18;
  *&__src[55] = v19;
  v11 = v8;
  v12[0] = v15;
  memcpy(&v12[1], __src, 0x47uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuE0V_AHSgtGGMd);
  OUTLINED_FUNCTION_2_16();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuE0V_AHSgtGGMd);
  return AnyView.init<A>(_:)();
}

_BYTE *SharePlayDiscoverabilityMenuView.init(type:presentationStyle:foregroundApp:willTapApp:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t SharePlayDiscoverabilityMenuView.sortedSharePlayApps.getter()
{
  LOBYTE(v1) = *v0;
  v2 = *(v0 + 8);
  if (one-time initialization token for shared != -1)
  {
LABEL_20:
    swift_once();
  }

  v20 = v1;
  v1 = (*((*MEMORY[0x1E69E7D40] & *static SharePlayDiscoverabilityAppsController.shared) + 0x90))(&v20);
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = v1 + 64;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v6 = (v5 + 40 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(v6 - 4);
    v8 = *(v6 - 3);
    v10 = *(v6 - 2);
    v9 = *(v6 - 1);
    v11 = *v6;
    if (!v2 || (v7 == *(v2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier) ? (v12 = v8 == *(v2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8)) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {

      v18 = v11;
      v13 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v19;
      }

      v5 = v1 + 64;
      v14 = *(v13 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v14 + 1;
        v13 = v19;
        v5 = v1 + 64;
      }

      ++v3;
      *(v13 + 16) = v15;
      v19 = v13;
      v16 = (v13 + 40 * v14);
      v16[4] = v7;
      v16[5] = v8;
      v16[6] = v10;
      v16[7] = v9;
      v16[8] = v18;
      goto LABEL_3;
    }

    v6 += 5;
    ++v3;
  }

  return v19;
}

double SharePlayDiscoverabilityMenuView.title.getter@<D0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v3 = *v1;
    v4 = [objc_opt_self() conversationKit];
    v17 = 0xE000000000000000;
    if (v3)
    {
      v5 = 0xD00000000000001CLL;
      v6 = 0x80000001BC50B570;
    }

    else
    {
      v5 = 0xD000000000000018;
      v6 = 0x80000001BC50B590;
    }

    v7.value._countAndFlagsBits = 0x61737265766E6F43;
    v7.value._object = 0xEF74694B6E6F6974;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v9 = 0;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, v7, v4, v8, *(&v17 - 1));

    v18 = v10;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = [objc_opt_self() conversationKit];
    v22._object = 0xE000000000000000;
    v12._object = 0x80000001BC50B5B0;
    v12._countAndFlagsBits = 0xD000000000000012;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v22);

    v18 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v18._countAndFlagsBits;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(a1 + 33) = v21;
  return result;
}

uint64_t closure #1 in SharePlayDiscoverabilityMenuView.moreButton.getter()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  URL.init(string:)();
  outlined init with copy of Participant?(v9, v6, &_s10Foundation3URLVSgMd);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation3URLVSgMd);
    v9 = v6;
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    TUOpenSensitiveURL();

    v13 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for secondaryPillTriggeredPreferringHUDDismissal != -1)
    {
      swift_once();
    }

    [v13 postNotificationName:static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal object:0];

    (*(v1 + 8))(v3, v0);
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation3URLVSgMd);
}

uint64_t closure #2 in SharePlayDiscoverabilityMenuView.moreButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v25._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 1701998413;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v25);

  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() secondaryLabelColor];
  Color.init(uiColor:)();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  static Font.body.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAMyAA012_ConditionalK0VyAA4TextVAWyA2YGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingS0VySiSgGG_AA6SpacerVAoAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA6ButtonVyAYG_AA011PlainButtonR0VQo_SgtGG_AoAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA06ScrollD0VyAKyAA7ForEachVySay15ConversationKit11ApplicationVGA39_A37_16SharePlayAppCellVGGG_Qo_tGGMd);
  if (v4)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return closure #1 in SharePlayDiscoverabilityMenuView.body.getter(v9 | v3, v5, v6, v7, a1 + *(v8 + 44));
}

uint64_t closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(__int16 a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v9 = type metadata accessor for ScrollIndicatorVisibility();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAjH16SharePlayAppCellVGGGMd);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA0gC0VyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAtR16SharePlayAppCellVGGG_Qo_Md);
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v40 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v40 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAA012_ConditionalJ0VyAA4TextVAUyA2WGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingR0VySiSgGG_AA6SpacerVAmAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0Z0VyAWG_AA05PlainzQ0VQo_SgtGGMd);
  closure #1 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1 & 0x101, a2, a3, a4, &v22[*(v23 + 44)]);
  static Axis.Set.horizontal.getter();
  v50 = a1 & 0x101;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAhF16SharePlayAppCellVGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<ForEach<[Application], Application, SharePlayAppCell>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAhF16SharePlayAppCellVGGMd);
  v24 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x1BFB1F130](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  LOBYTE(a2) = static Axis.Set.vertical.getter();
  *(inited + 32) = a2;
  v26 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v26;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a2)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v26)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScrollView<HStack<ForEach<[Application], Application, SharePlayAppCell>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAjH16SharePlayAppCellVGGGMd);
  v27 = v44;
  v28 = v45;
  View.scrollIndicators(_:axes:)();
  (*(v47 + 8))(v11, v48);
  (*(v43 + 8))(v13, v28);
  v29 = v22;
  v30 = v22;
  v31 = v40;
  outlined init with copy of Participant?(v30, v40, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd);
  v33 = v41;
  v32 = v42;
  v34 = *(v41 + 16);
  v35 = v46;
  v34(v46, v27, v42);
  v36 = v49;
  outlined init with copy of Participant?(v31, v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGG_AiAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA06ScrollE0VyACyAA7ForEachVySay15ConversationKit11ApplicationVGA33_A31_16SharePlayAppCellVGGG_Qo_tMd);
  v34((v36 + *(v37 + 48)), v35, v32);
  v38 = *(v33 + 8);
  v38(v27, v32);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd);
  v38(v35, v32);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd);
}

uint64_t closure #1 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  v77 = a1;
  v50 = a1;
  v66 = a1 >> 8;
  v51 = a2;
  v78 = a2;
  v79 = a3;
  v53 = a3;
  v54 = a4;
  v80 = a4;
  v5 = type metadata accessor for PlainButtonStyle();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v49[-v7];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_Md);
  v55 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v52 = &v49[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49[-v17];
  SharePlayDiscoverabilityMenuView.title.getter(&v70);
  v20 = v70;
  v19 = v71;
  v62 = v71;
  v22 = v72;
  v21 = v73;
  v23 = v75;
  v63 = v75;
  v24 = v74;
  v25 = [objc_opt_self() labelColor];
  v26 = Color.init(uiColor:)();
  v70 = v20;
  v71 = v19;
  v72 = v22;
  v73 = v21;
  v74 = v24;
  v75 = v23;
  v76 = v26;
  static Font.Weight.semibold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4TextVAEyA2GGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  v27 = v24;
  v28 = v64;
  outlined consume of _ConditionalContent<Text, _ConditionalContent<Text, Text>>.Storage(v20, v62, v22, v21, v27, v63);
  v29 = v65;

  KeyPath = swift_getKeyPath();
  v31 = &v18[*(v14 + 44)];
  *v31 = KeyPath;
  *(v31 + 1) = 2;
  v31[16] = 0;
  v32 = 1;
  if ((v66 & 1) == 0)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v50 & 1;
    *(v33 + 17) = 0;
    v34 = v51;
    v35 = v53;
    *(v33 + 24) = v51;
    *(v33 + 32) = v35;
    v36 = v54;
    *(v33 + 40) = v54;
    v37 = v34;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v35, v36);
    v38 = v56;
    Button.init(action:label:)();
    v39 = v59;
    PlainButtonStyle.init()();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type SharePlayAppCell and conformance SharePlayAppCell(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x1E697C248]);
    v40 = v52;
    v41 = v58;
    v42 = v61;
    View.buttonStyle<A>(_:)();
    (*(v60 + 8))(v39, v42);
    (*(v57 + 8))(v38, v41);
    (*(v55 + 32))(v28, v40, v29);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v28, v32, 1, v29);
  v43 = v67;
  outlined init with copy of Participant?(v18, v67, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd);
  v44 = v68;
  outlined init with copy of Participant?(v28, v68, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd);
  v45 = v69;
  outlined init with copy of Participant?(v43, v69, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGG_AA6SpacerVAeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0U0VyAOG_AA05PlainuL0VQo_SgtMd);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  outlined init with copy of Participant?(v44, v45 + *(v46 + 64), &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd);
}

uint64_t closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(__int16 a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0x4030000000000000;
  *(a5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit11ApplicationVGAlJ16SharePlayAppCellVGGMd);
  return closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1 & 0x101, a2, a3, a4);
}

uint64_t closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(__int16 a1, void *a2, uint64_t a3, uint64_t a4)
{
  SharePlayDiscoverabilityMenuView.sortedSharePlayApps.getter();
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1 & 1;
  *(v8 + 17) = HIBYTE(a1) & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = a2;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ApplicationVGMd);
  type metadata accessor for SharePlayAppCell();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [Application] and conformance [A], &_sSay15ConversationKit11ApplicationVGMd);
  lazy protocol witness table accessor for type Application and conformance Application();
  lazy protocol witness table accessor for type SharePlayAppCell and conformance SharePlayAppCell(&lazy protocol witness table cache variable for type SharePlayAppCell and conformance SharePlayAppCell, type metadata accessor for SharePlayAppCell);
  return ForEach<>.init(_:id:content:)();
}

double closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<D0>(uint64_t *a1@<X0>, __int16 a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  v16 = swift_allocObject();
  *(v16 + 16) = a2 & 1;
  *(v16 + 17) = HIBYTE(a2) & 1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *a6 = v12;
  a6[1] = v11;
  a6[2] = v14;
  a6[3] = v13;
  a6[4] = v15;
  a6[5] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter;
  a6[6] = v16;
  v17 = *(type metadata accessor for SharePlayAppCell() + 24);
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  v18 = a3;

  v19 = v15;

  *&result = outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a4, a5).n128_u64[0];
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a4)
  {
    a4();
  }

  SharePlayDiscoverabilityMenuView.didTapApp(_:)(a1);
}

void SharePlayDiscoverabilityMenuView.didTapApp(_:)(uint64_t *a1)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v4 = *a1;
  v3 = a1[1];
  v27 = *(a1 + 1);
  v5 = a1[4];

  outlined init with copy of String(&v27, v26);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined destroy of String(&v27);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    v26[0] = v4;
    *v9 = 136315138;
    v26[1] = v3;

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v25);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v7, v8, "User did tap discoverability app with bundleIdentifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  type metadata accessor for FBSOpenApplicationOptions();
  v14 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);
  v17 = v16;

  v18 = @nonobjc FBSOpenApplicationOptions.__allocating_init(dictionary:)(v17);
  v19 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x1BFB209B0](v4, v3);
    [v20 openApplication:v21 withOptions:v18 completion:0];
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BBC58000, v22, v23, "Unable to launch discoverability app because FBSOpenApplicationService was null", v24, 2u);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    v21 = v18;
  }
}

uint64_t closure #1 in static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    v9 = a1;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
    v10 = 257;
    v11 = a1;
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 1;
  }

  *a5 = 256;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = v10;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  v14 = a1;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  v15 = v14;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  outlined copy of SharePlayDiscoverabilityMenuView?(v10, v11, v12, v13);
  outlined consume of SharePlayDiscoverabilityMenuView?(v10, v11, v12);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(a2);
}

uint64_t getEnumTagSinglePayload for SharePlayDiscoverabilityMenuView(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for SharePlayDiscoverabilityMenuView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

double partial apply for closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1, v3 | *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

unint64_t lazy protocol witness table accessor for type Application and conformance Application()
{
  result = lazy protocol witness table cache variable for type Application and conformance Application;
  if (!lazy protocol witness table cache variable for type Application and conformance Application)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Application and conformance Application);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Application and conformance Application;
  if (!lazy protocol witness table cache variable for type Application and conformance Application)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Application and conformance Application);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(uint64_t *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1, v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t type metadata accessor for FBSOpenApplicationOptions()
{
  result = lazy cache variable for type metadata for FBSOpenApplicationOptions;
  if (!lazy cache variable for type metadata for FBSOpenApplicationOptions)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FBSOpenApplicationOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4TextVAEyA2GGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVACyA2EGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<Text, _ConditionalContent<Text, Text>>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }

  else
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t lazy protocol witness table accessor for type SharePlayAppCell and conformance SharePlayAppCell(unint64_t *a1, void (*a2)(uint64_t))
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

void outlined copy of SharePlayDiscoverabilityMenuView?(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    v7 = a2;

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
  }
}

void outlined consume of SharePlayDiscoverabilityMenuView?(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 != 1)
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(a3);
  }
}

uint64_t InCallCallControlsService.__allocating_init(activeCall:localVideoSupported:letMeInState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  InCallCallControlsService.init(activeCall:localVideoSupported:letMeInState:)(a1, a2, 0, a4);
  return v7;
}

uint64_t key path getter for InCallCallControlsService.controlsManager : InCallCallControlsService@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void InCallCallControlsService.controlsManager.setter(void *a1)
{
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakAssign();
}

void (*InCallCallControlsService.controlsManager.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_30_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return InCallCallControlsService.controlsManager.modify;
}

void InCallCallControlsService.controlsManager.modify()
{
  OUTLINED_FUNCTION_18_45();
  swift_unknownObjectWeakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t key path getter for InCallCallControlsService.videoTileConversationController : InCallCallControlsService@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void InCallCallControlsService.videoTileConversationController.setter(void *a1)
{
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakAssign();
}

void (*InCallCallControlsService.videoTileConversationController.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_30_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return InCallCallControlsService.videoTileConversationController.modify;
}

void InCallCallControlsService.videoTileConversationController.modify()
{
  OUTLINED_FUNCTION_18_45();
  swift_unknownObjectWeakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t InCallCallControlsService.init(activeCall:localVideoSupported:letMeInState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  v14 = OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant;
  LOBYTE(v23) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v14, v13, v8);
  v15 = (v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_toggleLiveCaptions);
  *v15 = TPNumberPadCharacter.rawValue.getter;
  v15[1] = 0;
  v16 = (v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_presentContactCard);
  *v16 = TPNumberPadCharacter.rawValue.getter;
  v16[1] = 0;
  v17 = (v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_presentAddParticipantSheet);
  *v17 = TPNumberPadCharacter.rawValue.getter;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_conversationStateSubject;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v5 + v18) = OUTLINED_FUNCTION_22_38();
  ObjectType = swift_getObjectType();
  LODWORD(v23) = (*(a2 + 208))(ObjectType, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_callStatusSubject) = OUTLINED_FUNCTION_22_38();
  LOBYTE(v23) = -2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_modeSubject) = OUTLINED_FUNCTION_22_38();
  v23 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  v20 = OUTLINED_FUNCTION_22_38();
  swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_letMeInStateSubject) = v20;
  return v5;
}

uint64_t InCallCallControlsService.conversation.getter()
{
  OUTLINED_FUNCTION_4_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))();

  return v2;
}

uint64_t InCallCallControlsService.currentMode.getter()
{
  CurrentValueSubject.value.getter();
  if (v1 <= 0xFDu)
  {
    return v1;
  }

  else
  {
    return 32;
  }
}

uint64_t *InCallCallControlsService.callStatus.getter()
{
  v0 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v2, v3);
  lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(&lazy protocol witness table cache variable for type TUCallStatus and conformance TUCallStatus, type metadata accessor for TUCallStatus);
  OUTLINED_FUNCTION_8_77();
  OUTLINED_FUNCTION_4_101();
  OUTLINED_FUNCTION_21_37(v4);
  OUTLINED_FUNCTION_7_15();
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return &_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMd;
}

uint64_t *InCallCallControlsService.conversationState.getter()
{
  v0 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v2, v3);
  lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(&lazy protocol witness table cache variable for type TUConversationState and conformance TUConversationState, type metadata accessor for TUConversationState);
  OUTLINED_FUNCTION_8_77();
  OUTLINED_FUNCTION_4_101();
  OUTLINED_FUNCTION_21_37(v4);
  OUTLINED_FUNCTION_7_15();
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return &_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMd;
}

uint64_t InCallCallControlsService.mode.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGAJGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGALGGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  v18[1] = *(v0 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_modeSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, v14);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<InCallControlsMode?, Never>, InCallControlsMode> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGAJGMd);
  lazy protocol witness table accessor for type InCallControlsMode and conformance InCallControlsMode();
  Publisher<>.removeDuplicates()();
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGALGGMd);
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v12, v7);
  return v16;
}

uint64_t *InCallCallControlsService.letMeInStates.getter()
{
  v0 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v2, v3);
  lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(&lazy protocol witness table cache variable for type TUConversationLetMeInRequestState and conformance TUConversationLetMeInRequestState, type metadata accessor for TUConversationLetMeInRequestState);
  OUTLINED_FUNCTION_8_77();
  OUTLINED_FUNCTION_4_101();
  OUTLINED_FUNCTION_21_37(v4);
  OUTLINED_FUNCTION_7_15();
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return &_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMd;
}

uint64_t InCallCallControlsService.isOnScreen.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 32) = a1;
}

uint64_t InCallCallControlsService.hasPendingParticipant.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for InCallCallControlsService.hasPendingParticipant : InCallCallControlsService@<X0>(_BYTE *a1@<X8>)
{
  result = InCallCallControlsService.hasPendingParticipant.getter();
  *a1 = result & 1;
  return result;
}

uint64_t InCallCallControlsService.hasPendingParticipant.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t InCallCallControlsService.$hasPendingParticipant.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for InCallCallControlsService.$hasPendingParticipant : InCallCallControlsService(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return InCallCallControlsService.$hasPendingParticipant.setter(v5);
}

uint64_t InCallCallControlsService.$hasPendingParticipant.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t InCallCallControlsService.hasPendingParticipantPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v12, &_s7Combine9PublishedV9PublisherVySb_GMd);
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v5, v0);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMd);
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v11, v6);
  return v14;
}

uint64_t InCallCallControlsService.updateConversation(_:)(uint64_t a1)
{
  outlined init with copy of Conversation?(a1, &v9);
  if (v10)
  {
    outlined init with take of TapInteractionHandler(&v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v1 = OUTLINED_FUNCTION_62_0();
    v3 = v2(v1);
    specialized Set.isEmpty.getter(v3);

    InCallCallControlsService.hasPendingParticipant.setter();
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.sidebar);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = InCallCallControlsService.hasPendingParticipant.getter() & 1;

      _os_log_impl(&dword_1BBC58000, v5, v6, "CallControlsService updated conversation; hasPendingParticipant = %{BOOL}d", v7, 8u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    else
    {
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    outlined destroy of Conversation?(&v9);
    return InCallCallControlsService.hasPendingParticipant.setter();
  }
}

Swift::Void __swiftcall InCallCallControlsService.continueHandoffButtonTapped()()
{
  OUTLINED_FUNCTION_4_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong continueHandoffButtonTapped];
  }
}

void InCallCallControlsService.joinConversation()(void (*a1)(void))
{
  OUTLINED_FUNCTION_4_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1();
  }
}

uint64_t closure #1 in InCallCallControlsService.muted.getter@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6B0))();
  *a2 = (result & 1) == 0;
  return result;
}

uint64_t specialized InCallCallControlsService.fromControlManager<A>(_:defaultValue:)(void (*a1)(uint64_t *__return_ptr), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a1(&v12);
  }

  else
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.sidebar);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[InCallCallControlsService] Missing control manager.", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    a3(&v12);
  }

  return v12;
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a1(&v12);
  }

  else
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.sidebar);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[InCallCallControlsService] Missing control manager.", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    a3(&v12);
  }

  return v12;
}

uint64_t closure #1 in InCallCallControlsService.mutedStates.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySb_GSbGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVySb_GSbGGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6C8))(v13);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  Publisher.map<A>(_:)();
  (*(v4 + 8))(v6, v3);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Published<Bool>.Publisher, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySb_GSbGMd);
  Publisher<>.removeDuplicates()();
  (*(v8 + 8))(v10, v7);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<Published<Bool>.Publisher, Bool>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVySb_GSbGGMd);
  v16 = Publisher.eraseToAnyPublisher()();
  result = (*(v12 + 8))(v15, v11);
  *v19 = v16;
  return result;
}

Swift::Void __swiftcall InCallCallControlsService.mutateMutedState(_:)(Swift::Bool a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_10_62();
  if ((specialized InCallCallControlsService.fromControlManager<A>(_:defaultValue:)(v2, 0, protocol witness for static LayoutValueKey.defaultValue.getter in conformance LayoutPositionKey) & 1) != v1)
  {
    OUTLINED_FUNCTION_4_5();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      ConversationControlsManager.setLocalAudio(muted:bluetoothAudioFormat:)();
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = InCallCallControlsService.localAudioEphemeralAlert()();
        (*((*MEMORY[0x1E69E7D40] & *v6) + 0x8E0))(v7);
      }
    }
  }
}

Class InCallCallControlsService.localAudioEphemeralAlert()()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v0 = *MEMORY[0x1E69DDD40];
  v26[0] = 0x6C6C69662E63696DLL;
  v26[1] = 0xE800000000000000;
  v26[2] = 1;
  v26[3] = v0;
  v27 = 0;
  v28 = 4;
  v29 = 0;
  v30 = 0;
  v31[0] = 0x6C6C69662E63696DLL;
  v31[1] = 0xE800000000000000;
  v31[2] = 1;
  v31[3] = v0;
  v32 = 0;
  v33 = 4;
  v34 = 0;
  v35 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v26, v24);
  outlined destroy of SymbolImageDescription(v31);
  v2 = static UIImage.symbolImage(for:)(v26);
  outlined destroy of SymbolImageDescription(v26);
  if (v2)
  {
    v3 = [objc_opt_self() labelColor];
    v4 = [v2 imageWithTintColor_];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v5 = objc_opt_self();
  v6 = [v5 conversationKit];
  v36._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x6F68706F7263694DLL;
  v7._object = 0xEA0000000000656ELL;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v36);

  memset(v24, 0, sizeof(v24));
  v25 = 1;
  v11 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v10._countAndFlagsBits, v10._object, v4, v24);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x6B0))(), v13, (v14 & 1) != 0))
  {
    v15 = [v5 conversationKit];
    v23 = 0xE000000000000000;
    v16 = 0x4E4F5F43494DLL;
    v17 = 0xE600000000000000;
  }

  else
  {
    v15 = [v5 conversationKit];
    v23 = 0xE000000000000000;
    v16 = 0x46464F5F43494DLL;
    v17 = 0xE700000000000000;
  }

  v18.value._countAndFlagsBits = 0x61737265766E6F43;
  v18.value._object = 0xEF74694B6E6F6974;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, v18, v15, v19, *(&v23 - 1));

  NSAttributedString.__allocating_init(string:)(v21);
  return v11;
}

uint64_t closure #1 in InCallCallControlsService.localVideoSupported.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6E0))();
  *a2 = result & 1;
  return result;
}

uint64_t closure #2 in InCallCallControlsService.mutedStates.getter@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_62_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v13[15] = a1;
  Just.init(_:)();
  OUTLINED_FUNCTION_21_37(&lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>);
  v11 = Publisher.eraseToAnyPublisher()();
  result = (*(v7 + 8))(v10, v5);
  *a2 = v11;
  return result;
}

uint64_t closure #1 in InCallCallControlsService.isVideoOn.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6E0))();
  *a2 = BYTE1(result) & 1;
  return result;
}

uint64_t closure #1 in InCallCallControlsService.localVideoSupportedState.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMd);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGMd);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGGMd);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_21();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6F8))(v20);
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v23, &_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMd);
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v9, v4);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Published<ControlsActionState>.Publisher, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGMd);
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v24, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGGMd);
  v25 = Publisher.eraseToAnyPublisher()();
  result = (*(v18 + 8))(v22, v16);
  *v28 = v25;
  return result;
}

Swift::Void __swiftcall InCallCallControlsService.mutateVideoOnState(_:)(Swift::Bool a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_11_74();
  if ((specialized InCallCallControlsService.fromControlManager<A>(_:defaultValue:)(v2, 0, closure #2 in InCallCallControlsService.isVideoOn.getter) & 1) != v1)
  {
    OUTLINED_FUNCTION_4_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(0);
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (!v5)
      {
        return;
      }

      v4 = v5;
      ConversationControlsManager.toggleVideoButtonTapped()();
    }
  }
}

unint64_t lazy protocol witness table accessor for type InCallControlsMode and conformance InCallControlsMode()
{
  result = lazy protocol witness table cache variable for type InCallControlsMode and conformance InCallControlsMode;
  if (!lazy protocol witness table cache variable for type InCallControlsMode and conformance InCallControlsMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsMode and conformance InCallControlsMode);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for InCallCallControlsService.toggleLiveCaptions : InCallCallControlsService@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v6 = (*a1 + *a2);
  OUTLINED_FUNCTION_4_0();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *a4 = a3;
  a4[1] = v9;
}

uint64_t key path setter for InCallCallControlsService.toggleLiveCaptions : InCallCallControlsService(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = (*a2 + *a6);
  OUTLINED_FUNCTION_51_3();
  *v13 = a7;
  v13[1] = v12;
}

uint64_t InCallCallControlsService.toggleLiveCaptions.getter(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_4_0();
  v3 = *v2;

  return v3;
}

uint64_t InCallCallControlsService.toggleLiveCaptions.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_51_3();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t InCallCallControlsService.deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  MEMORY[0x1BFB23F10](v0 + 24);

  v1 = OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InCallCallControlsService.__deallocating_deinit()
{
  InCallCallControlsService.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CallControlsService.isOnScreen.setter in conformance InCallCallControlsService(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 32) = a1;
}

uint64_t protocol witness for CallControlsService.presentAddParticipantSheet.getter in conformance InCallCallControlsService(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  OUTLINED_FUNCTION_4_0();
  v5 = *v4;

  return v5;
}

uint64_t protocol witness for CallControlsService.presentAddParticipantSheet.setter in conformance InCallCallControlsService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (*v5 + *a5);
  OUTLINED_FUNCTION_51_3();
  *v8 = a1;
  v8[1] = a2;
}

uint64_t outlined destroy of Conversation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InCallCallControlsService()
{
  result = type metadata singleton initialization cache for InCallCallControlsService;
  if (!type metadata singleton initialization cache for InCallCallControlsService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallCallControlsService()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

Swift::String __swiftcall String.hashWithSalt(salt:)(Swift::String salt)
{
  v3 = v2;
  v4 = v1;
  object = salt._object;
  countAndFlagsBits = salt._countAndFlagsBits;
  v7 = type metadata accessor for SHA256();
  OUTLINED_FUNCTION_1();
  *&v51 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  OUTLINED_FUNCTION_1();
  v50 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v52 = v4;
  v53 = v3;

  MEMORY[0x1BFB20B10](countAndFlagsBits, object);
  v20 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v52, v53);
  v22 = v21;
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v20, v22);
  specialized closure #1 in HashFunction.update<A>(data:)(v20, v22);
  v46 = v22;
  v47 = v20;
  outlined consume of Data._Representation(v20, v22);
  dispatch thunk of HashFunction.finalize()();
  (*(v51 + 8))(v11, v7);
  v23 = *(v50 + 16);
  v48 = v19;
  v23(v16, v19, v12);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
  v49 = v12;
  isUniquelyReferenced_nonNull_native = dispatch thunk of Sequence.makeIterator()();
  v26 = v52;
  v27 = v53;
  v28 = *(v52 + 16);
  if (v53 == v28)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_3:

    v52 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v52 = v30;
    v53 = v32;
    v33 = String.init<A>(_:)();
    v35 = v34;
    outlined consume of Data._Representation(v47, v46);
    (*(v50 + 8))(v48, v49);
    isUniquelyReferenced_nonNull_native = v33;
    v25 = v35;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v51 = xmmword_1BC4BA940;
    v36 = v53;
    while ((v27 & 0x8000000000000000) == 0)
    {
      if (v36 >= *(v26 + 16))
      {
        goto LABEL_14;
      }

      v37 = *(v26 + 32 + v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v38 = swift_allocObject();
      *(v38 + 16) = v51;
      *(v38 + 56) = MEMORY[0x1E69E7508];
      *(v38 + 64) = MEMORY[0x1E69E7558];
      *(v38 + 32) = v37;
      v39 = String.init(format:_:)();
      v41 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v42 = *(v29 + 16);
      if (v42 >= *(v29 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = isUniquelyReferenced_nonNull_native;
      }

      ++v36;
      *(v29 + 16) = v42 + 1;
      v43 = v29 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v41;
      if (v28 == v36)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  result._object = v25;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v36 = a1;
  *(&v36 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of TapInteractionHandler(v34, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, v38);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v34[0] = v36;
    __swift_destroy_boxed_opaque_existential_1(&v37);
    goto LABEL_59;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  outlined destroy of ContiguousBytes?(v34);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v34[0] = a1;
    *(&v34[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v34;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v37);
  v6 = *(&v37 + 1);
  v7 = v37;
  if (*(&v37 + 1) >> 60 != 15)
  {
    v34[0] = v37;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v34[0] = MEMORY[0x1BFB1A280](v8);
  *(&v34[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v34[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v12 = *(&v34[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v34[0]);
  switch(*(&v34[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v34[0]) - LODWORD(v34[0]);
      if (__OFSUB__(DWORD1(v34[0]), v34[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v34[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v34[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v34[0] + 16);
      v20 = *(*&v34[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v33 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v36 + 7) = 0;
      *&v36 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v34[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v37 = v13;
      *(&v37 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v37 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_46:
    *(&v36 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v37 = v36;
      *(&v37 + 6) = *(&v36 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v37 = v36;
    *(&v37 + 6) = *(&v36 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v33, v6);
    goto LABEL_58;
  }

  outlined consume of Data?(v33, v6);
LABEL_59:
  v31 = v34[0];
  outlined copy of Data._Representation(*&v34[0], *(&v34[0] + 1));

  outlined consume of Data._Representation(v31, *(&v31 + 1));
  return v31;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v5, a1, a2);
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v6, v5);
      *v4 = xmmword_1BC4D59F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1BC4D59F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v16;
      v9 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      outlined consume of Data._Representation(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t closure #1 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB1A230]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB1A250]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void specialized closure #1 in HashFunction.update<A>(data:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      specialized Data.InlineData.withUnsafeBytes<A>(_:)();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1BFB19C60]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    OUTLINED_FUNCTION_0_144(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1BFB20B50](15, a1 >> 16);
    OUTLINED_FUNCTION_0_144(v3);
    return v4 | 8;
  }
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)()
{
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1BFB19C60]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = specialized closure #3 in Data.init<A>(_:)(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t MonogramView.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t key path getter for MonogramView.text : MonogramView@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id key path setter for MonogramView.text : MonogramView(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MonogramView.text.setter(v1, v2);
}

id MonogramView.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC15ConversationKit12MonogramView_text];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  return [v2 setNeedsDisplay];
}

id (*MonogramView.text.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MonogramView.text.modify;
}

id MonogramView.text.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsDisplay];
  }

  return result;
}

id MonogramView.init(colorStyle:)(unsigned __int8 *a1)
{
  swift_getObjectType();
  v3 = *a1;
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font] = 0;
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_text];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_colorStyle] = v3;
  v13.receiver = v1;
  v13.super_class = v5;
  v6 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setContentMode_];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  v8 = v6;
  if (v3 == 1)
  {
    v9 = [v6 layer];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = CAFilter.__allocating_init(type:)(v10, v11);
    [v9 setCompositingFilter_];
  }

  return v6;
}

id MonogramView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MonogramView.init()()
{
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *(v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_font) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MonogramView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void MonogramView.init(frame:)()
{
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *(v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_font) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_1_119();
  __break(1u);
}

id MonogramView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MonogramView.init(coder:)()
{
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *(v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_font) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_1_119();
  __break(1u);
}

Swift::Void __swiftcall MonogramView.draw(_:)(__C::CGRect a1)
{
  OUTLINED_FUNCTION_20_2();
  v2 = &v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_text];
  swift_beginAccess();
  v3 = v2[1];
  v4 = *v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    if (v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_colorStyle])
    {
      v5 = [objc_opt_self() whiteColor];
    }

    else
    {
      if (one-time initialization token for contactMonogram != -1)
      {
        swift_once();
      }

      v5 = static Colors.ParticipantViews.contactMonogram;
    }

    v6 = v5;
    v7 = &v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont];
    v8 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont];
    v9 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont + 8];
    v10 = v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont + 16];
    [v1 bounds];
    if ((v10 & 1) != 0 || (v8 == v11 ? (v13 = v9 == v12) : (v13 = 0), !v13))
    {
      [v1 bounds];
      MonogramView.createFont(for:)(v14);
      v15 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font];
      *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font] = v16;

      [v1 bounds];
      *v7 = v17;
      *(v7 + 1) = v18;
      v7[16] = 0;
    }

    v19 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font];
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAA20;
      v21 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
      *(inited + 40) = v19;
      v23 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v22;
      *(inited + 72) = v23;
      *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      *(inited + 80) = v6;
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      v24 = v19;
      v25 = v21;
      v26 = v23;
      v27 = v6;
      v28 = Dictionary.init(dictionaryLiteral:)();
      lazy protocol witness table accessor for type String and conformance String();

      v29 = StringProtocol.localizedUppercase.getter();
      v30 = MEMORY[0x1BFB209B0](v29);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v30 sizeWithAttributes_];
      v33 = v32;
      v35 = v34;

      v38.origin.x = OUTLINED_FUNCTION_18_1();
      v36 = CGRectGetMidX(v38) - v33 * 0.5;
      v39.origin.x = OUTLINED_FUNCTION_18_1();
      MidY = CGRectGetMidY(v39);
      outlined bridged method (mnbnn) of @objc NSString.draw(in:withAttributes:)(v36, MidY - v35 * 0.5, v33, v35, v28, v30);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

void MonogramView.createFont(for:)(double a1)
{
  v1 = a1 * 0.515555556;
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB970];
  v4 = MEMORY[0x1BFB209B0](0xD00000000000001BLL, 0x80000001BC50B760);
  v5 = [v2 systemFontOfSize:v4 weight:v1 design:v3];

  if (!v5)
  {
    __break(1u);
  }
}

id MonogramView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void outlined bridged method (mnbnn) of @objc NSString.draw(in:withAttributes:)(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a6 drawInRect:isa withAttributes:{a1, a2, a3, a4}];
}

double ParticipantScreenShareInfoView.customCornerRadius.getter()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ParticipantScreenShareInfoView.customCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  ParticipantScreenShareInfoView.customCornerRadius.didset();
}

void ParticipantScreenShareInfoView.customCornerRadius.didset()
{
  v1 = [*(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView) layer];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
  [v1 setCornerRadius_];
}

uint64_t (*ParticipantScreenShareInfoView.customCornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantScreenShareInfoView.customCornerRadius.modify;
}

double ParticipantScreenShareInfoView.preferredHeight.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
  result = 40.0;
  if (v1)
  {
    return 54.0;
  }

  return result;
}

void *ParticipantScreenShareInfoView.avatarImage.getter()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ParticipantScreenShareInfoView.avatarImage.setter(void *a1)
{
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  ParticipantScreenShareInfoView.avatarImage.didset();
}

uint64_t key path getter for ParticipantScreenShareInfoView.avatarImage : ParticipantScreenShareInfoView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ParticipantScreenShareInfoView.avatarImage : ParticipantScreenShareInfoView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

id ParticipantScreenShareInfoView.avatarImage.didset()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView);
  [v2 setHidden_];
  [v2 setImage_];
  v3 = *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView);
  [v3 directionalLayoutMargins];
  return [v3 setDirectionalLayoutMargins_];
}

uint64_t (*ParticipantScreenShareInfoView.avatarImage.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantScreenShareInfoView.avatarImage.modify;
}

uint64_t ParticipantScreenShareInfoView.customCornerRadius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ParticipantScreenShareInfoView.isFullScreenMode : ParticipantScreenShareInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t ParticipantScreenShareInfoView.isFullScreenMode.getter()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ParticipantScreenShareInfoView.isFullScreenMode.setter(char a1)
{
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode;
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return result;
}

id ParticipantScreenShareInfoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ParticipantScreenShareInfoView.init()()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_normalConstraints] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_fullScreenConstraints] = v5;
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius] = 0;
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage] = 0;
  v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode] = 0;
  v74.receiver = v0;
  v74.super_class = type metadata accessor for ParticipantScreenShareInfoView();
  v6 = objc_msgSendSuper2(&v74, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView;
  v8 = *&v6[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView];
  v9 = v6;
  v10 = v8;
  UIVisualEffectView.applyEffect(_:)(ConversationKit_PlatformEffectViewStyle_thinDark);

  v11 = *&v6[v7];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor_];

  [*&v6[v7] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = v7;
  v16 = *&v6[v7];
  v17 = [v16 layer];
  [v17 setMasksToBounds_];

  v18 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView;
  [*&v9[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView] setDirectionalLayoutMargins_];
  [*&v9[v18] setLayoutMarginsRelativeArrangement_];
  [*&v9[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v9[v18] setAxis_];
  [*&v9[v18] setAlignment_];
  [*&v9[v18] setDistribution_];
  [*&v9[v18] setSpacing_];
  v19 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView;
  v20 = *&v9[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView];
  v21 = [v12 whiteColor];
  [v20 setTintColor_];

  [*&v9[v19] setHidden_];
  v73 = v19;
  [*&v9[v18] addArrangedSubview_];
  v22 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel;
  [*&v9[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = *&v9[v22];
  v24 = [v12 whiteColor];
  [v23 setTextColor_];

  v25 = one-time initialization token for screenShareInfo;
  v26 = *&v9[v22];
  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0_145();
  }

  [v26 setFont_];

  [*&v9[v22] setAdjustsFontForContentSizeCategory_];
  LODWORD(v27) = 1144750080;
  [*&v9[v22] setContentCompressionResistancePriority:0 forAxis:v27];
  [*&v9[v18] addArrangedSubview_];
  v28 = *&v6[v15];
  v29 = v9;
  [v29 addSubview_];
  [v29 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BC4BA920;
  v31 = [*&v9[v18] leadingAnchor];
  v32 = [OUTLINED_FUNCTION_4_107() leadingAnchor];
  v33 = OUTLINED_FUNCTION_1_120();

  *(v30 + 32) = v33;
  v34 = [*&v9[v18] centerYAnchor];
  v35 = [OUTLINED_FUNCTION_4_107() centerYAnchor];
  v36 = OUTLINED_FUNCTION_1_120();

  *(v30 + 40) = v36;
  v37 = [*&v9[v18] trailingAnchor];
  v38 = [OUTLINED_FUNCTION_4_107() trailingAnchor];
  v39 = OUTLINED_FUNCTION_1_120();

  *(v30 + 48) = v39;
  v40 = [*&v9[v73] heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v30 + 56) = v41;
  v42 = [*&v9[v73] widthAnchor];
  v43 = [*&v9[v73] heightAnchor];
  v44 = OUTLINED_FUNCTION_1_120();

  *(v30 + 64) = v44;
  *&v29[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_normalConstraints] = v30;

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BC4BC370;
  v46 = [*&v9[v18] centerXAnchor];
  v47 = [OUTLINED_FUNCTION_4_107() centerXAnchor];
  v48 = OUTLINED_FUNCTION_1_120();

  *(v45 + 32) = v48;
  v49 = [*&v9[v18] topAnchor];
  v50 = [OUTLINED_FUNCTION_4_107() safeAreaLayoutGuide];
  v51 = [v50 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];

  v52 = [v42 constraintEqualToAnchor_];
  *(v45 + 40) = v52;
  v53 = [*&v9[v18] trailingAnchor];
  v54 = [*&v6[v15] trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-30.0];

  *(v45 + 48) = v55;
  *&v29[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_fullScreenConstraints] = v45;

  v56 = objc_opt_self();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1BC4BA7F0;
  v58 = [*&v6[v15] topAnchor];
  v59 = [v29 topAnchor];

  v60 = OUTLINED_FUNCTION_5_98();
  *(v57 + 32) = v60;
  v61 = [*&v6[v15] bottomAnchor];
  v62 = [v29 bottomAnchor];

  v63 = OUTLINED_FUNCTION_5_98();
  *(v57 + 40) = v63;
  v64 = [*&v6[v15] leadingAnchor];
  v65 = [v29 leadingAnchor];

  v66 = OUTLINED_FUNCTION_5_98();
  *(v57 + 48) = v66;
  v67 = [*&v6[v15] trailingAnchor];
  v68 = [v29 trailingAnchor];

  v69 = [v67 constraintEqualToAnchor_];
  *(v57 + 56) = v69;

  specialized Array.append<A>(contentsOf:)(v70);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  return v29;
}

id ParticipantScreenShareInfoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantScreenShareInfoView.init(coder:)()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_normalConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_fullScreenConstraints) = v5;
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius) = 0;
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage) = 0;
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantScreenShareInfoView.configure(with:isFullScreenMode:)(Swift::String with, Swift::Bool isFullScreenMode)
{
  v4 = v2;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x108))(isFullScreenMode);
  v12 = *(v4 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel);
  if (isFullScreenMode)
  {
    v3 = 0.0;
    if (one-time initialization token for screenShareInfoFullScreen == -1)
    {
LABEL_4:
      v13 = &static Fonts.ParticipantViews.screenShareInfoFullScreen;
      v14 = 1;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v3 = 1.0;
  if (one-time initialization token for screenShareInfo != -1)
  {
    OUTLINED_FUNCTION_0_145();
  }

  v13 = &static Fonts.ParticipantViews.screenShareInfo;
  v14 = 4;
LABEL_8:
  [v12 setFont_];
  [v12 setTextAlignment_];
  outlined bridged method (mbgnn) of @objc UILabel.text.setter(countAndFlagsBits, object, v12);
  [*(v4 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView) setAlpha_];
  v15 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 deactivateConstraints_];

  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints_];
}

id ParticipantScreenShareInfoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantScreenShareInfoView.layoutSubviews()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ParticipantScreenShareInfoView();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t key path getter for DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate : DefaultParticipantCaptionsProviderCreator@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  result = outlined destroy of DefaultParticipantCaptionsProviderCreator(v6);
  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify;
}

uint64_t DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify(uint64_t a1)
{
  *(*(a1 + 16) + 8) = *(a1 + 8);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t DefaultParticipantCaptionsProviderCreator.createParticipantCaptionsProvider(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, static Logger.conversationController);
    (*(v3 + 16))(v5, v7, v2);
    v8 = objc_allocWithZone(type metadata accessor for CaptionsClientParticipantCaptionsProvider());
    CaptionsClientParticipantCaptionsProvider.init(logger:token:usage:)();
    v10 = v9;
    if (v9)
    {
      swift_unknownObjectWeakLoadStrong();
      v11 = *(v1 + 8);
      v12 = v10 + OBJC_IVAR____TtC15ConversationKit41CaptionsClientParticipantCaptionsProvider_participantCaptionsProviderDelegate;
      swift_beginAccess();
      *(v12 + 8) = v11;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DefaultParticipantCaptionsProviderCreator.init(participantCaptionsProviderDelegate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for DefaultParticipantCaptionsProviderCreator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      v2 = *a1 & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultParticipantCaptionsProviderCreator(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t InCallControlsViewController.groupName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t InCallControlsViewController.groupName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  OUTLINED_FUNCTION_3_5();
  *v2 = a1;
  v2[1] = a2;
}

id InCallControlsViewController.contentView.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 contentView];

      if (v4)
      {
        return v4;
      }
    }

    else
    {
    }
  }

  result = [v0 view];
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t InCallControlsViewController.participants.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
}

uint64_t InCallControlsViewController.mode.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsViewController.mode : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void InCallControlsViewController.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  InCallControlsViewController.mode.didset(v4);
}

void InCallControlsViewController.mode.didset(int a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  v5 = *(v2 + v4);
  switch(a1 >> 5)
  {
    case 1:
      if ((v5 & 0xE0) != 0x20)
      {
        goto LABEL_28;
      }

      goto LABEL_13;
    case 2:
      if ((v5 & 0xE0) != 0x40)
      {
        goto LABEL_28;
      }

LABEL_13:
      if (((v5 ^ a1) & 1) == 0)
      {
        return;
      }

      goto LABEL_28;
    case 3:
      if (a1 == 96)
      {
        if (v5 != 96)
        {
          goto LABEL_28;
        }
      }

      else if (v5 != 97)
      {
        goto LABEL_28;
      }

      return;
    case 4:
      if (a1 == 128)
      {
        if (v5 != 128)
        {
          goto LABEL_28;
        }
      }

      else if (v5 != 129)
      {
        goto LABEL_28;
      }

      return;
    case 5:
      if (a1 == 160)
      {
        if (v5 != 160)
        {
          goto LABEL_28;
        }
      }

      else if (v5 != 161)
      {
        goto LABEL_28;
      }

      return;
    case 6:
      if (a1 == 192)
      {
        if (v5 == 192)
        {
          return;
        }
      }

      else if (v5 == 193)
      {
        return;
      }

LABEL_28:
      v6 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
      swift_beginAccess();
      v7 = *(v2 + v6);
      if (v7)
      {
        v8 = v7;
        InCallControlsCollectionViewController.mode.setter(v5);
      }

      InCallControlsViewController.updateJoinLeaveButton()();
      return;
    default:
      if (v5 < 0x20)
      {
        return;
      }

      goto LABEL_28;
  }
}

void InCallControlsViewController.updateJoinLeaveButton()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BAA20;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v7 = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 64) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  v8 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  swift_beginAccess();
  v9 = String.init<A>(reflecting:)();
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 72) = v9;
  *(v1 + 80) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (*(v0 + v8) != 1)
  {
    v14 = *(v0 + v2);
    switch(v14 >> 5)
    {
      case 1u:
        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      case 2u:
        if (v14)
        {
          goto LABEL_4;
        }

        v11 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
        swift_beginAccess();
        if (!*v11)
        {
          return;
        }

        v12 = 0;
        goto LABEL_6;
      case 3u:
        if (v14 != 96)
        {
          return;
        }

LABEL_15:
        v11 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
        swift_beginAccess();
        if (!*v11)
        {
          return;
        }

        v12 = 1;
        break;
      case 4u:
      case 5u:
      case 6u:
        return;
      default:
        goto LABEL_4;
    }

    goto LABEL_6;
  }

LABEL_4:
  v11 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  swift_beginAccess();
  if (*v11)
  {
    v12 = 2;
LABEL_6:
    v13 = *(v11 + 16);
    InCallControlsView.joinLeaveConfiguration.setter(v12);
  }
}

uint64_t InCallControlsViewController.mode.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsViewController.mode.modify(uint64_t a1)
{
  v1 = *a1;
  InCallControlsViewController.mode.setter(*(*a1 + 32));

  free(v1);
}

uint64_t InCallControlsViewController.gridLayoutStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t key path getter for InCallControlsViewController.gridLayoutStyle : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void InCallControlsViewController.gridLayoutStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5[0] = v4;
  InCallControlsViewController.gridLayoutStyle.didset(v5);
}

void InCallControlsViewController.gridLayoutStyle.didset(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5)
    {
      v7 = *(v1 + v3);
      v6 = v5;
      InCallControlsCollectionViewController.gridLayoutStyle.setter(&v7);
    }
  }
}

uint64_t InCallControlsViewController.gridLayoutStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsViewController.gridLayoutStyle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  InCallControlsViewController.gridLayoutStyle.setter(v3);

  free(v2);
}

double InCallControlsViewController.topInset.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

double key path getter for InCallControlsViewController.topInset : InCallControlsViewController@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id InCallControlsViewController.topInset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return InCallControlsViewController.topInset.didset();
}

id InCallControlsViewController.topInset.didset()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if (*v1)
  {
    v3 = v1[3];
    v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    return [v3 setConstant_];
  }

  return result;
}

uint64_t InCallControlsViewController.topInset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.isExpanded.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsViewController.isExpanded : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void InCallControlsViewController.isExpanded.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  OUTLINED_FUNCTION_19_1();
  if (*(v0 + v1) == 1)
  {
    InCallControlsViewController.initializeCollectionViewIfNecessary()();
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = 0;
  }

  InCallControlsViewController.updateControlsVisibility(forExpandedState:)(v2);
}

id InCallControlsViewController.initializeCollectionViewIfNecessary()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  result = swift_beginAccess();
  if (!*&v0[v2])
  {
    v4 = objc_opt_self();
    [v4 begin];
    [v4 setDisableActions_];
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v5 = objc_allocWithZone(type metadata accessor for InCallControlsCollectionViewController(0));
    InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)();
    v6 = *&v0[v2];
    *&v0[v2] = v7;

    InCallControlsViewController.setUpCollectionViewConstraints()();
    v8 = &v0[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      (*(v9 + 24))(v0, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    result = [v0 view];
    if (result)
    {
      v11 = result;
      [result setNeedsLayout];

      result = [v1 view];
      if (result)
      {
        v12 = result;
        [result layoutIfNeeded];

        return [v4 commit];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void InCallControlsViewController.updateControlsVisibility(forExpandedState:)(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v8 = *(v3 + 24);
    v7 = *(v3 + 32);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = one-time initialization token for conversationKit;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v15 = v8;

    v35 = v9;
    v16 = v9;
    v34 = v10;
    v17 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BA940;
    if (a1)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v23 = specialized Array.count.getter(v7);
    if (v23)
    {
      v24 = v23;
      if (v23 < 1)
      {
        __break(1u);
      }

      else
      {
        v30 = v8;
        v31 = v6;
        v32 = v5;
        v33 = v4;

        v25 = 0;
        v26 = MEMORY[0x1E69E7D40];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1BFB22010](v25, v7);
          }

          else
          {
            v27 = *(v7 + 8 * v25 + 32);
          }

          v28 = v27;
          type metadata accessor for InCallControlButton();
          v29 = swift_dynamicCastClass();
          if (v29)
          {
            (*((*v26 & *v29) + 0x1E8))(v19);
          }

          else
          {
            [v28 setAlpha_];
          }

          ++v25;
          [v28 setUserInteractionEnabled_];
        }

        while (v24 != v25);
        outlined consume of InCallControlsViewController.ViewContent?(v33, v32, v31, v30, v7, v35, v34);
      }
    }

    else
    {
      outlined consume of InCallControlsViewController.ViewContent?(v4, v5, v6, v8, v7, v35, v34);
    }
  }
}

uint64_t InCallControlsViewController.isExpanded.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.audioIsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id InCallControlsViewController.audioIsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return InCallControlsViewController.updateMuteAudioButton()();
}

uint64_t key path getter for InCallControlsViewController.audioIsEnabled : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t InCallControlsViewController.audioIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id InCallControlsViewController.audioIsEnabled.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return InCallControlsViewController.updateMuteAudioButton()();
  }

  return result;
}

uint64_t InCallControlsViewController.videoIsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void InCallControlsViewController.videoIsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  InCallControlsViewController.updateMuteAudioButton()();
  InCallControlsViewController.updateFlipCameraButton()();
}

uint64_t key path getter for InCallControlsViewController.videoIsEnabled : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id InCallControlsViewController.updateMuteAudioButton()()
{
  OUTLINED_FUNCTION_238();
  v3 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  v5 = *v3;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  LOBYTE(v11) = *(v1 + v5);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if (*v9)
  {
    return [*(v9[2] + *v0) setSelected_];
  }

  return result;
}

void InCallControlsViewController.updateFlipCameraButton()()
{
  v1 = v0;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  swift_beginAccess();
  LOBYTE(v13) = *(v0 + v3);
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v7 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  swift_beginAccess();
  if (*v7)
  {
    v8 = *(v7[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton);
    if (*(v1 + v3) == 1)
    {
      v9 = one-time initialization token for shared;
      v10 = v8;
      if (v9 != -1)
      {
        v10 = swift_once();
      }

      v11 = ((*(*static Defaults.shared + 152))(v10) & 1) != 0 || *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8) != 0;
    }

    else
    {
      v12 = v8;
      v11 = 0;
    }

    [v8 setEnabled_];
  }
}

uint64_t InCallControlsViewController.videoIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlsViewController.videoIsEnabled.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    InCallControlsViewController.updateMuteAudioButton()();
    InCallControlsViewController.updateFlipCameraButton()();
  }
}

uint64_t InCallControlsViewController.isScreenSharing.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsViewController.isScreenSharing : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id InCallControlsViewController.updateScreenShareButton()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA940;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  LOBYTE(v8) = *(v0 + v2);
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();

  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if (*v6)
  {
    return [*(v6[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton) setSelected_];
  }

  return result;
}

uint64_t InCallControlsViewController.isScreenSharing.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.cinematicFramingIsAvailable.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void InCallControlsViewController.cinematicFramingIsAvailable.setter()
{
  OUTLINED_FUNCTION_34_28();
  InCallControlsViewController.cinematicFramingIsAvailable.setter();
}

{
  OUTLINED_FUNCTION_238();
  v2 = v1;
  v4 = *v3;
  OUTLINED_FUNCTION_6_0();
  *(v0 + v4) = v2;
  InCallControlsViewController.cinematicFramingIsAvailable.didset();
}

uint64_t key path getter for InCallControlsViewController.cinematicFramingIsAvailable : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void InCallControlsViewController.cinematicFramingIsAvailable.didset()
{
  InCallControlsViewController.cinematicFramingIsAvailable.didset();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v20 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[4] = v3;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed () -> ();
  v21[3] = v1;
  v19 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  v21[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v16, v10, v19);
  _Block_release(v19);

  (*(v6 + 8))(v10, v4);
  (*(v12 + 8))(v16, v20);
  OUTLINED_FUNCTION_30_0();
}

id InCallControlsViewController.updateCinematicFramingButton()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BAA20;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  swift_beginAccess();
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v7 = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 64) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  v8 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable;
  swift_beginAccess();
  v9 = String.init<A>(reflecting:)();
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 72) = v9;
  *(v1 + 80) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v11 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  result = swift_beginAccess();
  if (*v11)
  {
    result = [*(v11[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton) setEnabled_];
    if (*v11)
    {
      return [*(v11[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton) setSelected_];
    }
  }

  return result;
}

uint64_t InCallControlsViewController.cinematicFramingIsAvailable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlsViewController.cinematicFramingIsAvailable.modify()
{
  OUTLINED_FUNCTION_34_28();
  InCallControlsViewController.cinematicFramingIsAvailable.modify();
}

{
  OUTLINED_FUNCTION_238();
  v1 = v0;
  swift_endAccess();
  if ((v1 & 1) == 0)
  {
    InCallControlsViewController.cinematicFramingIsAvailable.didset();
  }
}

uint64_t InCallControlsViewController.cinematicFramingIsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsViewController.cinematicFramingIsEnabled : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void closure #1 in InCallControlsViewController.cinematicFramingIsAvailable.didset()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    InCallControlsViewController.updateCinematicFramingButton()();
  }
}

uint64_t InCallControlsViewController.cinematicFramingIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.effectsAreAvailable.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t InCallControlsViewController.effectsAreAvailable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t InCallControlsViewController.shouldShowLeaveButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t InCallControlsViewController.isExpanded.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_6_0();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t key path getter for InCallControlsViewController.shouldShowLeaveButton : InCallControlsViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t InCallControlsViewController.shouldShowLeaveButton.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.topInset.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *InCallControlsViewController.audioButton.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v2 = *(v1[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton);
  v3 = v2;
  return v2;
}

uint64_t InCallControlsViewController.delegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t InCallControlsViewController.participantDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t InCallControlsViewController.delegate.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_37(*a3);
  OUTLINED_FUNCTION_3_5();
  *(v3 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t InCallControlsViewController.participantsViewControllerDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path setter for InCallControlsViewController.delegate : InCallControlsViewController(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  OUTLINED_FUNCTION_3_5();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

void InCallControlsViewController.menuHostViewController.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController);
  OUTLINED_FUNCTION_3_5();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsViewController.menuHostViewController.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsViewController.menuHostViewController.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_21_38(a1);
  if (v3)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v1);
}

uint64_t InCallControlsViewController.description.getter()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001BC505240;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(inited + 72) = type metadata accessor for Participant(0);
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  OUTLINED_FUNCTION_3_114();
  _s15ConversationKit11ParticipantVWOcTm_9(&v0[v3], v4, v5);
  *(inited + 80) = 1701080941;
  *(inited + 88) = 0xE400000000000000;
  v6 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(inited + 96) = v0[v6];
  *(inited + 120) = &type metadata for InCallControlsMode;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x80000001BC50B8F0;
  v7 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v9 = type metadata accessor for InCallControlsCollectionViewController(0);
  }

  else
  {
    v9 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v8;
  *(inited + 168) = v9;
  v13[3] = ObjectType;
  v13[0] = v0;
  v10 = v8;
  v11 = v0;
  return String.init(namedPropertyValues:for:)(inited, v13);
}

id InCallControlsViewController.init(localParticipant:remoteParticipants:mode:gridLayoutStyle:representedLegacyCallIdentifier:isLocalMemberAuthorizedToChangeGroupMembership:isLinkSharingSupported:menuHostViewController:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  swift_getObjectType();

  v16 = (v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  *v17 = 0;
  v17[1] = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController) = 0;
  v18 = v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset) = 0x4043800000000000;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled) = 1;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing) = 0;
  v19 = *a4;
  v20 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  v21 = static Defaults.shared;
  *(v11 + v20) = (*(*static Defaults.shared + 200))() & 1;
  OUTLINED_FUNCTION_36_26(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate);
  OUTLINED_FUNCTION_36_26(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate);
  OUTLINED_FUNCTION_36_26(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate);
  v22 = v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_114();
  _s15ConversationKit11ParticipantVWOcTm_9(a1, v11 + v23, v24);
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_controlsButtonRowCount) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle) = v19;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode) = a3;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton) = 0;
  *v17 = a5;
  v17[1] = a6;

  LOBYTE(v21) = (*(*v21 + 152))(v25);

  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled) = v21 & 1 | (a6 != 0);
  OUTLINED_FUNCTION_3_5();
  *(v22 + 8) = a10;
  swift_unknownObjectWeakAssign();
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable) = 0;
  OUTLINED_FUNCTION_3_0();
  v28 = objc_msgSendSuper2(v26, v27);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 defaultCenter];
  [v31 addObserver:v30 selector:sel_handleLegacyCallStatusDidChangeNotification_ name:*MEMORY[0x1E69D8E58] object:0];

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  OUTLINED_FUNCTION_13_56();
  _s15ConversationKit11ParticipantVWOhTm_11(a1, v32);
  return v30;
}

id InCallControlsViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void InCallControlsViewController.init(coder:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController) = 0;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset) = 0x4043800000000000;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing) = 0;
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    a1 = swift_once();
  }

  *(v1 + v5) = (*(*static Defaults.shared + 200))(a1) & 1;
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsViewController.embedEffectsBrowserViewController(_:)(UIViewController *a1)
{
  [v1 loadViewIfNeeded];
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 5);
    v19 = v5;
    v20 = *(v3 + 6);
    v7 = *(v3 + 3);
    v6 = *(v3 + 4);
    v10 = v3 + 8;
    v9 = *(v3 + 1);
    v8 = *(v10 + 1);
    v11 = v20;
    v12 = v4;
    v13 = v9;
    v14 = v8;
    v15 = v7;

    v16 = v5;
    [v1 addChildViewController_];
    v17 = InCallControlsViewController.contentView.getter();
    v18 = [(UIViewController *)a1 view];
    [v17 insertSubview:v18 below:v14];

    [(UIViewController *)a1 didMoveToParentViewController:v1];
    outlined consume of InCallControlsViewController.ViewContent?(v4, v9, v8, v7, v6, v19, v20);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
  }
}

void InCallControlsViewController.setUpCollectionViewConstraints()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator];
  if (!v4)
  {
    return;
  }

  v5 = &v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    return;
  }

  v7 = v3;
  v8 = v4;
  v9 = v6;
  v10 = [v1 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v69[0] = v7;
  MEMORY[0x1EEE9AC00](v69[0]);
  v64 = v69;
  v13 = v12;
  v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, v11);

  v67 = v8;
  if (v14)
  {
    v15 = [v1 view];
    if (!v15)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = v15;
    v17 = [v15 subviews];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = [v13 view];

    if (!v19)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v69[0] = v19;
    MEMORY[0x1EEE9AC00](v20);
    v64 = v69;
    v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, v18);

    if (v21)
    {

      v8 = v67;
    }

    else
    {
      v26 = [v13 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];

      if (!v26)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      [v26 setTranslatesAutoresizingMaskIntoConstraints_];

      v27 = InCallControlsViewController.contentView.getter();
      v28 = [v13 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];

      v8 = v67;
      if (!v28)
      {
LABEL_39:
        __break(1u);
        return;
      }

      [v27 addSubview_];
    }
  }

  else
  {

    [v1 addChildViewController_];
    v22 = [v13 view];

    if (!v22)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    [v22 setTranslatesAutoresizingMaskIntoConstraints_];

    v23 = InCallControlsViewController.contentView.getter();
    v24 = [v13 view];

    if (!v24)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v23 addSubview_];

    [v13 didMoveToParentViewController_];
    v25 = &v13[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
    swift_beginAccess();
    *(v25 + 1) = &protocol witness table for InCallControlsViewController;
    swift_unknownObjectWeakAssign();
  }

  v29 = [v13 view];

  if (!v29)
  {
    __break(1u);
    goto LABEL_31;
  }

  v65 = v5;
  v30 = [v29 bottomAnchor];

  v68 = v9;
  v31 = [v9 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-0.0];

  LODWORD(v33) = 1132068864;
  [v32 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BA7F0;
  v35 = [v13 view];

  if (!v35)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v66 = v32;
  v36 = [v35 topAnchor];

  v37 = [v8 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v34 + 32) = v38;
  v39 = [v13 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];

  if (!v39)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = [v39 leadingAnchor];

  v41 = v68;
  v42 = [v68 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:0.0];

  *(v34 + 40) = v43;
  v44 = [v13 view];

  if (!v44)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v45 = objc_opt_self();
  v46 = [v44 trailingAnchor];

  v47 = [v41 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-0.0];

  v49 = v66;
  *(v34 + 48) = v48;
  *(v34 + 56) = v49;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v50 = v49;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints_];

  v52 = [v13 view];
  v53 = v67;
  if (v52)
  {
    if (*&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_controlsButtonRowCount] == 1)
    {
      v54 = v65;
      swift_beginAccess();
      if (*v54)
      {
        v55 = v52;
        MEMORY[0x1BFB20CC0]();
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((v54[4] & 0xFFFFFFFFFFFFFF8) + 0x10));
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      swift_endAccess();
      v56 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
      swift_beginAccess();
      InCallControlsViewController.updateControlsVisibility(forExpandedState:)(v1[v56]);
    }
  }

  v57 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8];
  if (v57)
  {
    v58 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier];
    v59 = objc_opt_self();

    v60 = [v59 sharedInstance];
    v61 = MEMORY[0x1BFB209B0](v58, v57);

    v62 = [v60 callWithUniqueProxyIdentifier_];

    if (v62)
    {
      InCallControlsViewController.updateToRepresentLegacyCall(_:)();
    }
  }
}

void InCallControlsViewController.updateToRepresentLegacyCall(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v108 - v8;
  v117 = type metadata accessor for Participant.CountdownInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v108 - v15;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v115 = v17;
  v116 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v123 = v19 - v18;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v122 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v108 - v25;
  v27 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v119 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v108 - v33;
  *&v36 = MEMORY[0x1EEE9AC00](v35).n128_u64[0];
  v118 = &v108 - v37;
  if ([v2 isConversation])
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

  v109 = v6;
  v110 = v29;
  v111 = v12;
  v112 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  v113 = v0;
  v39 = *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  v38 = *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8);

  v120 = v2;
  v40 = [v2 uniqueProxyIdentifier];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v38)
  {
    if (v39 == v41 && v38 == v43)
    {

      v2 = v120;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v120;
      if ((v45 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v46 = v113;
    v47 = InCallControlsViewController.participants.getter();
    specialized Collection.first.getter(v47, v26);

    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      v34 = v26;
      goto LABEL_26;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {

    v2 = v120;
  }

LABEL_15:
  v48 = [v2 handle];
  if (!v48)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_22:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1BC4BA940;
      v124[0] = v2;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      v85 = v2;
      v86 = String.init<A>(reflecting:)();
      v88 = v87;
      *(v84 + 56) = MEMORY[0x1E69E6158];
      *(v84 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v84 + 32) = v86;
      *(v84 + 40) = v88;
      os_log(_:dso:log:type:_:)();

      goto LABEL_32;
    }

LABEL_33:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_22;
  }

  v49 = v48;
  Date.init()();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v50 = v49;
  v108 = static Colors.ParticipantGradients.gradient(for:)(v50);
  v51 = v117;
  __swift_storeEnumTagSinglePayload(v121, 1, 1, v117);
  v52 = type metadata accessor for ParticipantContactDetailsCache();
  v53 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
  v54 = v53;
  if (one-time initialization token for queue != -1)
  {
    v53 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v53);
  v55 = v120;
  *(&v108 - 4) = v52;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v54;
  OS_dispatch_queue.sync<A>(execute:)();

  v56 = v124[0];
  v57 = &v34[v27[7]];
  *(v57 + 4) = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  v58 = &v34[v27[9]];
  v34[v27[10]] = 0;
  *&v34[v27[11]] = MEMORY[0x1E69E7CD0];
  *&v34[v27[12]] = 0;
  outlined init with take of Participant.State(v122, v34, type metadata accessor for Participant.State);
  (*(v115 + 32))(&v34[v27[5]], v123, v116);
  v59 = &v34[v27[6]];
  *v59 = 65792;
  v59[4] = 1;
  outlined consume of Participant.RemoteIdentifiers?(*v57);
  *v57 = v49;
  *(v57 + 8) = xmmword_1BC4BB7D0;
  *(v57 + 3) = 0;
  *(v57 + 4) = 0;
  *&v34[v27[8]] = v108;
  *v58 = 0;
  *(v58 + 1) = 0;
  v34[v27[15]] = 1;
  v34[v27[13]] = 0;
  v60 = v121;
  if (__swift_getEnumTagSinglePayload(v121, 1, v51) == 1)
  {
    v61 = v51;
    type metadata accessor for Date();
    v62 = v114;
    OUTLINED_FUNCTION_17_49();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v67 = v109;
    OUTLINED_FUNCTION_17_49();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    v72 = v111;
    OUTLINED_FUNCTION_17_49();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    v77 = *(v61 + 20);
    OUTLINED_FUNCTION_17_49();
    v78 = v121;
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    outlined assign with take of Date?(v62, v72);
    outlined assign with take of Date?(v67, v72 + v77);
    *(v72 + *(v61 + 24)) = 0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v61);
    v46 = v113;
    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_49();
    v72 = v111;
    outlined init with take of Participant.State(v60, v111, v89);
    v46 = v113;
  }

  OUTLINED_FUNCTION_14_49();
  outlined init with take of Participant.State(v72, &v34[v90], v91);
  *&v34[v27[16]] = v56;
  v2 = v120;
LABEL_26:
  v92 = v34;
  v93 = v118;
  outlined init with take of Participant.State(v92, v118, type metadata accessor for Participant);
  v94 = [v2 status];
  v95 = v119;
  if (v94 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v96 = Dictionary.init(dictionaryLiteral:)();
    LOBYTE(v126) = 1;
    v128 = v96;
    v129 = 1;
    v130 = 0;
    v131 = 0;
    v132 = 1;
    v133 = 0;
    v134 = 0u;
    v135 = 0u;
    v136 = 1;
    v137 = 0;
    memset(v124, 0, 24);
    v124[3] = 1;
    bzero(&v125, 0xB1uLL);
    Participant.copresenceInfo.getter(v127);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v127, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    InCallControlsViewController.mode.setter(0);
    InCallControlsViewController.videoIsEnabled.setter([v2 isSendingVideo]);
  }

  else
  {
    Participant.asWaiting()();
    InCallControlsViewController.mode.setter(32);
  }

  v97 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  OUTLINED_FUNCTION_3_5();
  *(v46 + v97) = 1;
  InCallControlsViewController.updateJoinLeaveButton()();
  v98 = [v2 uniqueProxyIdentifier];
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  v102 = v112;
  *v112 = v99;
  v102[1] = v101;

  v103 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  v104 = *(v46 + v103);
  if (v104)
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v105 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_9(v95, v106 + v105, type metadata accessor for Participant);
    v126 = 513;
    v107 = v104;
    InCallControlsCollectionViewController.update(with:updateReason:)();
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    _s15ConversationKit11ParticipantVWOhTm_11(v95, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_11(v93, type metadata accessor for Participant);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_11(v95, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_11(v93, type metadata accessor for Participant);
    swift_endAccess();
  }

LABEL_32:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsViewController.loadView()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v3 = one-time initialization token for background;
    v4 = v2;
    v5 = v4;
    if (v3 != -1)
    {
      swift_once();
      v4 = v5;
    }

    [v4 setBackgroundColor_];
  }

  else
  {
    if (one-time initialization token for backgroundBlurEffect != -1)
    {
      swift_once();
    }

    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  }

  [v1 setView_];
}

Swift::Void __swiftcall InCallControlsViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v144.receiver = v0;
  v144.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v144, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 _setCornerRadius_];

    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setClipsToBounds_];

      v6 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
      v7 = InCallControlsViewController.contentView.getter();
      [v7 addLayoutGuide_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BC370;
      v9 = [v6 leadingAnchor];
      v10 = InCallControlsViewController.contentView.getter();
      v11 = [v10 leadingAnchor];

      v12 = OUTLINED_FUNCTION_35_19();
      *(inited + 32) = v12;
      v13 = [v6 trailingAnchor];
      v14 = InCallControlsViewController.contentView.getter();
      v15 = [v14 trailingAnchor];

      v16 = OUTLINED_FUNCTION_35_19();
      *(inited + 40) = v16;
      v142 = v6;
      v17 = [v6 topAnchor];
      v18 = InCallControlsViewController.contentView.getter();
      v19 = [v18 topAnchor];

      v20 = OUTLINED_FUNCTION_35_19();
      *(inited + 48) = v20;
      specialized Array.append<A>(contentsOf:)(inited);
      v21 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV6DrawerO_Tt0g5(0);
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
      [v22 setImage_];
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_3_15();
        swift_once();
      }

      OUTLINED_FUNCTION_38_21();
      v138 = v22;
      if ((*(v23 + 336))())
      {
        if (one-time initialization token for flatHotdog != -1)
        {
          swift_once();
        }

        [v22 setTintColor_];
        v24 = v22;
      }

      else
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVibrancyEffect);
        v25 = static UIVibrancyEffect.inCallControlsEffect.getter();
        v26 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

        v27 = v22;
        v24 = v26;
        [v24 bounds];
        [v27 setFrame_];
        [v27 setAutoresizingMask_];

        v28 = [objc_opt_self() whiteColor];
        [v27 setTintColor_];

        v29 = [v24 contentView];
        [v29 addSubview_];
      }

      v30 = v24;
      [v30 setTranslatesAutoresizingMaskIntoConstraints_];
      v31 = InCallControlsViewController.contentView.getter();
      [v31 addSubview_];

      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_1BC4BA7F0;
      v33 = [v30 widthAnchor];
      [v21 size];
      v34 = [v33 constraintEqualToConstant_];

      *(v32 + 32) = v34;
      v35 = [v30 heightAnchor];
      v139 = v21;
      [v21 size];
      v37 = [v35 constraintEqualToConstant_];

      *(v32 + 40) = v37;
      v38 = [v30 centerXAnchor];
      v39 = [v142 centerXAnchor];
      v40 = OUTLINED_FUNCTION_0_122();
      v42 = [v40 v41];

      *(v32 + 48) = v42;
      v141 = v30;
      v43 = [v30 topAnchor];
      v44 = [v142 topAnchor];
      v45 = OUTLINED_FUNCTION_0_122();
      v47 = [v45 v46];

      *(v32 + 56) = v47;
      specialized Array.append<A>(contentsOf:)(v32);
      OUTLINED_FUNCTION_38_21();
      v49 = (*(v48 + 208))();
      OUTLINED_FUNCTION_38_21();
      v51 = (*(v50 + 200))();
      OUTLINED_FUNCTION_38_21();
      v53 = (*(v52 + 152))();
      v54 = (v49 & 1) == 0;
      if (*&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8])
      {
        v55 = &off_1E7FE9000;
        if ((v49 | v51))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (((v49 | v51) & 1) == 0)
        {
          v54 = 3;
        }

        v55 = &off_1E7FE9000;
        if ((v49 | v51) & 1 | ((v53 & 1) == 0))
        {
LABEL_13:
          v56 = objc_allocWithZone(type metadata accessor for InCallControlsView());
          v57 = InCallControlsView.init(frame:capabilities:)(v54);
          v58 = &v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource];
          OUTLINED_FUNCTION_3_5();
          *(v58 + 1) = &protocol witness table for InCallControlsViewController;
          swift_unknownObjectWeakAssign();
          OUTLINED_FUNCTION_16_51(*&v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton], v59, v60, sel_didTapMuteButton_);
          OUTLINED_FUNCTION_16_51(*&v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton], v61, v62, sel_didTapFlipCameraButton_);
          OUTLINED_FUNCTION_16_51(*&v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton], v63, v64, sel_didTapJoinLeaveButton_);
          OUTLINED_FUNCTION_16_51(*&v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton], v65, v66, sel_didTapToggleCameraButton_);
          OUTLINED_FUNCTION_16_51(*&v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton], v67, v68, sel_didTapScreenShareButton_);
          OUTLINED_FUNCTION_16_51(*&v57[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton], v69, v70, sel_didTapToggleCinematicFramingButton_);
          v71 = v57;
          [v71 setTranslatesAutoresizingMaskIntoConstraints_];
          v72 = InCallControlsViewController.contentView.getter();
          [v72 addSubview_];

          v73 = [v71 topAnchor];
          v74 = [v142 topAnchor];
          v75 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          v76 = [v73 &selRef_uniqueProxyIdentifier + 6];

          v77 = swift_initStackObject();
          *(v77 + 16) = xmmword_1BC4BC370;
          *(v77 + 32) = v76;
          v140 = v76;
          v78 = [v71 v55[478]];
          v79 = [v142 v55[478]];
          v80 = [v78 constraintEqualToAnchor_];

          *(v77 + 40) = v80;
          v81 = [v71 trailingAnchor];
          v82 = [v142 trailingAnchor];
          v83 = OUTLINED_FUNCTION_26_1();
          v85 = [v83 v84];

          *(v77 + 48) = v85;
          specialized Array.append<A>(contentsOf:)(v77);
          if (one-time initialization token for separatorStyle != -1)
          {
            swift_once();
          }

          v86 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          [v86 setTranslatesAutoresizingMaskIntoConstraints_];
          v87 = [v86 contentView];
          v88 = [objc_opt_self() whiteColor];
          v89 = OUTLINED_FUNCTION_26_1();
          [v89 v90];

          v91 = InCallControlsViewController.contentView.getter();
          [v91 addSubview_];

          v92 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator];
          *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator] = v86;
          v93 = v86;

          v94 = swift_initStackObject();
          *(v94 + 16) = xmmword_1BC4BA920;
          v95 = [v93 topAnchor];
          v96 = [v71 bottomAnchor];

          v97 = OUTLINED_FUNCTION_26_1();
          v99 = [v97 v98];

          LODWORD(v100) = 1144750080;
          [v99 setPriority_];
          *(v94 + 32) = v99;
          v101 = [v93 topAnchor];
          v102 = [v142 topAnchor];
          v103 = OUTLINED_FUNCTION_26_1();
          v105 = [v103 v104];

          LODWORD(v106) = 1148846080;
          [v105 setPriority_];
          *(v94 + 40) = v105;
          v107 = [v93 leadingAnchor];
          v108 = [v142 leadingAnchor];
          v109 = OUTLINED_FUNCTION_26_1();
          v111 = [v109 v110];

          *(v94 + 48) = v111;
          v112 = [v93 trailingAnchor];
          v113 = [v142 trailingAnchor];
          v114 = OUTLINED_FUNCTION_26_1();
          v116 = [v114 v115];

          *(v94 + 56) = v116;
          v117 = [v93 heightAnchor];
          v118 = [v117 constraintEqualToConstant_];

          *(v94 + 64) = v118;
          specialized Array.append<A>(contentsOf:)(v94);
          v119 = objc_opt_self();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v119 activateConstraints_];

          v121 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow;
          v122 = *(*&v71[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow] + 16);
          *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_controlsButtonRowCount] = v122;
          v137 = v71;
          if (v122 >= 2)
          {

            v123 = *&v71[v121];
            if (*(v123 + 16) < 2uLL)
            {
              __break(1u);
            }

            else
            {
              v124 = *(v123 + 40);
              if (!(v124 >> 62))
              {
                swift_bridgeObjectRetain_n();
                dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);

LABEL_20:
                v125 = &v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
                OUTLINED_FUNCTION_3_5();
                v126 = *(v125 + 1);
                v127 = *(v125 + 2);
                v128 = *(v125 + 3);
                v130 = *(v125 + 4);
                v129 = *(v125 + 5);
                v135 = *(v125 + 6);
                v136 = *v125;
                *v125 = v142;
                *(v125 + 1) = v141;
                *(v125 + 2) = v137;
                *(v125 + 3) = v140;
                *(v125 + 5) = 0;
                *(v125 + 6) = 0;
                *(v125 + 4) = v124;
                v143 = v137;
                v131 = v140;
                v132 = v142;
                outlined consume of InCallControlsViewController.ViewContent?(v136, v126, v127, v128, v130, v129, v135);
                InCallControlsViewController.updateJoinLeaveButton()();
                InCallControlsViewController.updateMuteAudioButton()();
                InCallControlsViewController.updateMuteAudioButton()();
                InCallControlsViewController.updateScreenShareButton()();
                InCallControlsViewController.updateFlipCameraButton()();
                InCallControlsViewController.updateCinematicFramingButton()();
                v133 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
                OUTLINED_FUNCTION_3_0();
                swift_beginAccess();
                InCallControlsViewController.updateControlsVisibility(forExpandedState:)(v1[v133]);

                OUTLINED_FUNCTION_30_0();
                return;
              }
            }

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);

            v134 = _bridgeCocoaArray<A>(_:)();

            v124 = v134;
            goto LABEL_20;
          }

          v124 = swift_allocObject();
          *(v124 + 16) = xmmword_1BC4BAC30;
          *(v124 + 32) = v93;
          goto LABEL_20;
        }
      }

      v54 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall InCallControlsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsUpdateConstraints];

    InCallControlsViewController.setUpCollectionViewConstraints()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall InCallControlsViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_247();
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v6 willMoveToParentViewController:?];
  if (v1)
  {
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 traitCollectionWithUserInterfaceStyle_];
    [v4 setOverrideTraitCollection:v5 forChildViewController:v2];
  }
}

Swift::Void __swiftcall InCallControlsViewController.didMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_247();
  v71.receiver = v2;
  v71.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v71 didMoveToParentViewController:?];
  if (v1)
  {
    v3 = [v1 viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = &v2[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v6 = *v5;
      if (*v5)
      {
        v70 = MEMORY[0x1E69E7CC0];
        v7 = objc_allocWithZone(MEMORY[0x1E69DCC20]);
        v69 = v6;
        v8 = [v7 init];
        [v4 addLayoutGuide_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1BC4BA930;
        v10 = [v8 leadingAnchor];
        v11 = [v4 leadingAnchor];
        v12 = OUTLINED_FUNCTION_2_105();
        v14 = [v12 v13];

        *(v9 + 32) = v14;
        v15 = [v8 trailingAnchor];
        v16 = [v4 trailingAnchor];
        v17 = OUTLINED_FUNCTION_2_105();
        v19 = [v17 v18];

        *(v9 + 40) = v19;
        specialized Array.append<A>(contentsOf:)(v9);
        v20 = objc_opt_self();
        v21 = [v20 currentDevice];
        v22 = [v21 userInterfaceIdiom];

        if (v22 == 1 || (v23 = [v20 currentDevice], v24 = objc_msgSend(v23, sel_userInterfaceIdiom), v23, v24 == 5))
        {
          v25 = [v8 heightAnchor];
          v26 = [v4 widthAnchor];
          Layout.MultiwayFaceTime.init()(v72);
          v27 = OUTLINED_FUNCTION_2_105();
          v29 = [v27 v28];

          v30 = [v8 topAnchor];
          v31 = [v4 safeAreaLayoutGuide];
          v32 = [v31 topAnchor];

          Layout.MultiwayFaceTime.init()(v73);
          v33 = OUTLINED_FUNCTION_0_122();
          v35 = [v33 v34];

          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1BC4BAC30;
          v37 = [v8 bottomAnchor];
          v38 = [v4 safeAreaLayoutGuide];
          v39 = [v38 bottomAnchor];

          Layout.MultiwayFaceTime.init()(v74);
          v40 = OUTLINED_FUNCTION_0_122();
          v42 = [v40 v41];
        }

        else
        {
          v43 = [v8 topAnchor];
          v44 = [v4 safeAreaLayoutGuide];
          v45 = [v44 topAnchor];

          Layout.MultiwayFaceTime.init()(v73);
          v46 = OUTLINED_FUNCTION_2_105();
          v29 = [v46 v47];

          v48 = [v8 topAnchor];
          v49 = [v4 safeAreaLayoutGuide];
          v50 = [v49 topAnchor];

          Layout.MultiwayFaceTime.init()(v74);
          v51 = OUTLINED_FUNCTION_0_122();
          v35 = [v51 v52];

          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1BC4BAC30;
          v37 = [v8 bottomAnchor];
          v39 = [v4 bottomAnchor];
          v53 = OUTLINED_FUNCTION_0_122();
          v42 = [v53 v54];
        }

        v55 = v42;

        *(v36 + 32) = v55;
        specialized Array.append<A>(contentsOf:)(v36);
        [v4 bounds];
        if (v57 >= v56)
        {
          v58 = v29;
        }

        else
        {
          v58 = v35;
        }

        v59 = v58;
        MEMORY[0x1BFB20CC0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_beginAccess();
        if (*v5)
        {
          v60 = *(v5 + 5);
          *(v5 + 5) = v35;
          v61 = v35;

          if (*v5)
          {
            v62 = *(v5 + 6);
            *(v5 + 6) = v29;
            v63 = v29;
          }
        }

        swift_endAccess();
        v64 = [v69 heightAnchor];
        v65 = [v8 heightAnchor];
        v66 = [v64 constraintEqualToAnchor_];

        MEMORY[0x1BFB20CC0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v67 = objc_opt_self();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v67 activateConstraints_];
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  OUTLINED_FUNCTION_247();
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_);
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    [*(v3 + v4) reloadData];
  }
}

Swift::Void __swiftcall InCallControlsViewController.updateViewConstraints()()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewIfLoaded];

    if (v4)
    {
      v5 = &v0[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (*v5)
      {
        v6 = *(v5 + 6);
        if (v6)
        {
          v7 = *(v5 + 5);
          if (v7)
          {
            v8 = v6;
            v9 = v7;
            [v4 bounds];
            [v8 setActive_];
            [v4 bounds];
            [v9 setActive_];

            v4 = v9;
          }
        }
      }
    }
  }

  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_updateViewConstraints);
}

Swift::Void __swiftcall InCallControlsViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  InCallControlsViewController.updateViewConstraints()();
}

uint64_t InCallControlsViewController.handle(_:from:completion:)(unint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(v9 + 1);
    if (CNKCommand.isAvailableWhileLocked.getter(a1))
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 16))(v4, a1, a2, ObjectType, v12);
      if (a3)
      {
        a3(1);
      }
    }

    else
    {
      type metadata accessor for SpringBoardUtilities();
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a3;
      v14[4] = a4;
      v14[5] = v11;
      v14[6] = v12;
      v14[7] = v4;
      v14[8] = a2;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
      v15 = a2;
      v16 = v4;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
      v21 = v16;
      v17 = v15;
      swift_unknownObjectRetain();
      if (static SpringBoardUtilities.checkSpringBoardState(for:)())
      {
        aBlock[4] = partial apply for closure #1 in InCallControlsViewController.handle(_:from:completion:);
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        aBlock[3] = &block_descriptor_62;
        v18 = _Block_copy(aBlock);

        SBSRequestPasscodeUnlockUI();
        _Block_release(v18);
        v19 = v21;
      }

      else
      {
        v20 = swift_getObjectType();
        v19 = v21;
        (*(v12 + 16))(v21, a1, a2, v20, v12);
        if (a3)
        {
          a3(1);
        }
      }

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in InCallControlsViewController.handle(_:from:completion:)(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    result = (*(a6 + 16))(a7, a2, a8, ObjectType, a6);
    if (!a3)
    {
      return result;
    }

    v15 = 1;
    return a3(v15);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BA940;
  type metadata accessor for CNKCommand(0);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a3)
  {
    v15 = 0;
    return a3(v15);
  }

  return result;
}

uint64_t InCallControlsViewController.didTapJoinLeaveButton(_:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v8 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  result = swift_beginAccess();
  if (*(v1 + v8) == 1)
  {
LABEL_4:
    v10 = 2;
  }

  else
  {
    v11 = *(v1 + v4);
    switch(v11 >> 5)
    {
      case 1u:
        if ((v11 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      case 2u:
        if (v11)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      case 3u:
        if (v11 != 96)
        {
          return result;
        }

LABEL_13:
        v10 = 3;
        break;
      case 4u:
      case 5u:
      case 6u:
        return result;
      default:
        goto LABEL_4;
    }
  }

  return InCallControlsViewController.handle(_:from:completion:)(v10, a1, 0, 0);
}

uint64_t InCallControlsViewController.didTapFlipCameraButton(_:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  OUTLINED_FUNCTION_3_0();

  return InCallControlsViewController.handle(_:from:completion:)(v0, v1, v2, v3);
}

void InCallControlsViewController.updateControls(forLocalParticipantState:broadcastingState:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  v27 = xmmword_1BC4BAA20;
  *(v11 + 16) = xmmword_1BC4BAA20;
  _s15ConversationKit11ParticipantVWOcTm_9(a1, v10, type metadata accessor for Participant.State);
  v12 = type metadata accessor for Participant.State(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  specialized >> prefix<A>(_:)();
  v14 = v13;
  v16 = v15;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantV5StateOSgMd);
  v17 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v18;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v29 = a2;
  v30 = a3;
  LOBYTE(v16) = v28;
  v31 = v28;
  v19 = String.init<A>(reflecting:)();
  *(v11 + 96) = v17;
  *(v11 + 104) = v18;
  *(v11 + 72) = v19;
  *(v11 + 80) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  LOBYTE(v29) = (a2 & 1) == 0;
  v22 = String.init<A>(reflecting:)();
  *(v21 + 56) = v17;
  *(v21 + 64) = v18;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  LOBYTE(v29) = (v16 & 0x80) != 0;
  v24 = String.init<A>(reflecting:)();
  *(v21 + 96) = v17;
  *(v21 + 104) = v18;
  *(v21 + 72) = v24;
  *(v21 + 80) = v25;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v26 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  swift_beginAccess();
  *(v4 + v26) = (a2 & 1) == 0;
  InCallControlsViewController.updateMuteAudioButton()();
  InCallControlsViewController.videoIsEnabled.setter((v16 & 0x80) != 0);
}

void InCallControlsViewController.updateAudioRouteButton(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA940;
  if (v3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute);
    v12 = v3;
    v13 = String.init<A>(reflecting:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();

  v16 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v16)
  {
    goto LABEL_21;
  }

  v17 = *(v16[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton);
  v18 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  if (v3 && (v19 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v49 = v4;
    v50 = v1;
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v51 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style;
    v22 = *(v17 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
    v23 = *(v20 + 40);
    v24 = v3;
    v25 = v17;
    v52 = v24;
    v26 = v23(v24, v22, ObjectType, v20);
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = MEMORY[0x1E69E7D40];
      v28 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x150);
      v29 = v26;
      v28(v26);
      v30 = TURoute.name(for:)(*(v17 + v51));
      (*((*v27 & *v25) + 0x1B8))(v30);

      v17 = v29;
LABEL_20:

LABEL_21:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v4 = v49;
    v1 = v50;
    v18 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  }

  else
  {
    v31 = v17;
  }

  UUID.init()();
  UUID.uuidString.getter();
  (*(v6 + 8))(v10, v4);
  v32 = objc_allocWithZone(MEMORY[0x1E69D8C78]);
  v25 = @nonobjc TUMutableRoute.init(uniqueIdentifier:name:)();
  [v25 setSpeaker_];
  v33 = v1 + v18[152];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v33 + 8);
    v35 = swift_getObjectType();
    v36 = (*(v34 + 40))(v25, *(v17 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style), v35, v34);
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0;
  }

  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v17) + 0x150))(v36);
  v38 = *(v17 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
  v39 = v38 >= 4;
  v40 = v38 - 4;
  if (!v39)
  {
    v41 = "DRAWER_PILL_AUDIO_ROUTE_BUTTON";
    v42 = [objc_opt_self() conversationKit];
LABEL_19:
    v43 = v42;
    v53._object = 0xE000000000000000;
    v44.value._countAndFlagsBits = 0x61737265766E6F43;
    v44.value._object = 0xEF74694B6E6F6974;
    v45._object = (v41 | 0x8000000000000000);
    v45._countAndFlagsBits = 0xD00000000000001ELL;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v53._countAndFlagsBits = 0;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v44, v43, v46, v53);

    (*((*v37 & *v17) + 0x1B8))(v47._countAndFlagsBits, v47._object);
    goto LABEL_20;
  }

  if (v40 < 2)
  {
    v41 = "Unknown button style: ";
    v42 = [objc_opt_self() conversationKit];
    goto LABEL_19;
  }

  _StringGuts.grow(_:)(24);

  type metadata accessor for CNKInCallControlButtonStyle(0);
  v48 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v48);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t TURoute.name(for:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    if (a1 - 4 > 1)
    {
      _StringGuts.grow(_:)(35);

      type metadata accessor for CNKInCallControlButtonStyle(0);
      v8 = String.init<A>(reflecting:)();
      MEMORY[0x1BFB20B10](v8);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v6 = [v1 name];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }
  }

  else
  {
    v2 = [v1 deviceType];
    v3 = [v1 name];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v2)
    {
      lazy protocol witness table accessor for type String and conformance String();
      v4 = StringProtocol.localizedLowercase.getter();
    }

    return v4;
  }

  return result;
}

void *InCallControlsViewController.accessibilityHotdog()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  v3 = v2;
  return v2;
}

void *InCallControlsViewController.accessibilityJoinLeaveButton()(void *a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v3 = *(v1[2] + *a1);
  v4 = v3;
  return v3;
}

void *InCallControlsViewController.accessibilityCameraLabel()(void *a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v3 = *(*(v1[2] + *a1) + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

id InCallControlsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InCallControlsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void InCallControlsViewController.handleLegacyCallStatusDidChangeNotification(_:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA940;
  Notification.object.getter();
  v1 = specialized >> prefix<A>(_:)(v11);
  v3 = v2;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd);
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = lazy protocol witness table accessor for type String and conformance String();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();

  Notification.object.getter();
  if (v12)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (swift_dynamicCast())
    {
      InCallControlsViewController.updateToRepresentLegacyCall(_:)();

      return;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd);
  }

  OUTLINED_FUNCTION_37_22();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  Notification.object.getter();
  v7 = specialized >> prefix<A>(_:)(v11);
  v9 = v8;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd);
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
}

void InCallControlsViewController.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v18 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = InCallControlsViewController.participants.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v17 = *(v1 + 72);
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_9(v15, v5, type metadata accessor for Participant);
      (*(v8 + 16))(v12, v5 + *(v18 + 20), v6);
      _s15ConversationKit11ParticipantVWOhTm_11(v5, type metadata accessor for Participant);
      v16 = *(v19 + 16);
      if (v16 >= *(v19 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v19 + 16) = v16 + 1;
      (*(v8 + 32))(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v12, v6);
      v15 += v17;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsViewController.participantCount.getter()
{
  v0 = *(InCallControlsViewController.participants.getter() + 16);

  return v0;
}

void InCallControlsViewController.update(participant:broadcastingState:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Participant.State(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for Participant(0);
  if (*(v8 + *(v18 + 28)))
  {
    v19 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v20 = *(v0 + v19);
    if (v20)
    {
      v21 = v20;
      InCallControlsCollectionViewController.update(participant:broadcastingState:)();
    }
  }

  else
  {
    v22 = v18;
    v32 = v4;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_3_114();
    _s15ConversationKit11ParticipantVWOcTm_9(v8, v17, v24);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
    specialized >> prefix<A>(_:)();
    v26 = v25;
    v28 = v27;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit11ParticipantVSgMd);
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v29 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_localParticipant;
    swift_beginAccess();
    outlined assign with copy of Participant(v8, v0 + v29);
    swift_endAccess();
    v30 = (v6 & 0xFFFFFFFFFFFFFCFELL) != 0x7FFFFFCFELL || v2 >= 2u;
    v31 = v32;
    if (v30)
    {
      _s15ConversationKit11ParticipantVWOcTm_9(v0 + v29, v13, type metadata accessor for Participant.State);
      InCallControlsViewController.updateControls(forLocalParticipantState:broadcastingState:)(v13, v6, v31, v2);
      _s15ConversationKit11ParticipantVWOhTm_11(v13, type metadata accessor for Participant.State);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    InCallControlsCollectionViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(a1, isLocalMemberAuthorizedToChangeGroupMembership);
  }
}

void InCallControlsViewController.update(participant:isKickingAvailable:)(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
  {
    v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = v3;
      InCallControlsCollectionViewController.update(participant:isKickingAvailable:)();
    }
  }
}

void InCallControlsViewController.update(with:updateReason:)(uint64_t a1, _BYTE *a2)
{
  if (a2[1] == 1)
  {
    v6[0] = *a2 & 1;
    InCallControlsViewController.gridLayoutStyle.setter(v6);
  }

  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = v4;
    InCallControlsCollectionViewController.update(with:updateReason:)();
  }
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance InCallControlsViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return InCallControlsViewController.delegate.modify;
}

void InCallControlsViewController.delegate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_21_38(a1);
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t InCallControlsViewController.menu(for:button:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = InCallControlsViewController.audioButton.getter();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v7 = a2;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v3 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 32))(ObjectType, v10);
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t InCallControlsViewController.isCaptioningEnabled(inCallControlsCollectionViewController:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t InCallControlsViewController.inCallControlsCollectionViewController(_:didTap:from:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  _s15ConversationKit11ParticipantVWOcTm_9(a2, v12 - v11, type metadata accessor for InCallControlsCollectionViewController.Action);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v23 = OUTLINED_FUNCTION_6_81();
      v24(v23);
      InCallControlsViewController.didTapBuzz(_:)(v9);
      goto LABEL_7;
    case 2:
      v21 = OUTLINED_FUNCTION_6_81();
      v22(v21);
      InCallControlsViewController.didTapApprove(_:)(v9);
      goto LABEL_7;
    case 3:
      v19 = OUTLINED_FUNCTION_6_81();
      v20(v19);
      InCallControlsViewController.didTapDismiss(_:)(v9);
      goto LABEL_7;
    case 4:
      v25 = OUTLINED_FUNCTION_6_81();
      v26(v25);
      InCallControlsViewController.didTapKick(_:)(v9);
LABEL_7:
      result = (*(v5 + 8))(v9, v3);
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
      OUTLINED_FUNCTION_3_0();
      result = InCallControlsViewController.handle(_:from:completion:)(v27, v28, v29, v30);
      break;
    case 9:
    case 10:
    case 11:
      return result;
    default:
      OUTLINED_FUNCTION_3_0();
      InCallControlsViewController.handle(_:from:completion:)(v15, v16, v17, v18);
      result = _s15ConversationKit11ParticipantVWOhTm_11(v13, type metadata accessor for InCallControlsCollectionViewController.Action);
      break;
  }

  return result;
}

uint64_t InCallControlsViewController.didTapBuzz(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  specialized >> prefix<A>(_:)(v5, v8, v9, v10, v11, v12, v13, v14, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9]);
  v16 = v15;
  v18 = v17;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v16;
  *(v6 + 40) = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v19 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v1, a1, ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t InCallControlsViewController.didTapApprove(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  specialized >> prefix<A>(_:)(v5, v8, v9, v10, v11, v12, v13, v14, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9]);
  v16 = v15;
  v18 = v17;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v16;
  *(v6 + 40) = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v19 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(v1, a1, ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t InCallControlsViewController.didTapDismiss(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  specialized >> prefix<A>(_:)(v5, v8, v9, v10, v11, v12, v13, v14, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9]);
  v16 = v15;
  v18 = v17;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v16;
  *(v6 + 40) = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v19 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 24))(v1, a1, ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t InCallControlsViewController.didTapKick(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  specialized >> prefix<A>(_:)(v5, v8, v9, v10, v11, v12, v13, v14, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9]);
  v16 = v15;
  v18 = v17;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v16;
  *(v6 + 40) = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v19 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 32))(v1, a1, ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

id InCallControlsViewController.videoButtonIsEnabled.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*v1)
  {
    return [*(v1[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) isEnabled];
  }

  else
  {
    return 0;
  }
}

id InCallControlsViewController.videoButtonIsEnabled.setter(char a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if (*v1)
  {
    return [*(v1[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) setEnabled_];
  }

  return result;
}

id (*InCallControlsViewController.videoButtonIsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = InCallControlsViewController.videoButtonIsEnabled.getter() & 1;
  return InCallControlsViewController.videoButtonIsEnabled.modify;
}

void outlined consume of InCallControlsViewController.ViewContent?(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  if (a1)
  {
  }
}

id @nonobjc TUMutableRoute.init(uniqueIdentifier:name:)()
{
  OUTLINED_FUNCTION_238();
  v3 = MEMORY[0x1BFB209B0]();

  v4 = MEMORY[0x1BFB209B0](v2, v0);

  v5 = [v1 initWithUniqueIdentifier:v3 name:v4];

  return v5;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Participant.State(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType()
{
  result = lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType;
  if (!lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType;
  if (!lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType);
  }

  return result;
}

uint64_t type metadata accessor for InCallControlsViewController()
{
  result = type metadata singleton initialization cache for InCallControlsViewController;
  if (!type metadata singleton initialization cache for InCallControlsViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for InCallControlsViewController()
{
  result = type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id CNComposeRecipient.messagesChatGUID.getter()
{
  if (![v0 isGroup])
  {
    return 0;
  }

  result = [v0 autocompleteResult];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result psSuggestion];

  if (v3)
  {
    return outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v3, &selRef_conversationIdentifier);
  }

  else
  {
    return 0;
  }
}

uint64_t CNComposeRecipient.messagesGroupUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 isGroup] && (v3 = objc_msgSend(v1, sel_autocompleteResult)) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_psSuggestion), v4, v5) && (outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v5, &selRef_messagesGroupIdentifier), v6))
  {
    UUID.init(uuidString:)();
  }

  else
  {
    v8 = type metadata accessor for UUID();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }
}

double CallControlsStatusView.LeadingView.size.getter()
{
  if (!*(v0 + 32))
  {
    return *(v0 + 8);
  }

  if (*(v0 + 32) == 1)
  {
    return *(v0 + 16);
  }

  return 72.0;
}

id CallControlsStatusView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id CallControlsStatusView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  CallControlsStatusView.build()();

  return v5;
}

void CallControlsStatusView.build()()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA7F0;
  v3 = CallControlsStatusView.imageView.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container, closure #1 in CallControlsStatusView.container.getter);
  v4 = [v3 topAnchor];

  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container;
  v8 = [*&v1[OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container] bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v1[v7] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v2 + 48) = v13;
  v14 = [*&v1[v7] trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint, &selRef_widthAnchor);
  *(inited + 40) = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint, &selRef_heightAnchor);
  specialized Array.append<A>(contentsOf:)(inited);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BC4BA7F0;
  v19 = CallControlsStatusView.imageView.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView, closure #1 in CallControlsStatusView.imageView.getter);
  v20 = [v19 centerXAnchor];

  v21 = CallControlsStatusView.leadingContainer.getter();
  v22 = [v21 centerXAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v18 + 32) = v23;
  v24 = [*&v1[OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView] centerYAnchor];
  v25 = [*&v1[OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer] centerYAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v18 + 40) = v26;
  *(v18 + 48) = CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint, &selRef_widthAnchor);
  *(v18 + 56) = CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint, &selRef_heightAnchor);
  specialized Array.append<A>(contentsOf:)(v18);
  v27 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

id CallControlsStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsStatusView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsStatusView.set(title:subtitle:)(NSAttributedString_optional title, NSAttributedString_optional subtitle)
{
  v3 = *&title.is_nil;
  isa = title.value.super.isa;
  v5 = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDDB8], MEMORY[0x1E69DB968], &selRef_labelColor);
  [v5 setAttributedText_];

  [*(v2 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel) setHidden_];
  v6 = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDDC8], MEMORY[0x1E69DB978], &selRef_secondaryLabelColor);
  [v6 setAttributedText_];

  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel);

  [v7 setHidden_];
}

id CallControlsStatusView.titleLabel.getter(uint64_t *a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = closure #1 in CallControlsStatusView.titleLabel.getter(a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

void CallControlsStatusView.set(leadingView:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint, &selRef_widthAnchor);
  v8 = v7;
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = v4;
    }

    else
    {
      v9 = 72.0;
    }
  }

  else
  {
    v9 = v3;
  }

  v10 = 72.0;
  if (v9 <= 72.0)
  {
    v9 = 72.0;
  }

  [v7 setConstant_];

  v11 = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint, &selRef_heightAnchor);
  v12 = v11;
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = v5;
    }
  }

  else
  {
    v10 = v4;
  }

  v13 = 72.0;
  if (v10 > 72.0)
  {
    v13 = v10;
  }

  [v11 setConstant_];

  v14 = CallControlsStatusView.leadingContainer.getter();
  [v14 setHidden_];

  v15 = OUTLINED_FUNCTION_0_146(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView);
  [v15 setHidden_];

  if (v6)
  {
    if (v6 == 1)
    {
      CallControlsStatusView.customView.setter(0);
      v16 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView;
      [*(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) setContentMode_];
      [*(v1 + v16) setImage_];
      v17 = CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint, &selRef_widthAnchor);
      [v17 setConstant_];

      [CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint &selRef_heightAnchor)];
      OUTLINED_FUNCTION_1_121();
    }

    else
    {
      CallControlsStatusView.customView.setter(0);
      OUTLINED_FUNCTION_1_121();

      [v23 v24];
    }
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) setHidden_];
    v20 = v2;
    OUTLINED_FUNCTION_1_121();

    CallControlsStatusView.customView.setter(v21);
  }
}

id CallControlsStatusView.leadingContainerWidthConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = CallControlsStatusView.leadingContainer.getter();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id CallControlsStatusView.leadingContainer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void CallControlsStatusView.customView.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView) = a1;
  v2 = a1;
  [v3 removeFromSuperview];
  CallControlsStatusView.buildCustomView()();
}

id CallControlsStatusView.imageViewHeightConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_146(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView);
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void *closure #1 in CallControlsStatusView.container.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  *(v2 + 32) = CallControlsStatusView.leadingContainer.getter();
  *(v2 + 40) = CallControlsStatusView.imageView.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___labelContainer, closure #1 in CallControlsStatusView.labelContainer.getter);
  UIStackView.__allocating_init(arrangedSubviews:)(v3, v2);
  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setSpacing_];
  [v5 setAxis_];
  [v5 setAlignment_];
  [a1 addSubview_];
  return v5;
}

id CallControlsStatusView.imageView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void CallControlsStatusView.buildCustomView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView);
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = CallControlsStatusView.leadingContainer.getter();
    [v3 addSubview_];

    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA7F0;
    v6 = [v2 topAnchor];
    v7 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer;
    v8 = [*(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer) topAnchor];
    v9 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v9;
    v10 = [v2 leadingAnchor];
    v11 = [*(v0 + v7) leadingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v5 + 40) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [*(v0 + v7) trailingAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v5 + 48) = v15;
    v16 = [v2 bottomAnchor];
    v17 = [*(v0 + v7) bottomAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v5 + 56) = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints_];
  }
}

id closure #1 in CallControlsStatusView.imageView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setContentMode_];

  v1 = [objc_opt_self() labelColor];
  [v0 setTintColor_];

  v2 = CallControlsStatusView.leadingContainer.getter();
  [v2 addSubview_];

  return v0;
}

void *closure #1 in CallControlsStatusView.labelContainer.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDDB8], MEMORY[0x1E69DB968], &selRef_labelColor);
  *(v0 + 40) = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDDC8], MEMORY[0x1E69DB978], &selRef_secondaryLabelColor);
  UIStackView.__allocating_init(arrangedSubviews:)(v1, v0);
  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setSpacing_];
  [v3 setAxis_];
  [v3 setAlignment_];
  return v3;
}

void *closure #1 in CallControlsStatusView.titleLabel.getter(uint64_t *a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v5 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*a1, 0, 1);
  v11.value.super.isa = 0;
  UILabel.init(font:textColor:)(v6, v5, v11);
  v8 = v7;
  [v7 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() *a3];
  [v8 setTextColor_];

  [v8 _setWantsContentAwareTypesettingLanguage_];
  return v8;
}

id CallControlsStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit22CallControlsStatusViewC07LeadingF0O(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

double RecipientResultWrapper.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_1BC4BB7D0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t static PeoplePickerRanker.findDuetHandle<A>(from:isHandleEligible:)()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.first(where:)();
}

uint64_t RecipientResultWrapper.idsHandle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = closure #1 in RecipientResultWrapper.idsHandle.getter(v0);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    *(v0 + 24) = v3;
    *(v0 + 32) = v6;

    outlined consume of String??(v4, v5);
  }

  outlined copy of String??(v1, v2);
  return v3;
}

uint64_t static PeoplePickerRanker.sort(lhs:rhs:isGroupFaceTime:isGroupFaceTimeAvailable:isFaceTimeAvailable:)(void *a1, void *a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_project_boxed_opaque_existential_1(a2, v16);
  return specialized static PeoplePickerRanker.sort(lhs:rhs:isGroupFaceTime:isGroupFaceTimeAvailable:isFaceTimeAvailable:)(v14, v17, a3, a4, a5, a6, a7, v20, v13, v16, v12, v15) & 1;
}

uint64_t closure #1 in static PeoplePickerRanker.findDuetHandle<A>(from:isHandleEligible:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((*(a5 + 16))(a4, a5) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(a5 + 8))(a4, a5);
  if (!v9)
  {
    return 0;
  }

  v10 = a2(v8);

  return v10 & 1;
}

uint64_t RecipientResultWrapper.init(_:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_1BC4BB7D0;
  *(v1 + 16) = a1;
  return OUTLINED_FUNCTION_0_147();
}

uint64_t key path setter for RecipientResultWrapper.idsHandle : RecipientResultWrapper(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return RecipientResultWrapper.idsHandle.setter(v1, v2);
}

uint64_t RecipientResultWrapper.idsHandle.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of String??(v3, v4);
}

uint64_t closure #1 in RecipientResultWrapper.idsHandle.getter(uint64_t a1)
{
  v1 = [*(a1 + 16) address];
  v2 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t RecipientResultWrapper.__deallocating_deinit()
{
  RecipientResultWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized static PeoplePickerRanker.sort(lhs:rhs:isGroupFaceTime:isGroupFaceTimeAvailable:isFaceTimeAvailable:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49[3] = a9;
  v49[4] = a11;
  __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a9 - 8) + 16))();
  v48[3] = a10;
  v48[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a10 - 8) + 16))(boxed_opaque_existential_1, a2, a10);
  v17 = (*(a11 + 8))(a9, a11);
  v19 = v18;
  v20 = (*(a12 + 8))(a10, a12);
  v22 = v21;
  LOBYTE(v23) = v19 != 0;
  if (!v19)
  {

    goto LABEL_15;
  }

  if (!v21)
  {
LABEL_15:
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.peoplePicker);
    outlined init with copy of IDSLookupManager(v49, v47);
    outlined init with copy of IDSLookupManager(v48, v46);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v33 = 136315394;
      outlined init with copy of IDSLookupManager(v47, v44);
      v34 = specialized >> prefix<A>(_:)(v44);
      v36 = v35;
      outlined destroy of PeoplePickerHandle?(v44);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      outlined init with copy of IDSLookupManager(v46, v44);
      v38 = specialized >> prefix<A>(_:)(v44);
      v40 = v39;
      outlined destroy of PeoplePickerHandle?(v44);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v45);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1BBC58000, v31, v32, "Missing IDS Handle for %s, %s", v33, 0x16u);
      swift_arrayDestroy();
      v42 = v23;
      LOBYTE(v23) = v19 != 0;
      MEMORY[0x1BFB23DF0](v42, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v46);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    goto LABEL_20;
  }

  v24 = v20;
  if (a3)
  {
    v25 = a4;
  }

  else
  {
    v25 = a6;
  }

  LODWORD(v23) = v25(v17, v19);
  if (((v23 ^ v25(v24, v22)) & 1) == 0)
  {
    v26 = MEMORY[0x1BFB209B0](v17, v19);
    LODWORD(v23) = [v26 destinationIdIsPhoneNumber];

    v27 = MEMORY[0x1BFB209B0](v24, v22);
    v28 = [v27 destinationIdIsPhoneNumber];

    if (v23 == v28)
    {
      if (v17 == v24 && v19 == v22)
      {

        LOBYTE(v23) = 0;
        goto LABEL_21;
      }

      LOBYTE(v23) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_20:

LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v23 & 1;
}

uint64_t outlined destroy of PeoplePickerHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18PeoplePickerHandle_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationHUDMenuController.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  return v0;
}

uint64_t *ConversationHUDMenuController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_148();
  }

  return &static ConversationHUDMenuController.shared;
}

uint64_t static ConversationHUDMenuController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_148();
  }
}

uint64_t key path setter for ConversationHUDMenuController.activeMenuButtonProvider : ConversationHUDMenuController(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

void ConversationHUDMenuController.activeMenuButtonProvider.didset()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.conversationControls);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      type metadata accessor for ConversationControlsMenuButtonProvider();
      v4 = String.init<A>(reflecting:)();
      v6 = v5;
    }

    else
    {
      v6 = 0xE300000000000000;
      v4 = 7104878;
    }

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "activeMenuButtonProvider: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
    MEMORY[0x1BFB23DF0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationHUDMenuController.activeMenuButtonProvider.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  ConversationHUDMenuController.activeMenuButtonProvider.didset();
}

void (*ConversationHUDMenuController.activeMenuButtonProvider.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return ConversationHUDMenuController.activeMenuButtonProvider.modify;
}

void ConversationHUDMenuController.activeMenuButtonProvider.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    ConversationHUDMenuController.activeMenuButtonProvider.didset();
  }

  free(v3);
}

uint64_t ConversationHUDMenuController.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CNKDeviceOrientation.uiDeviceOrientation.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return 1;
  }

  else
  {
    return qword_1BC4D5ED8[a1];
  }
}

uint64_t CNKDeviceOrientation.toggled.getter(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CNKSupportedDeviceOrientations.debugDescription.getter(uint64_t a1)
{
  v1 = 1819042094;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x616373646E616C2ELL;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x69617274726F702ELL;
  }
}

void InCallControlsStatusCellViewModel.init(participants:controlsManager:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a3;
  v86 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  v11 = type metadata accessor for Participant(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v77 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - v21;
  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x380))(v20);
  v25 = [objc_opt_self() conversationKit];
  v76 = 0xE000000000000000;
  if (v24)
  {
    v26 = 0x414C504552414853;
    v27 = 0xE900000000000059;
  }

  else
  {
    v26 = 0x454D495445434146;
    v27 = 0xE800000000000000;
  }

  v28.value._countAndFlagsBits = 0x61737265766E6F43;
  v28.value._object = 0xEF74694B6E6F6974;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, v28, v25, v29, *(&v76 - 1));
  object = v31._object;
  countAndFlagsBits = v31._countAndFlagsBits;

  v32 = *((*v23 & *a2) + 0x2C0);
  v33 = a2;
  v34 = v32();

  if (v34)
  {

    v35 = [v34 mergedActiveRemoteParticipants];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
    v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = specialized Set.count.getter(v36);

    v38 = [v34 pendingMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = specialized Set.count.getter(v39);
  }

  else
  {
    v80 = v33;
    v41 = 0;
    v87 = *(a1 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    while (v87 != v41)
    {
      if (v41 >= *(a1 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v43 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v44 = *(v12 + 72);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_4(v45, v22, v46);
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v22, v10, v47);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v79 = *(v49 + 48);
          OUTLINED_FUNCTION_37(&v10[*(v49 + 64)]);
          outlined destroy of Participant.MediaInfo(&v10[v79]);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v50 + 8))(v10);
          outlined init with take of Participant(v22, v82);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_3_115();
            v42 = v88;
          }

          v52 = *(v42 + 16);
          v53 = v52 + 1;
          if (v52 >= *(v42 + 24) >> 1)
          {
            v78 = *(v42 + 16);
            v79 = v52 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v52 = v78;
            v53 = v79;
            v42 = v88;
          }

          ++v41;
          *(v42 + 16) = v53;
          outlined init with take of Participant(v82, v42 + v43 + v52 * v44);
          break;
        case 6u:
          goto LABEL_11;
        default:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v48 + 8))(v10);
LABEL_11:
          outlined destroy of Participant(v22);
          ++v41;
          break;
      }
    }

    v37 = *(v42 + 16);

    v54 = 0;
    v55 = MEMORY[0x1E69E7CC0];
    while (v87 != v54)
    {
      if (v54 >= *(a1 + 16))
      {
        goto LABEL_34;
      }

      v56 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v57 = *(v12 + 72);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_4(v58, v16, v59);
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v16, v7, v60);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v64 + 8))(v7);
          outlined init with take of Participant(v16, v81);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v88 = v55;
          if ((v65 & 1) == 0)
          {
            OUTLINED_FUNCTION_3_115();
            v55 = v88;
          }

          v66 = *(v55 + 16);
          v67 = v66 + 1;
          if (v66 >= *(v55 + 24) >> 1)
          {
            v82 = v66 + 1;
            v79 = v66;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v67 = v82;
            v66 = v79;
            v55 = v88;
          }

          ++v54;
          *(v55 + 16) = v67;
          outlined init with take of Participant(v81, v55 + v56 + v66 * v57);
          continue;
        case 4u:
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v63 = *(v62 + 48);
          OUTLINED_FUNCTION_37(&v7[*(v62 + 64)]);
          outlined destroy of Participant.MediaInfo(&v7[v63]);
          goto LABEL_21;
        case 6u:
          goto LABEL_22;
        default:
LABEL_21:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v61 + 8))(v7);
LABEL_22:
          outlined destroy of Participant(v16);
          ++v54;
          break;
      }
    }

    v40 = *(v55 + 16);

    v33 = v80;
  }

  if (v37 == 0 && v40 > 0)
  {
    v37 = v40;
  }

  String.localizedConversationControls.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v68 = swift_allocObject();
  v69 = MEMORY[0x1E69E6530];
  *(v68 + 16) = xmmword_1BC4BA940;
  v70 = MEMORY[0x1E69E65A8];
  *(v68 + 56) = v69;
  *(v68 + 64) = v70;
  *(v68 + 32) = v37;
  OUTLINED_FUNCTION_46();
  v71 = static String.localizedStringWithFormat(_:_:)();
  v73 = v72;

  v74 = v85;
  v75 = object;
  *v85 = countAndFlagsBits;
  v74[1] = v75;
  v74[2] = v71;
  v74[3] = v73;
  v74[4] = v33;
}

uint64_t getEnumTagSinglePayload for InCallControlsStatusCellViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InCallControlsStatusCellViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CNKMutedTalkerBannerViewControllerFactory.makeViewController()()
{
  v0 = objc_allocWithZone(type metadata accessor for MutedTalkerBannerViewController());

  return [v0 init];
}

id MutedTalkerBannerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

CNKMutedTalkerBannerViewControllerFactory __swiftcall CNKMutedTalkerBannerViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t key path getter for MutedTalkerBannerViewController.isBannerPresent : MutedTalkerBannerViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

uint64_t MutedTalkerBannerViewController.isBannerPresent.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isBannerPresent;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MutedTalkerBannerViewController.isBannerPresent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isBannerPresent;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MutedTalkerBannerViewController.delegate.setter()
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for MutedTalkerBannerViewController.delegate : MutedTalkerBannerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MutedTalkerBannerViewController.delegate : MutedTalkerBannerViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*MutedTalkerBannerViewController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DestinationQueryController.delegate.modify;
}

void MutedTalkerBannerViewController.init()()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v3 = [v2 UUIDString];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = &v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID];
  *v7 = v4;
  v7[1] = v6;
  v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted] = 1;
  v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isBannerPresent] = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v8 = OUTLINED_FUNCTION_6_82();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v47 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView;
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView] = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemOrangeColor];
  [v11 setTintColor_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem);
  v13 = objc_opt_self();
  v14 = [v13 conversationKit];
  v15.super.isa = v14;
  v16 = OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC50C680, 0x61737265766E6F43, 0xEF74694B6E6F6974, v15);
  v18 = v17;

  v19 = PLPillContentItem.__allocating_init(text:)(v16, v18);
  v20 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle;
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle] = v19;
  v21 = [v13 conversationKit];
  v22.super.isa = v21;
  v23 = OUTLINED_FUNCTION_17_0(0xD00000000000002ELL, 0x80000001BC50C6B0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v22);
  v25 = v24;

  v26 = PLPillContentItem.__allocating_init(text:style:)(v23, v25, 5);
  v27 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle;
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle] = v26;
  v28 = [objc_allocWithZone(MEMORY[0x1E69C4A70]) initWithLeadingAccessoryView_];
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC4BA930;
  v30 = *&v1[v20];
  v31 = *&v1[v27];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = v28;
  v33 = v30;
  v34 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setCenterContentItems_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BNBannerSource);
  v36 = @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(0, 0xD000000000000037, 0x80000001BC50C6E0);
  if (!v36)
  {
    __break(1u);
    goto LABEL_6;
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_bannerSource] = v36;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v37 = type metadata accessor for MutedTalkerBannerViewController();
  v50.receiver = v1;
  v50.super_class = v37;
  v49 = v37;
  v48[0] = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  v38 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v39 = v48[0];
  v40 = @nonobjc UITapGestureRecognizer.init(target:action:)(v48, sel_handleTap_);
  [v40 setNumberOfTapsRequired_];
  v41 = [v39 view];
  if (!v41)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v42 = v41;
  [v41 addGestureRecognizer_];

  v49 = v37;
  v48[0] = v39;
  v43 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v44 = v39;
  v45 = @nonobjc UITapGestureRecognizer.init(target:action:)(v48, sel_handleTap_);
  [v45 setNumberOfTapsRequired_];
  v46 = [v44 view];

  if (v46)
  {
    [v46 addGestureRecognizer_];

    [v40 requireGestureRecognizerToFail_];
    return;
  }

LABEL_7:
  __break(1u);
}