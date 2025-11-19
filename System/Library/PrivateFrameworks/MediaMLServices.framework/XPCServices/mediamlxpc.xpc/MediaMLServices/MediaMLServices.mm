uint64_t variable initialization expression of MLServerDelegate.mediaML()
{
  v2 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  return OSAllocatedUnfairLock<A>.init(initialState:)(&v2, v0);
}

uint64_t OSAllocatedUnfairLock<A>.init(initialState:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = OSAllocatedUnfairLock.init(uncheckedState:)(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void key path getter for MLServerDelegate.mediaML : MLServerDelegate(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = _objc_retain(*a1);
  *a2 = (*((*v3 & swift_isaMask) + 0x58))(v2);
}

void key path setter for MLServerDelegate.mediaML : MLServerDelegate(uint64_t *a1, id *a2)
{
  outlined init with copy of OSAllocatedUnfairLock<MediaML?>(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  (*((*v3 & swift_isaMask) + 0x60))(v4);
}

uint64_t MLServerDelegate.mediaML.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10mediamlxpc16MLServerDelegate_mediaML);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t MLServerDelegate.mediaML.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC10mediamlxpc16MLServerDelegate_mediaML);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MLServerDelegate.logger);
  __swift_project_value_buffer(v1, static MLServerDelegate.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MLServerDelegate", 0x10uLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MLServer.logger);
  __swift_project_value_buffer(v1, static MLServer.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mediamlxpc", 0x14uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MLServer", 8uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t MLServerDelegate.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MLServerDelegate.logger);
}

uint64_t static MLServerDelegate.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MLServerDelegate.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall MLServerDelegate.ensureMediaML()()
{
  v12 = &async function pointer to partial apply for closure #1 in MLServerDelegate.ensureMediaML();
  ObjectType = swift_getObjectType();
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v9 - v9;
  v14 = v0;
  v10 = 0;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v11, 1);
  _objc_retain(v0);
  v3 = swift_allocObject();
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v3;
  v8 = ObjectType;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v4, v4, v5, v6, v7, &type metadata for () + 8);
}

uint64_t closure #1 in MLServerDelegate.ensureMediaML()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v10 = *(v5 - 8);
  v4[8] = v10;
  v6 = *(v10 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[3] = a4;
  type metadata accessor for MediaML();
  v7 = async function pointer to MediaML.__allocating_init()[1];
  v8 = swift_task_alloc();
  *(v12 + 80) = v8;
  *v8 = *(v12 + 16);
  v8[1] = closure #1 in MLServerDelegate.ensureMediaML();

  return MediaML.__allocating_init()();
}

uint64_t closure #1 in MLServerDelegate.ensureMediaML()(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 80);
  v9[2] = *v2;
  v10 = v9 + 2;
  v9[11] = a1;
  v9[12] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = closure #1 in MLServerDelegate.ensureMediaML();
  }

  else
  {
    v5 = *v10;
    v6 = closure #1 in MLServerDelegate.ensureMediaML();
  }

  return _swift_task_switch(v6, 0);
}

uint64_t closure #1 in MLServerDelegate.ensureMediaML()()
{
  v1 = v0[12];
  v11 = v0[11];
  v2 = v0[6];
  v0[2] = v0;
  v0[5] = v11;
  v12 = (*((*v2 & swift_isaMask) + 0x58))();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(partial apply for closure #1 in closure #1 in MLServerDelegate.ensureMediaML(), v11, v12, v3, &type metadata for () + 8);
  if (v1)
  {
    v8 = v10[11];
  }

  else
  {
    v9 = v10[11];

    v4 = v10[9];

    v5 = *(v10[2] + 8);
    v6 = v10[2];

    return v5();
  }
}

{
  v33 = v0;
  v18 = v0[12];
  v1 = v0[9];
  v16 = v0[8];
  v17 = v0[7];
  v0[2] = v0;
  swift_errorRetain();
  v0[4] = v18;
  v2 = MLServerDelegate.logger.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  swift_errorRetain();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = 64;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for implicit closure #1 in closure #1 in MLServerDelegate.ensureMediaML();
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v24 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v25 = v3;

  *v25 = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[1] = v22;

  v25[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v25[3] = v23;

  v25[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v26, v27))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1);
    v14 = createStorage<A>(capacity:type:)(0);
    v28 = buf;
    v29 = v13;
    v30 = v14;
    serialize(_:at:)(2, &v28);
    serialize(_:at:)(1, &v28);
    v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v32 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v31, &v28, &v29, &v30);
    v31 = closure #1 in OSLogArguments.append(_:)partial apply;
    v32 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v31, &v28, &v29, &v30);
    v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v32 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v31, &v28, &v29, &v30);
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to init MediaML due to error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13);
    destroyStorage<A>(_:count:)(v14);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v15[12];
  v9 = v15[9];
  v10 = v15[7];
  v8 = v15[8];

  (*(v8 + 8))(v9, v10);

  v4 = v15[9];

  v5 = *(v15[2] + 8);
  v6 = v15[2];

  return v5();
}

uint64_t sub_100002784()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServerDelegate.ensureMediaML()(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServerDelegate.ensureMediaML();

  return closure #1 in MLServerDelegate.ensureMediaML()(a1, v6, v7, v8);
}

uint64_t partial apply for closure #1 in MLServerDelegate.ensureMediaML()()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in MLServerDelegate.ensureMediaML()(uint64_t *a1, uint64_t a2)
{

  v2 = *a1;
  *a1 = a2;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  outlined init with copy of TaskPriority?(v55, v58);
  v59 = type metadata accessor for TaskPriority();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    outlined destroy of TaskPriority?(v58);
    v45 = 0;
  }

  else
  {
    v44 = TaskPriority.rawValue.getter();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = String.utf8CString.getter();

    v8 = *(v27 + 16);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    outlined destroy of TaskPriority?(v55);

    v19 = v17;
  }

  else
  {

    outlined destroy of TaskPriority?(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

void *MLServerDelegate.init()()
{
  v6 = 0;
  v2 = OBJC_IVAR____TtC10mediamlxpc16MLServerDelegate_mediaML;
  v5 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  *v2 = OSAllocatedUnfairLock<A>.init(initialState:)(&v5, v0);
  v4.receiver = v6;
  v4.super_class = type metadata accessor for MLServerDelegate();
  v3 = objc_msgSendSuper2(&v4, "init");
  _objc_retain(v3);
  v6 = v3;
  (*((*v3 & swift_isaMask) + 0x70))();

  return v3;
}

Swift::Bool __swiftcall MLServerDelegate.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v10 = (*((*v2 & swift_isaMask) + 0x58))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaMLAACSgMd, &_s7MediaMLAACSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MLServerDelegate.listener(_:shouldAcceptNewConnection:), 0, v10, v3, v3);

  if (v12)
  {
    type metadata accessor for MLServer();

    v11 = MLServer.__allocating_init(mediaML:)(v12);
    type metadata accessor for NSXPCInterface();
    _objc_retain(&OBJC_PROTOCOL____TtP10mediamlxpc16MLServerProtocol_);
    v6 = @nonobjc NSXPCInterface.__allocating_init(with:)(&OBJC_PROTOCOL____TtP10mediamlxpc16MLServerProtocol_);
    [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:?];

    _objc_retain(v11);
    [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:v11];
    swift_unknownObjectRelease();
    [(objc_class *)shouldAcceptNewConnection.super.isa activate];

    return 1;
  }

  else
  {
    (*((*v9 & swift_isaMask) + 0x70))(v4);
    return 0;
  }
}

