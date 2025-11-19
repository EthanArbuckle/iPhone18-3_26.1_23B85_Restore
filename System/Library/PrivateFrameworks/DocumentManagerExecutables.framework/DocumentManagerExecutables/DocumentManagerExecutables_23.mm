void DOCDefaultSourceUIManager.mostRelevantiCloudSource(from:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x24C1FC540](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v9 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v9)
      {
        if ([v9 isEnterpriseDomain])
        {
          break;
        }
      }

      ++v4;
      if (v8 == i)
      {
        v7 = 0;
        break;
      }
    }

    v10 = 0;
    v1 = &selRef_removeFromSuperlayer;
    while (1)
    {
      if (v5)
      {
        v11 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v14 && ([v14 isMainiCloudDriveDomain] & 1) != 0)
      {
        goto LABEL_25;
      }

      ++v10;
      if (v13 == i)
      {
        v12 = 0;
LABEL_25:
        v1 = v21;
        goto LABEL_32;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v7 = 0;
  v12 = 0;
LABEL_32:
  v15 = [objc_opt_self() defaultPermission];
  v16 = [v1 configuration];
  v17 = [v16 hostIdentifier];

  if (!v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = MEMORY[0x24C1FAD20](v18);
  }

  v19 = [v15 dataOwnerStateForBundleIdentifier_];

  if (v19 == 1 && v7)
  {

    return;
  }

  if (v12 || !i)
  {
    goto LABEL_38;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
    goto LABEL_38;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a1 + 32);
LABEL_38:

    return;
  }

  __break(1u);
}

void DOCDefaultSourceUIManager.updateAlertState(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v110 = (&v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2493AC000, v9, v10, "[Default Source UI]: Updating Alert State for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v113 = v2;
  v16 = [v2 configuration];
  v17 = [v16 hostIdentifier];

  v18 = v17;
  v19 = v17;
  if (!v17)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = MEMORY[0x24C1FAD20](v20);

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = MEMORY[0x24C1FAD20](v21);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v17;
  v24 = dispatch_semaphore_create(0);
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v22;
  aBlock[4] = partial apply for closure #1 in defaultSource #1 () in DOCDefaultSourceUIManager.updateAlertState(for:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_34_1;
  v27 = _Block_copy(aBlock);
  v28 = v24;

  [v25 defaultSourceForBundleIdentifier:v18 selectedSourceIdentifier:v8 completionBlock:v27];
  _Block_release(v27);

  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  v29 = *(v22 + 16);
  v30 = v29;

  if (v29)
  {
    v109 = v30;
    v31 = [v30 identifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        v65 = [v109 identifier];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;
        if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
        {
        }

        else
        {
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v70 & 1) == 0)
          {
            v89 = v8;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v114[0] = v108;
              *v92 = 136315138;
              v93 = v89;
              v94 = [v93 description];
              v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v97 = v96;

              v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v114);

              *(v92 + 4) = v98;
              _os_log_impl(&dword_2493AC000, v90, v91, "[Default Source UI]: %s is no longer available -- switching to iCloud Drive", v92, 0xCu);
              v99 = v108;
              __swift_destroy_boxed_opaque_existential_0(v108);
              MEMORY[0x24C1FE850](v99, -1, -1);
              MEMORY[0x24C1FE850](v92, -1, -1);
            }

            v100 = [v109 identifier];
            [v25 setDefaultSourceIdentifier:v100 forBundleIdentifier:v19];

            v101 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
            v56 = v113;
            swift_beginAccess();
            v102 = v56[v101];
            v103 = [v56 queue];
            v105 = v110;
            v104 = v111;
            *v110 = v103;
            v106 = v112;
            (*(v104 + 104))(v105, *MEMORY[0x277D85200], v112);
            LOBYTE(v100) = _dispatchPreconditionTest(_:)();
            (*(v104 + 8))(v105, v106);
            if (v100)
            {
              v56[v101] = 0;
              if (!v102)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_39;
          }
        }

        v71 = v8;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v114[0] = v75;
          *v74 = 136315138;
          v76 = v71;
          v77 = [v76 description];
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;

          v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v114);

          *(v74 + 4) = v81;
          _os_log_impl(&dword_2493AC000, v72, v73, "[Default Source UI]: %s is no longer available -- switching to local", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x24C1FE850](v75, -1, -1);
          MEMORY[0x24C1FE850](v74, -1, -1);
        }

        v56 = v113;
        v82 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
        swift_beginAccess();
        v83 = v56[v82];
        v84 = [v56 queue];
        v86 = v110;
        v85 = v111;
        *v110 = v84;
        v87 = v112;
        (*(v85 + 104))(v86, *MEMORY[0x277D85200], v112);
        v88 = _dispatchPreconditionTest(_:)();
        (*(v85 + 8))(v86, v87);
        if (v88)
        {
          v56[v82] = 2;
          if (v83 == 2)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }
    }

    v45 = v8;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v114[0] = v49;
      *v48 = 136315138;
      v50 = v45;
      v51 = [v50 description];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v114);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_2493AC000, v46, v47, "[Default Source UI]: %s is still available, nothing to do", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    v56 = v113;
    v57 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
    swift_beginAccess();
    v58 = v56[v57];
    v59 = [v56 queue];
    v61 = v110;
    v60 = v111;
    *v110 = v59;
    v62 = v112;
    (*(v60 + 104))(v61, *MEMORY[0x277D85200], v112);
    v63 = _dispatchPreconditionTest(_:)();
    (*(v60 + 8))(v61, v62);
    if (v63)
    {
      v56[v57] = 0;
      if (!v58)
      {
LABEL_21:

        return;
      }

LABEL_20:
      *(swift_allocObject() + 16) = v56;
      v64 = v56;
      DOCRunInMainThread(_:)();

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_38;
  }

  v36 = v8;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v114[0] = v40;
    *v39 = 136315138;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v114);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_2493AC000, v37, v38, "[Default Source UI]: no default source for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v39, -1, -1);
  }
}

Swift::Int closure #1 in defaultSource #1 () in DOCDefaultSourceUIManager.updateAlertState(for:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v12 = _convertErrorToNSError(_:)();
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v23);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_2493AC000, v8, v9, "Failed to fetch default source: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v20 = *(a4 + 16);
    *(a4 + 16) = a1;
    v21 = a1;
  }

  return OS_dispatch_semaphore.signal()();
}

id DOCDefaultSourceUIManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State()
{
  result = lazy protocol witness table cache variable for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State;
  if (!lazy protocol witness table cache variable for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State);
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCDefaultSourceUIManager.getIsICloudDriveEnabled(completion:)(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2(v3 != 0);
}

id partial apply for closure #1 in DOCDefaultSourceUIManager.state.didset()
{
  v1 = *(v0 + 16);
  [v1 dismissAlert];

  return [v1 presentAlert];
}

void specialized closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7, v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = v10;
    v20 = v9;
    swift_unknownObjectRetain();
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    v18 = [v13 queue];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_151;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    MEMORY[0x24C1FB9A0](0, v12, v6, v15);
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    (*(v19 + 8))(v12, v20);
  }
}

uint64_t specialized DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  v12 = MEMORY[0x28223BE20](v21, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v14, v21);
}

uint64_t DOCImageContainerFittingView.isShadowHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCImageContainerFittingView.isShadowHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCImageContainerFittingView.updateLayers()();
}

uint64_t (*DOCImageContainerFittingView.isShadowHidden.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCImageContainerFittingView.isShadowHidden.modify;
}

uint64_t DOCImageContainerFittingView.thumbnails.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_thumbnails;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCImageContainerFittingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = _UISolariumEnabled();
  v10 = 5.0;
  if (v9)
  {
    v10 = 20.0;
  }

  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_metrics] = v10;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden] = 0;
  v11 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_thumbnails] = v11;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes] = v11;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *&v4[v12] = ImageCache.init()();
  v13 = 3;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_maxThumbnailCount] = 3;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes] = v11;
  v38.receiver = v4;
  v38.super_class = type metadata accessor for DOCImageContainerFittingView();
  v14 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_metrics;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  do
  {
    v17 = *&v14[v15];
    v18 = [objc_allocWithZone(MEMORY[0x277D06388]) init];
    v19 = [v18 layer];
    [v19 setBorderWidth_];

    v20 = [v18 layer];
    [v20 setCornerRadius_];

    [v18 setContentMode_];
    [v18 setClipsToBounds_];
    v21 = *&v14[v15];
    v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v22 setClipsToBounds_];
    v23 = [v22 layer];
    [v23 setMasksToBounds_];
    [v23 setBorderWidth_];
    [v23 setCornerRadius_];
    [v23 setShadowOffset_];
    LODWORD(v24) = 1036831949;
    [v23 setShadowOpacity_];

    [v18 setDelegate_];
    [v18 frame];
    [v22 setFrame_];
    [v18 setClipsToBounds_];

    swift_beginAccess();
    v25 = *&v14[v16];
    v26 = v18;
    v27 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v14[v16] = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      *&v14[v16] = v25;
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    if (v30 >= v29 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v25);
    }

    *(v25 + 2) = v30 + 1;
    v31 = &v25[16 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v27;
    *&v14[v16] = v25;
    swift_endAccess();

    --v13;
  }

  while (v13);
  v32 = *&v14[v16];
  v33 = *(v32 + 16);
  if (v33)
  {

    v34 = (v32 + 16 * v33 + 24);
    while (v33 <= *(v32 + 16))
    {
      --v33;
      v35 = *v34;
      v36 = *(v34 - 1);
      v37 = v35;
      [v14 addSubview_];
      [v14 addSubview_];

      v34 -= 2;
      if (!v33)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    [v14 setClipsToBounds_];
    DOCImageContainerFittingView.updateTransforms()();
  }
}

double DOCImageContainerFittingView.fittingSize.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0.0;
  }

  [*(v2 + 32) fittingSize];
  return result;
}

id DOCImageContainerFittingView.fittingSize.setter(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v6 = *&v2[v5];
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      [*(v6 + v8) setFittingSize_];
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return [v2 invalidateIntrinsicContentSize];
}

void (*DOCImageContainerFittingView.fittingSize.modify(uint64_t *a1))(double **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16))
  {
    [*(v6 + 32) fittingSize];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  return DOCImageContainerFittingView.fittingSize.modify;
}

void DOCImageContainerFittingView.fittingSize.modify(double **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 5);
  v4 = *&v3[*(v2 + 6)];
  v5 = *(v4 + 16);
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = v2[3];
    v6 = v2[4];
    v8 = (v4 + 32);

    do
    {
      v9 = *v8;
      v8 += 2;
      [v9 setFittingSize_];
      --v5;
    }

    while (v5);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v11 = v2[3];
    v10 = v2[4];
    v12 = (v4 + 32);

    do
    {
      v13 = *v12;
      v12 += 2;
      [v13 setFittingSize_];
      --v5;
    }

    while (v5);
  }

  v3 = *(v2 + 5);
LABEL_10:
  [v3 invalidateIntrinsicContentSize];

  free(v2);
}

void *DOCImageContainerFittingView.firstThumbnailView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = *(v2 + 32);
  v4 = v3;
  return v3;
}

id DOCImageContainerFittingView.nodes.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v75 = &v64 - v3;
  v4 = type metadata accessor for ImageOptions();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v6);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v64 - v10);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes;
  swift_beginAccess();
  v76 = v0;
  v13 = *(v0 + v12);
  v14 = (v13 >> 62);
  if (v13 >> 62)
  {
    goto LABEL_36;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v16)
  {
    goto LABEL_70;
  }

  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v16 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v16 != 2)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }
        }
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v78 = v4;

    if (v14)
    {
      v18 = _CocoaArrayWrapper.subscript.getter();
      v19 = v21;
      v17 = v22;
      v20 = v23;

      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v19 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = (2 * v16) | 1;
      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v14 = *(v26 + 16);

    if (__OFSUB__(v20 >> 1, v17))
    {
      __break(1u);
LABEL_62:
      swift_unknownObjectRelease_n();
LABEL_16:
      specialized _copyCollectionToContiguousArray<A>(_:)(v18, v19, v17, v20);
      v25 = v24;
      goto LABEL_23;
    }

    if (v14 != ((v20 >> 1) - v17))
    {
      goto LABEL_62;
    }

    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v25)
    {
      goto LABEL_24;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes;
    v27 = v76;
    *(v76 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes) = v25;

    v29 = (*((*MEMORY[0x277D85000] & *v27) + 0xF0))(v28);
    v13 = v29;
    v73 = v11;
    v77 = v5;
    if (v29 >> 62)
    {
      goto LABEL_38;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v76;
    if (!v30)
    {
      break;
    }

LABEL_26:
    v31 = 0;
    while ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v31, v13);
      v5 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_34;
      }

LABEL_30:
      [v14 removeListener_];
      swift_unknownObjectRelease();
      ++v31;
      if (v5 == v30)
      {
        goto LABEL_39;
      }
    }

    if (v31 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    v14 = *(v13 + 8 * v31 + 32);
    swift_unknownObjectRetain();
    v5 = (v31 + 1);
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_30;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v32 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
LABEL_38:
      v30 = __CocoaSet.count.getter();
      v11 = v76;
      if (!v30)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v32 >= 3)
    {
      v63 = 3;
    }

    else
    {
      v63 = v32;
    }

    if (v32 >= 0)
    {
      v16 = v63;
    }

    else
    {
      v16 = 3;
    }

    result = __CocoaSet.count.getter();
    if (result < v16)
    {
LABEL_70:
      __break(1u);
      return result;
    }
  }

LABEL_39:

  (*((*MEMORY[0x277D85000] & *v11) + 0xF8))(MEMORY[0x277D84F90]);
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v72 = v33;
  v34 = *(v11 + v33);
  v35 = *(v34 + 16);

  if (v35)
  {
    v36 = 0;
    v37 = (v34 + 40);
    do
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      ++v36;
      v38 = *v37;
      v39 = *(v37 - 1);
      v40 = v38;
      [v39 setHidden_];
      [v40 setHidden_];

      v37 += 2;
    }

    while (v35 != v36);
  }

  v34 = *(v4 + v11);
  if (v34 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v42 = v78;
    v71 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_imageCache;

    if (!i)
    {
      break;
    }

    v43 = 0;
    v44 = 0;
    v70 = v34 & 0xC000000000000001;
    v69 = v34 & 0xFFFFFFFFFFFFFF8;
    v66 = v77 + 16;
    v65 = v77 + 8;
    v68 = v34;
    v67 = i;
    while (1)
    {
      if (v70)
      {
        MEMORY[0x24C1FC540](v44, v34);
      }

      else
      {
        if (v44 >= *(v69 + 16))
        {
          goto LABEL_59;
        }

        swift_unknownObjectRetain();
      }

      v45 = *(v11 + v72);
      if (v44 >= *(v45 + 16))
      {
        break;
      }

      v46 = v45 + v43;
      v47 = *(v46 + 40);
      v48 = *((*MEMORY[0x277D85000] & *v11) + 0x120);
      v78 = *(v46 + 32);
      v77 = v47;
      v48();
      v49 = [v11 traitCollection];
      [v49 displayScale];

      v50 = [v11 traitCollection];
      UITraitCollection._ifColorForIconFolderTintComponents.getter();

      v51 = v73;
      ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
      (*v66)(v74, v51, v42);
      v52 = objc_allocWithZone(type metadata accessor for NodeThumbnail());
      swift_unknownObjectRetain();

      v53 = NodeThumbnail.init(node:imageOptions:imageCache:)();
      NodeThumbnail.addListener(_:)();
      v54 = v42;
      v55 = *((*MEMORY[0x277D85000] & *v11) + 0x100);
      v56 = v53;
      v57 = v55(v79);
      v59 = v58;
      MEMORY[0x24C1FB090]();
      if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v44;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57(v79, 0);
      v60 = v78;
      [v78 setHidden_];
      v61 = v77;
      [v77 setHidden_];
      v62 = NodeThumbnail.thumbnail.getter();
      [v60 setImage_];
      swift_unknownObjectRelease();

      (*v65)(v51, v54);
      v43 += 16;
      v42 = v54;
      v11 = v76;
      v34 = v68;
      if (v67 == v44)
      {
        goto LABEL_56;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_56:

  DOCImageContainerFittingView.updateTransforms()();
  [v11 invalidateIntrinsicContentSize];
  return [v11 setNeedsLayout];
}

id DOCImageContainerFittingView.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return DOCImageContainerFittingView.nodes.didset();
}

uint64_t (*DOCImageContainerFittingView.nodes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCImageContainerFittingView.nodes.modify;
}

uint64_t DOCImageContainerFittingView.isShadowHidden.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

CGSize __swiftcall DOCImageContainerFittingView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  width = a1.width;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v4 = *(*&v1[v3] + 16);
  if (v4)
  {
    v5 = 0.0;
    v6 = ( + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = v7;
      v10 = [v8 image];
      if (v10)
      {
        v11 = v10;
        [v10 size];
        v12 = [v1 window];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 screen];

          [v14 scale];
        }

        DOCAdaptSizeToRect();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v8 transform];
        v28.origin.x = v16;
        v28.origin.y = v18;
        v28.size.width = v20;
        v28.size.height = v22;
        v29 = CGRectApplyAffineTransform(v28, &v27);
        height = v29.size.height;

        if (v5 <= height)
        {
          v5 = height;
        }
      }

      else
      {
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
  }

  v24 = width;
  v25 = v5;
  result.height = v25;
  result.width = v24;
  return result;
}

Swift::Void __swiftcall DOCImageContainerFittingView.updateContentFrame()()
{
  [v0 bounds];
  rect = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v9 = *(*&v0[v8] + 16);
  if (v9)
  {
    v10 = ( + 40);
    do
    {
      v12 = *v10;
      v13 = *(v10 - 1);
      v14 = v12;
      v15 = v13;
      v16 = v14;
      [v15 intrinsicContentSize];
      v17 = [v0 window];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 screen];

        [v19 scale];
      }

      DOCAdaptSizeToRect();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      if (_UISolariumEnabled())
      {
        if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
        {
          v31.origin.x = rect;
          v31.origin.y = v3;
          v31.size.width = v5;
          v31.size.height = v7;
          MidX = CGRectGetWidth(v31) + v25 * -0.5;
        }

        else
        {
          MidX = v25 * 0.5;
        }
      }

      else
      {
        v29.origin.x = v21;
        v29.origin.y = v23;
        v29.size.width = v25;
        v29.size.height = v27;
        MidX = CGRectGetMidX(v29);
      }

      v30.origin.x = v21;
      v30.origin.y = v23;
      v30.size.width = v25;
      v30.size.height = v27;
      [v15 setCenter_];
      [v15 bounds];
      [v15 setBounds_];
      [v15 center];
      [v16 setCenter_];
      [v15 bounds];

      [v16 bounds];
      [v16 setBounds_];

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  DOCImageContainerFittingView.updateLayers()();
}