unint64_t type metadata accessor for NSXPCInterface()
{
  v2 = lazy cache variable for type metadata for NSXPCInterface;
  if (!lazy cache variable for type metadata for NSXPCInterface)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSXPCInterface);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSXPCInterface.__allocating_init(with:)(void *a1)
{
  v3 = [swift_getObjCClassFromMetadata() interfaceWithProtocol:a1];

  return v3;
}

id MLServerDelegate.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MLServerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *outlined destroy of OSAllocatedUnfairLock<MediaML?>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *outlined init with copy of OSAllocatedUnfairLock<MediaML?>(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void destroyStorage<A>(_:count:)(uint64_t a1)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

uint64_t OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  type metadata accessor for ManagedBuffer();
  v5 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  partial apply for closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(a3 + *(*a3 + class metadata base offset for ManagedBuffer + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void *implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  _objc_retain(v2);
  swift_unknownObjectRelease();
  return v2;
}

void closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

void *outlined init with copy of MediaML?(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100004260()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1000044C4()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_11(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_11TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_11TQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_100004728()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in MLServerDelegate.ensureMediaML()()
{
  result = *(v0 + 16);
  implicit closure #1 in closure #1 in MLServerDelegate.ensureMediaML()();
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_1000047F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100004844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void closure #1 in OSLogArguments.append(_:)(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  _objc_retain(v8);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v8)
  {
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;

    *a2 = v4 + 1;
  }

  else
  {
  }
}

uint64_t sub_100004A14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = lazy cache variable for type metadata for os_unfair_lock_s;
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
      return v1;
    }
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t one-time initialization function for semaphoreTimeoutValue()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v1, semaphoreTimeoutValue);
  *__swift_project_value_buffer(v1, semaphoreTimeoutValue) = 1;
  return (*(*(v1 - 8) + 104))();
}

uint64_t semaphoreTimeoutValue.unsafeMutableAddressor()
{
  if (one-time initialization token for semaphoreTimeoutValue != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();
  return __swift_project_value_buffer(v0, semaphoreTimeoutValue);
}

uint64_t one-time initialization function for priority()
{
  v1 = type metadata accessor for TaskPriority();
  __swift_allocate_value_buffer(v1, priority);
  __swift_project_value_buffer(v1, priority);
  return static TaskPriority.high.getter();
}

uint64_t priority.unsafeMutableAddressor()
{
  if (one-time initialization token for priority != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TaskPriority();
  return __swift_project_value_buffer(v0, priority);
}

uint64_t MLServer.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MLServer.logger);
}

uint64_t static MLServer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MLServer.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t MLServer.mediaML.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  return v2;
}

id MLServer.init(mediaML:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;

  *OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for MLServer();
  v3 = objc_msgSendSuper2(&v4, "init");
  _objc_retain(v3);
  v6 = v3;

  return v3;
}

void MLServer.getPrediction(inputFeatures:with:)(uint64_t a1, void (*a2)(void, double), uint64_t a3)
{
  v112 = a3;
  v114 = a2;
  v126 = a1;
  ObjectType = swift_getObjectType();
  v109 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v97 = 0;
  v98 = type metadata accessor for DispatchTimeInterval();
  v99 = *(v98 - 8);
  v100 = v99;
  v3 = *(v99 + 64);
  __chkstk_darwin(0);
  v101 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchTime();
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = *(v103 + 64);
  __chkstk_darwin(v102 - 8);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v45 - v107;
  __chkstk_darwin(&v45 - v107);
  v108 = &v45 - v107;
  v110 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v109);
  v111 = &v45 - v110;
  v123 = type metadata accessor for Logger();
  v115 = v123;
  v116 = *(v123 - 8);
  v122 = v116;
  v117 = v116;
  v118 = *(v116 + 64);
  v5 = __chkstk_darwin(v126);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = &v45 - v120;
  v6 = __chkstk_darwin(v5);
  v7 = &v45 - v120;
  v121 = &v45 - v120;
  v161 = v6;
  v159 = v8;
  v160 = v9;
  v158 = v10;
  v11 = MLServer.logger.unsafeMutableAddressor();
  v124 = *(v122 + 16);
  v125 = (v122 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v124(v7, v11, v123);

  v135 = 7;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;

  v130 = 32;
  v134 = 32;
  v12 = swift_allocObject();
  v13 = v127;
  v136 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in MLServer.getPrediction(inputFeatures:with:);
  *(v12 + 24) = v13;

  v147 = Logger.logObject.getter();
  v128 = v147;
  v146 = static os_log_type_t.debug.getter();
  v129 = v146;
  v131 = 17;
  v140 = swift_allocObject();
  v132 = v140;
  *(v140 + 16) = v130;
  v141 = swift_allocObject();
  v133 = v141;
  *(v141 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v136;
  v137 = v14;
  *(v14 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v137;
  v144 = v16;
  v138 = v16;
  *(v16 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v16 + 24) = v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v139 = v145;
  v142 = _allocateUninitializedArray<A>(_:)();
  v143 = v18;

  v19 = v140;
  v20 = v143;
  *v143 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v20[1] = v19;

  v21 = v141;
  v22 = v143;
  v143[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v22[3] = v21;

  v23 = v143;
  v24 = v144;
  v143[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v23[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v147, v146))
  {
    v25 = v97;
    v89 = static UnsafeMutablePointer.allocate(capacity:)();
    v86 = v89;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v90 = createStorage<A>(capacity:type:)(0);
    v88 = v90;
    v92 = 1;
    v91 = createStorage<A>(capacity:type:)(1);
    v152[0] = v89;
    v151 = v90;
    v150 = v91;
    v93 = v152;
    serialize(_:at:)(2, v152);
    serialize(_:at:)(v92, v93);
    v148 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v149 = v132;
    closure #1 in osLogInternal(_:log:type:)(&v148, v93, &v151, &v150);
    v94 = v25;
    v95 = v25;
    if (v25)
    {
      v84 = 0;

      __break(1u);
    }

    else
    {
      v148 = closure #1 in OSLogArguments.append(_:)partial apply;
      v149 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v148, v152, &v151, &v150);
      v82 = 0;
      v83 = 0;
      v148 = partial apply for closure #1 in OSLogArguments.append(_:);
      v149 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v148, v152, &v151, &v150);
      v80 = 0;
      v81 = 0;
      _os_log_impl(&_mh_execute_header, v128, v129, "Called into getPrediction with inputFeatures: %s", v86, 0xCu);
      destroyStorage<A>(_:count:)(v88);
      destroyStorage<A>(_:count:)(v91);
      UnsafeMutablePointer.deallocate()();

      v85 = v80;
    }
  }

  else
  {
    v26 = v97;

    v85 = v26;
  }

  v67 = v85;

  v68 = *(v117 + 8);
  v69 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v121, v115);
  v74 = 0;
  v27 = dispatch_semaphore_create(0);
  v70 = v27;
  v157 = v27;
  v71 = priority.unsafeMutableAddressor();
  v73 = type metadata accessor for TaskPriority();
  v72 = *(v73 - 8);
  (*(v72 + 16))(v111, v71);
  v28 = *(v72 + 56);
  v79 = 1;
  v28(v111, 0);
  v29 = v113;

  v30 = v27;
  v31 = swift_allocObject();
  v32 = v113;
  v33 = v126;
  v34 = v114;
  v35 = v112;
  v36 = ObjectType;
  v37 = v74;
  v38 = v111;
  v75 = v31;
  v31[2] = v74;
  v31[3] = v37;
  v31[4] = v32;
  v31[5] = v33;
  v31[6] = v34;
  v31[7] = v35;
  v31[8] = v27;
  v31[9] = v37;
  v31[10] = v36;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v37, v37, v38, &async function pointer to partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:), v31, &type metadata for () + 8);

  static DispatchTime.now()();
  v39 = semaphoreTimeoutValue.unsafeMutableAddressor();
  (*(v100 + 16))(v101, v39, v98);
  + infix(_:_:)();
  (*(v100 + 8))(v101, v98);
  v77 = *(v104 + 8);
  v76 = v104 + 8;
  v77(v106, v102);
  v78 = OS_dispatch_semaphore.wait(timeout:)();
  v77(v108, v102);
  v156 = v78 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v40 = v119;
    v41 = MLServer.logger.unsafeMutableAddressor();
    v124(v40, v41, v115);
    v65 = Logger.logObject.getter();
    v62 = v65;
    v64 = static os_log_type_t.error.getter();
    v63 = v64;
    v66 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v65, v64))
    {
      v42 = v67;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = v53;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = 0;
      v54 = createStorage<A>(capacity:type:)(0);
      v52 = v54;
      v55 = createStorage<A>(capacity:type:)(v51);
      v155 = v53;
      v154 = v54;
      v153 = v55;
      v56 = 0;
      v57 = &v155;
      serialize(_:at:)(0, &v155);
      serialize(_:at:)(v56, v57);
      v152[2] = v66;
      v58 = &v45;
      __chkstk_darwin(&v45);
      v59 = &v45 - 6;
      *(&v45 - 4) = v43;
      *(&v45 - 3) = &v154;
      *(&v45 - 2) = &v153;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v61 = v42;
      if (v42)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v62, v63, "getPrediction timed-out", v49, 2u);
        v47 = 0;
        destroyStorage<A>(_:count:)(v52);
        destroyStorage<A>(_:count:)(v55);
        UnsafeMutablePointer.deallocate()();

        v48 = v61;
      }
    }

    else
    {

      v48 = v67;
    }

    v45 = v48;

    v68(v119, v115);

    v114(v44, 0.0);

    v46 = v45;
  }

  else
  {
    v46 = v67;
  }
}

uint64_t implicit closure #1 in MLServer.getPrediction(inputFeatures:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_100006394()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t closure #1 in MLServer.getPrediction(inputFeatures:with:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 128) = a1;
  *(v9 + 120) = a9;
  *(v9 + 112) = a8;
  *(v9 + 104) = a7;
  *(v9 + 96) = a6;
  *(v9 + 88) = a5;
  *(v9 + 32) = v9;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  v10 = type metadata accessor for Logger();
  *(v9 + 136) = v10;
  v14 = *(v10 - 8);
  *(v9 + 144) = v14;
  v11 = *(v14 + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 16) = a7;
  *(v9 + 24) = a8;
  *(v9 + 56) = a9;
  *(v9 + 64) = a1;
  v12 = *(v9 + 32);

  return _swift_task_switch(closure #1 in MLServer.getPrediction(inputFeatures:with:), 0);
}