void DOCImageContainerFittingView.updateTransforms()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (!v3)
  {
LABEL_21:

    return;
  }

  v4 = 0;
  v30 = *MEMORY[0x277CBF2C0];
  v31 = *(MEMORY[0x277CBF2C0] + 16);
  v5 = *(MEMORY[0x277CBF2C0] + 32);
  v6 = *(MEMORY[0x277CBF2C0] + 40);
  while (v4 < *(v2 + 16))
  {
    v9 = v2 + 32 + 16 * v4;
    v11 = *v9;
    v10 = *(v9 + 8);
    if (v4)
    {
      t1.a = 0.0;
      v12 = v11;
      v13 = v10;
      v14 = v12;
      v15 = v13;
      while (1)
      {
        MEMORY[0x24C1FE870](&t1, 8);
        if ((0x20000000000001 * *&t1.a) >= 0x1FFFFFFFFFF801)
        {
          break;
        }

        t1.a = 0.0;
      }

      v16 = (*&t1.a * 0x20000000000001uLL) >> 64;
      if (v16 == 0x20000000000000)
      {
        v17 = 7.0;
        if (v4)
        {
          goto LABEL_15;
        }

LABEL_14:
        v17 = -v17;
      }

      else
      {
        v17 = vcvtd_n_f64_u64(v16, 0x35uLL) * 4.0 + 3.0;
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      Rotation = CGAffineTransformMakeRotation(&t1, v17 * 3.14159265 / 180.0);
      v34 = *&t1.a;
      v36 = *&t1.c;
      tx = t1.tx;
      ty = t1.ty;
      goto LABEL_16;
    }

    v18 = v11;
    v19 = v10;
    v20 = v18;
    Rotation = v19;
    tx = v5;
    ty = v6;
    v34 = v30;
    v36 = v31;
LABEL_16:
    v24 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))(Rotation);
    if (v24 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v5;
    v27 = v6;
    v28 = v30;
    v29 = v31;
    if (v25 >= 2)
    {
      CGAffineTransformMakeScale(&t1, 0.95, 0.95);
      v28 = *&t1.a;
      v29 = *&t1.c;
      v26 = t1.tx;
      v27 = t1.ty;
    }

    ++v4;
    *&t1.a = v34;
    *&t1.c = v36;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v28;
    *&t2.c = v29;
    t2.tx = v26;
    t2.ty = v27;
    CGAffineTransformConcat(&v37, &t1, &t2);
    v33 = *&v37.c;
    v35 = *&v37.a;
    v32 = *&v37.tx;
    v7 = v11;
    *&t1.a = v35;
    *&t1.c = v33;
    *&t1.tx = v32;
    [v7 setTransform_];
    [v7 transform];
    [v10 setTransform_];
    v8 = [v7 layer];

    [v8 setAllowsEdgeAntialiasing_];
    if (v4 == v3)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void DOCImageContainerFittingView.updateLayers()()
{
  v1 = v0;
  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes);
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v42 = objc_opt_self();
      v40 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
      v38 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
      v39 = (*MEMORY[0x277D85000] & *v1) + 176;
      v41 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
      swift_beginAccess();
      v4 = 0;
      v5 = 4;
      v43 = v1;
      while (1)
      {
        v14 = v5 - 4;
        v15 = *(v1 + v44);
        if ((v15 & 0xC000000000000001) != 0)
        {

          v16 = MEMORY[0x24C1FC540](v5 - 4, v15);
        }

        else
        {
          if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v16 = *(v15 + 8 * v5);
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v17 = (DOCNode.areDiskPropertiesSupported.getter() & 1) != 0 ? 2 : [v16 isFolder];
        swift_unknownObjectRelease();
        v18 = *(v1 + v41);
        if (v14 >= *(v18 + 16))
        {
          break;
        }

        v19 = v18 + v4;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        v22 = v20;
        v23 = v40();
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x24C1FC540](v5 - 4, v23);
        }

        else
        {
          if (v14 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v24 = *(v23 + 8 * v5);
          swift_unknownObjectRetain();
        }

        v25 = [v24 isRepresentativeIcon];
        if (v17)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        v45 = v22;
        v27 = [v22 layer];
        if (v26 == 1)
        {
          type metadata accessor for CGColorRef(0);
          _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
          v28 = v46;
        }

        else
        {
          v29 = [v42 clearColor];
          v28 = [v29 CGColor];

          v1 = v43;
        }

        [v27 setBorderColor_];

        [v21 setHidden_];
        v30 = [v21 layer];
        if (v17 == 1)
        {
          v31 = *(v1 + v44);
          if ((v31 & 0xC000000000000001) != 0)
          {

            v32 = MEMORY[0x24C1FC540](v5 - 4, v31);
          }

          else
          {
            if (v14 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v32 = *(v31 + 8 * v5);
            swift_unknownObjectRetain();
          }

          [v21 bounds];
          if (v33 <= 0.0 || v34 <= 0.0)
          {
            v35 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
          }

          else
          {
            v35 = specialized static UIBezierPath.path(for:thumbnailSize:)(v32, v33, v34);
          }

          v36 = v35;
          swift_unknownObjectRelease();
          v6 = [v36 CGPath];
        }

        else
        {
          v6 = 0;
        }

        [v30 setShadowPath_];

        v7 = [v21 layer];
        v8 = &selRef_systemBackgroundColor;
        if (!v26)
        {
          v8 = &selRef_clearColor;
        }

        v9 = [v42 *v8];
        v10 = [v9 CGColor];

        [v7 setBackgroundColor_];
        v11 = [v21 layer];
        v12 = [v42 blackColor];
        v13 = [v12 CGColor];

        [v11 setShadowColor_];
        swift_unknownObjectRelease();

        ++v5;
        v4 += 16;
        --v3;
        v1 = v43;
        if (!v3)
        {
          return;
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
      v37 = __CocoaSet.count.getter();
      if (v37 < 0)
      {
        __break(1u);
      }

      v3 = v37;
    }

    while (v37);
  }
}

uint64_t DOCImageContainerFittingView.thumbnailLoaded(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCImageContainerFittingView.thumbnailLoaded(_:)(void *a1, void *a2)
{
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0xF0))();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v8 = [v7 hash];
    v9 = [a2 hash];
    swift_unknownObjectRelease();
    if (v8 == v9)
    {

      DOCImageContainerFittingView.updateThumbnail(_:at:)(a2, v6);
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_18;
    }
  }
}

void DOCImageContainerFittingView.updateThumbnail(_:at:)(void *a1, unint64_t a2)
{
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *&v7[v2];
  if (*(v8 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    if (__CocoaSet.count.getter() > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  a2 = *(v8 + 16 * a2 + 32);
  v7 = [a2 image];
  v4 = &selRef_removeFromSuperlayer;
  v3 = [a1 thumbnail];
  v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes);
  if (v9 >> 62)
  {
    goto LABEL_11;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
LABEL_7:

    goto LABEL_8;
  }

LABEL_5:
  if (v7)
  {
    v7 = v7;
    [v7 size];
    [v7 size];
    [v3 size];
    [v3 size];

    goto LABEL_7;
  }

LABEL_8:

  v10 = [a1 v4[443]];
  [a2 setImage_];

  (*((*MEMORY[0x277D85000] & *v2) + 0x158))();
  [v2 setNeedsLayout];
}

double DOCContainerFittingView.fittingSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize;
  swift_beginAccess();
  return *v1;
}

id DOCContainerFittingView.fittingSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return [v2 invalidateIntrinsicContentSize];
}

id (*DOCContainerFittingView.fittingSize.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCContainerFittingView.fittingSize.modify;
}

id DOCContainerFittingView.fittingSize.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 invalidateIntrinsicContentSize];
  }

  return result;
}

uint64_t DOCContainerFittingView.preventContentOffsetUpdates.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCContainerFittingView.preventContentOffsetUpdates.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCContainerFittingView.observationContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCContainerFittingView.observationContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCContainerFittingView.__allocating_init(containedViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController] = a1;
  v12.receiver = v3;
  v12.super_class = v1;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = [v5 view];
  if (result)
  {
    v8 = result;
    [v6 addSubview_];

    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
    swift_beginAccess();
    v11 = *&v6[v10];
    *&v6[v10] = v9;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *DOCContainerFittingView.init(containedViewController:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCContainerFittingView();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = [v4 view];
  if (result)
  {
    v7 = result;
    [v5 addSubview_];

    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
    swift_beginAccess();
    v10 = *&v5[v9];
    *&v5[v9] = v8;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCContainerFittingView.init(containedViewController:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySo6CGSizeVGMd);
  NSKeyValueObservedChange.oldValue.getter();
  NSKeyValueObservedChange.newValue.getter();
  if (v8)
  {
    if (v11)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v11 & 1) != 0 || (v6 == v9 ? (v0 = v7 == v10) : (v0 = 0), !v0))
  {
LABEL_9:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong invalidateIntrinsicContentSize];
      [v2 setNeedsLayout];
      [v2 layoutIfNeeded];
      v3 = MEMORY[0x277D85000];
      v4 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
      v5 = v4(1);
      (*((*v3 & *v2) + 0xC8))(v5);
      v4(0);
    }
  }
}

Swift::Void __swiftcall DOCContainerFittingView.layoutSubviews()()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DOCContainerFittingView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController);
  [v9 preferredContentSize];
  v10 = [v0 window];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 screen];

    [v12 scale];
  }

  DOCAdaptSizeToRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v26.origin.x = v2;
  v26.origin.y = v4;
  v26.size.width = v6;
  v26.size.height = v8;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  Height = CGRectGetHeight(v27);
  v23 = [v9 view];
  if (v23)
  {
    v24 = v23;
    [v23 setFrame_];

    (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCContainerFittingView.updateContenOffsetFromTop()()
{
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x90))() & 1) == 0)
  {
    [v0 frame];
    v2 = v1;
    v3 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController) view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;

      [v0 setContentOffsetFromTop_];
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCContainerFittingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCContainerFittingView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCImageContainerFittingView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized DOCImageContainerFittingView.init(coder:)()
{
  v1 = _UISolariumEnabled();
  v2 = 5.0;
  if (v1)
  {
    v2 = 20.0;
  }

  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_metrics) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_thumbnails) = v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes) = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v0 + v4) = ImageCache.init()();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_maxThumbnailCount) = 3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id DOCItemCollectionViewPool.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCItemCollectionViewPool.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCItemCollectionViewPool();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DOCItemCollectionViewPool.collectionView(withLayout:updateDataSourceHandler:)(void *a1, void (*a2)(void))
{
  v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration);
  v6 = objc_allocWithZone(type metadata accessor for DOCItemCollectionView());
  v7 = DOCItemCollectionView.init(configuration:collectionViewLayout:)(v5, a1);
  a2();
  return v7;
}

id DOCItemCollectionViewPool.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCItemCollectionViewPool.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionViewPool();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCViewOptionsView.viewModel.getter(uint64_t a1, uint64_t a2)
{
  specialized DOCViewOptionsView.viewModel.getter(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t DOCViewOptionsView.viewModel.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

void DOCViewOptionsView.embeddedInHostingController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v6 - 8, v7);
  type metadata accessor for DOCViewOptionsView();
  swift_getWitnessTable();
  type metadata accessor for UIHostingController();
  swift_unknownObjectRetain();
  v8 = UIHostingController.__allocating_init(rootView:)();
  v9 = *(a4 + 16);
  swift_unknownObjectRetain();
  v10 = v8;
  v11 = v9(a3, a4);
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = MEMORY[0x24C1FAD20](v11, v13);

  [v10 setTitle_];

  v15 = [v10 view];
  if (v15)
  {
    v16 = [objc_opt_self() clearColor];
    [v15 setBackgroundColor_];

    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCViewOptionsView.contentView(for:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v174 = a3;
  v175 = a4;
  v180 = a6;
  v181 = a2;
  LODWORD(v173) = a1;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd);
  v165 = *(v167 - 1);
  MEMORY[0x28223BE20](v167, v9);
  v164 = &v143 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v179, v11);
  v166 = &v143 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMd);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v13);
  v149 = (&v143 - v14);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd);
  MEMORY[0x28223BE20](v172, v15);
  v163 = &v143 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA08ModifiedD0VyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAVGAvkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAGyAS_AA8StaticIfVyAA8SolariumVASSgAA05EmptyG0VGtGGA5_yAA0G14InputPredicatePAAE1nopyQrxFZQOyA7__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AVQo_GGAA0L18AttachmentModifierVG_Qo_A33_G_AIyAQyAsT0t8GroupingN0OAXySayA38_GA38_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAGyAIyAQyAsT29DOCBrowserLayoutConfigurationV11SizeSettingOAXySayA52_GA52_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A52_Qo_A33_GGGA33_G_AIyAA6SliderVyA10_A10_GA33_GSgtGGSgGAIyAA6ToggleVyASGA33_G_GMd);
  MEMORY[0x28223BE20](v177, v17);
  v178 = &v143 - v18;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAVGAvkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAGyAS_AA8StaticIfVyAA8SolariumVASSgAA05EmptyG0VGtGGA5_yAA0G14InputPredicatePAAE1nopyQrxFZQOyA7__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AVQo_GGAA0L18AttachmentModifierVG_Qo_A33_G_AIyAQyAsT0t8GroupingN0OAXySayA38_GA38_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAGyAIyAQyAsT29DOCBrowserLayoutConfigurationV11SizeSettingOAXySayA52_GA52_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A52_Qo_A33_GGGA33_G_AIyAA6SliderVyA10_A10_GA33_GSgtGGSg_GMd);
  MEMORY[0x28223BE20](v169, v19);
  v21 = &v143 - v20;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd);
  MEMORY[0x28223BE20](v176, v22);
  v171 = &v143 - v23;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd);
  MEMORY[0x28223BE20](v170, v24);
  v26 = &v143 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAHGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AHQo_AA31AccessibilityAttachmentModifierVGGGMd);
  v150 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v143 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGMd);
  v168 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v143 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = (&v143 - v41);
  v160 = type metadata accessor for AccessibilityChildBehavior();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v43);
  v156 = &v143 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMd);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v45);
  v47 = &v143 - v46;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v154, v48);
  v151 = &v143 - v49;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleC0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyC0VGtGGA1_yAA0C14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0G18AttachmentModifierVG_Qo_Md);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v50);
  v155 = &v143 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd);
  MEMORY[0x28223BE20](v52, v53);
  v59 = MEMORY[0x28223BE20](v54, v55);
  if (v173)
  {
    if (v173 != 1)
    {
      v117 = *(a5 + 48);
      v118 = v174;
      swift_unknownObjectRetain();
      v119 = v175;
      v188 = v117(v175, a5);
      v189 = v120;
      v121 = MEMORY[0x24C1F9D60](v181, v118, v119, *(a5 + 8));
      MEMORY[0x28223BE20](v121, v122);
      v141 = v119;
      v142 = a5;
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type String and conformance String();
      v123 = v164;
      Toggle<>.init<A>(_:isOn:)();
      (*(a5 + 136))(v119, a5);
      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
      v124 = v166;
      v125 = v167;
      View.accessibilityIdentifier(_:)();

      v165[1](v123, v125);
      outlined init with copy of DOCGridLayout.Spec?(v124, v178, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of CharacterSet?(v124, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
    }

    v60 = v21;
    v61 = *(a5 + 256);
    v62 = v174;
    swift_unknownObjectRetain();
    v63 = v175;
    v64 = v61(v175, a5);
    swift_unknownObjectRelease();
    v65 = *(v64 + 16);

    if (v65)
    {
      v66 = static HorizontalAlignment.center.getter();
      v67 = v149;
      *v149 = v66;
      *(v67 + 8) = 0;
      *(v67 + 16) = 1;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables010DOCBrowserG13ConfigurationV11SizeSettingOAA7ForEachVySayATGAtKyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_AA31AccessibilityAttachmentModifierVGGGA2_G_AKyAA6SliderVyAA05EmptyD0VA10_GA2_GSgtGGMd);
      closure #5 in DOCViewOptionsView.contentView(for:)(v181, v62, v63, a5, v67 + *(v68 + 44), a7);
      v69 = v163;
      outlined init with take of (key: URL, value: FPItem)(v67, v163, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMd);
      (v161[7])(v69, 0, 1, v162);
    }

    else
    {
      v69 = v163;
      (v161[7])(v163, 1, 1, v162);
    }

    outlined init with copy of DOCGridLayout.Spec?(v69, v60, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?();
    v127 = v171;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of DOCGridLayout.Spec?(v127, v178, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CharacterSet?(v127, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd);
    v128 = v69;
    v129 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd;
  }

  else
  {
    v144 = v34;
    v145 = v30;
    v146 = v27;
    v163 = v31;
    v164 = v38;
    v165 = v42;
    v166 = v26;
    v167 = v21;
    v70 = *(a5 + 8);
    v173 = &v143 - v57;
    v149 = v58;
    v162 = v56;
    v72 = v174;
    v71 = v175;
    v73 = MEMORY[0x24C1F9D60](v181, v174, v175, v70, v59);
    MEMORY[0x28223BE20](v73, v74);
    v142 = a5;
    swift_getKeyPath();
    v143 = v70;
    ObservedObject.Wrapper.subscript.getter();

    v75 = swift_unknownObjectRelease();
    v161 = &v143;
    v185 = v188;
    v186 = v189;
    v187 = v190;
    MEMORY[0x28223BE20](v75, v76);
    v148 = v136;
    MEMORY[0x28223BE20](v77, v78);
    MEMORY[0x28223BE20](v79, v80);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables15DOCItemSortModeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0O5GroupVyAA05TupleK0VyAA4TextV_AA8StaticIfVyAA8SolariumVASSgAA05EmptyK0VGtGGAUyAA0K14InputPredicatePAAE1nopyQrxFZQOyAW_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA9_5ScaleOGGSgAZGG_AFQo_GMd);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA4TextV_AA09TitleOnlyfE0VQo_Md);
    v82 = lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
    v83 = lazy protocol witness table accessor for type ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v84 = type metadata accessor for TitleOnlyLabelStyle();
    v85 = lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40]);
    v182._countAndFlagsBits = MEMORY[0x277CE0BD8];
    v182._object = v84;
    v86 = MEMORY[0x277CE0BC8];
    v183 = MEMORY[0x277CE0BC8];
    v184 = v85;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v140 = v83;
    v141 = OpaqueTypeConformance2;
    v139 = v82;
    v137 = v81;
    v138 = v86;
    v136[0] = &type metadata for DOCItemSortMode;
    v136[1] = v147;
    Picker.init<A>(selection:content:label:currentValueLabel:)();
    v88 = *(a5 + 104);
    swift_unknownObjectRetain();
    v88(v71, a5);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMd);
    v89 = v151;
    v90 = v153;
    View.accessibilityIdentifier(_:)();

    (*(v152 + 8))(v47, v90);
    v91 = v156;
    static AccessibilityChildBehavior.combine.getter();
    v92 = lazy protocol witness table accessor for type ModifiedContent<Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v93 = v155;
    v94 = v154;
    View.accessibilityElement(children:)();
    (*(v159 + 8))(v91, v160);
    v95 = v89;
    v96 = v72;
    outlined destroy of CharacterSet?(v95, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMd);
    v182._countAndFlagsBits = (*(a5 + 32))(v71, a5);
    v182._object = v97;
    v188 = v94;
    v189 = v92;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type String and conformance String();
    v98 = v149;
    v99 = v158;
    View.accessibilityLabel<A>(_:)();

    (*(v157 + 8))(v93, v99);
    (*(a5 + 208))(&v182, v71, a5);
    LOBYTE(v188) = 1;
    v182 = DOCItemSortMode.localizedName(for:)(&v188);
    ModifiedContent<>.accessibilityValue<A>(_:)();

    outlined destroy of CharacterSet?(v98, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd);
    v100 = *((*(a5 + 168))(v71, a5) + 16);

    v101 = v98;
    if (v100)
    {
      v102 = v181;
      v103 = MEMORY[0x24C1F9D60](v181, v96, v71, v143);
      MEMORY[0x28223BE20](v103, v104);
      v141 = v71;
      v142 = a5;
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      swift_unknownObjectRelease();
      v185 = v188;
      v186 = v189;
      v187 = v190;
      v182._countAndFlagsBits = (*(a5 + 24))(v71, a5);
      v182._object = v105;
      v182._countAndFlagsBits = Text.init<A>(_:)();
      v182._object = v106;
      LOBYTE(v183) = v107 & 1;
      v184 = v108;
      MEMORY[0x28223BE20](v182._countAndFlagsBits, v106);
      v137 = v71;
      v138 = a5;
      v139 = v102;
      v140 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd);
      v109 = lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
      v110 = lazy protocol witness table accessor for type ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>();
      v141 = v109;
      v142 = v110;
      v111 = v145;
      Picker.init(selection:label:content:)();
      (*(a5 + 88))(v71, a5);
      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAHGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AHQo_AA31AccessibilityAttachmentModifierVGGGMd);
      v112 = v144;
      v113 = v146;
      View.accessibilityIdentifier(_:)();

      (*(v150 + 8))(v111, v113);
      v114 = v165;
      outlined init with take of (key: URL, value: FPItem)(v112, v165, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGMd);
      v115 = 0;
      v116 = v166;
    }

    else
    {
      swift_unknownObjectRelease();
      v115 = 1;
      v116 = v166;
      v114 = v165;
    }

    v130 = v164;
    (*(v168 + 56))(v114, v115, 1, v163);
    v131 = v173;
    outlined init with copy of DOCGridLayout.Spec?(v173, v101, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd);
    outlined init with copy of DOCGridLayout.Spec?(v114, v130, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v101, v116, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_G_ACyAKyAmN0q8GroupingK0OARySayA34_GA34_ACyAeAEAT_AUQrqd___SbtSHRd__lFQOyAM_A34_Qo_A29_GGGA29_GSgtMd);
    outlined init with copy of DOCGridLayout.Spec?(v130, v116 + *(v132 + 48), &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd);
    outlined destroy of CharacterSet?(v130, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd);
    outlined destroy of CharacterSet?(v101, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd);
    outlined init with copy of DOCGridLayout.Spec?(v116, v167, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd);
    v133 = v114;
    v134 = v116;
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?();
    v135 = v171;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of DOCGridLayout.Spec?(v135, v178, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CharacterSet?(v135, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd);
    outlined destroy of CharacterSet?(v134, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd);
    outlined destroy of CharacterSet?(v133, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd);
    v128 = v131;
    v129 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd;
  }

  return outlined destroy of CharacterSet?(v128, v129);
}