uint64_t closure #1 in MLServer.getPrediction(inputFeatures:with:)()
{
  v1 = v0[11];
  v0[4] = v0;
  v0[20] = *(v1 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  v2 = async function pointer to MediaML.getPrediction(data:)[1];
  v3 = swift_task_alloc();
  v6[21] = v3;
  *v3 = v6[4];
  v3[1] = closure #1 in MLServer.getPrediction(inputFeatures:with:);
  v4 = v6[12];

  return MediaML.getPrediction(data:)(v4);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  *(v0 + 32) = v0;
  if (v1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v2;
  }

  v9 = *(v12 + 15);
  v10 = *(v12 + 14);
  v8 = *(v12 + 13);
  v12[10] = v11;

  v8(v3, v11);

  OS_dispatch_semaphore.signal()();
  v4 = *(v12 + 19);

  v5 = *(*(v12 + 4) + 8);
  v6 = *(v12 + 4);

  return v5();
}

{
  v38 = v0;
  v23 = v0[22];
  v1 = v0[20];
  v2 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v0[4] = v0;

  swift_errorRetain();
  v0[9] = v23;
  v3 = MLServer.logger.unsafeMutableAddressor();
  (*(v21 + 16))(v2, v3, v22);
  swift_errorRetain();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #2 in closure #1 in MLServer.getPrediction(inputFeatures:with:);
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v4;

  *v30 = closure #1 in OSLogArguments.append(_:)partial apply;
  v30[1] = v27;

  v30[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v30[3] = v28;

  v30[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v31, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(1);
    v19 = createStorage<A>(capacity:type:)(0);
    v33 = buf;
    v34 = v18;
    v35 = v19;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = closure #1 in OSLogArguments.append(_:)partial apply;
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = closure #1 in OSLogArguments.append(_:)partial apply;
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = closure #1 in OSLogArguments.append(_:)partial apply;
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to get prediction with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18);
    destroyStorage<A>(_:count:)(v19);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v16 = *(v20 + 22);
  v12 = *(v20 + 19);
  v13 = *(v20 + 17);
  v14 = v20[16];
  v5 = *(v20 + 14);
  v15 = *(v20 + 13);
  v11 = *(v20 + 18);

  (*(v11 + 8))(v12, v13);

  v15(v6, v14);

  v7 = *(v20 + 19);

  v8 = *(*(v20 + 4) + 8);
  v9 = *(v20 + 4);

  return v8();
}

uint64_t closure #1 in MLServer.getPrediction(inputFeatures:with:)(uint64_t a1, char a2)
{
  v11 = *v3;
  v5 = *(*v3 + 168);
  *(v11 + 32) = *v3;
  v12 = (v11 + 32);
  *(v11 + 176) = v2;
  *(v11 + 184) = a1;
  *(v11 + 192) = a2;

  if (v2)
  {
    v9 = *v12;
    v8 = closure #1 in MLServer.getPrediction(inputFeatures:with:);
  }

  else
  {
    v6 = *(v11 + 160);

    v7 = *v12;
    v8 = closure #1 in MLServer.getPrediction(inputFeatures:with:);
  }

  return _swift_task_switch(v8, 0);
}

void MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v124 = a3;
  v126 = a2;
  v138 = a1;
  ObjectType = swift_getObjectType();
  v121 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v109 = 0;
  v110 = type metadata accessor for DispatchTimeInterval();
  v111 = *(v110 - 8);
  v112 = v111;
  v3 = *(v111 + 64);
  __chkstk_darwin(0);
  v113 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchTime();
  v115 = *(v114 - 8);
  v116 = v115;
  v117 = *(v115 + 64);
  __chkstk_darwin(v114 - 8);
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = &v50 - v119;
  __chkstk_darwin(&v50 - v119);
  v120 = &v50 - v119;
  v122 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v121);
  v123 = &v50 - v122;
  v135 = type metadata accessor for Logger();
  v127 = v135;
  v128 = *(v135 - 8);
  v134 = v128;
  v129 = v128;
  v130 = *(v128 + 64);
  v5 = __chkstk_darwin(v138);
  v132 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  v131 = &v50 - v132;
  v6 = __chkstk_darwin(v5);
  v7 = &v50 - v132;
  v133 = &v50 - v132;
  v174 = v6;
  v172 = v8;
  v173 = v9;
  v171 = v10;
  v11 = MLServer.logger.unsafeMutableAddressor();
  v136 = *(v134 + 16);
  v137 = (v134 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v136(v7, v11, v135);

  v147 = 7;
  v139 = swift_allocObject();
  *(v139 + 16) = v138;

  v142 = 32;
  v146 = 32;
  v12 = swift_allocObject();
  v13 = v139;
  v148 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  *(v12 + 24) = v13;

  v159 = Logger.logObject.getter();
  v140 = v159;
  v158 = static os_log_type_t.debug.getter();
  v141 = v158;
  v143 = 17;
  v152 = swift_allocObject();
  v144 = v152;
  *(v152 + 16) = v142;
  v153 = swift_allocObject();
  v145 = v153;
  *(v153 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v148;
  v149 = v14;
  *(v14 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v149;
  v156 = v16;
  v150 = v16;
  *(v16 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v16 + 24) = v17;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v151 = v157;
  v154 = _allocateUninitializedArray<A>(_:)();
  v155 = v18;

  v19 = v152;
  v20 = v155;
  *v155 = closure #1 in OSLogArguments.append(_:)partial apply;
  v20[1] = v19;

  v21 = v153;
  v22 = v155;
  v155[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v22[3] = v21;

  v23 = v155;
  v24 = v156;
  v155[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v159, v158))
  {
    v25 = v109;
    v101 = static UnsafeMutablePointer.allocate(capacity:)();
    v98 = v101;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v102 = createStorage<A>(capacity:type:)(0);
    v100 = v102;
    v104 = 1;
    v103 = createStorage<A>(capacity:type:)(1);
    v164[0] = v101;
    v163 = v102;
    v162 = v103;
    v105 = v164;
    serialize(_:at:)(2, v164);
    serialize(_:at:)(v104, v105);
    v160 = closure #1 in OSLogArguments.append(_:)partial apply;
    v161 = v144;
    closure #1 in osLogInternal(_:log:type:)(&v160, v105, &v163, &v162);
    v106 = v25;
    v107 = v25;
    if (v25)
    {
      v96 = 0;

      __break(1u);
    }

    else
    {
      v160 = closure #1 in OSLogArguments.append(_:)partial apply;
      v161 = v145;
      closure #1 in osLogInternal(_:log:type:)(&v160, v164, &v163, &v162);
      v94 = 0;
      v95 = 0;
      v160 = closure #1 in OSLogArguments.append(_:)partial apply;
      v161 = v150;
      closure #1 in osLogInternal(_:log:type:)(&v160, v164, &v163, &v162);
      v92 = 0;
      v93 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "Called into getPredictionDictionary with inputFeatures: %s", v98, 0xCu);
      destroyStorage<A>(_:count:)(v100);
      destroyStorage<A>(_:count:)(v103);
      UnsafeMutablePointer.deallocate()();

      v97 = v92;
    }
  }

  else
  {
    v26 = v109;

    v97 = v26;
  }

  v73 = v97;

  v74 = *(v129 + 8);
  v75 = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v133, v127);
  v85 = 0;
  v27 = dispatch_semaphore_create(0);
  v76 = v27;
  v170 = v27;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  v80 = _allocateUninitializedArray<A>(_:)();
  v78 = v28;
  v29 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v29, v78);
  v30 = v78;
  v78[2] = v85;
  v77 = v30 + 3;
  v31 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v31, v77);
  v78[5] = v85;
  _finalizeUninitializedArray<A>(_:)();
  v86 = Dictionary.init(dictionaryLiteral:)();
  v81 = v86;
  v169 = v86;
  v82 = priority.unsafeMutableAddressor();
  v84 = type metadata accessor for TaskPriority();
  v83 = *(v84 - 8);
  (*(v83 + 16))(v123, v82);
  v32 = *(v83 + 56);
  v91 = 1;
  v32(v123, 0);
  v33 = v125;

  v34 = v27;
  v35 = swift_allocObject();
  v36 = v125;
  v37 = v138;
  v38 = v126;
  v39 = v124;
  v40 = ObjectType;
  v41 = v85;
  v42 = v123;
  v43 = v35;
  v44 = v86;
  v87 = v43;
  v43[2] = v85;
  v43[3] = v41;
  v43[4] = v36;
  v43[5] = v37;
  v43[6] = v44;
  v43[7] = v38;
  v43[8] = v39;
  v43[9] = v27;
  v43[10] = v40;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v41, v41, v42, &async function pointer to partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:), v43, &type metadata for () + 8);

  static DispatchTime.now()();
  v45 = semaphoreTimeoutValue.unsafeMutableAddressor();
  (*(v112 + 16))(v113, v45, v110);
  + infix(_:_:)();
  (*(v112 + 8))(v113, v110);
  v89 = *(v116 + 8);
  v88 = v116 + 8;
  v89(v118, v114);
  v90 = OS_dispatch_semaphore.wait(timeout:)();
  v89(v120, v114);
  v168 = v90 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v46 = v131;
    v47 = MLServer.logger.unsafeMutableAddressor();
    v136(v46, v47, v127);
    v71 = Logger.logObject.getter();
    v68 = v71;
    v70 = static os_log_type_t.error.getter();
    v69 = v70;
    v72 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v71, v70))
    {
      v48 = v73;
      v59 = static UnsafeMutablePointer.allocate(capacity:)();
      v55 = v59;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v57 = 0;
      v60 = createStorage<A>(capacity:type:)(0);
      v58 = v60;
      v61 = createStorage<A>(capacity:type:)(v57);
      v167 = v59;
      v166 = v60;
      v165 = v61;
      v62 = 0;
      v63 = &v167;
      serialize(_:at:)(0, &v167);
      serialize(_:at:)(v62, v63);
      v164[2] = v72;
      v64 = &v50;
      __chkstk_darwin(&v50);
      v65 = &v50 - 6;
      *(&v50 - 4) = v49;
      *(&v50 - 3) = &v166;
      *(&v50 - 2) = &v165;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v67 = v48;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v68, v69, "getPredictionDictionary timed-out", v55, 2u);
        v53 = 0;
        destroyStorage<A>(_:count:)(v58);
        destroyStorage<A>(_:count:)(v61);
        UnsafeMutablePointer.deallocate()();

        v54 = v67;
      }
    }

    else
    {

      v54 = v73;
    }

    v51 = v54;

    v74(v131, v127);

    v50 = _dictionaryUpCast<A, B, C, D>(_:)();
    v126(v50);

    v52 = v51;
  }

  else
  {
    v52 = v73;
  }
}