uint64_t closure #1 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 200);
  swift_unknownObjectRetain();
  v10(a3, a4);
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables15DOCItemSortModeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0G5GroupVyAA05TupleC0VyAA4TextV_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyC0VGtGGAOyAA0C14InputPredicatePAAE1nopyQrxFZQOyAQ_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA3_5ScaleOGGSgATGG_26DocumentManagerExecutables15DOCItemSortModeOQo_Md);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCItemSortMode] and conformance [A], &_sSay26DocumentManagerExecutables15DOCItemSortModeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Label<LabelGroup<TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)>>, StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView>> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd);
  lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v50 = a2;
  v7 = 0xEC00000065746144;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd);
  MEMORY[0x28223BE20](v8, v9);
  v10 = *a1;
  v48 = v11;
  v49 = a4;
  v46 = &v46 - v12;
  v47 = v13;
  if (v10 > 4)
  {
    if (v10 <= 6)
    {
      if (v10 == 5)
      {
        v18 = 1684957547;
      }

      else
      {
        v18 = 0x7942646572616873;
      }

      if (v10 == 5)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }
    }

    else if (v10 == 7)
    {
      v18 = 0x6E6F697461657263;
    }

    else if (v10 == 8)
    {
      v18 = 0x6564644165746164;
      v7 = 0xE900000000000064;
    }

    else
    {
      v18 = 0x745364756F6C6369;
      v7 = 0xEC00000073757461;
    }
  }

  else
  {
    v14 = 1701667182;
    v15 = 1936154996;
    if (v10 != 3)
    {
      v15 = 1702521203;
    }

    if (v10 != 2)
    {
      v14 = v15;
    }

    v16 = 0xD000000000000010;
    v17 = 0x8000000249BC5DF0;
    if (v10)
    {
      v16 = 0x646573557473616CLL;
      v17 = 0xEC00000065746144;
    }

    if (v10 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    if (v10 <= 1)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  v19 = *(a3 + 208);
  swift_unknownObjectRetain();
  v19(&v52, v50, a3);
  if (v52 > 4u)
  {
    v26 = 0x6E6F697461657263;
    v27 = 0x6564644165746164;
    v28 = 0xE900000000000064;
    if (v52 != 8)
    {
      v27 = 0x745364756F6C6369;
      v28 = 0xEC00000073757461;
    }

    if (v52 == 7)
    {
      v29 = 0xEC00000065746144;
    }

    else
    {
      v26 = v27;
      v29 = v28;
    }

    v30 = 0xE400000000000000;
    v31 = 1684957547;
    if (v52 != 5)
    {
      v31 = 0x7942646572616873;
      v30 = 0xE800000000000000;
    }

    if (v52 <= 6u)
    {
      v32 = v31;
    }

    else
    {
      v32 = v26;
    }

    if (v52 <= 6u)
    {
      v25 = v30;
    }

    else
    {
      v25 = v29;
    }

    if (v18 != v32)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v20 = 1701667182;
    v21 = 1936154996;
    if (v52 != 3)
    {
      v21 = 1702521203;
    }

    if (v52 != 2)
    {
      v20 = v21;
    }

    v22 = 0xD000000000000010;
    v23 = 0x8000000249BC5DF0;
    if (v52)
    {
      v22 = 0x646573557473616CLL;
      v23 = 0xEC00000065746144;
    }

    if (v52 <= 1u)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (v52 <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    if (v18 != v24)
    {
      goto LABEL_57;
    }
  }

  if (v7 != v25)
  {
LABEL_57:
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_58;
  }

  v33 = 1;
LABEL_58:

  v51[1] = v10;
  v51[0] = 1;
  v34 = DOCItemSortMode.localizedName(for:)(v51);
  v35 = (*(a3 + 232))(v50, a3);
  v36 = swift_unknownObjectRelease();
  MEMORY[0x28223BE20](v36, v37);
  *(&v46 - 2) = v34;
  *(&v46 - 16) = v33 & 1;
  *(&v46 - 15) = v35 & 1;
  *(&v46 - 14) = v10;
  MEMORY[0x28223BE20](v38, v39);
  *(&v46 - 16) = v40;
  *(&v46 - 15) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyF0VGtGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8StaticIfVyAA18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgAA05EmptyE0VGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type LabelGroup<TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)>> and conformance LabelGroup<A>, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyF0VGtGGMd);
  lazy protocol witness table accessor for type StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView> and conformance <> StaticIf<A, B, C>();
  v42 = v46;
  Label.init(title:icon:)();

  v43 = v49;
  (*(v47 + 32))(v49, v42, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA0E5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAKSgAA05EmptyH0VGtGGAMyAA0H14InputPredicatePAAE1nopyQrxFZQOyAO_Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgARGGAA09_TagTraitsT0Vy26DocumentManagerExecutables15DOCItemSortModeOGGMd);
  v45 = (v43 + *(result + 36));
  *v45 = v10;
  v45[1] = 1;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAESgAA05EmptyD0VGtGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAESgAA05EmptyD0VGtGMd);
  return LabelGroup.init(content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8StaticIfVyAA8SolariumVAA4TextVSgAA9EmptyViewVGMd);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  v39 = a1;
  v40 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Solarium.init()();
  v36 = a3;
  v37 = v34;
  v38 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v33 = v18;
  StaticIf<>.init<>(_:then:)();
  v26 = *(v11 + 16);
  v27 = v18;
  v28 = v35;
  v26(v14, v27, v35);
  *a6 = v19;
  *(a6 + 8) = v21;
  v23 &= 1u;
  *(a6 + 16) = v23;
  *(a6 + 24) = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA8StaticIfVyAA8SolariumVACSgAA9EmptyViewVGtMd);
  v26((a6 + *(v29 + 48)), v14, v28);
  outlined copy of Text.Storage(v19, v21, v23);
  v30 = *(v11 + 8);

  v30(v33, v28);
  v30(v14, v28);
  outlined consume of Text.Storage(v19, v21, v23);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      DOCItemSortMode.localizedOrderedAscendingString.getter();
    }

    else
    {
      DOCItemSortMode.localizedOrderedDescendingString.getter();
    }

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v6 = v8 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_Md);
  MEMORY[0x28223BE20](v0, v1);
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?();
  return StaticIf<>.init<>(_:then:)();
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4, v5);
  v9 = (&v17 - v8);
  if (a1)
  {
    v18 = v6;
    v10 = Image.init(systemName:)();
    v11 = (v9 + *(v4 + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v13 = *MEMORY[0x277CE1050];
    v14 = type metadata accessor for Image.Scale();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    *v9 = v10;
    outlined init with take of (key: URL, value: FPItem)(v9, a2, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    return (*(v18 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v16 = *(v6 + 56);

    return v16(a2, 1, 1, v4, v7);
  }
}

uint64_t closure #2 in DOCViewOptionsView.contentView(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  swift_unknownObjectRetain();
  v6(a1, a2);
  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t closure #3 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TitleOnlyLabelStyle();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 208);
  swift_unknownObjectRetain();
  v11(&v19, a3, a4);
  swift_unknownObjectRelease();
  v22 = 1;
  v19 = DOCItemSortMode.localizedName(for:)(&v22);
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v19._countAndFlagsBits = v12;
  v19._object = v13;
  LOBYTE(v11) = v15 & 1;
  v20 = v15 & 1;
  v21 = v16;
  TitleOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40]);
  View.labelStyle<A>(_:)();
  (*(v7 + 8))(v10, v6);
  outlined consume of Text.Storage(v12, v14, v11);
}

uint64_t closure #4 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 168);
  swift_unknownObjectRetain();
  v10(a3, a4);
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_AA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCItemGroupingBehavior] and conformance [A], &_sSay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #4 in DOCViewOptionsView.contentView(for:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_Md);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  v26 = *a1;
  v13 = v26;
  v22 = DOCItemGroupingBehavior.localizedName.getter();
  v23 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  *v12 = Text.init<A>(_:)();
  *(v12 + 1) = v15;
  v12[16] = v16 & 1;
  *(v12 + 3) = v17;
  v12[32] = v13;
  v12[33] = 1;
  LOBYTE(v22) = v13;
  v18 = *(a5 + 80);
  swift_unknownObjectRetain();
  v18(&v22, a4, a5);
  swift_unknownObjectRelease();
  v19 = lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
  v22 = MEMORY[0x277CE0BD8];
  v23 = &type metadata for DOCItemGroupingBehavior;
  v24 = MEMORY[0x277CE0BC8];
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v6 = MEMORY[0x28223BE20](v4, v5);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t closure #5 in DOCViewOptionsView.contentView(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v65 = a5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SliderVyAA9EmptyViewVAEGMd);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v11);
  v55 = &v52 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGMd);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v13);
  v54 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v64 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v60 = &v52 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_AA31AccessibilityAttachmentModifierVGGGMd);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v61 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v52 - v30;
  v32 = *(a4 + 8);
  MEMORY[0x24C1F9D60](a1, a2, a3, v32, v29);
  v71 = a3;
  v72 = a4;
  swift_getKeyPath();
  v52 = v32;
  ObservedObject.Wrapper.subscript.getter();

  swift_unknownObjectRelease();
  v79 = v74;
  v80 = v75;
  v33 = *(a4 + 40);
  swift_unknownObjectRetain();
  *&v76 = v33(a3, a4);
  *(&v76 + 1) = v34;
  lazy protocol witness table accessor for type String and conformance String();
  *&v76 = Text.init<A>(_:)();
  *(&v76 + 1) = v35;
  LOBYTE(v77) = v36 & 1;
  v78 = v37;
  v66 = a3;
  v67 = a4;
  v53 = a1;
  v68 = a1;
  v69 = a2;
  v70 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMd);
  v38 = v31;
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting();
  lazy protocol witness table accessor for type ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentMod(&lazy protocol witness table cache variable for type ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  Picker.init(selection:label:content:)();
  (*(a4 + 120))(a3, a4);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_AA31AccessibilityAttachmentModifierVGGGMd);
  v39 = v58;
  View.accessibilityIdentifier(_:)();

  (*(v59 + 8))(v23, v39);
  if ((*(a4 + 264))(a3, a4) >= 2u)
  {
    v42 = MEMORY[0x24C1F9D60](v53, a2, a3, v52);
    MEMORY[0x28223BE20](v42, v43);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    swift_unknownObjectRelease();
    v74 = v76;
    v75 = v77;
    v79 = xmmword_249BA6960;
    v73 = 0x4010000000000000;
    lazy protocol witness table accessor for type Double and conformance Double();
    v44 = v55;
    Slider<>.init<A>(value:in:step:onEditingChanged:)();
    (*(a4 + 128))(a3, a4);
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Slider<EmptyView, EmptyView> and conformance Slider<A, B>, &_s7SwiftUI6SliderVyAA9EmptyViewVAEGMd);
    v45 = v54;
    v46 = v57;
    View.accessibilityIdentifier(_:)();

    (*(v56 + 8))(v44, v46);
    v41 = v60;
    outlined init with take of (key: URL, value: FPItem)(v45, v60, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGMd);
    v40 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v40 = 1;
    v41 = v60;
  }

  (*(v62 + 56))(v41, v40, 1, v63);
  v47 = v61;
  outlined init with copy of DOCGridLayout.Spec?(v38, v61, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd);
  v48 = v64;
  outlined init with copy of DOCGridLayout.Spec?(v41, v64, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd);
  v49 = v65;
  outlined init with copy of DOCGridLayout.Spec?(v47, v65, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVG_ACyAA6SliderVyAA05EmptyQ0VA2_GAVGSgtMd);
  outlined init with copy of DOCGridLayout.Spec?(v48, v49 + *(v50 + 48), &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd);
  outlined destroy of CharacterSet?(v41, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd);
  outlined destroy of CharacterSet?(v38, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd);
  outlined destroy of CharacterSet?(v48, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd);
  return outlined destroy of CharacterSet?(v47, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd);
}