uint64_t implicit closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v20;
  v8[17] = a8;
  v8[16] = a7;
  v8[15] = a6;
  v8[14] = a5;
  v8[13] = a4;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[8] = 0;
  v8[10] = 0;
  v8[12] = 0;
  v9 = type metadata accessor for Logger();
  v8[19] = v9;
  v13 = *(v9 - 8);
  v8[20] = v13;
  v10 = *(v13 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[2] = a7;
  v8[3] = a8;
  v8[8] = v20;
  v11 = v8[4];

  return _swift_task_switch(closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:), 0);
}

uint64_t closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)()
{
  v1 = v0[13];
  v0[4] = v0;
  v0[22] = *(v1 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  v2 = async function pointer to MediaML.getPredictionDictionary(data:)[1];
  v3 = swift_task_alloc();
  v6[23] = v3;
  *v3 = v6[4];
  v3[1] = closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  v4 = v6[14];

  return MediaML.getPredictionDictionary(data:)(v4);
}

{
  v1 = v0[24];
  v2 = v0[15];
  v0[4] = v0;
  v0[11] = v1;

  if (v0[11])
  {
    v13[9] = v13[11];
  }

  else
  {
    v12 = v13[15];

    v13[9] = _dictionaryUpCast<A, B, C, D>(_:)();

    if (v13[11])
    {
      outlined destroy of [String : Any]?(v13 + 11);
    }
  }

  v9 = v13[18];
  v10 = v13[17];
  v8 = v13[16];
  v3 = v13[15];

  v11 = v13[9];
  v13[12] = v11;

  v8(v11);

  OS_dispatch_semaphore.signal()();

  v4 = v13[21];

  v5 = *(v13[4] + 8);
  v6 = v13[4];

  return v5();
}

{
  v37 = v0;
  v22 = v0[25];
  v1 = v0[22];
  v2 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v0[4] = v0;

  swift_errorRetain();
  v0[10] = v22;
  v3 = MLServer.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v2, v3, v21);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #2 in closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesys5Error_pyXA_AA0B7PrivacyVSStFSo8NSObjectCycfu_TA_0;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesySo8NSObjectCyXA_AA0B7PrivacyVSStFAHSgycfu_TA_0;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[1] = v26;

  v29[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[3] = v27;

  v29[4] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1);
    v18 = createStorage<A>(capacity:type:)(0);
    v32 = buf;
    v33 = v17;
    v34 = v18;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to get prediction with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17);
    destroyStorage<A>(_:count:)(v18);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v15 = v19[25];
  v11 = v19[21];
  v12 = v19[19];
  v5 = v19[17];
  v13 = v19[16];
  v14 = v19[15];
  v10 = v19[20];

  (*(v10 + 8))(v11, v12);

  _dictionaryUpCast<A, B, C, D>(_:)();
  v13();

  v6 = v19[21];

  v7 = *(v19[4] + 8);
  v8 = v19[4];

  return v7();
}

uint64_t closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 184);
  v10[4] = *v2;
  v11 = v10 + 4;
  v10[24] = a1;
  v10[25] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  }

  else
  {
    v5 = v10[22];

    v6 = *v11;
    v7 = closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);
  }

  return _swift_task_switch(v7, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary) -> ()(uint64_t a1, uint64_t a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))();
}