uint64_t closure #1 in closure #5 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 256);
  swift_unknownObjectRetain();
  v10(a3, a4);
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOQo_AA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCBrowserLayoutConfiguration.SizeSetting] and conformance [A], &_sSay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in closure #5 in DOCViewOptionsView.contentView(for:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOQo_Md);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  v13 = *a1;
  v21 = DOCBrowserLayoutConfiguration.SizeSetting.localizedName.getter(v13);
  v22 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  *v12 = Text.init<A>(_:)();
  *(v12 + 1) = v15;
  v12[16] = v16 & 1;
  *(v12 + 3) = v17;
  v12[32] = v13;
  v12[33] = 1;
  v18 = *(a5 + 112);
  swift_unknownObjectRetain();
  v18(v13, a4, a5);
  swift_unknownObjectRelease();
  v19 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting();
  v21 = MEMORY[0x277CE0BD8];
  v22 = &type metadata for DOCBrowserLayoutConfiguration.SizeSetting;
  v23 = MEMORY[0x277CE0BC8];
  v24 = v19;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t DOCViewOptionsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v42 = a5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE14listSizesToFit9maxHeightQr12CoreGraphics7CGFloatV_tFQOyAA08ModifiedD0VyANyAgAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAzA7SectionVyAA4TextVSgACyACyAA05TupleF0VyANyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA6PickerVyA3_AX15DOCItemSortModeOAWySayA14_GA14_AgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA6_yA3__AA8StaticIfVyAA8SolariumVA4_AA05EmptyF0VGtGGA23_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA25__Qo_ANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA36_5ScaleOGGSgA27_GG_A14_Qo_GGAA31AccessibilityAttachmentModifierVG_Qo_A50_G_ANyA12_yA3_AX23DOCItemGroupingBehaviorOAWySayA55_GA55_ANyAgAEA16__A17_Qrqd___SbtSHRd__lFQOyA3__A55_Qo_A50_GGGA50_GSgtGAA6VStackVyA6_yANyA12_yA3_AX29DOCBrowserLayoutConfigurationV11SizeSettingOAWySayA69_GA69_ANyAgAEA16__A17_Qrqd___SbtSHRd__lFQOyA3__A69_Qo_A50_GGGA50_G_ANyAA6SliderVyA27_A27_GA50_GSgtGGSgGANyAA6ToggleVyA3_GA50_GGA4_GGG_Qo_AA01_R13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVG_Qo_A99__GMd);
  MEMORY[0x28223BE20](v39, v11);
  v40 = &v35 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14listSizesToFit9maxHeightQr12CoreGraphics7CGFloatV_tFQOyAA15ModifiedContentVyAJyAcAE06scrollN10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAvA7SectionVyAA4TextVSgAA012_ConditionalN0VyA2_yAA05TupleC0VyAJyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA6PickerVyA_AT15DOCItemSortModeOASySayA12_GA12_AcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA4_yA__AA8StaticIfVyAA8SolariumVA0_AA05EmptyC0VGtGGA21_yAA0C14InputPredicatePAAE1nopyQrxFZQOyA23__Qo_AJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA34_5ScaleOGGSgA25_GG_A12_Qo_GGAA31AccessibilityAttachmentModifierVG_Qo_A48_G_AJyA10_yA_AT23DOCItemGroupingBehaviorOASySayA53_GA53_AJyAcAEA14__A15_Qrqd___SbtSHRd__lFQOyA__A53_Qo_A48_GGGA48_GSgtGAA6VStackVyA4_yAJyA10_yA_AT29DOCBrowserLayoutConfigurationV11SizeSettingOASySayA67_GA67_AJyAcAEA14__A15_Qrqd___SbtSHRd__lFQOyA__A67_Qo_A48_GGGA48_G_AJyAA6SliderVyA25_A25_GA48_GSgtGGSgGAJyAA6ToggleVyA_GA48_GGA0_GGG_Qo_AA01_P13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVG_Qo_Md);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v13);
  v36 = &v35 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAjA0L0VyAA4TextVSgAA19_ConditionalContentVyARyAA9TupleViewVyAA08ModifiedO0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA6PickerVyAoH15DOCItemSortModeOAGySayA4_GA4_AxAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyATyAO_AA8StaticIfVyAA8SolariumVApA05EmptyQ0VGtGGA13_yAA0Q14InputPredicatePAAE1nopyQrxFZQOyA15__Qo_AVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA26_5ScaleOGGSgA17_GG_A4_Qo_GGAA0V18AttachmentModifierVG_Qo_A40_G_AVyA2_yAoH0z8GroupingX0OAGySayA45_GA45_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A45_Qo_A40_GGGA40_GSgtGAA6VStackVyATyAVyA2_yAoH29DOCBrowserLayoutConfigurationV11SizeSettingOAGySayA59_GA59_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A59_Qo_A40_GGGA40_G_AVyAA6SliderVyA17_A17_GA40_GSgtGGSgGAVyAA6ToggleVyAOGA40_GGAPGGGMd);
  v15 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGMd);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v35 - v21;
  v43 = a3;
  v44 = a4;
  v35 = a1;
  v45 = a1;
  v46 = a2;
  v47 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAfA0J0VyAA4TextVSgAA19_ConditionalContentVyANyAA9TupleViewVyAA08ModifiedM0VyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyAA6PickerVyAkD15DOCItemSortModeOACySayA0_GA0_AtAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAPyAK_AA8StaticIfVyAA8SolariumVAlA05EmptyO0VGtGGA9_yAA0O14InputPredicatePAAE1nopyQrxFZQOyA11__Qo_ARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA22_5ScaleOGGSgA13_GG_A0_Qo_GGAA0T18AttachmentModifierVG_Qo_A36_G_ARyAZyAkD0x8GroupingV0OACySayA41_GA41_ARyAtAEA2__A3_Qrqd___SbtSHRd__lFQOyAK_A41_Qo_A36_GGGA36_GSgtGAA6VStackVyAPyARyAZyAkD29DOCBrowserLayoutConfigurationV11SizeSettingOACySayA55_GA55_ARyAtAEA2__A3_Qrqd___SbtSHRd__lFQOyAK_A55_Qo_A36_GGGA36_G_ARyAA6SliderVyA13_A13_GA36_GSgtGGSgGARyAA6ToggleVyAKGA36_GGALGGMd);
  lazy protocol witness table accessor for type ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentMod( &lazy protocol witness table cache variable for type ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachm,  &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAfA0J0VyAA4TextVSgAA19_ConditionalContentVyANyAA9TupleViewVyAA08ModifiedM0VyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyAA6PickerVyAkD15DOCItemSortModeOACySayA0_GA0_AtAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAPyAK_AA8StaticIfVyAA8SolariumVAlA05EmptyO0VGtGGA9_yAA0O14InputPredicatePAAE1nopyQrxFZQOyA11__Qo_ARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA22_5ScaleOGGSgA13_GG_A0_Qo_GGAA0T18AttachmentModifierVG_Qo_A36_G_ARyAZyAkD0x8GroupingV0OACySayA41_GA41_ARyAtAEA2__A3_Qrqd___SbtSHRd__lFQOyAK_A41_Qo_A36_GGGA36_GSgtGAA6VStackVyAPyARyAZyAkD29DOCBrowserLayoutConfigurationV11SizeSettingOACySayA55_GA55_ARyAtAEA2__A3_Qrqd___SbtSHRd__lFQOyAK_A55_Qo_A36_GGGA36_G_ARyAA6SliderVyA13_A13_GA36_GSgtGGSgGARyAA6ToggleVyAKGA36_GGALGGMd,  &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAfA0J0VyAA4TextVSgAA19_ConditionalContentVyANyAA9TupleViewVyAA08ModifiedM0VyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyAA6PickerVyAkD15DOCItemSortModeOACySayA0_GA0_AtAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAPyAK_AA8StaticIfVyAA8SolariumVAlA05EmptyO0VGtGGA9_yAA0O14InputPredicatePAAE1nopyQrxFZQOyA11__Qo_ARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA22_5ScaleOGGSgA13_GG_A0_Qo_GGAA0T18AttachmentModifierVG_Qo_A36_G_ARyAZyAkD0x8GroupingV0OACySayA41_GA41_ARyAtAEA2__A3_Qrqd___SbtSHRd__lFQOyAK_A41_Qo_A36_GGGA36_GSgtGAA6VStackVyAPyARyAZyAkD29DOCBrowserLayoutConfigurationV11SizeSettingOACySayA55_GA55_ARyAtAEA2__A3_Qrqd___SbtSHRd__lFQOyAK_A55_Qo_A36_GGGA36_G_ARyAA6SliderVyA13_A13_GA36_GSgtGGSgGARyAA6ToggleVyAKGA36_GGALGGMR,  lazy protocol witness table accessor for type Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>>, Text?> and conformance <> Section<A, B, C>);
  List<>.init(content:)();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type List<Never, ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, Accessib, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAjA0L0VyAA4TextVSgAA19_ConditionalContentVyARyAA9TupleViewVyAA08ModifiedO0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA6PickerVyAoH15DOCItemSortModeOAGySayA4_GA4_AxAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyATyAO_AA8StaticIfVyAA8SolariumVApA05EmptyQ0VGtGGA13_yAA0Q14InputPredicatePAAE1nopyQrxFZQOyA15__Qo_AVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA26_5ScaleOGGSgA17_GG_A4_Qo_GGAA0V18AttachmentModifierVG_Qo_A40_G_AVyA2_yAoH0z8GroupingX0OAGySayA45_GA45_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A45_Qo_A40_GGGA40_GSgtGAA6VStackVyATyAVyA2_yAoH29DOCBrowserLayoutConfigurationV11SizeSettingOAGySayA59_GA59_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A59_Qo_A40_GGGA40_G_AVyAA6SliderVyA17_A17_GA40_GSgtGGSgGAVyAA6ToggleVyAOGA40_GGAPGGGMd);
  v23 = v38;
  View.scrollContentBackground(_:)();
  (*(v15 + 8))(v18, v23);
  v24 = &v22[*(v19 + 36)];
  static Material.thick.getter();
  LOBYTE(v23) = static Edge.Set.all.getter();
  v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd) + 36)] = v23;
  v25 = *(a4 + 56);
  swift_unknownObjectRetain();
  v26 = v25(a3, a4);
  swift_unknownObjectRelease();
  if (v26 == 2 || (v26 & 1) == 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(v22, v40, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGMd);
    swift_storeEnumTagMultiPayload();
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVGMd);
    v33 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v48 = v32;
    v49 = v33;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v27 = v36;
    closure #2 in DOCViewOptionsView.body.getter(v22);
    v28 = v37;
    v29 = v41;
    (*(v37 + 16))(v40, v27, v41);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVGMd);
    v31 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v48 = v30;
    v49 = v31;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    (*(v28 + 8))(v27, v29);
  }

  return outlined destroy of CharacterSet?(v22, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGMd);
}

uint64_t closure #1 in DOCViewOptionsView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 312);
  swift_unknownObjectRetain();
  v10(a3, a4);
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables21DOCViewOptionsSectionOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVSgAA19_ConditionalContentVyAHyAA9TupleViewVyAA08ModifiedF0VyAA0H0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyALyAA6PickerVyAE26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAWGAwnAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAJyAE_AA8StaticIfVyAA8SolariumVAfA05EmptyH0VGtGGA6_yAA0H14InputPredicatePAAE1nopyQrxFZQOyA8__Qo_ALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AWQo_GGAA0M18AttachmentModifierVG_Qo_A33_G_ALyATyAeU0t8GroupingO0OAYySayA38_GA38_ALyAnAEA__A0_Qrqd___SbtSHRd__lFQOyAE_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAJyALyATyAeU29DOCBrowserLayoutConfigurationV11SizeSettingOAYySayA52_GA52_ALyAnAEA__A0_Qrqd___SbtSHRd__lFQOyAE_A52_Qo_A33_GGGA33_G_ALyAA6SliderVyA10_A10_GA33_GSgtGGSgGALyAA6ToggleVyAEGA33_GGAFGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCViewOptionsSection] and conformance [A], &_sSay26DocumentManagerExecutables21DOCViewOptionsSectionOGMd);
  lazy protocol witness table accessor for type Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>>, Text?> and conformance <> Section<A, B, C>();
  lazy protocol witness table accessor for type DOCViewOptionsSection and conformance DOCViewOptionsSection();
  return ForEach<>.init(_:content:)();
}

id closure #1 in closure #1 in DOCViewOptionsView.body.getter(unsigned __int8 *a1)
{
  if (*a1 <= 1u)
  {
    goto LABEL_5;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v10._object = 0x8000000249BD8750;
    v3._countAndFlagsBits = 0x6465636E61766441;
    v3._object = 0xE800000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000033;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    result = _DocumentManagerBundle();
    if (result)
    {
      v6 = result;
      v11._object = 0x8000000249BD8810;
      v7._countAndFlagsBits = 0xD000000000000077;
      v7._object = 0x8000000249BD8790;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v11._countAndFlagsBits = 0xD000000000000033;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v11);

      Text.init<A>(_:)();
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGAGyAA6ToggleVyAQGA31_GGMd);
      lazy protocol witness table accessor for type Text? and conformance <A> A?();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      return Section<>.init(header:footer:content:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in DOCViewOptionsView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v11 - v4;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with copy of DOCGridLayout.Spec?(a1, v5, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGMd);
  v6 = &v5[*(v2 + 36)];
  v7 = v17;
  *(v6 + 4) = v16;
  *(v6 + 5) = v7;
  *(v6 + 6) = v18;
  v8 = v13;
  *v6 = v12;
  *(v6 + 1) = v8;
  v9 = v15;
  *(v6 + 2) = v14;
  *(v6 + 3) = v9;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.listSizesToFit(maxHeight:)();
  return outlined destroy of CharacterSet?(v5, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVGMd);
}

uint64_t View.if<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v46 = a6;
  v39 = a3;
  v40 = a2;
  v42 = a1;
  v41 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v39 - v25;
  v44 = type metadata accessor for _ConditionalContent();
  v27 = *(v44 - 8);
  v29 = MEMORY[0x28223BE20](v44, v28);
  v31 = &v39 - v30;
  if (v42)
  {
    v40(v43, v29);
    v32 = *(v18 + 16);
    v32(v26, v22, a5);
    v43 = a8;
    v33 = *(v18 + 8);
    v33(v22, a5);
    v32(v22, v26, a5);
    static ViewBuilder.buildEither<A, B>(first:)(v22, a5);
    v33(v22, a5);
    v33(v26, a5);
    a8 = v43;
  }

  else
  {
    v34 = v41;
    v35 = *(v41 + 16);
    v35(v16, v43, a4, v29);
    (v35)(v12, v16, a4);
    static ViewBuilder.buildEither<A, B>(second:)(v12, a5, a4);
    v36 = *(v34 + 8);
    v36(v12, a4);
    v36(v16, a4);
  }

  v47 = v45;
  v48 = v46;
  v37 = v44;
  swift_getWitnessTable();
  (*(v27 + 16))(a8, v31, v37);
  return (*(v27 + 8))(v31, v37);
}

unint64_t lazy protocol witness table accessor for type Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>>, Text?> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>>, Text?> and conformance <> Section<A, B, C;
  if (!lazy protocol witness table cache variable for type Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>>, Text?> and conformance <> Section<A, B, C)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVSgAA19_ConditionalContentVyAHyAA9TupleViewVyAA08ModifiedF0VyAA0H0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyALyAA6PickerVyAE26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAWGAwnAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAJyAE_AA8StaticIfVyAA8SolariumVAfA05EmptyH0VGtGGA6_yAA0H14InputPredicatePAAE1nopyQrxFZQOyA8__Qo_ALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AWQo_GGAA0M18AttachmentModifierVG_Qo_A33_G_ALyATyAeU0t8GroupingO0OAYySayA38_GA38_ALyAnAEA__A0_Qrqd___SbtSHRd__lFQOyAE_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAJyALyATyAeU29DOCBrowserLayoutConfigurationV11SizeSettingOAYySayA52_GA52_ALyAnAEA__A0_Qrqd___SbtSHRd__lFQOyAE_A52_Qo_A33_GGGA33_G_ALyAA6SliderVyA10_A10_GA33_GSgtGGSgGALyAA6ToggleVyAEGA33_GGAFGMd);
    lazy protocol witness table accessor for type Text? and conformance <A> A?();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>>, Text?> and conformance <> Section<A, B, C);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Text? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Text? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGAGyAA6ToggleVyAQGA31_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAjA0L0VyAA4TextVSgAA19_ConditionalContentVyARyAA9TupleViewVyAA08ModifiedO0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA6PickerVyAoH15DOCItemSortModeOAGySayA4_GA4_AxAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyATyAO_AA8StaticIfVyAA8SolariumVApA05EmptyQ0VGtGGA13_yAA0Q14InputPredicatePAAE1nopyQrxFZQOyA15__Qo_AVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA26_5ScaleOGGSgA17_GG_A4_Qo_GGAA0V18AttachmentModifierVG_Qo_A40_G_AVyA2_yAoH0z8GroupingX0OAGySayA45_GA45_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A45_Qo_A40_GGGA40_GSgtGAA6VStackVyATyAVyA2_yAoH29DOCBrowserLayoutConfigurationV11SizeSettingOAGySayA59_GA59_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A59_Qo_A40_GGGA40_G_AVyAA6SliderVyA17_A17_GA40_GSgtGGSgGAVyAA6ToggleVyAOGA40_GGAPGGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type List<Never, ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, Accessib, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAjA0L0VyAA4TextVSgAA19_ConditionalContentVyARyAA9TupleViewVyAA08ModifiedO0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA6PickerVyAoH15DOCItemSortModeOAGySayA4_GA4_AxAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyATyAO_AA8StaticIfVyAA8SolariumVApA05EmptyQ0VGtGGA13_yAA0Q14InputPredicatePAAE1nopyQrxFZQOyA15__Qo_AVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA26_5ScaleOGGSgA17_GG_A4_Qo_GGAA0V18AttachmentModifierVG_Qo_A40_G_AVyA2_yAoH0z8GroupingX0OAGySayA45_GA45_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A45_Qo_A40_GGGA40_GSgtGAA6VStackVyATyAVyA2_yAoH29DOCBrowserLayoutConfigurationV11SizeSettingOAGySayA59_GA59_AVyAxAEA6__A7_Qrqd___SbtSHRd__lFQOyAO_A59_Qo_A40_GGGA40_G_AVyAA6SliderVyA17_A17_GA40_GSgtGGSgGAVyAA6ToggleVyAOGA40_GGAPGGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata instantiation function for DOCViewOptionsView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.listSizesToFit(maxHeight:)>>.0, ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.listSizesToFit(maxHeight:)>>.0, ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.listSizesToFit(maxHeight:)>>.0, ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE14listSizesToFit9maxHeightQr12CoreGraphics7CGFloatV_tFQOyAA08ModifiedD0VyALyAeAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAxA7SectionVyAA4TextVSgACyACyAA05TupleE0VyALyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyALyAA6PickerVyA1_AV15DOCItemSortModeOAUySayA12_GA12_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA4_yA1__AA8StaticIfVyAA8SolariumVA2_AA05EmptyE0VGtGGA21_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA23__Qo_ALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA34_5ScaleOGGSgA25_GG_A12_Qo_GGAA31AccessibilityAttachmentModifierVG_Qo_A48_G_ALyA10_yA1_AV23DOCItemGroupingBehaviorOAUySayA53_GA53_ALyAeAEA14__A15_Qrqd___SbtSHRd__lFQOyA1__A53_Qo_A48_GGGA48_GSgtGAA6VStackVyA4_yALyA10_yA1_AV29DOCBrowserLayoutConfigurationV11SizeSettingOAUySayA67_GA67_ALyAeAEA14__A15_Qrqd___SbtSHRd__lFQOyA1__A67_Qo_A48_GGGA48_G_ALyAA6SliderVyA25_A25_GA48_GSgtGGSgGALyAA6ToggleVyA1_GA48_GGA2_GGG_Qo_AA01_Q13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVG_Qo_A97_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE06scrollD10BackgroundyQrAA10VisibilityOFQOyAA4ListVys5NeverOAA7ForEachVySay26DocumentManagerExecutables21DOCViewOptionsSectionOGAqA0R0VyAA4TextVSgAA012_ConditionalD0VyAYyAA05TupleE0VyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAvO15DOCItemSortModeOANySayA7_GA7_AeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyA_yAV_AA8StaticIfVyAA8SolariumVAwA05EmptyE0VGtGGA16_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA18__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGSgA20_GG_A7_Qo_GGAA0Y18AttachmentModifierVG_Qo_A43_G_ACyA5_yAvO23DOCItemGroupingBehaviorOANySayA48_GA48_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A48_Qo_A43_GGGA43_GSgtGAA6VStackVyA_yACyA5_yAvO29DOCBrowserLayoutConfigurationV11SizeSettingOANySayA62_GA62_ACyAeAEA9__A10_Qrqd___SbtSHRd__lFQOyAV_A62_Qo_A43_GGGA43_G_ACyAA6SliderVyA20_A20_GA43_GSgtGGSgGACyAA6ToggleVyAVGA43_GGAWGGG_Qo_AA01_G13StyleModifierVyAA8MaterialVGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.listSizesToFit(maxHeight:)>>.0, ModifiedContent<<<opaque return type of View.scrollContentBackground(_:)>>.0, _BackgroundStyleModifier<Material>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCViewOptionsSection and conformance DOCViewOptionsSection()
{
  result = lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection;
  if (!lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection;
  if (!lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection;
  if (!lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCViewOptionsSection and conformance DOCViewOptionsSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode()
{
  result = lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode;
  if (!lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode;
  if (!lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode;
  if (!lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemSortMode and conformance DOCItemSortMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables15DOCItemSortModeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0O5GroupVyAA05TupleK0VyAA4TextV_AA8StaticIfVyAA8SolariumVASSgAA05EmptyK0VGtGGAUyAA0K14InputPredicatePAAE1nopyQrxFZQOyAW_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA9_5ScaleOGGSgAZGG_AFQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Label<LabelGroup<TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)>>, StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView>> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd);
    lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMd);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior()
{
  result = lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior;
  if (!lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior;
  if (!lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior;
  if (!lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_AA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOQo_AA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView> and conformance <> StaticIf<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI8StaticIfVyAA18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgAA05EmptyE0VGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting()
{
  result = lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting;
  if (!lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting;
  if (!lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting;
  if (!lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentMod(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t DOCServiceDocumentBrowserViewController.hostedCreateDocumentOptionsDidChange(_:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x130))();
  v2 = *((*v1 & *v0) + 0x138);

  return v2();
}

void closure #2 in DOCServiceDocumentBrowserViewController.hostedCreateDocumentOptionsDidTriggerCreateDocumentFromPasteboard(_:supportedPasteTypes:)(uint64_t a1, NSObject *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.documentCreation);
    v17 = a2;
    v34 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v34, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2493AC000, v34, v18, "Unable to create document from pasteboard - import failed with error: %@", v19, 0xCu);
      outlined destroy of CharacterSet?(v20, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);

      v23 = v34;
    }

    else
    {

      v23 = a2;
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation3URLVSgMd);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v14, v9, v10);
      v28 = [a3 delegate];
      if (v28)
      {
        v29 = v28;
        if (([v28 respondsToSelector_] & 1) == 0)
        {
          (*(v11 + 8))(v14, v10);
          swift_unknownObjectRelease();
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
        v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_249B9A480;
        (*(v11 + 16))(v31 + v30, v14, v10);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v29 documentBrowser:a3 didPickDocumentsAtURLs:isa];

        swift_unknownObjectRelease();
      }

      (*(v11 + 8))(v14, v10);
      return;
    }

    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.documentCreation);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2493AC000, v25, v26, "Unable to create document from pasteboard - import failed to provide the imported URL", v27, 2u);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }
  }
}

uint64_t protocol witness for DOCHostedCreateDocumentHandling.hostedCreateDocumentOptionsDidChange(_:) in conformance DOCServiceDocumentBrowserViewController()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x130))();
  v2 = *((*v1 & *v0) + 0x138);

  return v2();
}