uint64_t MLServer.write(data:with:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v43 = a3;
  v46 = a2;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v56 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v40 = 0;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = &v21 - v41;
  v53 = type metadata accessor for Logger();
  v47 = v53;
  v48 = *(v53 - 8);
  v52 = v48;
  v49 = v48;
  v50 = *(v48 + 64);
  v3 = __chkstk_darwin(v45);
  v4 = &v21 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v4;
  v67 = v3;
  v65 = v5;
  v66 = v6;
  v64 = v7;
  v8 = MLServer.logger.unsafeMutableAddressor();
  (*(v52 + 16))(v4, v8, v53);
  v58 = Logger.logObject.getter();
  v54 = v58;
  v57 = static os_log_type_t.debug.getter();
  v55 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v58, v57))
  {
    v9 = v40;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = 0;
    v31 = createStorage<A>(capacity:type:)(0);
    v29 = v31;
    v32 = createStorage<A>(capacity:type:)(v28);
    v63 = v30;
    v62 = v31;
    v61 = v32;
    v33 = 0;
    v34 = &v63;
    serialize(_:at:)(0, &v63);
    serialize(_:at:)(v33, v34);
    v60 = v59;
    v35 = &v21;
    __chkstk_darwin(&v21);
    v36 = &v21 - 6;
    *(&v21 - 4) = v10;
    *(&v21 - 3) = &v62;
    *(&v21 - 2) = &v61;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v38 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v54, v55, "Called into writeData", v26, 2u);
      v24 = 0;
      destroyStorage<A>(_:count:)(v29);
      destroyStorage<A>(_:count:)(v32);
      UnsafeMutablePointer.deallocate()();

      v25 = v38;
    }
  }

  else
  {

    v25 = v40;
  }

  (*(v49 + 8))(v51, v47);
  v21 = 0;
  v11 = *(*(type metadata accessor for TaskPriority() - 8) + 56);
  v22 = 1;
  v11(v42, 1);

  v12 = v44;
  v13 = swift_allocObject();
  v14 = v45;
  v15 = v44;
  v16 = ObjectType;
  v17 = v21;
  v18 = v42;
  v13[2] = v21;
  v13[3] = v17;
  v13[4] = v14;
  v13[5] = v15;
  v13[6] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v17, v17, v18, &async function pointer to partial apply for closure #1 in MLServer.write(data:with:), v13, &type metadata for () + 8);

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Dispatched write data task", 0x1AuLL, v22);
  object = v19._object;
  v46(v19._countAndFlagsBits);
}

uint64_t closure #1 in MLServer.write(data:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v6 = type metadata accessor for DispatchTime();
  v5[7] = v6;
  v10 = *(v6 - 8);
  v5[8] = v10;
  v5[9] = *(v10 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[14] = v7;
  v11 = *(v7 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  v8 = v5[2];

  return _swift_task_switch(closure #1 in MLServer.write(data:with:), 0);
}

uint64_t closure #1 in MLServer.write(data:with:)()
{
  v83 = v0;
  v1 = v0[17];
  v60 = v0[15];
  v61 = v0[14];
  v63 = v0[5];
  v0[2] = v0;
  v2 = MLServer.logger.unsafeMutableAddressor();
  v62 = *(v60 + 16);
  v62(v1, v2, v61);

  v64 = swift_allocObject();
  *(v64 + 16) = v63;

  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for implicit closure #1 in closure #1 in MLServer.write(data:with:);
  *(v65 + 24) = v64;

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v66 = swift_allocObject();
  *(v66 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v66 + 24) = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v69 + 24) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v70 = v3;

  *v70 = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[1] = v67;

  v70[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[3] = v68;

  v70[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[5] = v69;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v71, v72))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v57 = createStorage<A>(capacity:type:)(0);
    v58 = createStorage<A>(capacity:type:)(1);
    v78 = buf;
    v79 = v57;
    v80 = v58;
    serialize(_:at:)(2, &v78);
    serialize(_:at:)(1, &v78);
    v81 = closure #1 in OSLogArguments.append(_:)partial apply;
    v82 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v81, &v78, &v79, &v80);
    v81 = closure #1 in OSLogArguments.append(_:)partial apply;
    v82 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v81, &v78, &v79, &v80);
    v81 = closure #1 in OSLogArguments.append(_:)partial apply;
    v82 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v81, &v78, &v79, &v80);
    _os_log_impl(&_mh_execute_header, v71, v72, "Checking text and numerical input validity for data dictionary: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v57);
    destroyStorage<A>(_:count:)(v58);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  rawValue = v59[17]._rawValue;
  v51 = v59[14]._rawValue;
  v53 = v59[13]._rawValue;
  data._rawValue = v59[5]._rawValue;
  v49 = v59[15]._rawValue;

  v52 = v49[1];
  v52(rawValue, v51);
  static DispatchTime.now()();
  v55 = checkValidTextInputs(data:)(data);

  if (!v55)
  {
    v5 = v59[5]._rawValue;

LABEL_14:
    (*(v59[8]._rawValue + 1))(v59[13]._rawValue, v59[7]._rawValue);
    v13 = v59[17]._rawValue;
    v17 = v59[16]._rawValue;
    v18 = v59[13]._rawValue;
    v19 = v59[12]._rawValue;
    v20 = v59[11]._rawValue;
    v21 = v59[10]._rawValue;

    v14 = *(v59[2]._rawValue + 1);
    v15 = v59[2]._rawValue;

    return v14();
  }

  v48 = checkValidTextInputs(data:)(v59[5]);
  v4 = v59[5]._rawValue;

  if (!v48)
  {
    goto LABEL_14;
  }

  v6 = v59[16]._rawValue;
  v28 = v59[14]._rawValue;
  v31 = v59[13]._rawValue;
  v30 = v59[12]._rawValue;
  v35 = v59[11]._rawValue;
  v37 = v59[10]._rawValue;
  v33 = v59[9]._rawValue;
  v38 = v59[7]._rawValue;
  v29 = v59[8]._rawValue;
  static DispatchTime.now()();
  v7 = MLServer.logger.unsafeMutableAddressor();
  v62(v6, v7, v28);
  v32 = v29[2];
  v32(v35, v30, v38);
  v32(v37, v31, v38);
  v8 = *(v29 + 20);
  v34 = (v8 + 16) & ~v8;
  v36 = (v33 + v34 + v8) & ~v8;
  v40 = swift_allocObject();
  v39 = v29[4];
  v39(v40 + v34, v35, v38);
  v39(v40 + v36, v37, v38);
  oslog = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #3 in closure #1 in MLServer.write(data:with:);
  *(v41 + 24) = v40;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v44 + 24) = v41;
  _allocateUninitializedArray<A>(_:)();
  v45 = v9;

  *v45 = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[1] = v42;

  v45[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[3] = v43;

  v45[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v45[5] = v44;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v47))
  {
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(0);
    v27 = createStorage<A>(capacity:type:)(0);
    v73 = v25;
    v74 = v26;
    v75 = v27;
    serialize(_:at:)(0, &v73);
    serialize(_:at:)(1, &v73);
    v76 = closure #1 in OSLogArguments.append(_:)partial apply;
    v77 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
    v76 = closure #1 in OSLogArguments.append(_:)partial apply;
    v77 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
    v76 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
    _os_log_impl(&_mh_execute_header, oslog, v47, "Validity check in MLServer Time taken = %f [ns]", v25, 0xCu);
    destroyStorage<A>(_:count:)(v26);
    destroyStorage<A>(_:count:)(v27);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v22 = v59[16]._rawValue;
  v23 = v59[14]._rawValue;
  v24 = v59[6]._rawValue;

  v52(v22, v23);
  v59[18]._rawValue = *&v24[OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML];

  v10 = async function pointer to MediaML.writeData(data:)[1];
  v11 = swift_task_alloc();
  v59[19]._rawValue = v11;
  *v11 = v59[2]._rawValue;
  v11[1] = closure #1 in MLServer.write(data:with:);
  v12 = v59[5]._rawValue;

  return MediaML.writeData(data:)(v12);
}

{
  v5 = *v0;
  v1 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  *(v5 + 16) = *v0;

  v2 = *(v5 + 16);

  return _swift_task_switch(closure #1 in MLServer.write(data:with:), 0);
}

{
  v7 = v0[13];
  v1 = v0[12];
  v2 = v0[8];
  v8 = v0[7];
  v0[2] = v0;
  v9 = *(v2 + 8);
  v9(v1);
  (v9)(v7, v8);
  v3 = v0[17];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[10];

  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t implicit closure #1 in closure #1 in MLServer.write(data:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t implicit closure #3 in closure #1 in MLServer.write(data:with:)()
{
  v2 = DispatchTime.uptimeNanoseconds.getter();
  v0 = DispatchTime.uptimeNanoseconds.getter();
  result = v2;
  if (v2 < v0)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    return Double.init<A>(_:)();
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  (*(a3 + 16))();
}

uint64_t MLServer.wakeRemoteService(with:)(void (*a1)(uint64_t), uint64_t a2)
{
  v26 = a2;
  v25 = a1;
  v36 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v24 = 0;
  v33 = type metadata accessor for Logger();
  v27 = v33;
  v28 = *(v33 - 8);
  v32 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  v2 = &v9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v2;
  v45 = __chkstk_darwin(v25);
  v46 = v3;
  v44 = v4;
  v5 = MLServer.logger.unsafeMutableAddressor();
  (*(v32 + 16))(v2, v5, v33);
  v38 = Logger.logObject.getter();
  v34 = v38;
  v37 = static os_log_type_t.default.getter();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v6 = v24;
    v15 = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = v15;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = 0;
    v16 = createStorage<A>(capacity:type:)(0);
    v14 = v16;
    v17 = createStorage<A>(capacity:type:)(v13);
    v43 = v15;
    v42 = v16;
    v41 = v17;
    v18 = 0;
    v19 = &v43;
    serialize(_:at:)(0, &v43);
    serialize(_:at:)(v18, v19);
    v40 = v39;
    v20 = &v9;
    __chkstk_darwin(&v9);
    v21 = &v9 - 6;
    *(&v9 - 4) = v7;
    *(&v9 - 3) = &v42;
    *(&v9 - 2) = &v41;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v23 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting mediamlxpc service", v11, 2u);
      v9 = 0;
      destroyStorage<A>(_:count:)(v14);
      destroyStorage<A>(_:count:)(v17);
      UnsafeMutablePointer.deallocate()();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v29 + 8))(v31, v27);

  v25(1);
}

uint64_t MLServer.getModelStats(with:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v51 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v36 = 0;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = &v17 - v37;
  v48 = type metadata accessor for Logger();
  v42 = v48;
  v43 = *(v48 - 8);
  v47 = v43;
  v44 = v43;
  v45 = *(v43 + 64);
  v2 = __chkstk_darwin(v40);
  v3 = &v17 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v3;
  v60 = v2;
  v61 = v4;
  v59 = v5;
  v6 = MLServer.logger.unsafeMutableAddressor();
  (*(v47 + 16))(v3, v6, v48);
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.info.getter();
  v50 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v7 = v36;
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = 0;
    v28 = createStorage<A>(capacity:type:)(0);
    v26 = v28;
    v29 = createStorage<A>(capacity:type:)(v25);
    v58 = v27;
    v57 = v28;
    v56 = v29;
    v30 = 0;
    v31 = &v58;
    serialize(_:at:)(0, &v58);
    serialize(_:at:)(v30, v31);
    v55 = v54;
    v32 = &v17;
    __chkstk_darwin(&v17);
    v33 = &v17 - 6;
    *(&v17 - 4) = v8;
    *(&v17 - 3) = &v57;
    *(&v17 - 2) = &v56;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v35 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v49, v50, "Getting model stats", v23, 2u);
      v21 = 0;
      destroyStorage<A>(_:count:)(v26);
      destroyStorage<A>(_:count:)(v29);
      UnsafeMutablePointer.deallocate()();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v44 + 8))(v46, v42);
  v17 = priority.unsafeMutableAddressor();
  v20 = 0;
  v19 = type metadata accessor for TaskPriority();
  v18 = *(v19 - 8);
  (*(v18 + 16))(v38, v17);
  (*(v18 + 56))(v38, 0, 1, v19);
  v9 = v39;

  v10 = swift_allocObject();
  v11 = v39;
  v12 = v40;
  v13 = v41;
  v14 = v20;
  v15 = v38;
  v10[2] = v20;
  v10[3] = v14;
  v10[4] = v11;
  v10[5] = v12;
  v10[6] = v13;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(v14, v14, v15, &async function pointer to partial apply for closure #1 in MLServer.getModelStats(with:), v10, &type metadata for () + 8);
}