id specialized DOCServiceDocumentBrowserViewController.hostedCreateDocumentOptionsDidTriggerCreateDocumentFromPasteboard(_:supportedPasteTypes:)(unint64_t a1)
{
  v196 = *MEMORY[0x277D85DE8];
  v177 = type metadata accessor for URL.DirectoryHint();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v2);
  v175 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for UUID();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v4);
  v169 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for URL();
  v178 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v6);
  v172 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v173 = &v166 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v174 = &v166 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v179 = &v166 - v16;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v181 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v166 = &v166 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v182 = &v166 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v166 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v166 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v167 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v166 - v40;
  v44.n128_f64[0] = MEMORY[0x28223BE20](v42, v43);
  v46 = &v166 - v45;
  v47 = *(a1 + 16);
  v186 = v30;
  v187 = &v166 - v45;
  v185 = v18;
  if (v47)
  {
    v183 = v41;
    v184 = a1;
    v189 = *(v18 + 16);
    v48 = (v18 + 8);
    v49 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v50 = *(v18 + 72);
    v188 = xmmword_249B9A480;
    while (1)
    {
      v189(v34, v49, v17);
      v51 = [objc_opt_self() generalPasteboard];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v52 = swift_allocObject();
      *(v52 + 16) = v188;
      *(v52 + 32) = UTType.identifier.getter();
      *(v52 + 40) = v53;
      isa = Array._bridgeToObjectiveC()().super.isa;

      LOBYTE(v52) = [v51 containsPasteboardTypes_];

      if (v52)
      {
        break;
      }

      (*v48)(v34, v17);
      v49 += v50;
      if (!--v47)
      {
        v55 = 1;
        v30 = v186;
        v46 = v187;
        v18 = v185;
        goto LABEL_8;
      }
    }

    v18 = v185;
    v46 = v187;
    (*(v185 + 32))(v187, v34, v17);
    v55 = 0;
    v30 = v186;
LABEL_8:
    v41 = v183;
    a1 = v184;
  }

  else
  {
    v55 = 1;
  }

  (*(v18 + 56))(v46, v55, 1, v17, v44);
  outlined init with copy of DOCGridLayout.Spec?(v46, v41, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  v56 = *(v18 + 48);
  if (v56(v41, 1, v17) == 1)
  {
    v57 = v17;
    outlined destroy of CharacterSet?(v41, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.documentCreation);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v61 = 136315138;
      v63 = MEMORY[0x24C1FB0D0](a1, v57);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_2493AC000, v59, v60, "Unable to create document from pasteboard - pasteboard contains no: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x24C1FE850](v62, -1, -1);
      MEMORY[0x24C1FE850](v61, -1, -1);
    }

LABEL_15:
    v66 = v46;
    return outlined destroy of CharacterSet?(v66, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  }

  v67 = *(v18 + 32);
  v189 = v17;
  v67(v30, v41, v17);
  v68 = [objc_opt_self() generalPasteboard];
  v69 = UTType.identifier.getter();
  v70 = MEMORY[0x24C1FAD20](v69);

  v71 = [v68 dataForPasteboardType_];

  if (!v71)
  {
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, static Logger.documentCreation);
    v112 = v181;
    v113 = v189;
    (*(v18 + 16))(v181, v30, v189);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.fault.getter();
    v116 = os_log_type_enabled(v114, v115);
    v46 = v187;
    if (v116)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      aBlock = v118;
      *v117 = 136315138;
      lazy protocol witness table accessor for type UTType and conformance UTType();
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v112;
      v122 = v121;
      v123 = *(v18 + 8);
      v123(v120, v113);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v122, &aBlock);

      *(v117 + 4) = v124;
      _os_log_impl(&dword_2493AC000, v114, v115, "Unable to create document from pasteboard - no data returned for: %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x24C1FE850](v118, -1, -1);
      MEMORY[0x24C1FE850](v117, -1, -1);

      v123(v186, v113);
    }

    else
    {

      v125 = *(v18 + 8);
      v125(v112, v113);
      v125(v30, v113);
    }

    goto LABEL_15;
  }

  *&v188 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = UTType.preferredFilenameExtension.getter();
  if (!v75)
  {
LABEL_33:
    v126 = v182;
    static UTType.image.getter();
    v127 = UTType.conforms(to:)();
    v128 = *(v18 + 8);
    v128(v126, v189);
    if ((v127 & 1) == 0)
    {
LABEL_41:
      if (one-time initialization token for documentCreation != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      __swift_project_value_buffer(v135, static Logger.documentCreation);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.fault.getter();
      v138 = os_log_type_enabled(v136, v137);
      v140 = v186;
      v139 = v187;
      v141 = v189;
      if (v138)
      {
        v142 = v73;
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_2493AC000, v136, v137, "Unable to create document from pasteboard - unable to determine content / extension", v143, 2u);
        MEMORY[0x24C1FE850](v143, -1, -1);
        v144 = v188;
        v145 = v142;
      }

      else
      {
        v144 = v188;
        v145 = v73;
      }

      outlined consume of Data._Representation(v144, v145);

      (*(v185 + 8))(v140, v141);
LABEL_60:
      v66 = v139;
      return outlined destroy of CharacterSet?(v66, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    }

    v184 = v73;
    v129 = Data._bridgeToObjectiveC()().super.isa;
    v130 = CGImageSourceCreateWithData(v129, 0);

    if (v130)
    {
      v131 = CGImageSourceGetType(v130);
      if (!v131)
      {
        goto LABEL_53;
      }

      v132 = v131;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_55;
      }

      aBlock = 0;
      v191 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v191)
      {
        v133 = v167;
        UTType.init(_:)();
        v134 = v189;
        if (v56(v133, 1, v189) == 1)
        {

          outlined destroy of CharacterSet?(v133, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
        }

        else
        {
          v162 = v166;
          v67(v166, v133, v134);
          v163 = UTType.preferredFilenameExtension.getter();
          v165 = v164;

          v128(v162, v134);
          if (v165)
          {
            v75 = v165;
            v74 = v163;
            v77 = v163 & 0xFFFFFFFFFFFFLL;
            v73 = v184;
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_53:
      }
    }

LABEL_55:
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v156 = type metadata accessor for Logger();
    __swift_project_value_buffer(v156, static Logger.documentCreation);
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.fault.getter();
    v159 = os_log_type_enabled(v157, v158);
    v139 = v187;
    v160 = v189;
    if (v159)
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_2493AC000, v157, v158, "Unable to create image document from pasteboard - unable to determine image type", v161, 2u);
      MEMORY[0x24C1FE850](v161, -1, -1);
    }

    outlined consume of Data._Representation(v188, v184);

    v128(v186, v160);
    goto LABEL_60;
  }

  v76 = (v75 >> 56) & 0xF;
  v77 = v74 & 0xFFFFFFFFFFFFLL;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (!v76)
  {

    goto LABEL_33;
  }

LABEL_21:
  if ((v75 & 0x2000000000000000) != 0)
  {
    v77 = (v75 >> 56) & 0xF;
  }

  if (!v77)
  {

    goto LABEL_41;
  }

  v183 = v75;
  v184 = v73;
  v182 = v74;
  result = _DocumentManagerBundle();
  if (result)
  {
    v79 = result;
    v197._object = 0x8000000249BD8850;
    v80._countAndFlagsBits = 0x64656C7469746E55;
    v81.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v81.value._object = 0xEB00000000656C62;
    v80._object = 0xE800000000000000;
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    v197._countAndFlagsBits = 0xD000000000000057;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v197);

    v83 = [objc_opt_self() defaultManager];
    v84 = [v83 temporaryDirectory];
    v85 = v172;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = v169;
    UUID.init()();
    v87 = UUID.uuidString.getter();
    v89 = v88;
    (*(v170 + 8))(v86, v171);
    aBlock = v87;
    v191 = v89;
    v90 = v176;
    v91 = v175;
    v92 = v177;
    (*(v176 + 104))(v175, *MEMORY[0x277CC91D8], v177);
    lazy protocol witness table accessor for type String and conformance String();
    v93 = v173;
    URL.appending<A>(component:directoryHint:)();
    (*(v90 + 8))(v91, v92);

    v94 = *(v178 + 8);
    v95 = v180;
    v94(v85, v180);
    v96 = v174;
    URL.appendingPathComponent(_:)();

    v94(v93, v95);
    URL.appendingPathExtension(_:)();

    v94(v96, v95);
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v97);
    v99 = v98;
    v94(v96, v95);
    aBlock = 0;
    LODWORD(v86) = [v83 createDirectoryAtURL:v99 withIntermediateDirectories:0 attributes:0 error:&aBlock];

    if (v86)
    {
      v100 = aBlock;
      Data.write(to:options:)();
      v101 = v189;
      v102 = v179;
      URL._bridgeToObjectiveC()(v103);
      v105 = v104;
      v106 = swift_allocObject();
      v107 = v168;
      *(v106 + 16) = v168;
      v194 = partial apply for closure #2 in DOCServiceDocumentBrowserViewController.hostedCreateDocumentOptionsDidTriggerCreateDocumentFromPasteboard(_:supportedPasteTypes:);
      v195 = v106;
      aBlock = MEMORY[0x277D85DD0];
      v191 = 1107296256;
      v192 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v193 = &block_descriptor_41;
      v108 = _Block_copy(&aBlock);
      v109 = v107;

      [v109 importDocumentAtURL:v105 byMoving:1 toCurrentBrowserLocationWithCompletion:v108];
      outlined consume of Data._Representation(v188, v184);
      _Block_release(v108);

      v110 = v102;
    }

    else
    {
      v146 = aBlock;
      v147 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v101 = v189;
      if (one-time initialization token for documentCreation != -1)
      {
        swift_once();
      }

      v148 = type metadata accessor for Logger();
      __swift_project_value_buffer(v148, static Logger.documentCreation);
      v149 = v147;
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v152 = 138412290;
        v154 = v147;
        v155 = _swift_stdlib_bridgeErrorToNSError();
        *(v152 + 4) = v155;
        *v153 = v155;
        _os_log_impl(&dword_2493AC000, v150, v151, "Unable to create document from pasteboard - error saving to staging location: %@", v152, 0xCu);
        outlined destroy of CharacterSet?(v153, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v153, -1, -1);
        MEMORY[0x24C1FE850](v152, -1, -1);
      }

      outlined consume of Data._Representation(v188, v184);

      v110 = v179;
    }

    v94(v110, v180);
    (*(v185 + 8))(v186, v101);
    v66 = v187;
    return outlined destroy of CharacterSet?(v66, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UTType and conformance UTType()
{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    type metadata accessor for UTType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

Class UICollectionViewListCell.preferredIconColor.getter()
{
  v1 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21[-1] - v8;
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x24C1FBB10](v21, v13);
  if (v21[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    v16 = swift_dynamicCast();
    (*(v11 + 56))(v9, v16 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v15, v9, v10);
      goto LABEL_7;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v21, &_s5UIKit22UIContentConfiguration_pSgMd);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  static UIListContentConfiguration.cell()();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    outlined destroy of CharacterSet?(v9, &_s5UIKit26UIListContentConfigurationVSgMd);
  }

LABEL_7:
  UIListContentConfiguration.imageProperties.getter();
  result = [v0 tintColor];
  if (result)
  {
    v18 = result;
    isa = UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(result).super.isa;

    (*(v2 + 8))(v5, v1);
    (*(v11 + 8))(v15, v10);
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int DOCPacedPropertyUpdaterNotifyType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCAbstractPacedPropertyUpdater.pacingInterval.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t DOCAbstractPacedPropertyUpdater.__allocating_init(pacingInterval:skipInitialUpdate:)(char a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 256;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v6 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 16) = a2;
  if ((a1 & 1) == 0)
  {
    DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  }

  return v4;
}

uint64_t DOCAbstractPacedPropertyUpdater.init(pacingInterval:skipInitialUpdate:)(char a1, double a2)
{
  *(v2 + 24) = 256;
  *(v2 + 32) = 0;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v6 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + 16) = a2;
  if ((a1 & 1) == 0)
  {
    DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  }

  return v2;
}

_BYTE *DOCAbstractPacedPropertyUpdater.deinit()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);

  swift_dynamicCast();
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState]);
  return v0;
}

Swift::Void __swiftcall DOCAbstractPacedPropertyUpdater.invalidate()()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);

  swift_dynamicCast();
  v3 = v6;
  v4 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t DOCAbstractPacedPropertyUpdater.__deallocating_deinit()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);

  swift_dynamicCast();
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState]);
  return swift_deallocClassInstance();
}

uint64_t DOCAbstractPacedPropertyUpdater.isObservingActive.setter(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 24);
  *(v1 + 24) = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      return DOCAbstractPacedPropertyUpdater.startObserving()();
    }

    else
    {
      type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
      swift_dynamicCast();
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 40))(v6, v7);
      return __swift_destroy_boxed_opaque_existential_0(v8);
    }
  }

  return result;
}

void (*DOCAbstractPacedPropertyUpdater.isObservingActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  *(v4 + 80) = *(v1 + 24);
  return DOCAbstractPacedPropertyUpdater.isObservingActive.modify;
}

void DOCAbstractPacedPropertyUpdater.isObservingActive.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(v3 + 24);
  *(v3 + 24) = v4;
  if (a2)
  {
    if (((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    v6 = v2[9];
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    v6 = v2[9];
    if (!v4)
    {
LABEL_4:
      v2[8] = v6;
      type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
      swift_dynamicCast();
      v7 = v2[3];
      v8 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v7);
      (*(v8 + 40))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v2);
      goto LABEL_8;
    }
  }

  DOCAbstractPacedPropertyUpdater.startObserving()();
LABEL_8:

  free(v2);
}

Swift::Void __swiftcall DOCAbstractPacedPropertyUpdater.setNeedsUpdateProperties(notifyImmediately:)(Swift::Bool notifyImmediately)
{
  if (*(v1 + 32) <= 0)
  {
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    v9 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
    swift_dynamicCast();
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v5 = (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
    if (v5)
    {
      DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(notifyImmediately || v5 == 2);
    }
  }
}

uint64_t (*DOCAbstractPacedPropertyUpdater.withUpdatesDisabled(_:)(uint64_t (*result)(void)))(void)
{
  v2 = *(v1 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v4;
    result = result();
    v5 = *(v1 + 32);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 32) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCAbstractPacedPropertyUpdater.startObserving()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 184))(v14);
  if (result)
  {
    v29 = v0;
    v28 = type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
    swift_dynamicCast();
    v26 = v11;
    v18 = v6;
    v19 = v7;
    v21 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v20 + 40))(v21, v20);
    __swift_destroy_boxed_opaque_existential_0(v30);
    static DispatchTime.now()();
    DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v10);
    (*(v12 + 40))(&v10[*(v18 + 20)], v16, v26);
    outlined init with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v10, v5);
    (*(v19 + 56))(v5, 0, 1, v18);
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
    swift_beginAccess();
    outlined assign with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v5, v1 + v22);
    swift_endAccess();
    v29 = v1;

    swift_dynamicCast();
    v23 = v31;
    v24 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v24 + 32))(v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v30);
    DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
    return DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(1);
  }

  return result;
}

uint64_t DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(uint64_t result)
{
  if (*(v1 + 32) <= 0)
  {
    v2 = result;
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    v11 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
    swift_dynamicCast();
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 16))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_0(v8);
    if (v2)
    {
      if (v5)
      {
        v7 = v2 == 2 || v5 == 2;
        return DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(v7);
      }
    }
  }

  return result;
}

uint64_t outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DOCAbstractPacedPropertyUpdater.clientNotifyState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  swift_beginAccess();
  outlined init with copy of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v1 + v11, v10);
  v12 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return outlined init with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v10, a1);
  }

  outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v10);
  static DispatchTime.now()();
  *a1 = 0;
  outlined init with copy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(a1, v6);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  outlined assign with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v6, v1 + v11);
  return swift_endAccess();
}

uint64_t DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v7);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for DispatchTime();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  v53 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v48 - v27;
  if (a1)
  {
    goto LABEL_2;
  }

  DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(&v48 - v27);
  if (*v28 == 1)
  {
    outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v28);
  }

  else
  {
    static DispatchTime.now()();
    lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, MEMORY[0x277D851E0]);
    v38 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v20, v13);
    outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v28);
    if ((v38 & 1) == 0)
    {
LABEL_2:
      DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v24);
      *v24 = 0;
      outlined init with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v24, v12);
      v52 = v13;
      v29 = v54;
      v53 = *(v53 + 56);
      (v53)(v12, 0, 1, v21);
      v30 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
      swift_beginAccess();
      outlined assign with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v12, v2 + v30);
      swift_endAccess();
      v31 = static DispatchTime.now()();
      (*(*v2 + 120))(v31);
      + infix(_:_:)();
      v32 = v16;
      v33 = v52;
      (*(v29 + 8))(v32, v52);
      DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v24);
      (*(v29 + 40))(&v24[*(v21 + 20)], v20, v33);
      outlined init with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v24, v12);
      (v53)(v12, 0, 1, v21);
      swift_beginAccess();
      outlined assign with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v12, v2 + v30);
      v34 = swift_endAccess();
      if ((*(*v2 + 160))(v34))
      {
        aBlock = 0;
        v56 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD89E0);
        v61 = v2;
        type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
        _print_unlocked<A, B>(_:_:)();

        v61 = v2;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
        swift_dynamicCast();
        v35 = v58;
        v36 = v59;
        __swift_project_boxed_opaque_existential_1(&aBlock, v58);
        (*(v36 + 3))(v35, v36);
        return __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        aBlock = 0;
        v56 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD89B0);
        v61 = v2;
        type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
        _print_unlocked<A, B>(_:_:)();
      }
    }
  }

  DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v24);
  v39 = *v24;
  result = outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v24);
  if ((v39 & 1) == 0)
  {
    DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v24);
    *v24 = 1;
    outlined init with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v24, v12);
    (*(v53 + 56))(v12, 0, 1, v21);
    v40 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
    swift_beginAccess();
    outlined assign with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(v12, v2 + v40);
    swift_endAccess();
    aBlock = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD8A10);
    v61 = v2;
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    type metadata accessor for OS_dispatch_queue();
    v41 = static OS_dispatch_queue.main.getter();
    DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v24);
    v42 = v4;
    v43 = *(v21 + 20);
    v44 = swift_allocObject();
    swift_weakInit();
    v59 = partial apply for closure #1 in DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:);
    v60 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v58 = &block_descriptor_42;
    v45 = _Block_copy(&aBlock);

    v46 = v48;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v47 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB940](&v24[v43], v46, v47, v45);
    _Block_release(v45);

    (*(v52 + 8))(v47, v42);
    (*(v49 + 8))(v46, v51);
    return (*(v54 + 8))(&v24[v43], v13);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCPacedPropertyUpdaterNotifyType and conformance DOCPacedPropertyUpdaterNotifyType()
{
  result = lazy protocol witness table cache variable for type DOCPacedPropertyUpdaterNotifyType and conformance DOCPacedPropertyUpdaterNotifyType;
  if (!lazy protocol witness table cache variable for type DOCPacedPropertyUpdaterNotifyType and conformance DOCPacedPropertyUpdaterNotifyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCPacedPropertyUpdaterNotifyType and conformance DOCPacedPropertyUpdaterNotifyType);
  }

  return result;
}

void type metadata completion function for DOCAbstractPacedPropertyUpdater()
{
  type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState?()
{
  if (!lazy cache variable for type metadata for DOCAbstractPacedPropertyUpdater.ClientNotifyState?)
  {
    type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCAbstractPacedPropertyUpdater.ClientNotifyState?);
    }
  }
}

uint64_t type metadata completion function for DOCAbstractPacedPropertyUpdater.ClientNotifyState()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DOCAbstractPacedPropertyUpdater.ClientNotifyState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(uint64_t a1)
{
  v2 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)()
{
  v0 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DOCAbstractPacedPropertyUpdater.clientNotifyState.getter(v3);
    v5 = *v3;
    outlined destroy of DOCAbstractPacedPropertyUpdater.ClientNotifyState(v3);
    if (v5 == 1)
    {
      DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(1);
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for typeDisplayRepresentation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v7 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v7, static GroupingMode.typeDisplayRepresentation);
  __swift_project_value_buffer(v7, static GroupingMode.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v5 + 56))(v3, 1, 1, v4);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v17 - v2;
  v17[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0], v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v15, static CompressionFormat.typeDisplayRepresentation);
  __swift_project_value_buffer(v15, static CompressionFormat.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v3, 1, 1, v12);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t static GroupingMode.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static GroupingMode.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static GroupingMode.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static GroupingMode.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static GroupingMode.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static GroupingMode.typeDisplayRepresentation);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static GroupingMode.typeDisplayRepresentation : GroupingMode.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static GroupingMode.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static GroupingMode.typeDisplayRepresentation : GroupingMode.Type(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static GroupingMode.typeDisplayRepresentation);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

DocumentManagerExecutables::GroupingMode_optional __swiftcall GroupingMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupingMode.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GroupingMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1702125924;
  v4 = 1702521203;
  if (v1 != 3)
  {
    v4 = 0x7942646572616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684957547;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupingMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupingMode()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupingMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GroupingMode(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE400000000000000;
  v6 = 1702125924;
  v7 = 0xE400000000000000;
  v8 = 1702521203;
  if (v2 != 3)
  {
    v8 = 0x7942646572616873;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684957547;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance GroupingMode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupingMode and conformance GroupingMode();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance GroupingMode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupingMode and conformance GroupingMode();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t SetGroupingModeIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12GroupingModeOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38 = 0;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type GroupingMode and conformance GroupingMode();
  result = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  *v37 = result;
  return result;
}

uint64_t static SetGroupingModeIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static SetGroupingModeIntent.attributionBundleIdentifier;

  return v0;
}

uint64_t static SetGroupingModeIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static SetGroupingModeIntent.attributionBundleIdentifier = a1;
  off_27EEE94D8 = a2;
}

uint64_t key path setter for static SetGroupingModeIntent.attributionBundleIdentifier : SetGroupingModeIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SetGroupingModeIntent.attributionBundleIdentifier = v2;
  off_27EEE94D8 = v1;
}

void (*SetGroupingModeIntent.groupingMode.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static SetGroupingModeIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SetGroupingModeIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SetGroupingModeIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD8BF0;
  v4._countAndFlagsBits = 0xD000000000000034;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21SetGroupingModeIntentV10AppIntents0I9ParameterCyAC0gH0OGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance SetGroupingModeIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static SetGroupingModeIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SetGroupingModeIntent()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SetGroupingModeIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SetGroupingModeIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD8BF0;
  v4._countAndFlagsBits = 0xD000000000000034;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21SetGroupingModeIntentV10AppIntents0I9ParameterCyAC0gH0OGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t specialized static GroupingMode.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v67 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v64 = &v46 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v56 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v65 = type metadata accessor for LocalizedStringResource();
  v17 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12GroupingModeO_10AppIntents21DisplayRepresentationVtGMd);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12GroupingModeO_10AppIntents21DisplayRepresentationVtMd);
  v66 = v19;
  v20 = *(v19 - 8);
  v52 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v49 = 4 * v52;
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_249BA54A0;
  v48 = *(v19 + 48);
  *(v22 + v21) = 0;
  v23 = v22 + v21;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v7 + 104);
  v59 = v7 + 104;
  v63 = v25;
  v54 = v10;
  v55 = v24;
  v25(v10, v24, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v26 = *(v17 + 56);
  v60 = v17 + 56;
  v61 = v26;
  v27 = v64;
  v26(v64, 1, 1, v65);
  v62 = type metadata accessor for DisplayRepresentation.Image();
  v28 = *(v62 - 8);
  v57 = *(v28 + 56);
  v58 = v28 + 56;
  v57(v67, 1, 1, v62);
  v51 = v23;
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = v52;
  v47 = (v23 + v52);
  v48 = *(v66 + 48);
  *v47 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  v53 = v14;
  static Locale.current.getter();
  v63(v54, v24, v56);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v30 = v65;
  v31 = v61;
  v61(v27, 1, 1, v65);
  v32 = v62;
  v57(v67, 1, 1, v62);
  DisplayRepresentation.init(title:subtitle:image:)();
  v48 = 2 * v29;
  v33 = v51;
  v46 = (v51 + 2 * v29);
  v47 = *(v66 + 48);
  *v46 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = v54;
  v63(v54, v55, v56);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v31(v64, 1, 1, v30);
  v35 = v32;
  v36 = v57;
  v57(v67, 1, 1, v35);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = (v33 + v48 + v52);
  v38 = v66;
  v52 = *(v66 + 48);
  *v37 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = v34;
  v40 = v56;
  v41 = v63;
  v63(v39, v55, v56);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v42 = v64;
  v61(v64, 1, 1, v65);
  v43 = v67;
  v36(v67, 1, 1, v62);
  DisplayRepresentation.init(title:subtitle:image:)();
  v52 = *(v38 + 48);
  *(v51 + v49) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41(v54, v55, v40);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v61(v42, 1, 1, v65);
  v57(v43, 1, 1, v62);
  DisplayRepresentation.init(title:subtitle:image:)();
  v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables12GroupingModeO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v44;
}

unint64_t lazy protocol witness table accessor for type GroupingMode and conformance GroupingMode()
{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode;
  if (!lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupingMode and conformance GroupingMode);
  }

  return result;
}

uint64_t DOCTabSidebarDataSource.mutateSectionData(changingContentsIn:mutationBlock:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v6 = *(**(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

  v7 = v6(a1);

  if (a2(v7))
  {
    DOCTabSidebarDataSource.updateTabsIfNeeded()();
  }
}

Swift::Int MutationReloadRequest.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t key path getter for DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive : DOCSidebarItemChangePacer@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 400))();
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

uint64_t key path setter for DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive : DOCSidebarItemChangePacer(uint64_t *a1, uint64_t a2)
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

  v7 = *(**a2 + 408);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCSidebarItemChangePacer.workDeferredWhilePacerWasActive.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

double DOCSidebarItemChangePacer.__allocating_init(pacing:behaviors:)(char a1, double a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 104) = 255;
  *(v4 + 112) = 0;
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  return result;
}

uint64_t DOCSidebarItemChangePacer.init(pacing:behaviors:)(char a1, double a2)
{
  *(v2 + 96) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 104) = 255;
  *(v2 + 112) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t DOCSidebarItemChangePacer.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 32));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 48));
  outlined consume of DOCSidebarItem?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 120));
  return v0;
}

uint64_t DOCSidebarItemChangePacer.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 32));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 48));
  outlined consume of DOCSidebarItem?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 120));

  return swift_deallocClassInstance();
}

void *DOCTabSidebarDataSource.pickerContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTabSidebarDataSource.pickerContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCTabSidebarDataSource.favoritesManager.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___favoritesManager;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___favoritesManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___favoritesManager);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_configuration);
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData);
    type metadata accessor for FavoritesSectionManager();
    v2 = swift_allocObject();
    *(v2 + 16) = 2;
    swift_unknownObjectWeakInit();
    *(v2 + 56) = 0;
    *(v2 + 24) = v3;
    *(v2 + 40) = v4;
    *(v2 + 48) = 0;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

uint64_t closure #1 in DOCTabSidebarDataSource.locationManager.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_configuration);
  v2 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_sourceObserver);
  v16 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_sourceVisibilityController);
  v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData);
  type metadata accessor for LocationSectionManager();
  v4 = swift_allocObject();
  *(v4 + 16) = 3;
  swift_unknownObjectWeakInit();
  *(v4 + 96) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  v5 = v1;
  v17 = v2;

  v6 = MEMORY[0x277D84F90];
  *(v4 + 104) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v4 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_SbTt0g5Tf4g_n(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249B9A480;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = 0xD000000000000027;
  *(v7 + 40) = 0x8000000249BD3A40;
  print(_:separator:terminator:)();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(35);

  v10 = [v5 hiddenSourcesIdentifiers];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = MEMORY[0x24C1FB0D0](v11, v8);
  v14 = v13;

  MEMORY[0x24C1FAEA0](v12, v14);

  *(v9 + 56) = v8;
  *(v9 + 32) = 0xD000000000000021;
  *(v9 + 40) = 0x8000000249BD3A70;
  print(_:separator:terminator:)();

  *(v4 + 24) = v5;
  *(v4 + 40) = v17;
  *(v4 + 48) = v16;
  *(v4 + 56) = v3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t DOCTabSidebarDataSource.locationManager.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t closure #1 in DOCTabSidebarDataSource.serversManager.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_configuration);
  v2 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_sourceObserver);
  v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_sourceVisibilityController);
  v4 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData);
  type metadata accessor for ServersSectionManager();
  v5 = swift_allocObject();
  *(v5 + 16) = 4;
  swift_unknownObjectWeakInit();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v6 = v1;
  v7 = v2;

  *(v5 + 80) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  *(v5 + 48) = v3;
  *(v5 + 56) = v4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t DOCTabSidebarDataSource.tagsManager.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___tagsManager;
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___tagsManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___tagsManager];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_configuration];
    v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData];
    type metadata accessor for TagsSectionManager();
    swift_allocObject();
    v5 = v3;

    v2 = TagsSectionManager.init(configuration:mutableSectionsData:dataSource:)(v5, v4, v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *DOCTabSidebarDataSource.selectedLocation.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_locationSelection) + 16);
  v2 = v1;
  return v1;
}

uint64_t DOCTabSidebarDataSource.appLaunchOptimizationsActive.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_appLaunchOptimizationsActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCTabSidebarDataSource.appLaunchOptimizationsActive.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_appLaunchOptimizationsActive;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3 && ((*((*MEMORY[0x277D85000] & *v1) + 0x220))(v5) & 1) == 0)
  {
    DOCTabSidebarDataSource.updateTabsIfNeeded()();
  }
}

void (*DOCTabSidebarDataSource.appLaunchOptimizationsActive.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_appLaunchOptimizationsActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCTabSidebarDataSource.appLaunchOptimizationsActive.modify;
}

void DOCTabSidebarDataSource.appLaunchOptimizationsActive.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (((v4 ^ v5) & 1) != 0 && ((*((*MEMORY[0x277D85000] & *v1[3]) + 0x220))() & 1) == 0)
  {
    DOCTabSidebarDataSource.updateTabsIfNeeded()();
  }

  free(v1);
}

id DOCTabSidebarDataSource.init(configuration:sourceObserver:delegate:)(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___favoritesManager] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___locationManager] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___serversManager] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___tagsManager] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_isObservingSectionDataProviders] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingTabUpdates] = 0;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingSelectionProviderDomainID];
  *v6 = 0;
  v6[1] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_hasSomeUnseenSources] = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_locationSelection;
  type metadata accessor for DOCTabSidebarDataSource.LocationSelection();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
  *&v3[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCSidebarItemO_SDySo7UIColorCSo6CGSizeV13requestedSize_AC0F4IconV4icontGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_appLaunchOptimizationsActive] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___sharedRootLevelTabs] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9A480;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000038;
  *(v10 + 40) = 0x8000000249BD8FC0;
  print(_:separator:terminator:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(35);

  v13 = [a1 hiddenSourcesIdentifiers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x24C1FB0D0](v14, v11);
  v17 = v16;

  MEMORY[0x24C1FAEA0](v15, v17);

  *(v12 + 56) = v11;
  *(v12 + 32) = 0xD000000000000021;
  *(v12 + 40) = 0x8000000249BD3A70;
  print(_:separator:terminator:)();

  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_sourceObserver] = a2;
  swift_unknownObjectWeakAssign();
  v18 = one-time initialization token for docUserDefaults;
  v19 = a1;
  v20 = a2;
  if (v18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    v22 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSUserDefaults);
    v23 = &protocol witness table for NSUserDefaults;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  type metadata accessor for DOCSourceVisibilityController();
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD00000000000001FLL;
  *(v24 + 24) = 0x8000000249BD9000;
  *(v24 + 80) = MEMORY[0x277D84F90];
  v25 = v21;
  v26 = v19;
  *(v24 + 88) = MEMORY[0x24C1FAD20](0xD00000000000003FLL, 0x8000000249BD9020);
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 32) = v21;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 56) = v22;
  *(v24 + 64) = v23;
  *(v24 + 72) = v26;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_sourceVisibilityController] = v24;
  type metadata accessor for DOCMutableSidebarData();
  *(swift_allocObject() + 40) = 0;
  v27 = v26;

  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData] = DOCSidebarData.init(configuration:sourceVisibilityController:loadSavedState:)(v27, v24, 1);
  v33.receiver = v3;
  v33.super_class = type metadata accessor for DOCTabSidebarDataSource();
  v28 = objc_msgSendSuper2(&v33, sel_init);
  DOCTabSidebarDataSource.startObserving()();
  v29 = [objc_opt_self() shared];
  aBlock[4] = closure #1 in DOCTabSidebarDataSource.init(configuration:sourceObserver:delegate:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_43;
  v30 = _Block_copy(aBlock);
  [v29 performAfterLaunchAlwaysAsync:0 block:v30];
  _Block_release(v30);

  swift_unknownObjectRelease();
  return v28;
}

void closure #1 in DOCTabSidebarDataSource.init(configuration:sourceObserver:delegate:)()
{
  v0 = [objc_opt_self() shared];
  [v0 loadIconsFromDiskIfNeeded];
}

uint64_t DOCTabSidebarDataSource.startObserving()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000027;
  *(v0 + 40) = 0x8000000249BD93D0;
  print(_:separator:terminator:)();

  DOCTabSidebarDataSource.locationManager.getter();
  LocationSectionManager.startObserving()();

  DOCTabSidebarDataSource.favoritesManager.getter();
  FavoritesSectionManager.startObserving()();

  DOCTabSidebarDataSource.serversManager.getter();
  ServersSectionManager.startObserving()();

  DOCTabSidebarDataSource.tagsManager.getter();
  TagsSectionManager.startObserving()();
}

uint64_t DOCTabSidebarDataSource.stopObserving()()
{
  DOCTabSidebarDataSource.locationManager.getter();
  LocationSectionManager.stopObserving()();

  v0 = DOCTabSidebarDataSource.favoritesManager.getter();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 sharedManager];
    [v5 removeSubscriber_];

    v6 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  else
  {
  }

  DOCTabSidebarDataSource.serversManager.getter();
  ServersSectionManager.stopObserving()();

  v7 = DOCTabSidebarDataSource.tagsManager.getter();
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = *(*v8 + 160);
    v10 = v7;

    v9(v11);

    v7 = v10;
  }

  *(v7 + 48) = 0;
}