uint64_t closure #1 in MLServer.getModelStats(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a6;
  v6[8] = a5;
  v6[7] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[6] = 0;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  v7 = v6[4];
  return _swift_task_switch(closure #1 in MLServer.getModelStats(with:), 0);
}

uint64_t closure #1 in MLServer.getModelStats(with:)()
{
  v1 = v0[7];
  v0[4] = v0;
  v0[10] = *(v1 + OBJC_IVAR____TtC10mediamlxpc8MLServer_mediaML);

  v2 = async function pointer to MediaML.getModelStats()[1];
  v3 = swift_task_alloc();
  *(v5 + 88) = v3;
  *v3 = *(v5 + 32);
  v3[1] = closure #1 in MLServer.getModelStats(with:);

  return MediaML.getModelStats()();
}

{
  v6 = v0[12];
  v5 = v0[9];
  v4 = v0[8];
  v0[4] = v0;
  v0[6] = v6;

  v4(v6);

  v1 = *(v0[4] + 8);
  v2 = v0[4];

  return v1();
}

{
  v1 = *(v0 + 80);
  *(v0 + 32) = v0;

  v2 = v0;
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v0 + 32);
  v5 = *(v2 + 104);

  return v3();
}

uint64_t closure #1 in MLServer.getModelStats(with:)(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 88);
  v10[4] = *v2;
  v11 = v10 + 4;
  v10[12] = a1;
  v10[13] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = closure #1 in MLServer.getModelStats(with:);
  }

  else
  {
    v5 = v10[10];

    v6 = *v11;
    v7 = closure #1 in MLServer.getModelStats(with:);
  }

  return _swift_task_switch(v7, 0);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v42 = a6;
  v43 = "Fatal error";
  v44 = "Unexpectedly found nil while unwrapping an Optional value";
  v45 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v46 = 0;
  v59 = a6;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v51 = &v10 - v47;

  v57 = v49;
  v58 = v50;
  outlined init with copy of TaskPriority?(v48, v51);
  v52 = type metadata accessor for TaskPriority();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  if ((*(v53 + 48))(v51, 1) == 1)
  {
    outlined destroy of TaskPriority?(v51);
    v39 = 0;
  }

  else
  {
    v38 = TaskPriority.rawValue.getter();
    (*(v53 + 8))(v51, v52);
    v39 = v38;
  }

  v35 = v39 | 0x1C00;
  v37 = *(v50 + 16);
  v36 = *(v50 + 24);
  swift_unknownObjectRetain();

  if (v37)
  {
    v33 = v37;
    v34 = v36;
    v27 = v36;
    v28 = v37;
    swift_getObjectType();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v6;
    swift_unknownObjectRelease();
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v25 = v32;
  v26 = v31;

  if (v41)
  {
    v23 = v40;
    v24 = v41;
    v7 = v46;
    v20 = v41;
    v21 = String.utf8CString.getter();

    v8 = *(v21 + 16);
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, &v57, &v55);
    if (v7)
    {
      __break(1u);
    }

    v19 = v55;

    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v18 = v22;
  if (v22)
  {
    v13 = v18;
    v12 = v18;
    outlined destroy of TaskPriority?(v48);

    v14 = v12;
  }

  else
  {

    outlined destroy of TaskPriority?(v48);
    v15 = v57;
    v16 = v58;

    v17 = 0;
    if (v26 != 0 || v25 != 0)
    {
      v56[0] = 0;
      v56[1] = 0;
      v56[2] = v26;
      v56[3] = v25;
      v17 = v56;
    }

    v14 = swift_task_create();
  }

  v11 = v14;

  return v11;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> ()(uint64_t a1, uint64_t a2)
{

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v3 = isa;
  }

  else
  {
    v3 = 0;
  }

  (*(a2 + 16))();
}

id MLServer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MLServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_10000C6A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0__0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v4 = *a2;
  v5 = a2[1];

  result = swift_task_create();
  *a3 = result;
  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v20 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v5 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v3 = _swift_stdlib_malloc_size(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_10000F87C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000F8C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000F914()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 5);
  v11 = *(v1 + 6);
  v12 = *(v1 + 7);
  v13 = *(v1 + 8);
  v14 = v1[9];
  v6 = *(v1 + 10);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:);

  return closure #1 in MLServer.getPrediction(inputFeatures:with:)(v14, a1, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t partial apply for closure #1 in MLServer.getPrediction(inputFeatures:with:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000FCD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10000FD1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t sub_10000FE2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

uint64_t sub_10000FE78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000FF04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:);

  return closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)(a1, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t partial apply for closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t a1)
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t sub_100010248()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.write(data:with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.write(data:with:);

  return closure #1 in MLServer.write(data:with:)(a1, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in MLServer.write(data:with:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1000105AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MLServer.getModelStats(with:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in MLServer.getModelStats(with:);

  return closure #1 in MLServer.getModelStats(with:)(a1, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLServer.getModelStats(with:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1000108DC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100010924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100010A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100010A80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100010ACC()
{
  v6 = type metadata accessor for DispatchTime();
  v4 = *(v6 - 8);
  v1 = *(v4 + 80);
  v2 = (v1 + 16) & ~v1;
  v5 = (v2 + *(v4 + 64) + v1) & ~v1;
  v7 = *(v4 + 8);
  v7(v0 + v2);
  (v7)(v0 + v5, v6);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in closure #1 in MLServer.write(data:with:)()
{
  v3 = *(type metadata accessor for DispatchTime() - 8);
  v1 = v0 + ((((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80));

  return implicit closure #3 in closure #1 in MLServer.write(data:with:)();
}

uint64_t sub_100010D14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_100010DCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100010E90()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)()
{
  result = *(v0 + 16);
  implicit closure #2 in closure #1 in MLServer.getPredictionDictionary(inputFeatures:with:)();
  return result;
}

uint64_t sub_100010F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100010F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100010FD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100011050()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in closure #1 in MLServer.getPrediction(inputFeatures:with:)()
{
  result = *(v0 + 16);
  implicit closure #2 in closure #1 in MLServer.getPrediction(inputFeatures:with:)();
  return result;
}

uint64_t sub_100011100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10001114C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100011198()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t outlined destroy of String.UTF8View(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

void static Main.main()()
{
  type metadata accessor for MLServerDelegate();
  v1 = MLServerDelegate.__allocating_init()();
  v0 = [objc_opt_self() serviceListener];
  _objc_retain(v1);
  [v0 setDelegate:v1];
  swift_unknownObjectRelease();
  [v0 activate];
}