uint64_t DOCTabSidebarDataSource.sharedRootLevelTabs.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___sharedRootLevelTabs;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___sharedRootLevelTabs))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource____lazy_storage___sharedRootLevelTabs);
  }

  else
  {
    v2 = closure #1 in DOCTabSidebarDataSource.sharedRootLevelTabs.getter();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in DOCTabSidebarDataSource.sharedRootLevelTabs.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 recentDocumentsLocation];
  v2 = [v1 displayName];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  type metadata accessor for DOCSourceListInterface_Default();
  inited = swift_initStaticObject();
  v7 = [inited iconForRecents];
  v8 = DOCTabSidebarDataSource.createLocationTab(title:identifier:icon:)(v3, v5, 0x73746E65636572, 0xE700000000000000, v7);

  v22[4] = v8;
  v9 = [v0 sharedItemsLocation];
  v10 = [v9 displayName];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [inited iconForShared];
  v15 = DOCTabSidebarDataSource.createLocationTab(title:identifier:icon:)(v11, v13, 0x646572616873, 0xE600000000000000, v14);

  v16 = 0;
  v22[5] = v15;
  v17 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  while (v16 != 2)
  {
    v18 = v22[v16++ + 4];
    if (v18)
    {
      v19 = v18;
      MEMORY[0x24C1FB090]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v21;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5UITabCSgMd);
  swift_arrayDestroy();
  return v17;
}

id DOCTabSidebarDataSource.createLocationTab(title:identifier:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(MEMORY[0x277D75B08]);

  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = MEMORY[0x24C1FAD20](a3, a4);
  v17[4] = partial apply for closure #1 in DOCTabSidebarDataSource.createLocationTab(title:identifier:icon:);
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  v17[3] = &block_descriptor_76;
  v14 = _Block_copy(v17);

  v15 = [v11 initWithTitle:v12 image:a5 identifier:v13 viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

uint64_t DOCTabSidebarDataSource.generateTabs()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong alertPresenting_];
    v5 = v46;
    v6 = DOCTabSidebarDataSource.favoritesManager.getter();
    v7 = specialized FavoritesSectionManager.generateTabGroup(using:alertPresenting:)(v0, v6);

    v46[4] = v7;
    v8 = DOCTabSidebarDataSource.locationManager.getter();
    v9 = specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(v0, v4, v8);

    v46[5] = v9;
    v10 = DOCTabSidebarDataSource.serversManager.getter();
    v11 = specialized ServersSectionManager.generateTabGroup(using:alertPresenting:)(v0, v4, v10);

    v46[6] = v11;
    v12 = DOCTabSidebarDataSource.tagsManager.getter();
    v13 = specialized TagsSectionManager.generateTabGroup(using:alertPresenting:)(v0, v12);

    v14 = 0;
    v46[7] = v13;
    aBlock[0] = v2;
    v15 = v2;
LABEL_3:
    if (v14 <= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v14;
    }

    while (v14 != 4)
    {
      if (v16 == v14)
      {
        __break(1u);
LABEL_22:
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      }

      v17 = v46[v14++ + 4];
      if (v17)
      {
        v18 = v17;
        MEMORY[0x24C1FB090]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = aBlock[0];
        goto LABEL_3;
      }
    }

    v42 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10UITabGroupCSgMd);
    swift_arrayDestroy();
    v5 = &selRef_removeFromSuperlayer;
    v4 = &selRef_removeFromSuperlayer;
    v43 = v3;
    v44 = v0;
    if (v15 >> 62)
    {
      goto LABEL_22;
    }

    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
LABEL_23:

      v24 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

LABEL_14:
    aBlock[0] = v2;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v21 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v15);
      }

      else
      {
        v22 = *(v15 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      [v22 v4[457]];
      [v23 v5[458]];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v19 != v21);

    v24 = aBlock[0];
LABEL_24:
    v25 = [objc_opt_self() mainBundle];
    v47._object = 0x8000000249BD9060;
    v26._countAndFlagsBits = 0x6573776F7242;
    v26._object = 0xE600000000000000;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD00000000000001BLL;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v47);

    v29 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
    v41 = [objc_opt_self() systemImageNamed_];

    if (v24 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    }

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = objc_allocWithZone(MEMORY[0x277D75B30]);

    v32 = MEMORY[0x24C1FAD20](v28._countAndFlagsBits, v28._object);

    v33 = MEMORY[0x24C1FAD20](0x6573776F7262, 0xE600000000000000);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #3 in DOCTabSidebarDataSource.generateTabs();
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
    aBlock[3] = &block_descriptor_3_1;
    v35 = _Block_copy(aBlock);

    v36 = [v31 initWithTitle:v32 image:v41 identifier:v33 children:isa viewControllerProvider:v35];
    _Block_release(v35);

    [v36 v5[458]];
    [v36 v4[457]];
    v37 = DOCTabSidebarDataSource.sharedRootLevelTabs.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v36;
    aBlock[0] = v37;
    v39 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    v2 = aBlock[0];
    v40 = Array._bridgeToObjectiveC()().super.isa;
    [v43 dataSource:v44 didUpdateTabs:v40];
    swift_unknownObjectRelease();
  }

  return v2;
}

id closure #1 in DOCTabSidebarDataSource.createLocationTab(title:identifier:icon:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();

  if (!v4)
  {
    return [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }

  v5 = [v4 viewControllerFor_];
  swift_unknownObjectRelease();
  return v5;
}

Swift::Void __swiftcall DOCTabSidebarDataSource.wantsToReveal(location:)(DOCConcreteLocation *location)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dataSource:v1 wantsToReveal:location];

    swift_unknownObjectRelease();
  }
}

void __swiftcall DOCTabSidebarDataSource.alertPresenting()(UIViewController_optional *__return_ptr retstr)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertPresenting_];
    swift_unknownObjectRelease();
  }
}

uint64_t DOCTabSidebarDataSource.wantsToPresentConnectToServer(url:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    outlined init with copy of URL?(a1, v6);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v12 = 0;
    if ((*(v10 + 48))(v6, 1, v9) != 1)
    {
      URL._bridgeToObjectiveC()(v11);
      v12 = v13;
      (*(v10 + 8))(v6, v9);
    }

    [v8 dataSource:v1 wantsToPresentConnectToServer:v12];

    return swift_unknownObjectRelease();
  }

  return result;
}

void static DOCTabSidebarDataSource.remove(tab:)(void *a1)
{
  v2 = [a1 parent];
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v6;
    v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v10, v4);

    if (v10 >> 62)
    {
      v8 = __CocoaSet.count.getter();
      if (v8 >= v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v7)
      {
LABEL_4:
        specialized Array.replaceSubrange<A>(_:with:)(v7, v8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v3 setChildren_];

        return;
      }
    }

    __break(1u);
  }
}

id DOCTabSidebarDataSource.__deallocating_deinit()
{
  DOCTabSidebarDataSource.stopObserving()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTabSidebarDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DOCTabSidebarDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCTabSidebarDataSource.getIcon(for:)(_OWORD *a1)
{
  v3 = v1;
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v5);
  v8 = v7;
  v9 = [objc_opt_self() unspecifiedConfiguration];

  v10 = [objc_opt_self() systemBlueColor];
  v11 = DOCTabSidebarDataSource.cachedIcon(requestedSize:variant:item:)(v10, a1, v6, v8);
  if (v11)
  {
    v12 = v11;

    return v12;
  }

  DOCTabSidebarDataSource.createIconProvider(for:)(a1, v40);
  v13 = v41;
  v14 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  type metadata accessor for DOCSidebarItemCell(0);
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = (*(v14 + 8))(v9, v15, v10, v13, v14, v6, v8, -12.0);
  v38 = v17;

  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
  swift_beginAccess();
  v12 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v3 + v18);
  v20 = v39;
  *(v3 + v18) = 0x8000000000000000;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
LABEL_15:
    specialized _NativeDictionary.copy()();
    v20 = v39;
    *(v3 + v18) = v39;
    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v2 = v21;
  if (v20[3] >= v25)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v3 + v18) = v20;
      if (v21)
      {
LABEL_12:
        v35 = v20[7];
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v35 + 8 * v22);
        *(v35 + 8 * v22) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v38 & 1, v10, v36, v6, v8);

        *(v35 + 8 * v22) = v39;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_0(v40);
        return v12;
      }

      goto LABEL_10;
    }

    goto LABEL_15;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
  v20 = v39;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v2 & 1) != (v27 & 1))
  {
    goto LABEL_18;
  }

  v22 = v26;
  *(v3 + v18) = v39;
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_10:
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20[(v22 >> 6) + 8] |= 1 << v22;
  v29 = (v20[6] + 48 * v22);
  v30 = *(a1 + 25);
  v31 = a1[1];
  *v29 = *a1;
  v29[1] = v31;
  *(v29 + 25) = v30;
  *(v20[7] + 8 * v22) = v28;
  v32 = v20[2];
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    v20[2] = v34;
    outlined init with copy of DOCSidebarItem(a1, &v39);
    goto LABEL_12;
  }

  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id DOCTabSidebarDataSource.cachedIcon(requestedSize:variant:item:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);

  if (v11 && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v16 & 1) != 0))
  {
    v17 = *(v14 + 56) + 32 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);

    if (v19 == a3 && v18 == a4)
    {
      return v20;
    }
  }

  else
  {
  }

  return 0;
}

void DOCTabSidebarDataSource.createIconProvider(for:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4;
    v8 = [objc_msgSend(*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_configuration) sourceListUI)];

    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = type metadata accessor for DOCSidebarItemCell.RawImageIconProvider();
      v10 = swift_allocObject();
      v11 = v8;
      v12 = 0;
      v13 = v11;
LABEL_15:
      *(v10 + 16) = v11;
      *(v10 + 24) = v12 & 1;
      type metadata accessor for DOCSidebarItemCell.RawImageIconProvider();
      a2[3] = v9;
      a2[4] = &protocol witness table for DOCSidebarItemCell.RawImageIconProvider;

      goto LABEL_16;
    }

LABEL_10:
    v15 = DOCSidebarItem.sidebarStaticIcon.getter();
    v12 = v16;
    v9 = type metadata accessor for DOCSidebarItemCell.RawImageIconProvider();
    v10 = swift_allocObject();
    if (v15)
    {
      v11 = v15;
      v13 = v11;
    }

    else
    {
      if (one-time initialization token for blank != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = byte_27EF185B0;
      v11 = static DOCSidebarIcon.blank;
      v13 = 0;
    }

    goto LABEL_15;
  }

  if (v5 != 2)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for DOCSidebarItemCell.TagIconProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = [v4 labelIndex] == 0;
  a2[3] = v14;
  a2[4] = &protocol witness table for DOCSidebarItemCell.TagIconProvider;
LABEL_16:
  *a2 = v10;
}

void DOCTabSidebarDataSource.updateTabsIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingTabUpdates;
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingTabUpdates) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingTabUpdates) = 1;
    if ([objc_opt_self() isMainThread])
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0x270))();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v13 dataSource:v0 didUpdateTabs:isa];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      *(v0 + v11) = 0;
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v15 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in DOCTabSidebarDataSource.updateTabsIfNeeded();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_101;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v10, v5, v17);
      _Block_release(v17);

      (*(v2 + 8))(v5, v1);
      (*(v7 + 8))(v10, v6);
    }
  }
}

void closure #1 in DOCTabSidebarDataSource.updateTabsIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x270))();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v3 dataSource:v1 didUpdateTabs:isa];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingTabUpdates] = 0;
  }
}

void DOCTabSidebarDataSource.fistNewlyAddedSource(with:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a2)
  {
    return;
  }

  v4 = a2;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData;
  v6 = *(**(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 136);

  v6(4);
  v8 = v7;

  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 72))(0, ObjectType, v8);
  swift_unknownObjectRelease();
  v36 = v3;
  v11 = *(**(v3 + v5) + 136);

  v11(3);
  v13 = v12;

  v14 = swift_getObjectType();
  v15 = (*(v13 + 72))(0, v14, v13);
  swift_unknownObjectRelease();
  v41 = v10;
  specialized Array.append<A>(contentsOf:)(v15);
  v16 = v10;
  v17 = *(v10 + 16);
  if (!v17)
  {
LABEL_11:

    v34 = (v36 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pendingSelectionProviderDomainID);
    *v34 = a1;
    v34[1] = v4;

    return;
  }

  v18 = 0;
  v19 = (v10 + 72);
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    if (*v19 == 1)
    {
      v20 = *(v19 - 5);
      v21 = *(v19 - 2);
      v39 = *(v19 - 4);
      v40 = *(v19 - 3);
      v22 = *(v19 - 1);
      type metadata accessor for DOCFileProviderSource();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23;
        v25 = *(v23 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v25)
        {
          break;
        }
      }
    }

LABEL_4:
    ++v18;
    v19 += 48;
    if (v17 == v18)
    {
      goto LABEL_11;
    }
  }

  v38 = v21;
  v26 = v17;
  v27 = v20;
  v28 = [v25 identifier];
  v29 = v4;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33._countAndFlagsBits = v30;
  v4 = v29;
  v33._object = v32;
  LOBYTE(v28) = String.hasPrefix(_:)(v33);

  if ((v28 & 1) == 0)
  {
    outlined consume of DOCSidebarItem(v20, v39, v40, v38, v22, 1u);
    v17 = v26;
    v16 = v41;
    goto LABEL_4;
  }

  if (a3)
  {
    a3(v24);
  }

  outlined consume of DOCSidebarItem(v20, v39, v40, v38, v22, 1u);
}

uint64_t DOCTabSidebarDataSource.displayOrderDidChange(for:)(void *a1)
{
  result = DOCTabSidebarDataSource.sectionManager(for:)(a1);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = [a1 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 72))(v7, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCTabSidebarDataSource.sectionManager(for:)(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x657469726F766166 && v5 == 0xE900000000000073)
  {

    return DOCTabSidebarDataSource.favoritesManager.getter();
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return DOCTabSidebarDataSource.favoritesManager.getter();
  }

  v8 = [a1 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == 0x6E6F697461636F6CLL && v11 == 0xE900000000000073)
  {

    return DOCTabSidebarDataSource.locationManager.getter();
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return DOCTabSidebarDataSource.locationManager.getter();
  }

  v14 = [a1 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0x73726576726573 && v17 == 0xE700000000000000)
  {

    return DOCTabSidebarDataSource.serversManager.getter();
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    return DOCTabSidebarDataSource.serversManager.getter();
  }

  v20 = [a1 identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == 1936154996 && v23 == 0xE400000000000000)
  {

    return DOCTabSidebarDataSource.tagsManager.getter();
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return DOCTabSidebarDataSource.tagsManager.getter();
  }

  return 0;
}

void DOCTabSidebarDataSource.sidebarItem(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    specialized DOCTabSidebarDataSource.firstSidebarItemMatching(predicate:)(v2, v4, v11);
    v9 = v11[1];
    v10 = v11[0];
    v5 = v12;
    v6 = v13;

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v5 = 0;
    v7 = 0uLL;
    v6 = -1;
    v8 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = *(a2 + 80);
  v5 = a4[6] + 168 * result;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v4;
  *(v5 + 160) = *(a2 + 160);
  v6 = *(a2 + 144);
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = v6;
  v7 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v7;
  v8 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v8;
  v9 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v9;
  v10 = (a4[7] + 224 * result);
  v11 = a3[1];
  *v10 = *a3;
  v10[1] = v11;
  v12 = a3[5];
  v10[4] = a3[4];
  v10[5] = v12;
  v13 = a3[3];
  v10[2] = a3[2];
  v10[3] = v13;
  v14 = a3[9];
  v10[8] = a3[8];
  v10[9] = v14;
  v15 = a3[7];
  v10[6] = a3[6];
  v10[7] = v15;
  v16 = a3[13];
  v10[12] = a3[12];
  v10[13] = v16;
  v17 = a3[11];
  v10[10] = a3[10];
  v10[11] = v17;
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = a3[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a3[7] + 8 * result) = a4;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = a3[6] + 168 * result;
  v5 = *(a2 + 144);
  *(v4 + 128) = *(a2 + 128);
  *(v4 + 144) = v5;
  *(v4 + 160) = *(a2 + 160);
  v6 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v6;
  v7 = *(a2 + 112);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = v7;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  v9 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v9;
  *(a3[7] + 8 * result) = a4;
  v10 = a3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5, double a6, double a7)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v7 = a5[7] + 32 * result;
  *v7 = a6;
  *(v7 + 8) = a7;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC95F0], type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for URL();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D85578]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC9578]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC9260]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC9260], type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  v9 = a5[7];
  v10 = type metadata accessor for RestorableSettings(0);
  result = _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RestorableSettings);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  v7 = a6[7] + 40 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a5 + 32);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v7 = a6[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a7;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  v6 = a4[7] + 56 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a3 + 32);
  *(v6 + 48) = *(a3 + 48);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of DOCGoToFolderCandidate(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = type metadata accessor for Column(0);
  result = _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for Column);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = _s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVWObTm_0(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a3[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a3[7] + 32 * a1);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v18 = a3[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v20;
  }

  return result;
}

id specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = specialized LocationSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3);
  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [objc_opt_self() mainBundle];
  v18._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v5._object = 0xE900000000000073;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v18);

  v8 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
  v9 = [objc_opt_self() systemImageNamed_];

  v10 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v11 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

  v12 = MEMORY[0x24C1FAD20](0x6E6F697461636F6CLL, 0xE900000000000073);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_91_0;
  v14 = _Block_copy(aBlock);

  v15 = [v10 initWithTitle:v11 image:v9 identifier:v12 children:isa viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

id specialized ServersSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = specialized ServersSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3);
  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [objc_opt_self() mainBundle];
  v18._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x646572616853;
  v5._object = 0xE600000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v18);

  v8 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BC5EC0);
  v9 = [objc_opt_self() systemImageNamed_];

  v10 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v11 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

  v12 = MEMORY[0x24C1FAD20](0x73726576726573, 0xE700000000000000);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_88;
  v14 = _Block_copy(aBlock);

  v15 = [v10 initWithTitle:v11 image:v9 identifier:v12 children:isa viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

uint64_t specialized ServersSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = (*(**(a3 + 56) + 136))(4);
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 72))(2, ObjectType, v7);
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  v12 = v9 - 16;
  v13 = *(v9 + 16);
  v14 = &selRef__setLocationsInBrowseTab_;
  v71 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
LABEL_2:
  v15 = (v12 + 48 * v10);
  while (1)
  {
    if (v13 == v10)
    {
      swift_unknownObjectRelease();

      return v11;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    ++v10;
    v16 = (v15 + 3);
    v17 = v15[3];
    v18 = v15[4];
    *&v85[9] = *(v15 + 73);
    v84 = v17;
    *v85 = v18;
    v15 += 3;
    if (v85[24] == 1)
    {
      v74 = v12;
      v75 = v5;
      v19 = *v16;
      v20 = v84;
      outlined init with copy of DOCSidebarItem(&v84, &v79);
      v21 = v19;
      v73 = v20;
      v22 = [v20 v14[312]];
      if (!v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = MEMORY[0x24C1FAD20](v23);

        v22 = v24;
      }

      v72 = v22;
      v25 = [objc_opt_self() currentTraitCollection];
      v26 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v25);
      v28 = v27;
      v29 = [objc_opt_self() unspecifiedConfiguration];

      v30 = [objc_opt_self() systemBlueColor];
      v31 = DOCTabSidebarDataSource.cachedIcon(requestedSize:variant:item:)(v30, &v84, v26, v28);
      v77 = a1;
      if (v31)
      {
        v32 = v31;
        outlined destroy of DOCSidebarItem(&v84);
      }

      else
      {
        v70 = v3;
        DOCTabSidebarDataSource.createIconProvider(for:)(&v84, &v79);
        v33 = v81;
        v34 = v82;
        __swift_project_boxed_opaque_existential_1(&v79, v81);
        type metadata accessor for DOCSidebarItemCell(0);
        v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v69 = v29;
        v36 = (*(v34 + 8))(v29, v35, v30, v33, v34, v26, v28, -12.0);
        v38 = v37;

        swift_beginAccess();
        v32 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(a1 + v71);
        *(a1 + v71) = 0x8000000000000000;
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(&v84);
        v43 = v40[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_26;
        }

        v46 = v41;
        if (v40[3] >= v45)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v84);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_28;
          }

          v42 = v47;
        }

        *(v77 + v71) = v40;
        if (v46)
        {
          outlined destroy of DOCSidebarItem(&v84);
        }

        else
        {
          v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v40[(v42 >> 6) + 8] |= 1 << v42;
          v50 = (v40[6] + 48 * v42);
          v51 = *&v85[9];
          v52 = *v85;
          *v50 = v84;
          v50[1] = v52;
          *(v50 + 25) = v51;
          *(v40[7] + 8 * v42) = v49;
          v53 = v40[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_27;
          }

          v40[2] = v55;
        }

        v56 = v40[7];
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v78 = *(v56 + 8 * v42);
        *(v56 + 8 * v42) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v38 & 1, v30, v57, v26, v28);

        *(v56 + 8 * v42) = v78;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_0(&v79);
        v3 = v70;
      }

      v79 = 0x2E726576726573;
      v80 = 0xE700000000000000;
      v58 = [v73 identifier];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      MEMORY[0x24C1FAEA0](v59, v61);

      v62 = v79;
      v63 = v80;
      v64 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v65 = MEMORY[0x24C1FAD20](v62, v63);

      v66 = [v64 initWithTitle:v72 image:v32 identifier:v65 viewControllerProvider:0];

      [v66 setUserInfo_];
      ServersSectionManager.startObservingState(for:tab:alertPresenting:)(v73, v66, a2);
      v67 = outlined destroy of DOCSidebarItem(&v84);
      MEMORY[0x24C1FB090](v67);
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v83;
      a1 = v77;
      v12 = v74;
      v5 = v75;
      v14 = &selRef__setLocationsInBrowseTab_;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized LocationSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(**(a3 + 56) + 136))(3);
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 72))(2, ObjectType, v6);
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = v8 - 16;
  v115 = MEMORY[0x277D84F90];
  v12 = &selRef__setLocationsInBrowseTab_;
  v13 = *(v8 + 16);
  v101 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
LABEL_2:
  v14 = (v11 + 48 * v9);
  while (1)
  {
    if (v13 == v9)
    {
      swift_unknownObjectRelease();

      return v10;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    ++v9;
    v15 = (v14 + 3);
    v16 = v14[3];
    v17 = v14[4];
    *&v117[9] = *(v14 + 73);
    v116 = v16;
    *v117 = v17;
    v14 += 3;
    if (v117[24] == 1)
    {
      v105 = v11;
      v18 = *v15;
      v19 = v116;
      outlined init with copy of DOCSidebarItem(&v116, &v111);
      v99 = v18;
      v108 = v19;
      v20 = [v19 v12[466]];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
      if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
      {

        v27 = 0;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = 0;
        if ((v26 & 1) == 0)
        {
          type metadata accessor for DOCFileProviderSource();
          v28 = swift_dynamicCastClass();
          if (v28)
          {
            v27 = [v28 isEjectable] ^ 1;
          }

          else
          {
            v27 = 1;
          }
        }
      }

      v104 = v27;
      v106 = v4;
      v29 = v108;
      v30 = [v108 displayName];
      if (!v30)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = MEMORY[0x24C1FAD20](v31);

        v30 = v32;
      }

      v103 = v30;
      v33 = [objc_opt_self() currentTraitCollection];
      v34 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v33);
      v36 = v35;
      v37 = [objc_opt_self() unspecifiedConfiguration];

      v38 = [objc_opt_self() systemBlueColor];
      v39 = DOCTabSidebarDataSource.cachedIcon(requestedSize:variant:item:)(v38, &v116, v34, v36);
      v107 = a1;
      if (v39)
      {
        v40 = v39;
        outlined destroy of DOCSidebarItem(&v116);
      }

      else
      {
        DOCTabSidebarDataSource.createIconProvider(for:)(&v116, &v111);
        v41 = v113;
        v42 = v114;
        __swift_project_boxed_opaque_existential_1(&v111, v113);
        type metadata accessor for DOCSidebarItemCell(0);
        v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v98 = v37;
        v44 = (*(v42 + 8))(v37, v43, v38, v41, v42, v34, v36, -12.0);
        v46 = v45;

        swift_beginAccess();
        v40 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = a1;
        v49 = isUniquelyReferenced_nonNull_native;
        v50 = *(v48 + v101);
        *(v48 + v101) = 0x8000000000000000;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(&v116);
        v53 = v50[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_50;
        }

        v56 = v51;
        if (v50[3] >= v55)
        {
          if ((v49 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v49);
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(&v116);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_52;
          }

          v52 = v57;
        }

        *(v107 + v101) = v50;
        if (v56)
        {
          outlined destroy of DOCSidebarItem(&v116);
        }

        else
        {
          v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v50[(v52 >> 6) + 8] |= 1 << v52;
          v60 = (v50[6] + 48 * v52);
          v61 = *&v117[9];
          v62 = *v117;
          *v60 = v116;
          v60[1] = v62;
          *(v60 + 25) = v61;
          *(v50[7] + 8 * v52) = v59;
          v63 = v50[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_51;
          }

          v50[2] = v65;
        }

        v66 = v50[7];
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v109 = *(v66 + 8 * v52);
        *(v66 + 8 * v52) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v46 & 1, v38, v67, v34, v36);

        *(v66 + 8 * v52) = v109;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_0(&v111);
        v29 = v108;
      }

      v111 = 0x6E6F697461636F6CLL;
      v112 = 0xE90000000000002ELL;
      v12 = &selRef__setLocationsInBrowseTab_;
      v68 = [v29 identifier];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      MEMORY[0x24C1FAEA0](v69, v71);

      v72 = v111;
      v73 = v112;
      v74 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v75 = MEMORY[0x24C1FAD20](v72, v73);

      v76 = [v74 initWithTitle:v103 image:v40 identifier:v75 viewControllerProvider:0];

      [v76 setAllowsHiding_];
      v4 = v106;
      if (v104)
      {
        DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
        v78 = v77;
        v79 = [v108 identifier];
        v80 = specialized Set.contains(_:)(v79, v78);

        if (v80)
        {
          v81 = 0;
          v82 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        }

        else
        {
          v82 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          if ([v108 status])
          {
            v81 = [v108 status] != 2;
          }

          else
          {
            v81 = 0;
          }
        }

        [v76 setHiddenByDefault_];
        type metadata accessor for DOCFileProviderSource();
        v83 = swift_dynamicCastClass();
        if (v83)
        {
          v84 = (*((*MEMORY[0x277D85000] & *v83) + 0xF8))(v99);
          if (v84 == 2)
          {
            v85 = [v76 isHiddenByDefault];
          }

          else
          {
            v85 = v84 ^ 1;
          }

          [v76 setHidden_];
          outlined destroy of DOCSidebarItem(&v116);
        }

        else
        {
          [v76 setHidden_];
        }
      }

      [v76 setUserInfo_];
      type metadata accessor for DOCFileProviderSource();
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        v87 = *(v86 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v87)
        {
          v88 = v86;
          v89 = swift_allocObject();
          *(v89 + 16) = v76;
          type metadata accessor for ProviderDomainState();
          swift_allocObject();
          outlined init with copy of DOCSidebarItem(&v116, &v111);
          v90 = v87;
          outlined init with copy of DOCSidebarItem(&v116, &v111);
          v91 = v90;
          v92 = v76;
          v93 = ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:)(v88, v91, a2, partial apply for closure #1 in LocationSectionManager.startObservingState(for:tab:alertPresenting:), v89);
          v94 = [v91 identifier];
          swift_beginAccess();

          v95 = swift_isUniquelyReferenced_nonNull_native();
          v110 = *(a3 + 104);
          *(a3 + 104) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, v94, v95);

          *(a3 + 104) = v110;
          v12 = &selRef__setLocationsInBrowseTab_;
          swift_endAccess();

          outlined destroy of DOCSidebarItem(&v116);
        }
      }

      v96 = outlined destroy of DOCSidebarItem(&v116);
      MEMORY[0x24C1FB090](v96);
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v115;
      a1 = v107;
      v11 = v105;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

uint64_t specialized FavoritesSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, uint64_t a2)
{
  v2 = (*(**(a2 + 40) + 136))(2);
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 72))(2, ObjectType, v4);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  v9 = v6 - 16;
  v10 = *(v6 + 16);
  v11 = &selRef__setLocationsInBrowseTab_;
  v72 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
LABEL_2:
  v12 = (v9 + 48 * v7);
  while (1)
  {
    if (v10 == v7)
    {
      swift_unknownObjectRelease();

      return v8;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    ++v7;
    v13 = (v12 + 3);
    v14 = v12[3];
    v15 = v12[4];
    *&v84[9] = *(v12 + 73);
    v83 = v14;
    *v84 = v15;
    v12 += 3;
    if (!v84[24])
    {
      v75 = v9;
      v16 = *v13;
      v17 = v83;
      outlined init with copy of DOCSidebarItem(&v83, &v78);
      v18 = v16;
      v74 = v17;
      v19 = [v17 v11[312]];
      if (!v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = MEMORY[0x24C1FAD20](v20);

        v19 = v21;
      }

      v73 = v19;
      v22 = [objc_opt_self() currentTraitCollection];
      v23 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v22);
      v25 = v24;
      v26 = [objc_opt_self() unspecifiedConfiguration];

      v27 = [objc_opt_self() systemBlueColor];
      v28 = DOCTabSidebarDataSource.cachedIcon(requestedSize:variant:item:)(v27, &v83, v23, v25);
      if (v28)
      {
        v29 = v28;
        outlined destroy of DOCSidebarItem(&v83);
      }

      else
      {
        v71 = v2;
        DOCTabSidebarDataSource.createIconProvider(for:)(&v83, &v78);
        v30 = v27;
        v31 = v26;
        v32 = v80;
        v33 = v81;
        __swift_project_boxed_opaque_existential_1(&v78, v80);
        type metadata accessor for DOCSidebarItemCell(0);
        v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v69 = v30;
        v70 = v31;
        v35 = (*(v33 + 8))(v31, v34, v30, v32, v33, v23, v25, -12.0);
        v68 = v36;

        swift_beginAccess();
        v29 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(a1 + v72);
        *(a1 + v72) = 0x8000000000000000;
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v83);
        v41 = v38[2];
        v42 = (v39 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_26;
        }

        v44 = v39;
        if (v38[3] >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(&v83);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_28;
          }

          v40 = v45;
        }

        *(a1 + v72) = v38;
        v2 = v71;
        if (v44)
        {
          outlined destroy of DOCSidebarItem(&v83);
        }

        else
        {
          v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v38[(v40 >> 6) + 8] |= 1 << v40;
          v48 = (v38[6] + 48 * v40);
          v49 = *&v84[9];
          v50 = *v84;
          *v48 = v83;
          v48[1] = v50;
          *(v48 + 25) = v49;
          *(v38[7] + 8 * v40) = v47;
          v51 = v38[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_27;
          }

          v38[2] = v53;
        }

        v54 = v38[7];
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v54 + 8 * v40);
        *(v54 + 8 * v40) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v68 & 1, v69, v55, v23, v25);

        *(v54 + 8 * v40) = v77;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_0(&v78);
      }

      v78 = 0x657469726F766166;
      v79 = 0xE90000000000002ELL;
      v56 = [v74 itemID];
      v57 = [v56 identifier];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      MEMORY[0x24C1FAEA0](v58, v60);

      v61 = v78;
      v62 = v79;
      v63 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v64 = MEMORY[0x24C1FAD20](v61, v62);

      v65 = [v63 initWithTitle:v73 image:v29 identifier:v64 viewControllerProvider:0];

      [v65 setUserInfo_];
      v66 = outlined destroy of DOCSidebarItem(&v83);
      MEMORY[0x24C1FB090](v66);
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v82;
      v9 = v75;
      v11 = &selRef__setLocationsInBrowseTab_;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized FavoritesSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized FavoritesSectionManager.generateTabs(using:alertPresenting:)(a1, a2);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [objc_opt_self() mainBundle];
  v17._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x657469726F766146;
  v4._object = 0xE900000000000073;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

  v7 = MEMORY[0x24C1FAD20](1918989427, 0xE400000000000000);
  v8 = [objc_opt_self() systemImageNamed_];

  v9 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v10 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

  v11 = MEMORY[0x24C1FAD20](0x657469726F766166, 0xE900000000000073);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_97_0;
  v13 = _Block_copy(aBlock);

  v14 = [v9 initWithTitle:v10 image:v8 identifier:v11 children:isa viewControllerProvider:v13];
  _Block_release(v13);

  return v14;
}

uint64_t specialized TagsSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, uint64_t a2)
{
  (*(**(a2 + 40) + 136))(5);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 72))(2, ObjectType, v3);
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v8 = v5 - 16;
  v9 = *(v5 + 16);
  v10 = &selRef__setLocationsInBrowseTab_;
  v68 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_itemToCachedIcon;
LABEL_2:
  v11 = (v8 + 48 * v6);
  while (1)
  {
    if (v9 == v6)
    {
      swift_unknownObjectRelease();

      return v7;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    ++v6;
    v12 = (v11 + 3);
    v13 = v11[3];
    v14 = v11[4];
    *&v80[9] = *(v11 + 73);
    v79 = v13;
    *v80 = v14;
    v11 += 3;
    if (v80[24] == 2)
    {
      v71 = v8;
      v15 = *v12;
      v16 = v79;
      outlined init with copy of DOCSidebarItem(&v79, &v74);
      v17 = v15;
      v70 = v16;
      v18 = [v16 v10[312]];
      if (!v18)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = MEMORY[0x24C1FAD20](v19);

        v18 = v20;
      }

      v69 = v18;
      v21 = [objc_opt_self() currentTraitCollection];
      v22 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v21);
      v24 = v23;
      v25 = [objc_opt_self() unspecifiedConfiguration];

      v26 = [objc_opt_self() systemBlueColor];
      v27 = DOCTabSidebarDataSource.cachedIcon(requestedSize:variant:item:)(v26, &v79, v22, v24);
      if (v27)
      {
        v28 = v27;
        outlined destroy of DOCSidebarItem(&v79);
      }

      else
      {
        DOCTabSidebarDataSource.createIconProvider(for:)(&v79, &v74);
        v29 = v26;
        v30 = v76;
        v31 = v77;
        __swift_project_boxed_opaque_existential_1(&v74, v76);
        type metadata accessor for DOCSidebarItemCell(0);
        v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v67 = v29;
        v33 = (*(v31 + 8))(v25, v32, v29, v30, v31, v22, v24, -12.0);
        v66 = v34;

        swift_beginAccess();
        v28 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(a1 + v68);
        *(a1 + v68) = 0x8000000000000000;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(&v79);
        v39 = v36[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_26;
        }

        v42 = v37;
        if (v36[3] >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(&v79);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_28;
          }

          v38 = v43;
        }

        *(a1 + v68) = v36;
        if (v42)
        {
          outlined destroy of DOCSidebarItem(&v79);
        }

        else
        {
          v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v36[(v38 >> 6) + 8] |= 1 << v38;
          v46 = (v36[6] + 48 * v38);
          v47 = *&v80[9];
          v48 = *v80;
          *v46 = v79;
          v46[1] = v48;
          *(v46 + 25) = v47;
          *(v36[7] + 8 * v38) = v45;
          v49 = v36[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_27;
          }

          v36[2] = v51;
        }

        v52 = v36[7];
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v73 = *(v52 + 8 * v38);
        *(v52 + 8 * v38) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v66 & 1, v67, v53, v22, v24);

        *(v52 + 8 * v38) = v73;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_0(&v74);
        v10 = &selRef__setLocationsInBrowseTab_;
      }

      v74 = 778527092;
      v75 = 0xE400000000000000;
      v54 = v10;
      v55 = [v70 v10[312]];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      MEMORY[0x24C1FAEA0](v56, v58);

      v59 = v74;
      v60 = v75;
      v61 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v62 = MEMORY[0x24C1FAD20](v59, v60);

      v63 = [v61 initWithTitle:v69 image:v28 identifier:v62 viewControllerProvider:0];

      [v63 setUserInfo_];
      v64 = outlined destroy of DOCSidebarItem(&v79);
      MEMORY[0x24C1FB090](v64);
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v78;
      v8 = v71;
      v10 = v54;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized TagsSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized TagsSectionManager.generateTabs(using:alertPresenting:)(a1, a2);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [objc_opt_self() mainBundle];
  v17._object = 0xE000000000000000;
  v4._countAndFlagsBits = 1936154964;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

  v7 = MEMORY[0x24C1FAD20](6775156, 0xE300000000000000);
  v8 = [objc_opt_self() systemImageNamed_];

  v9 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v10 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

  v11 = MEMORY[0x24C1FAD20](1936154996, 0xE400000000000000);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_85;
  v13 = _Block_copy(aBlock);

  v14 = [v9 initWithTitle:v10 image:v8 identifier:v11 children:isa viewControllerProvider:v13];
  _Block_release(v13);

  return v14;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1FC540](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v33, v7);
        v23 = MEMORY[0x24C1FC540](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v5 = a1;
  v6 = *a1;
  v7 = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {

    return v3;
  }

  if ((v8 & 1) == 0)
  {
    v3 = v7;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    while (1)
    {
      if (v6 >> 62)
      {
        if (v10 == __CocoaSet.count.getter())
        {
          goto LABEL_6;
        }
      }

      else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v10, v6);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v12 = *(v6 + 8 * v10 + 32);
      }

      v20 = v12;
      v13 = closure #2 in DOCFolderIconCustomizationApplicator.currentFolderConfig()(&v20, a2);

      if (!v13)
      {
        if (v3 != v10)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C1FC540](v3, v6);
            v14 = MEMORY[0x24C1FC540](v10, v6);
          }

          else
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              goto LABEL_49;
            }

            v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v15)
            {
              goto LABEL_50;
            }

            if (v10 >= v15)
            {
              goto LABEL_51;
            }

            v14 = *(v6 + 32 + 8 * v10);
            v19 = *(v6 + 32 + 8 * v3);
          }

          v16 = v5;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v17 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v17) = 0;
          }

          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v14;

          if ((v6 & 0x8000000000000000) != 0 || v17)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v18 = v6 & 0xFFFFFFFFFFFFFF8;
            if ((v10 & 0x8000000000000000) != 0)
            {
LABEL_42:
              __break(1u);

              return v3;
            }
          }

          else if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          if (v10 >= *(v18 + 16))
          {
            goto LABEL_48;
          }

          v5 = v16;
          *(v18 + 8 * v10 + 32) = v19;

          *v16 = v6;
        }

LABEL_11:
        v11 = __OFADD__(v3++, 1);
        if (v11)
        {
          goto LABEL_47;
        }
      }

      v11 = __OFADD__(v10++, 1);
      if (v11)
      {
        goto LABEL_46;
      }
    }
  }

  if (v6 >> 62)
  {
LABEL_52:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:

  return v3;
}