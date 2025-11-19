uint64_t closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v2, v1);
}

{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  v0[4] = v2;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x338);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:);

  return v6(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.viewDidAppear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:);

  return CloudManager.retainUIActive(_:_:_:)(v5, "viewDidAppear(_:)", 17, 2, 173);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:);

  return CloudManager.releaseUIActive(_:_:_:)(v5, "viewDidDisappear(_:)", 20, 2, 183);
}

id SuggestionCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SuggestionCollectionViewController.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.viewModel);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewController] de-init", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for SuggestionCollectionViewController(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

Swift::Void __swiftcall SuggestionCollectionViewController.cancelSheet()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x170))(v6);
  if (v6[3])
  {
    outlined init with copy of DBObject(v6, v3);
    outlined destroy of UTType?(v6, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd);
    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of UTType?(v6, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd);
  }
}

uint64_t SuggestionCollectionViewController.updateWithViewModel(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

  return SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()();
}

uint64_t SuggestionCollectionViewController.updateWithViewModel(_:)()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateWithViewModel(_:), v3, v2);
}

{
  v27 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v1[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasStartedFetchingContent] = 1;
  [v1 setNeedsUpdateContentUnavailableConfiguration];
  if (v2)
  {
    v24 = (*(*v0[2] + 1088) + **(*v0[2] + 1088));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

    return v24(1);
  }

  else
  {
    v5 = v0[3];
    v26 = [*(v5 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
    SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v26, 1);
    v6 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v5) + 0x398))();
    v7 = *(v5 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
    if (v7)
    {
      v8 = v0[3];
      v9 = *((*v6 & *v7) + 0x138);
      v10 = v7;
      v11 = v8;
      v9(v5, &protocol witness table for SuggestionCollectionViewController);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      (*((*v6 & *Strong) + 0xB0))();
      v15 = v14;

      if (v15)
      {
        v16 = v0[5];
        v17 = v0[6];
        v18 = v0[4];
        UUID.init(uuidString:)();

        if ((*(v17 + 48))(v18, 1, v16) == 1)
        {
          outlined destroy of UTType?(v0[4], &_s10Foundation4UUIDVSgMd);
        }

        else
        {
          v20 = v0[6];
          v19 = v0[7];
          v21 = v0[5];
          (*(v20 + 32))(v19, v0[4], v21);
          SuggestionCollectionViewController.presentInterstitial(for:)(v19);
          (*(v20 + 8))(v19, v21);
        }
      }
    }

    v22 = *((*v6 & *v0[3]) + 0x388);
    v25 = (v22 + *v22);
    v23 = swift_task_alloc();
    v0[15] = v23;
    *v23 = v0;
    v23[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

    return v25();
  }
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = SuggestionCollectionViewController.updateWithViewModel(_:);
  }

  else
  {
    v5 = SuggestionCollectionViewController.updateWithViewModel(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v23 = v0;
  v1 = v0[3];
  v22 = [*(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
  SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v22, 1);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x398))();
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  if (v3)
  {
    v4 = v0[3];
    v5 = *((*v2 & *v3) + 0x138);
    v6 = v3;
    v7 = v4;
    v5(v1, &protocol witness table for SuggestionCollectionViewController);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((*v2 & *Strong) + 0xB0))();
    v11 = v10;

    if (v11)
    {
      v12 = v0[5];
      v13 = v0[6];
      v14 = v0[4];
      UUID.init(uuidString:)();

      if ((*(v13 + 48))(v14, 1, v12) == 1)
      {
        outlined destroy of UTType?(v0[4], &_s10Foundation4UUIDVSgMd);
      }

      else
      {
        v16 = v0[6];
        v15 = v0[7];
        v17 = v0[5];
        (*(v16 + 32))(v15, v0[4], v17);
        SuggestionCollectionViewController.presentInterstitial(for:)(v15);
        (*(v16 + 8))(v15, v17);
      }
    }
  }

  v18 = *((*v2 & *v0[3]) + 0x388);
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

  return v21();
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateWithViewModel(_:), v3, v2);
}

{
  v1 = *(v0 + 24);

  (*((*MEMORY[0x277D85000] & *v1) + 0x390))(v2);

  v3 = *(v0 + 8);

  return v3();
}

{

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.viewModel);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21607C000, v4, v5, "[SuggestionCollectionViewController] error fetching suggestion view models: %@", v8, 0xCu);
    outlined destroy of UTType?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(MomentsUI::SegmentType segmentType, Swift::Bool scrollToTop)
{
  v3 = v2;
  v4 = scrollToTop;
  v5 = segmentType;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - v12;
  v14 = *(v3 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v14)
  {
    v32 = v4;
    v33 = v11;
    v34 = *v5;
    v15 = v34;
    v16 = *(*v14 + 776);

    v16(&v34);
    if (v15)
    {
      v17 = "UIService_FetchRecentTab";
    }

    else
    {
      v17 = "UIService_FetchRecommendedTab";
    }

    v18 = 29;
    if (v15)
    {
      v18 = 24;
    }

    v31 = v18;
    if (one-time initialization token for uiRendering != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v19, static CommonSignposter.uiRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v30[1] = v3;
      v23 = v17;
      v24 = v22;
      *v22 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v20, v21, v25, v23, "", v24, 2u);
      v26 = v24;
      v17 = v23;
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    v27 = v33;
    (*(v7 + 16))(v10, v13, v33);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v28 = OSSignpostIntervalState.init(id:isOpen:)();
    v29 = *v14;
    if (v15)
    {
      (*(v29 + 1016))(v28);
    }

    else
    {
      (*(v29 + 928))(v28);
    }

    SuggestionCollectionViewController.reloadDataSnapshot()();
    SuggestionCollectionViewController.updateCollectionViewLayout(scrollToTop:)(v32);
    $defer #1 () in SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(v17, v31, 2);

    (*(v7 + 8))(v13, v27);
  }
}

void SuggestionCollectionViewController.presentInterstitial(for:)(char *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v50 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  if (one-time initialization token for views != -1)
  {
LABEL_17:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static CommonLogger.views);
  v52 = *(v3 + 16);
  v52(v9, a1, v2);
  v53 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v55 = v3;
  v56 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58[0] = v16;
    *v15 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v3;
    v20 = v19;
    v54 = *(v18 + 8);
    v54(v9, v2);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, v58);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_21607C000, v12, v13, "[SuggestionCollectionViewController] Trying to find matching view model for suggestionId: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {

    v54 = *(v3 + 8);
    v22 = (v54)(v9, v2);
  }

  v23 = (*((*MEMORY[0x277D85000] & *v57) + 0x140))(v22);
  v3 = 0;
  v9 = 0;
  v24 = *(v23 + 16);
  do
  {
    if (v24 == v3)
    {

      v40 = v51;
      v41 = v56;
      v52(v51, a1, v56);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v58[0] = v45;
        *v44 = 136315138;
        _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v54(v40, v41);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v58);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_21607C000, v42, v43, "[SuggestionCollectionViewController] No view model found for suggestionId: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x21CE94770](v45, -1, -1);
        MEMORY[0x21CE94770](v44, -1, -1);
      }

      else
      {

        v54(v40, v41);
      }

      return;
    }

    if (v3 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v25 = type metadata accessor for SuggestionCollectionViewSection(0);
    v26 = *(v25 - 8);
    v25 -= 8;
    v2 = v3 + 1;
    v27 = *(v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v3 + *(v25 + 28));
    MEMORY[0x28223BE20](v25);
    *(&v50 - 2) = a1;

    v28 = specialized Sequence.first(where:)(partial apply for closure #1 in SuggestionCollectionViewController.presentInterstitial(for:), (&v50 - 4), v27);

    v3 = v2;
  }

  while (!v28);

  v29 = v50;
  v30 = v56;
  v52(v50, a1, v56);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v58[0] = v34;
    *v33 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v29;
    v38 = v37;
    v54(v36, v30);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, v58);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_21607C000, v31, v32, "[SuggestionCollectionViewController] Found view model for suggestion ID: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x21CE94770](v34, -1, -1);
    MEMORY[0x21CE94770](v33, -1, -1);
  }

  else
  {

    v54(v29, v30);
  }

  LOBYTE(v58[0]) = 1;
  SuggestionCollectionViewController.presentInterstitial(with:entryPoint:)(v28, v58);
}

Swift::Void __swiftcall SuggestionCollectionViewController.queueFetchAndRefreshCollectionView(executeImmediately:)(Swift::Bool executeImmediately)
{
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) = 1;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v1;
  if (!executeImmediately)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0x140);
    v5 = *(v4() + 16);

    if (v5)
    {
      if (*(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom) != 1)
      {
        return;
      }

      v7 = *((v4)(v6) + 16);

      if (v7 >= specialized static DefaultsManager.Processing.draftBatchSaveCount.getter())
      {
        return;
      }
    }

    v3 = *v2 & *v1;
  }

  v8 = *(v3 + 840);

  v8();
}

Swift::Void __swiftcall SuggestionCollectionViewController.fetchAndRefreshCollectionView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) == 1)
  {
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView(), v7);
  }
}

uint64_t closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView(), v6, v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[10] = __swift_project_value_buffer(v3, static CommonLogger.viewModel);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[SuggestionCollectionViewController] fetchAndRefreshCollectionView", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    v7 = *(v2 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
    v0[11] = v7;
    if (v7)
    {
      v8 = *(*v7 + 1088);

      v16 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[12] = v9;
      *v9 = v0;
      v9[1] = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();

      return v16(0);
    }

    else
    {
      v12 = v0[9];
      v13 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v12) + 0x358))();
      v14 = *((*v13 & *v12) + 0x388);
      v17 = (v14 + *v14);
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();

      return v17();
    }
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = *(v0 + 72);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x358))();
  v3 = *((*v2 & *v1) + 0x388);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();

  return v6();
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView(), v3, v2);
}

{
  v1 = *(v0 + 72);

  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled);
  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + 72);
    SuggestionCollectionViewController.createLayout()(v2);
    v5 = v4;
    v6 = *((*MEMORY[0x277D85000] & *v3) + 0x128);
    v7 = v6();
    [v7 setCollectionViewLayout_];

    v8 = v6();
    if (v8)
    {
      v9 = v8;
      [v8 adjustedContentInset];
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v6();
    if (v12)
    {
      v14 = v12;
      [v12 setContentOffset:0 animated:{0.0, destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(-v11, v13)}];
    }
  }

  v15 = *(v0 + 72);
  v15[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent] = 0;

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[13];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[9];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewController] (fetchAndRefreshCollectionView) error fetching suggestion view models: %@", v8, 0xCu);
    outlined destroy of UTType?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall SuggestionCollectionViewController.updateCollectionViewLayout(scrollToTop:)(Swift::Bool scrollToTop)
{
  SuggestionCollectionViewController.createLayout()(v1);
  v14 = v4;
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x128);
  v6 = v5();
  [v6 setCollectionViewLayout_];

  if (scrollToTop)
  {
    v7 = v5();
    if (v7)
    {
      v8 = v7;
      [v7 adjustedContentInset];
      v10 = v9;

      v11 = v5();
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v10 = 0.0;
    v11 = v5();
    if (v11)
    {
LABEL_4:
      v13 = v11;
      [v11 setContentOffset:0 animated:{0.0, destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(-v10, v12)}];
    }
  }

LABEL_5:
}

void SuggestionCollectionViewController.checkIfNearBottom()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  if (v2)
  {
    v12 = v2;
    [v2 contentSize];
    v4 = v3;
    [v12 frame];
    Height = CGRectGetHeight(v14);
    [v12 contentOffset];
    v7 = v6;
    v8 = [v12 adjustedContentInset];
    v10 = v4 - (Height + v7 - v9);
    v11 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom);
    *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom) = v10 <= 100.0;
    if ((v11 & 1) == 0 && v10 <= 100.0 && *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) == 1)
    {
      (*((*v1 & *v0) + 0x348))(v8);
    }
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.pressedSegmentControl()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex];
  if (v1)
  {
    if (v1 != 1)
    {
      return;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v4, 1);
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge);

  [v3 removeFromSuperview];
}

Swift::Void __swiftcall SuggestionCollectionViewController.didTapOKButton()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  [*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client;
  v3 = (v2 + *(type metadata accessor for Client() + 32));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = one-time initialization token for momentsUI;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    MEMORY[0x21CE92100](v4, v5);

    v8 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x800000021657DAB0);

    [v7 setBool:1 forKey:v8];
  }

  else
  {
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.didTapLearnMore()()
{
  v1 = objc_allocWithZone(type metadata accessor for PrivacyViewController());
  v2 = PrivacyViewController.init()();
  [v2 setModalInPresentation_];
  [v0 presentViewController:v2 animated:1 completion:0];
}

Swift::Void __swiftcall SuggestionCollectionViewController.configureSegmentedControl()()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl);
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 secondarySystemBackgroundColor];
    [v3 setBackgroundColor_];
  }
}

uint64_t SuggestionCollectionViewController.updateMessage()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateMessage(), v3, v2);
}

{
  v1 = *(v0[2] + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  v0[6] = v1;
  if (v1)
  {
    v2 = *(*v1 + 656);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = SuggestionCollectionViewController.updateMessage();

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  if (*(v0 + 72) == 1)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionViewController] should show message", v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    v5 = *(v0 + 48);

    v14 = (*(*v5 + 1176) + **(*v5 + 1176));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = SuggestionCollectionViewController.updateMessage();

    return v14();
  }

  else
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.viewModel);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[SuggestionViewController] should not show message", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    v12 = *(v0 + 48);

    (*(*v12 + 1184))();
    SuggestionCollectionViewController.reloadDataSnapshot()();

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateMessage(), v3, v2);
}

{

  SuggestionCollectionViewController.reloadDataSnapshot()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SuggestionCollectionViewController.updateMessage()(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateMessage(), v4, v3);
}

Swift::Void __swiftcall SuggestionCollectionViewController.reloadDataSnapshot()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI31SuggestionCollectionViewSectionVAD0hJ5ModelCGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - v4;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    v26 = v0;
    v16 = v5;
    v17 = v3;
    v18 = v2;
    v19 = v15;
    *v15 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v13, v14, v20, "UIService_FetchCollectionViewReload", "", v19, 2u);
    v21 = v19;
    v2 = v18;
    v3 = v17;
    v5 = v16;
    v1 = v26;
    MEMORY[0x21CE94770](v21, -1, -1);
  }

  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v22 = OSSignpostIntervalState.init(id:isOpen:)();
  v23 = (*((*MEMORY[0x277D85000] & *v1) + 0x110))();
  if (v23)
  {
    v24 = v23;
    v25 = v27;
    SuggestionCollectionViewController.createSnaphot()();
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v3 + 8))(v25, v2);
  }

  $defer #1 () in SuggestionCollectionViewController.configureDataSource()(v22, "UIService_FetchCollectionViewReload");

  (*(v6 + 8))(v11, v5);
}

Swift::Void __swiftcall SuggestionCollectionViewController.updateTip()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v1)
  {
    v2 = *(*v1 + 1192);

    v2(v3);
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.updateOnboardingOverlayView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  if (!v2)
  {
    return;
  }

  v3 = v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client;
  v4 = &v3[*(type metadata accessor for Client() + 32)];
  v5 = *(v4 + 1);
  if (!v5)
  {
    return;
  }

  v6 = v0;
  v7 = *v4;
  v8 = *(*v1 + 920);

  v9 = v2;

  if (v8(v7, v5))
  {
    [v9 removeFromSuperview];
    v10 = v6;
    [*(v6 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
    v11 = [v6 view];
    if (v11)
    {
      v12 = v11;
      [v11 addSubview_];

      v13 = [v10 view];
      if (v13)
      {
        v14 = v13;

        [v14 bringSubviewToFront_];

        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v15 = [v9 removeFromSuperview];
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v6) + 0x3A0))(v15);
  (*((*v16 & *v6) + 0x3A8))(v17);
}

Swift::Void __swiftcall SuggestionCollectionViewController.postNotificationAuthorizationRequest()()
{
  specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v0)
  {
    v1 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
    if ((v2 & 1) != 0 || v1 < 1)
    {
      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static CommonLogger.views);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21607C000, v11, v12, "[SuggestionCollectionViewController] Wait another sheet launch to post the notification TCC", v13, 2u);
        MEMORY[0x21CE94770](v13, -1, -1);
      }

      specialized static DefaultsManager.Notifications.incrementNotificationTCCDelayCount()();
    }

    else
    {
      v3 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v4 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
      v5 = [v3 initWithBundleIdentifier_];

      aBlock[4] = closure #1 in SuggestionCollectionViewController.postNotificationAuthorizationRequest();
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_16;
      v6 = _Block_copy(aBlock);
      [v5 requestAuthorizationWithOptions:6 completionHandler:v6];
      _Block_release(v6);
      specialized static DefaultsManager.Notifications.incrementNotificationTCCDelayCount()();
    }
  }

  else
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static CommonLogger.views);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, oslog, v8, "[SuggestionCollectionViewController] Notification schedule type already set", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }
  }
}

void closure #1 in SuggestionCollectionViewController.postNotificationAuthorizationRequest()(char a1)
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewController] Notification authorization, granted status: %{BOOL}d", v5, 8u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    if (a1)
    {
      v8.super.super.isa = NSNumber.init(integerLiteral:)(2).super.super.isa;
      v9.super.super.isa = NSNumber.init(integerLiteral:)(20).super.super.isa;
      v10.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_216597AD0;
      *(v11 + 32) = NSNumber.init(integerLiteral:)(3);
      *(v11 + 40) = NSNumber.init(integerLiteral:)(5);
      *(v11 + 48) = NSNumber.init(integerLiteral:)(7);
      v12 = objc_allocWithZone(NotificationScheduleItem);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = [v12 initScheduleWithType:v8.super.super.isa hour:v9.super.super.isa minute:v10.super.super.isa weekdays:v13.super.isa];
    }

    else
    {
      v8.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v9.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v10.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v15 = objc_allocWithZone(NotificationScheduleItem);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v14 = [v15 initScheduleWithType:v8.super.super.isa hour:v9.super.super.isa minute:v10.super.super.isa weekdays:v13.super.isa];
    }

    v17 = v14;

    v16 = v17;
    if (v17)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
        v16 = v17;
      }

      v18 = v16;
      specialized NotificationHandlingManager.updateNotificationScheduleDefaults(with:)(v16);
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized NotificationHandlingManager.setNotificationSchedulePostPhoneOnboarding(authorized:)(a1 & 1);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall SuggestionCollectionViewController.showPrivacyBadge()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 removeFromSuperview];
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview_];

      [v3 adjustedContentInset];
      v8 = v7;
      v9 = [v0 traitCollection];
      v10 = [v9 horizontalSizeClass];

      if (v10 == 2)
      {
        v11 = 27.0;
      }

      else
      {
        v11 = 23.0;
      }

      v12 = [v0 traitCollection];
      v13 = [v12 horizontalSizeClass];

      v14 = 11.0;
      if (v13 == 2)
      {
        v14 = 15.0;
      }

      v15 = v8 + v14;
      v16 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21658E180;
      v18 = [v4 leadingAnchor];
      v25 = v3;
      v19 = [v25 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:v11];

      *(v17 + 32) = v20;
      v21 = [v4 topAnchor];
      v22 = [v25 topAnchor];

      v23 = [v21 constraintEqualToAnchor:v22 constant:v15];
      *(v17 + 40) = v23;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 activateConstraints_];

      (*((*v1 & *v4) + 0x90))();
    }

    else
    {
      __break(1u);
    }
  }
}

id SuggestionCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void __swiftcall SuggestionCollectionViewController.createLayout()(UICollectionViewLayout *__return_ptr retstr)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x277D84F90];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = v3;
    v5[4] = v2;
    v6 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v13[4] = partial apply for closure #1 in SuggestionCollectionViewController.createLayout();
    v13[5] = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
    v13[3] = &block_descriptor_42;
    v7 = _Block_copy(v13);
    swift_retain_n();

    v8 = [v6 initWithSectionProvider_];
    _Block_release(v7);

    type metadata accessor for SectionDayBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = v8;
    v11 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x800000021657DBF0);
    [v10 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v11];
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D75300]);

    [v12 init];
  }
}

id closure #1 in SuggestionCollectionViewController.createLayout()(Class a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  swift_beginAccess();
  *(a4 + 16) = MEMORY[0x277D84F90];

  v81 = a5;
  v9 = (*(*a5 + 416))(v8);
  if ((a1 & 0x8000000000000000) != 0 || *(v9 + 16) <= a1 || (v10 = *(v9 + 16 * a1 + 32), , , (v11 = *(v10 + 16)) == 0))
  {
  }

  else
  {
    v78 = v10;
    v79 = a1;
    v12 = 0;
    v13 = (v10 + 49);
    do
    {
      if (*(v13 - 1) > 1u)
      {
        if (*(v13 - 1) == 2)
        {
          SuggestionCollectionViewController.mixedWidthSuggestionGroupLayout(groupIndex:layoutEnvironment:)(v12, a2);
          v40 = swift_beginAccess();
          MEMORY[0x21CE92260](v40);
          if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          if (__OFADD__(v12++, 1))
          {
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          specialized SuggestionCollectionViewController.threeQuarterWidthSuggestionGroupLayout(layoutEnvironment:)(a2);
          v42 = swift_beginAccess();
          MEMORY[0x21CE92260](v42);
          if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
        }
      }

      else
      {
        v87 = v12;
        v27 = *v13;
        if (*(v13 - 1))
        {
          if (v27 == 2)
          {
            v28 = 50.0;
          }

          else
          {
            v28 = 250.0;
          }

          v29 = objc_opt_self();
          v30 = [v29 estimatedDimension_];
          v31 = [v29 fractionalWidthDimension_];
          v32 = objc_opt_self();
          v83 = [v32 sizeWithWidthDimension:v31 heightDimension:v30];

          v33 = [objc_opt_self() itemWithLayoutSize_];
          v34 = [v29 fractionalWidthDimension_];
          v35 = [v32 sizeWithWidthDimension:v34 heightDimension:v30];

          v36 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_21658E180;
          *(v37 + 32) = v33;
          *(v37 + 40) = v33;
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
          a1 = v33;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v39 = [v36 horizontalGroupWithLayoutSize:v35 subitems:isa];
        }

        else
        {
          if (v27 == 2)
          {
            v14 = 50.0;
          }

          else
          {
            v14 = 275.0;
          }

          v15 = objc_opt_self();
          v16 = [v15 estimatedDimension_];
          v17 = [v15 fractionalWidthDimension_];
          v18 = objc_opt_self();
          v82 = [v18 sizeWithWidthDimension:v17 heightDimension:v16];

          v19 = [objc_opt_self() itemWithLayoutSize_];
          v20 = [v15 fractionalWidthDimension_];
          v21 = [v18 sizeWithWidthDimension:v20 heightDimension:v16];

          v22 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_21658E210;
          *(v23 + 32) = v19;
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
          v24 = v19;
          a1 = Array._bridgeToObjectiveC()().super.isa;

          v25 = [v22 horizontalGroupWithLayoutSize:v21 subitems:a1];
        }

        v26 = swift_beginAccess();
        MEMORY[0x21CE92260](v26);
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v12 = v87;
      }

      v13 += 24;
      --v11;
    }

    while (v11);

    a1 = v79;
  }

  swift_beginAccess();
  v43 = *(a4 + 16);
  if (v43 >> 62)
  {
LABEL_48:
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_49:

    return 0;
  }

LABEL_33:
  v44 = objc_opt_self();
  v45 = [v44 fractionalWidthDimension_];
  v46 = [v44 estimatedDimension_];
  v47 = objc_opt_self();
  v48 = [v47 sizeWithWidthDimension:v45 heightDimension:v46];

  swift_beginAccess();
  v80 = a1;
  if (*(a4 + 16) >> 62)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  }

  v49 = objc_opt_self();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v49 verticalGroupWithLayoutSize:v48 subitems:v50];

  v52 = 16.0;
  v53 = [objc_opt_self() fixedSpacing_];
  [v51 setInterItemSpacing_];

  v54 = [objc_opt_self() sectionWithGroup_];
  v55 = (*v81 + 840);
  v56 = *v55;
  if ((*v55)())
  {
    v88 = v48;
    v89 = MEMORY[0x277D84F90];
    v57 = [v44 fractionalWidthDimension_];
    v58 = [v44 estimatedDimension_];
    v59 = [v47 sizeWithWidthDimension:v57 heightDimension:v58];

    v60 = *MEMORY[0x277D767D8];
    v61 = objc_opt_self();
    v84 = v59;
    v62 = [v61 boundarySupplementaryItemWithLayoutSize:v59 elementKind:v60 alignment:1];
    MEMORY[0x21CE92260]();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((*(*v81 + 1024))(v80))
    {
      v63 = [v44 fractionalWidthDimension_];
      v64 = [v44 estimatedDimension_];
      v65 = [v47 sizeWithWidthDimension:v63 heightDimension:v64];

      v66 = [v61 boundarySupplementaryItemWithLayoutSize:v65 elementKind:*MEMORY[0x277D767D0] alignment:5];
      MEMORY[0x21CE92260]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v67 = objc_opt_self();
    v68 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x800000021657DBF0);
    v69 = [v67 backgroundDecorationItemWithElementKind_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_21658E210;
    *(v70 + 32) = v69;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutDecorationItem);
    v71 = v69;
    v72 = Array._bridgeToObjectiveC()().super.isa;

    [v54 setDecorationItems_];

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
    v73 = Array._bridgeToObjectiveC()().super.isa;

    [v54 setBoundarySupplementaryItems_];

    v48 = v88;
  }

  if (v56())
  {
    v52 = 32.0;
  }

  v74 = [Strong traitCollection];
  v75 = [v74 horizontalSizeClass];

  v76 = 12.0;
  if (v75 != 2)
  {
    v76 = 8.0;
  }

  [v54 setContentInsets_];

  return v54;
}

NSCollectionLayoutGroup __swiftcall SuggestionCollectionViewController.halfWidthSuggestionGroupLayout(isList:)(Swift::Bool isList)
{
  if (isList)
  {
    v1 = 50.0;
  }

  else
  {
    v1 = 250.0;
  }

  v2 = objc_opt_self();
  v3 = [v2 estimatedDimension_];
  v4 = [v2 fractionalWidthDimension_];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v4 heightDimension:v3];

  v7 = [objc_opt_self() itemWithLayoutSize_];
  v8 = [v2 fractionalWidthDimension_];
  v9 = [v5 sizeWithWidthDimension:v8 heightDimension:v3];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658E180;
  *(v11 + 32) = v7;
  *(v11 + 40) = v7;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v12 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v10 horizontalGroupWithLayoutSize:v9 subitems:isa];

  return v14;
}

NSCollectionLayoutGroup __swiftcall SuggestionCollectionViewController.fullWidthSuggestionGroupLayout(isList:)(Swift::Bool isList)
{
  if (isList)
  {
    v1 = 50.0;
  }

  else
  {
    v1 = 275.0;
  }

  v2 = objc_opt_self();
  v3 = [v2 estimatedDimension_];
  v4 = [v2 fractionalWidthDimension_];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v4 heightDimension:v3];

  v7 = [objc_opt_self() itemWithLayoutSize_];
  v8 = [v2 fractionalWidthDimension_];
  v9 = [v5 sizeWithWidthDimension:v8 heightDimension:v3];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658E210;
  *(v11 + 32) = v7;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v12 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v10 horizontalGroupWithLayoutSize:v9 subitems:isa];

  return v14;
}

id SuggestionCollectionViewController.mixedWidthSuggestionGroupLayout(groupIndex:layoutEnvironment:)(char a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 estimatedDimension_];
  v6 = [v2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  [objc_msgSend(a2 container)];
  v9 = v8;
  swift_unknownObjectRelease();
  v10 = 24.0;
  if (v7 != 2)
  {
    v10 = 16.0;
  }

  v11 = v9 - v10 - ((v9 - v10 + -32.0) / 3.0 + (v9 - v10 + -32.0) / 3.0 + 16.0);
  v12 = [v4 absoluteDimension_];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v12 heightDimension:v5];

  v15 = objc_opt_self();
  v16 = [v15 itemWithLayoutSize_];
  v17 = [v4 absoluteDimension_];
  v18 = [v13 sizeWithWidthDimension:v17 heightDimension:v5];

  v19 = [v15 itemWithLayoutSize_];
  v20 = [v4 fractionalWidthDimension_];
  v21 = [v13 sizeWithWidthDimension:v20 heightDimension:v5];

  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21658E180;
  if (a1)
  {
    v24 = v19;
  }

  else
  {
    v24 = v16;
  }

  if (a1)
  {
    v25 = v16;
  }

  else
  {
    v25 = v19;
  }

  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v26 = v16;
  v27 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v22 horizontalGroupWithLayoutSize:v21 subitems:isa];

  return v29;
}

uint64_t closure #1 in SuggestionCollectionViewController.configureDataSource()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v13 = *(Strong + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  v14 = Strong;

  if (!v13)
  {
    goto LABEL_16;
  }

  v15 = IndexPath.section.getter();
  v16 = v13;
  v17 = (*(*v13 + 416))();

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v15 >= *(v17 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v16 = *(v17 + 16 * v15 + 40);

  if (v16 >> 62)
  {
    goto LABEL_14;
  }

  result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_15:

LABEL_16:
    (*(v9 + 56))(v7, 1, 1, v8);
    return outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
  }

LABEL_7:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21CE93180](0, v16);

    outlined init with copy of DateInterval?(v20 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v7, &_s10Foundation4DateVSgMd);
    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v16 + 32);

    outlined init with copy of DateInterval?(v19 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v7, &_s10Foundation4DateVSgMd);
  }

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v5, v11, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    (*((*MEMORY[0x277D85000] & *a1) + 0x68))(v5);
    return (*(v9 + 8))(v11, v8);
  }

  return outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
}

uint64_t closure #2 in SuggestionCollectionViewController.configureDataSource()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v13 = *((*MEMORY[0x277D85000] & *a1) + 0x68);

  return v13(partial apply for closure #1 in closure #2 in SuggestionCollectionViewController.configureDataSource(), v12);
}

void closure #1 in closure #2 in SuggestionCollectionViewController.configureDataSource()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
    v2 = Strong;

    if (v1)
    {
      v3 = IndexPath.section.getter();
      (*(*v1 + 1032))(v3);
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    SuggestionCollectionViewController.reloadDataSnapshot()();
  }
}

uint64_t closure #3 in SuggestionCollectionViewController.configureDataSource()()
{
  type metadata accessor for MosaicSuggestionViewModel();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    if (*(v0 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem) == 1)
    {
      type metadata accessor for SuggestionListCollectionViewCell();
    }

    else
    {
      type metadata accessor for MosaicCollectionViewCell();
    }
  }

  else
  {
    type metadata accessor for EvergreenSuggestionViewModel();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for EvergreenCollectionViewCell();
    }

    else
    {
      type metadata accessor for MessageSuggestionViewModel();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for MessageCollectionViewCell();
      }

      else
      {
        type metadata accessor for TipSuggestionViewModel();
        if (!swift_dynamicCastClass())
        {
          return 0;
        }

        type metadata accessor for TipCollectionViewCell();
      }
    }
  }

  v1 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v1;
}

uint64_t closure #4 in SuggestionCollectionViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
      {

LABEL_16:
        type metadata accessor for ShowMoreFooterView();
        return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

  type metadata accessor for SectionDateHeaderView();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t SuggestionCollectionViewController.createSnaphot()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI31SuggestionCollectionViewSectionVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for SuggestionCollectionViewSection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SuggestionViewModel();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type SuggestionCollectionViewSection and conformance SuggestionCollectionViewSection, type metadata accessor for SuggestionCollectionViewSection);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type SuggestionViewModel and conformance SuggestionViewModel, type metadata accessor for SuggestionViewModel);
  v19 = v4;
  NSDiffableDataSourceSnapshot.init()();
  SuggestionCollectionViewController.createSections()();
  v8 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v9._rawValue = v8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI31SuggestionCollectionViewSectionVAD0hJ5ModelCGMd);
  NSDiffableDataSourceSnapshot.appendSections(_:)(v9);

  v11 = (v8)(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v5 + 80);
    v18 = v11;
    v14 = v11 + ((v13 + 32) & ~v13);
    v15 = *(v5 + 72);
    v16 = (v5 + 56);
    do
    {
      outlined init with copy of Client(v14, v7, type metadata accessor for SuggestionCollectionViewSection);
      outlined init with take of SuggestionCollectionViewSection(v7, v3, type metadata accessor for SuggestionCollectionViewSection);
      (*v16)(v3, 0, 1, v19);

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      outlined destroy of UTType?(v3, &_s9MomentsUI31SuggestionCollectionViewSectionVSgMd);
      v14 += v15;
      --v12;
    }

    while (v12);
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.createSections()()
{
  v1 = v0;
  v24 = type metadata accessor for SuggestionCollectionViewSection(0);
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D85000] & *v0;
  v22 = *(v5 + 0x150);
  v23 = v5 + 336;
  v6 = v22(v25);
  *v7 = MEMORY[0x277D84F90];

  v6(v25, 0);
  v8 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v8)
  {
    v9 = *(*v8 + 416);

    v21 = v9();
    v10 = *(v21 + 16);
    if (v10)
    {
      v11 = (v21 + 40);
      do
      {
        v12 = *v11;

        UUID.init()();
        *&v4[*(v24 + 20)] = v12;
        v13 = v22(v25);
        v15 = v14;
        v16 = *v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          *v15 = v16;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v16);
          *v15 = v16;
        }

        v16[2] = v19 + 1;
        outlined init with take of SuggestionCollectionViewSection(v4, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19, type metadata accessor for SuggestionCollectionViewSection);
        v13(v25, 0);
        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t $defer #1 () in SuggestionCollectionViewController.configureDataSource()(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static CommonSignposter.uiRendering);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t $defer #1 () in SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static CommonSignposter.uiRendering);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D85B00])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v13, v18, v17, a1, v15, v16, 2u);
      MEMORY[0x21CE94770](v16, -1, -1);
LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in SuggestionCollectionViewController.presentInterstitial(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - v18;
  (*(**a1 + 184))(v17);
  (*(v5 + 16))(v16, a2, v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v20 = *(v8 + 56);
  outlined init with copy of DateInterval?(v19, v10, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(v16, &v10[v20], &_s10Foundation4UUIDVSgMd);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    outlined init with copy of DateInterval?(v10, v28, &_s10Foundation4UUIDVSgMd);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v23 = &v10[v20];
      v24 = v27;
      (*(v5 + 32))(v27, v23, v4);
      _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v24, v4);
      outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
      outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd);
      v25(v28, v4);
      outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
      return v22 & 1;
    }

    outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd);
    (*(v5 + 8))(v28, v4);
    goto LABEL_6;
  }

  outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd);
  if (v21(&v10[v20], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSg_ADtMd);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
  v22 = 1;
  return v22 & 1;
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
          v7 = MEMORY[0x21CE93180](v6, a3);
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

uint64_t SuggestionCollectionViewController.presentInterstitial(with:entryPoint:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v96 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v107 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Client();
  v12 = MEMORY[0x28223BE20](v110);
  v104 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = v96 - v14;
  v103 = type metadata accessor for EngagementEvent();
  v15 = MEMORY[0x28223BE20](v103);
  v102 = (v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v105 = v96 - v17;
  v108 = *a2;
  v18 = [v2 navigationItem];
  [v18 setBackButtonDisplayMode_];

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 navigationBar];

    v22 = [objc_opt_self() systemIndigoColor];
    [v21 setTintColor_];
  }

  v23 = [v3 traitCollection];
  v24 = [v23 horizontalSizeClass];

  v106 = v10;
  if (v24 != 1 || (v25 = [v3 sheetPresentationController]) == 0)
  {
    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v100 = v3;
  v98 = v8;
  v101 = v25;
  v26 = [v25 detents];
  v96[1] = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = a1;
  v97 = v9;
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  v28 = __CocoaSet.count.getter();
  if (!v28)
  {
LABEL_33:

    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    a1 = v99;
    v8 = v98;
    v9 = v97;
    v3 = v100;
LABEL_34:

    v60 = specialized InterstitialViewController.__allocating_init(suggestionViewModel:)(v59);
    if (!v60)
    {

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static CommonLogger.views);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v40;
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_21607C000, v66, v67, "[SuggestionCollectionViewController] Cannot construct interstitial view controller", v69, 2u);
        v70 = v69;
        v40 = v68;
        MEMORY[0x21CE94770](v70, -1, -1);
      }

      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);
    }

    v61 = v60;
    v111 = v41;
    v112 = v40;
    v62 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_originalDetents;
    swift_beginAccess();
    *&v61[v62] = v42;

    v63 = a1;
    if (v108)
    {
      v64 = 2;
    }

    else
    {
      v64 = [*&v3[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl] selectedSegmentIndex] == 1;
    }

    v71 = v9;
    v72 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer;
    swift_beginAccess();
    v61[v72] = v64;
    v73 = [v3 navigationController];
    if (v73)
    {
      v74 = v73;
      [v73 pushViewController:v61 animated:1];
    }

    v75 = [*&v3[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl] selectedSegmentIndex] == 1;
    v76 = *(*v63 + 280);
    v77 = v109;
    v76();
    v78 = (v77 + *(v110 + 32));
    v80 = *v78;
    v79 = v78[1];

    v81 = _s9MomentsUI6ClientVWOhTm_0(v77, type metadata accessor for Client);
    if (v79)
    {
      v82 = (*(*v63 + 256))(v81);
      if (v82)
      {
        v83 = v82;
        v109 = v80;
        v84 = *(v63 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
        if (v84 == 65)
        {
        }

        else
        {
          v108 = v75;
          (*(*v63 + 184))();
          v85 = v106;
          if ((*(v106 + 48))(v8, 1, v71) == 1)
          {

            outlined destroy of UTType?(v8, &_s10Foundation4UUIDVSgMd);
            goto LABEL_51;
          }

          v86 = *(v85 + 32);
          v86(v107, v8, v71);
          v87 = v102;
          *v102 = v109;
          *(v87 + 8) = v79;
          *(v87 + 16) = v83;
          v88 = v103;
          v86((v87 + *(v103 + 24)), v107, v71);
          *(v87 + v88[7]) = v84;
          *(v87 + v88[8]) = 1;
          *(v87 + v88[9]) = v108;
          v89 = v105;
          v90 = outlined init with take of SuggestionCollectionViewSection(v87, v105, type metadata accessor for EngagementEvent);
          v91 = v104;
          (v76)(v90);
          v92 = (v91 + *(v110 + 24));
          v94 = *v92;
          v93 = v92[1];
          swift_unknownObjectRetain();
          _s9MomentsUI6ClientVWOhTm_0(v91, type metadata accessor for Client);
          if (v94)
          {
            ObjectType = swift_getObjectType();
            (*(v93 + 48))(v89, ObjectType, v93);

            swift_unknownObjectRelease();
            _s9MomentsUI6ClientVWOhTm_0(v89, type metadata accessor for EngagementEvent);
            goto LABEL_51;
          }

          _s9MomentsUI6ClientVWOhTm_0(v89, type metadata accessor for EngagementEvent);
        }
      }

      else
      {
      }
    }

LABEL_51:
    v40 = v112;
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);
  }

LABEL_7:
  v29 = 0;
  v111 = v27 & 0xC000000000000001;
  v112 = *MEMORY[0x277D76EC8];
  while (1)
  {
    if (v111)
    {
      v30 = MEMORY[0x21CE93180](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v33 = [v30 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_22;
    }

    ++v29;
    if (v32 == v28)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v43 = v101;
  [v101 setPrefersGrabberVisible_];
  v44 = [v43 detents];
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_21658E210;
  *(v45 + 32) = [objc_opt_self() largeDetent];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 setDetents_];

  v47 = [v43 selectedDetentIdentifier];
  a1 = v99;
  v8 = v98;
  v9 = v97;
  v3 = v100;
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
    {

LABEL_27:

      v40 = 0;
      v41 = 0;
      goto LABEL_34;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_27;
    }
  }

  v41 = swift_allocObject();
  v54 = v101;
  *(v41 + 16) = v101;
  v55 = swift_allocObject();
  v112 = partial apply for closure #2 in SuggestionCollectionViewController.presentInterstitial(with:entryPoint:);
  *(v55 + 16) = partial apply for closure #2 in SuggestionCollectionViewController.presentInterstitial(with:entryPoint:);
  *(v55 + 24) = v41;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_51_0;
  v56 = _Block_copy(aBlock);
  v57 = v54;

  [v57 _animateChanges_completion_];

  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if ((v56 & 1) == 0)
  {
    v3 = v100;
    v40 = v112;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for EngagementEvent();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for Client();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v9;
  v6[19] = v8;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:), v9, v8);
}

uint64_t closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = (**(v0 + 16) + 280);
  v4 = *v3;
  *(v0 + 160) = *v3;
  *(v0 + 168) = v3 & 0xFFFFFFFFFFFFLL | 0x53C1000000000000;
  v4();
  v5 = (v1 + *(v2 + 24));
  v6 = *v5;
  *(v0 + 176) = *v5;
  v7 = v5[1];
  swift_unknownObjectRetain();
  _s9MomentsUI6ClientVWOhTm_0(v1, type metadata accessor for Client);
  if (v6)
  {
    ObjectType = swift_getObjectType();
    v4();
    v47 = (*(v7 + 24) + **(v7 + 24));
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:);
    v10 = *(v0 + 120);
    v11 = *(v0 + 24);

    return v47(v11, v10, ObjectType, v7);
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);
  v16 = [*(*(v0 + 32) + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
  v13();
  v17 = (v14 + *(v15 + 32));
  v19 = *v17;
  v18 = v17[1];

  v20 = _s9MomentsUI6ClientVWOhTm_0(v14, type metadata accessor for Client);
  if (v18)
  {
    v21 = (*(**(v0 + 16) + 256))(v20);
    if (v21)
    {
      v22 = *(v0 + 16);
      v23 = *(v22 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
      if (v23 != 65)
      {
        v48 = v21;
        v25 = *(v0 + 48);
        v26 = *(v0 + 56);
        v27 = *(v0 + 40);
        (*(*v22 + 184))();
        if ((*(v26 + 48))(v27, 1, v25) == 1)
        {
          v28 = *(v0 + 40);

          outlined destroy of UTType?(v28, &_s10Foundation4UUIDVSgMd);
        }

        else
        {
          v29 = *(v0 + 80);
          v30 = *(v0 + 72);
          v44 = *(v0 + 64);
          v31 = *(v0 + 48);
          v45 = *(v0 + 32);
          v46 = *(v0 + 88);
          v32 = *(*(v0 + 56) + 32);
          v32();
          *v29 = v19;
          v29[1] = v18;
          v29[2] = v48;
          (v32)(v29 + v30[6], v44, v31);
          *(v29 + v30[7]) = v23;
          *(v29 + v30[8]) = 0;
          *(v29 + v30[9]) = v16;
          outlined init with take of SuggestionCollectionViewSection(v29, v46, type metadata accessor for EngagementEvent);
          v33 = *(v45 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
          if (v33)
          {
            v35 = *(v0 + 96);
            v34 = *(v0 + 104);
            v36 = *(*v33 + 320);

            v36(v37);

            v38 = (v34 + *(v35 + 24));
            v39 = *v38;
            v40 = v38[1];
            swift_unknownObjectRetain();
            _s9MomentsUI6ClientVWOhTm_0(v34, type metadata accessor for Client);
            v41 = *(v0 + 88);
            if (v39)
            {
              v42 = swift_getObjectType();
              (*(v40 + 48))(v41, v42, v40);
              swift_unknownObjectRelease();
            }

            v43 = v41;
          }

          else
          {
            v43 = *(v0 + 88);
          }

          _s9MomentsUI6ClientVWOhTm_0(v43, type metadata accessor for EngagementEvent);
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *v0;
  v2 = *(*v0 + 120);

  swift_unknownObjectRelease();
  _s9MomentsUI6ClientVWOhTm_0(v2, type metadata accessor for Client);
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:), v4, v3);
}

{

  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = [*(*(v0 + 32) + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
  v1();
  v5 = (v2 + *(v3 + 32));
  v7 = *v5;
  v6 = v5[1];

  v8 = _s9MomentsUI6ClientVWOhTm_0(v2, type metadata accessor for Client);
  if (v6)
  {
    v9 = (*(**(v0 + 16) + 256))(v8);
    if (!v9)
    {
LABEL_5:

      goto LABEL_6;
    }

    v10 = *(v0 + 16);
    v11 = *(v10 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
    if (v11 == 65)
    {

      goto LABEL_5;
    }

    v36 = v9;
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);
    (*(*v10 + 184))();
    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      v17 = *(v0 + 40);

      outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
      v18 = *(v0 + 80);
      v19 = *(v0 + 72);
      v33 = *(v0 + 64);
      v20 = *(v0 + 48);
      v34 = *(v0 + 32);
      v35 = *(v0 + 88);
      v21 = *(*(v0 + 56) + 32);
      v21();
      *v18 = v7;
      v18[1] = v6;
      v18[2] = v36;
      (v21)(v18 + v19[6], v33, v20);
      *(v18 + v19[7]) = v11;
      *(v18 + v19[8]) = 0;
      *(v18 + v19[9]) = v4;
      outlined init with take of SuggestionCollectionViewSection(v18, v35, type metadata accessor for EngagementEvent);
      v22 = *(v34 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
      if (v22)
      {
        v24 = *(v0 + 96);
        v23 = *(v0 + 104);
        v25 = *(*v22 + 320);

        v25(v26);

        v27 = (v23 + *(v24 + 24));
        v28 = *v27;
        v29 = v27[1];
        swift_unknownObjectRetain();
        _s9MomentsUI6ClientVWOhTm_0(v23, type metadata accessor for Client);
        v30 = *(v0 + 88);
        if (v28)
        {
          ObjectType = swift_getObjectType();
          (*(v29 + 48))(v30, ObjectType, v29);
          swift_unknownObjectRelease();
        }

        v32 = v30;
      }

      else
      {
        v32 = *(v0 + 88);
      }

      _s9MomentsUI6ClientVWOhTm_0(v32, type metadata accessor for EngagementEvent);
    }
  }

LABEL_6:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = a2;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:), v9);
}

uint64_t closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:), v6, v5);
}

uint64_t closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  v14 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel;
  v0[6] = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel;
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {
    v4 = *(*v3 + 1160);

    v12 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:);

    return v12();
  }

  else
  {

    v7 = v0[2];
    v8 = *(v7 + v0[6]);
    if (v8)
    {
      v9 = *(*v8 + 1144);

      v9(v10);

      v7 = v0[2];
    }

    v13 = [*(v7 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
    SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v13, 0);
    v11 = v0[1];

    return v11();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:), v3, v2);
}

{
  v8 = v0;

  v1 = v0[2];
  v2 = *(v1 + v0[6]);
  if (v2)
  {
    v3 = *(*v2 + 1144);

    v3(v4);

    v1 = v0[2];
  }

  v7 = [*(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
  SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v7, 0);
  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall SuggestionCollectionViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled) = 1;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x128))(a1);
  if (v3)
  {
    v13 = v3;
    [v3 contentSize];
    v5 = v4;
    [v13 frame];
    Height = CGRectGetHeight(v15);
    [v13 contentOffset];
    v8 = v7;
    v9 = [v13 adjustedContentInset];
    v11 = v5 - (Height + v8 - v10);
    v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom);
    *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom) = v11 <= 100.0;
    if ((v12 & 1) == 0 && v11 <= 100.0 && *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) == 1)
    {
      (*((*v2 & *v1) + 0x348))(v9);
    }
  }
}

id SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v10 = objc_opt_self();
  aBlock[4] = partial apply for closure #1 in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_58;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  v13 = [v10 configurationWithIdentifier:0 previewProvider:0 actionProvider:v11];

  _Block_release(v11);
  return v13;
}

Class closure #1 in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for SuggestionCollectionViewSection(0);
  isa = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  v11 = IndexPath.section.getter();
  v12 = (*((*MEMORY[0x277D85000] & *v10) + 0x140))();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v11 >= *(v12 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  outlined init with copy of Client(v12 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v11, v8, type metadata accessor for SuggestionCollectionViewSection);

  v5 = *&v8[*(v5 + 20)];

  _s9MomentsUI6ClientVWOhTm_0(v8, type metadata accessor for SuggestionCollectionViewSection);
  v12 = IndexPath.item.getter();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = a4;
      v14 = *(v5 + 8 * v12 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:
  v13 = a4;
  v14 = MEMORY[0x21CE93180](v12, v5);
LABEL_8:

  v41[1] = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction);
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v45._object = 0xED0000746E656D6FLL;
  v18._countAndFlagsBits = 0x65766F6D6552;
  v45._countAndFlagsBits = 0x4D2065766F6D6552;
  v18._object = 0xE600000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v45);

  v20 = MEMORY[0x21CE91FC0](0x6873617274, 0xE500000000000000);
  v21 = objc_opt_self();
  v22 = [v21 systemImageNamed_];

  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v14;
  v24 = v13;

  a4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25 = [v16 bundleForClass_];
  v46._object = 0xE800000000000000;
  v26._countAndFlagsBits = 0x6B63616264656546;
  v26._object = 0xE800000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0x6B63616264656546;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v46);

  v28 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x800000021657DE90);
  v29 = [v21 systemImageNamed_];

  v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21658E210;
  *(v31 + 32) = v30;
  v8 = v30;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v43.value.super.isa = 0;
  v43.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v43, 1, 0xFFFFFFFFFFFFFFFFLL, v31, v40).super.super.isa;
  v33 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  type metadata accessor for MosaicSuggestionViewModel();
  if (swift_dynamicCastClass())
  {
    v34 = a4;
    MEMORY[0x21CE92260]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v42;
      goto LABEL_11;
    }

LABEL_23:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_10;
  }

LABEL_11:
  v35 = v10 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client;
  if (v35[*(type metadata accessor for Client() + 36)] == 1)
  {
    v36 = isa;
    MEMORY[0x21CE92260]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v33 = v42;
  }

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v44.value.super.isa = 0;
  v44.is_nil = 0;
  v38.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v44, 1, 0xFFFFFFFFFFFFFFFFLL, v33, v40).super.super.isa;

  return v38.super.super.isa;
}

void confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, char *a2)
{
  v2 = *&a2[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel];
  if (v2)
  {
    type metadata accessor for SuggestionCollectionViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();

    v29 = ObjCClassFromMetadata;
    v6 = [v5 bundleForClass_];
    v37._object = 0x800000021657DF20;
    v7._countAndFlagsBits = 0xD000000000000049;
    v7._object = 0x800000021657DED0;
    v37._countAndFlagsBits = 0xD00000000000002FLL;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v37);

    v10 = MEMORY[0x21CE91FC0](v9._countAndFlagsBits, v9._object);

    v11 = [objc_opt_self() alertControllerWithTitle:0 message:v10 preferredStyle:0];

    v12 = [v5 &off_27821E438 + 3];
    v38._object = 0x800000021657DF50;
    v13._countAndFlagsBits = 0x4D2065766F6D6552;
    v13._object = 0xED0000746E656D6FLL;
    v38._countAndFlagsBits = 0xD00000000000001ELL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v38);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = v2;

    v18 = MEMORY[0x21CE91FC0](v15._countAndFlagsBits, v15._object);

    v35 = partial apply for closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:);
    v36 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
    v34 = &block_descriptor_156;
    v19 = _Block_copy(&aBlock);

    v20 = objc_opt_self();
    v21 = [v20 actionWithTitle:v18 style:2 handler:v19];
    _Block_release(v19);

    v22 = [v5 bundleForClass_];
    v39._object = 0x800000021657DF90;
    v23._countAndFlagsBits = 0x6C65636E6143;
    v23._object = 0xE600000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD000000000000013;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v39);

    v26 = MEMORY[0x21CE91FC0](v25._countAndFlagsBits, v25._object);

    v35 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
    v36 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
    v34 = &block_descriptor_159;
    v27 = _Block_copy(&aBlock);

    v28 = [v20 actionWithTitle:v26 style:1 handler:v27];
    _Block_release(v27);

    [v11 addAction_];
    [v11 addAction_];
    [a2 presentViewController:v11 animated:1 completion:0];
  }
}

uint64_t closure #2 in closure #1 in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  (*(*a2 + 184))(v15);
  if ((*(v11 + 48))(v17, 1, v10))
  {
    outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd);
    UUID.init()();
  }

  else
  {
    (*(v11 + 16))(v13, v17, v10);
    outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd);
  }

  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v27 = 0xD00000000000001FLL;
  v28 = 0x800000021657DEB0;
  MEMORY[0x21CE92100](v18, v20);

  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd);
  }

  (*(v7 + 32))(v9, v5, v6);
  v22 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 openURL:v25 options:isa completionHandler:0];

  return (*(v7 + 8))(v9, v6);
}

id UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v16 = &block_descriptor_146;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v16 = &block_descriptor_143_0;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v51 - v7;
  v8 = type metadata accessor for UUID();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Client();
  v11 = MEMORY[0x28223BE20](v10);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = type metadata accessor for EngagementEvent();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v51 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v54 = v20;
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    type metadata accessor for MainActor();

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = a3;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v23, &async function pointer to partial apply for closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:), v28);

    (*(*a4 + 1136))(a3);
    v30 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl;
    v60 = [*&v25[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl] selectedSegmentIndex] == 1;
    SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v60, 0);
    v31 = [*&v25[v30] selectedSegmentIndex] == 1;
    (*(*a3 + 280))();
    v32 = &v14[*(v10 + 32)];
    v33 = *v32;
    v34 = *(v32 + 1);

    v35 = _s9MomentsUI6ClientVWOhTm_0(v14, type metadata accessor for Client);
    if (v34)
    {
      v53 = v33;
      v36 = (*(*a3 + 256))(v35);
      if (v36)
      {
        v37 = v36;
        v52 = v31;
        if (*(a3 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) == 65)
        {
        }

        else
        {
          v51 = *(a3 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
          v38 = v59;
          (*(*a3 + 184))();
          v40 = v57;
          v39 = v58;
          if ((*(v57 + 48))(v38, 1, v58) == 1)
          {

            outlined destroy of UTType?(v59, &_s10Foundation4UUIDVSgMd);
            return;
          }

          v41 = v39;
          v42 = *(v40 + 32);
          v43 = v55;
          v42(v55, v59, v41);
          *v18 = v53;
          *(v18 + 1) = v34;
          *(v18 + 2) = v37;
          v42(&v18[v15[6]], v43, v58);
          v18[v15[7]] = v51;
          v18[v15[8]] = 2;
          v18[v15[9]] = v52;
          v44 = v54;
          v45 = outlined init with take of SuggestionCollectionViewSection(v18, v54, type metadata accessor for EngagementEvent);
          v46 = v56;
          (*(*a4 + 320))(v45);
          v47 = (v46 + *(v10 + 24));
          v49 = *v47;
          v48 = v47[1];
          swift_unknownObjectRetain();
          _s9MomentsUI6ClientVWOhTm_0(v46, type metadata accessor for Client);
          if (v49)
          {
            ObjectType = swift_getObjectType();
            (*(v48 + 48))(v44, ObjectType, v48);

            swift_unknownObjectRelease();
            _s9MomentsUI6ClientVWOhTm_0(v44, type metadata accessor for EngagementEvent);
            return;
          }

          _s9MomentsUI6ClientVWOhTm_0(v44, type metadata accessor for EngagementEvent);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:), v6, v5);
}

uint64_t closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(**(v0 + 16) + 184))();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:);
  v2 = *(v0 + 24);

  return NotificationHandlingManager.handleEngagementEvent(with:)(v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  }

  else
  {
    v6 = closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void SuggestionCollectionViewController.updateContentUnavailableConfiguration(using:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasStartedFetchingContent) == 1)
  {
    v3 = *(*v1 + 664);

    if (v3(v4))
    {
      (*(*v1 + 872))(&v13);
      if (v13 <= 2u)
      {
        if (v13)
        {
          v5 = type metadata accessor for UIContentUnavailableConfiguration();
          *(&v15 + 1) = v5;
          v16 = MEMORY[0x277D74D18];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
          v7 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_noSuggestionsContentConfiguration;
        }

        else
        {
          v5 = type metadata accessor for UIContentUnavailableConfiguration();
          *(&v15 + 1) = v5;
          v16 = MEMORY[0x277D74D18];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
          v7 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_loadingContentConfiguration;
        }
      }

      else if (v13 > 4u)
      {
        if (v13 != 5)
        {
LABEL_23:

          return;
        }

        v5 = type metadata accessor for UIContentUnavailableConfiguration();
        *(&v15 + 1) = v5;
        v16 = MEMORY[0x277D74D18];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
        v7 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_downloadingContentConfiguration;
      }

      else if (v13 == 3)
      {
        v5 = type metadata accessor for UIContentUnavailableConfiguration();
        *(&v15 + 1) = v5;
        v16 = MEMORY[0x277D74D18];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
        v7 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_upgradingContentConfiguration;
      }

      else
      {
        v5 = type metadata accessor for UIContentUnavailableConfiguration();
        *(&v15 + 1) = v5;
        v16 = MEMORY[0x277D74D18];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
        v7 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_firstTimeContentConfiguration;
      }

      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v2 + v7, v5);
      UIViewController.contentUnavailableConfiguration.setter();
      [*(v2 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
      goto LABEL_23;
    }

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    UIViewController.contentUnavailableConfiguration.setter();
    v8 = v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client;
    v9 = (v8 + *(type metadata accessor for Client() + 32));
    v10 = v9[1];
    if (v10)
    {
      v11 = *v9;
      v12 = *(*v1 + 920);

      LOBYTE(v11) = v12(v11, v10);

      if ((v11 & 1) == 0)
      {
        [*(v2 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
        goto LABEL_10;
      }
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;

    UIViewController.contentUnavailableConfiguration.setter();
  }

  [*(v2 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
LABEL_10:
}

uint64_t type metadata accessor for SuggestionCollectionViewSection(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for UIScene);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Published<SuggestionCollectionViewModel.ContentState>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<SuggestionCollectionViewModel.ContentState>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<SuggestionCollectionViewModel.ContentState>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<SuggestionCollectionViewModel.ContentState>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t partial apply for closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in SuggestionCollectionViewController.configureDataSource()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd);

  return closure #3 in SuggestionCollectionViewController.configureDataSource()();
}

uint64_t partial apply for closure #4 in SuggestionCollectionViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI017SectionDateHeaderB0CGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI014ShowMoreFooterB0CGMd);

  return closure #4 in SuggestionCollectionViewController.configureDataSource()(a1, a2, a3);
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

void specialized SuggestionCollectionViewController.init(coder:)()
{
  v1 = v0;
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sections) = MEMORY[0x277D84F90];
  swift_weakInit();
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for PrivacyBadgeView()) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView) = 0;
  v4 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for ProtectedAppsManager()) init];
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasStartedFetchingContent) = 0;
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) = 0;
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled) = 0;
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom) = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl;
  *(v1 + v5) = closure #1 in variable initialization expression of SuggestionCollectionViewController.suggestionSegmentedControl();
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel) = 0;
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription) = 0;
  static UIContentUnavailableConfiguration.loading()();
  static UIContentUnavailableConfiguration.empty()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v10._object = 0x800000021657D9F0;
  v8._countAndFlagsBits = 0x6567677553206F4ELL;
  v8._object = 0xEE00736E6F697473;
  v10._countAndFlagsBits = 0xD00000000000004CLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v10);

  UIContentUnavailableConfiguration.text.setter();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.downloadingContentConfiguration();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.upgradingContentConfiguration();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.firstTimeContentConfiguration();
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasPresentedOnboarding) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized SuggestionCollectionViewController.threeQuarterWidthSuggestionGroupLayout(layoutEnvironment:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 estimatedDimension_];
  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = [v2 absoluteDimension_];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v6 heightDimension:v3];

  v9 = [objc_opt_self() itemWithLayoutSize_];
  v10 = [v2 fractionalWidthDimension_];
  v11 = [v7 sizeWithWidthDimension:v10 heightDimension:v3];

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21658E210;
  *(v13 + 32) = v9;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v14 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v12 horizontalGroupWithLayoutSize:v11 subitems:isa];

  return v16;
}

uint64_t outlined init with copy of Client(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SuggestionCollectionViewSection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9MomentsUI6ClientVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - v6;
  v8 = type metadata accessor for SuggestionCollectionViewSection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = IndexPath.section.getter();
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v12 >= *(result + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  outlined init with copy of Client(result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v12, v11, type metadata accessor for SuggestionCollectionViewSection);

  v8 = *&v11[*(v8 + 20)];

  _s9MomentsUI6ClientVWOhTm_0(v11, type metadata accessor for SuggestionCollectionViewSection);
  result = IndexPath.item.getter();
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v14 = MEMORY[0x21CE93180](result, v8);
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v14 = *(v8 + 8 * result + 32);

LABEL_7:

  type metadata accessor for EvergreenSuggestionViewModel();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(*v15 + 344);
    v18 = swift_retain_n();
    v19 = v17(v18);

    if (v19)
    {
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      type metadata accessor for MainActor();

      v21 = v19;
      v22 = v1;
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D85700];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v16;
      v24[5] = v21;
      v24[6] = v22;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:), v24);
    }
  }

  type metadata accessor for MessageSuggestionViewModel();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = *(*v26 + 368);

    if (v28(v29))
    {
    }

    else
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = objc_opt_self();
      v76 = v31;
      v77 = ObjCClassFromMetadata;
      v32 = [v31 bundleForClass_];
      v84._object = 0x800000021657DFD0;
      v33._countAndFlagsBits = 0xD000000000000016;
      v33._object = 0x800000021657DFB0;
      v84._countAndFlagsBits = 0xD00000000000004FLL;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v84);
      countAndFlagsBits = v35._countAndFlagsBits;

      v36 = [v31 &off_27821E438 + 3];
      v85._object = 0x800000021657E050;
      v37._countAndFlagsBits = 0xD00000000000002CLL;
      v37._object = 0x800000021657E020;
      v85._countAndFlagsBits = 0xD000000000000047;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v85);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_21658CA50;
      v40 = *(*v27 + 208);

      v42 = v40(v41);
      v44 = v43;

      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
      if (v44)
      {
        v45 = v42;
      }

      else
      {
        v45 = 0;
      }

      v46 = 0xE000000000000000;
      if (v44)
      {
        v46 = v44;
      }

      *(v39 + 32) = v45;
      *(v39 + 40) = v46;
      v47 = static String.localizedStringWithFormat(_:_:)();
      v49 = v48;

      v50 = MEMORY[0x21CE91FC0](countAndFlagsBits, v35._object);

      v51 = MEMORY[0x21CE91FC0](v47, v49);

      v52 = [objc_opt_self() alertControllerWithTitle:v50 message:v51 preferredStyle:1];

      v53 = v76;
      v54 = [v76 mainBundle];
      v86._object = 0x800000021657DF90;
      v55._countAndFlagsBits = 0x6C65636E6143;
      v55._object = 0xE600000000000000;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0xD000000000000013;
      v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v86);

      v58 = MEMORY[0x21CE91FC0](v57._countAndFlagsBits, v57._object);

      v82 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
      v83 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v74 = &v80;
      v80 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
      v81 = &block_descriptor_168;
      v59 = _Block_copy(&aBlock);

      v60 = objc_opt_self();
      countAndFlagsBits = [v60 actionWithTitle:v58 style:1 handler:v59];
      _Block_release(v59);

      v61 = [v53 bundleForClass_];
      v87._object = 0x800000021657E0A0;
      v87._countAndFlagsBits = 0xD000000000000014;
      v62._countAndFlagsBits = 19279;
      v62._object = 0xE200000000000000;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v87);

      v65 = swift_allocObject();
      *(v65 + 16) = v1;
      v66 = v1;
      v67 = MEMORY[0x21CE91FC0](v64._countAndFlagsBits, v64._object);

      v82 = partial apply for closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:);
      v83 = v65;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v80 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
      v81 = &block_descriptor_174;
      v68 = _Block_copy(&aBlock);

      v69 = [v60 actionWithTitle:v67 style:0 handler:v68];
      _Block_release(v68);

      [v52 addAction_];
      v70 = countAndFlagsBits;
      [v52 addAction_];
      [v52 setPreferredAction_];
      [v66 presentViewController:v52 animated:1 completion:0];
    }
  }

  if ((*(*v14 + 304))(v26))
  {

    outlined init with copy of DateInterval?(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v4, &_s10Foundation4DateVSgMd);
    v71 = type metadata accessor for Date();
    if ((*(*(v71 - 8) + 48))(v4, 1, v71) == 1)
    {

      return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
    }

    v72 = outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
    (*(*v14 + 208))(v72);
    if (v73)
    {

      type metadata accessor for MosaicSuggestionViewModel();
      if (swift_dynamicCastClass())
      {
        LOBYTE(aBlock) = 0;
        SuggestionCollectionViewController.presentInterstitial(with:entryPoint:)(v14, &aBlock);
      }
    }
  }
}

void type metadata completion function for SuggestionCollectionViewSection()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [SuggestionViewModel]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [SuggestionViewModel]()
{
  if (!lazy cache variable for type metadata for [SuggestionViewModel])
  {
    type metadata accessor for SuggestionViewModel();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SuggestionViewModel]);
    }
  }
}

uint64_t type metadata completion function for SuggestionCollectionViewController()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Client();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UIContentUnavailableConfiguration();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SuggestionCollectionViewController.updateWithViewModel(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x338);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewController.updateMessage()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x388);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

Class partial apply for closure #1 in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(a1, v5, v1 + v4, v6);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in confirmRemove #1 (suggestionViewModel:) in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_2Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #3 in SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)(a1, v4, v5, v6);
}

void partial apply for closure #1 in closure #2 in SuggestionCollectionViewController.configureDataSource()()
{
  type metadata accessor for IndexPath();

  closure #1 in closure #2 in SuggestionCollectionViewController.configureDataSource()();
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(a1, v4, v5, v6);
}

uint64_t outlined consume of Set<UIScene>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void static DataAccessManager.registerApplicationsForDataAccess(applicationBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v34 = MEMORY[0x277D84F98];
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static CommonLogger.presentation);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21607C000, v5, v6, "[DataAccessManager] Registering application for data access", v7, 2u);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v8 = specialized static MOAngelDefaultsManager.dictionaryValueFor(_:)(0xD00000000000001ALL, 0x800000021657E2D0);
  if (v8)
  {
    v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

    if (v9)
    {
      v34 = v9;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v33[0] = v13;
        *v12 = 136315138;

        v14 = Dictionary.description.getter();
        v16 = v15;

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v33);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_21607C000, v10, v11, "[DataAccessManager] authorizedAppsArray: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x21CE94770](v13, -1, -1);
        MEMORY[0x21CE94770](v12, -1, -1);
      }
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v34;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, Current);
  v34 = v32;
  swift_endAccess();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v22 = 136315138;

    v24 = Dictionary.description.getter();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v33);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_21607C000, v20, v21, "[DataAccessManager] updated authorized app list: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CE94770](v23, -1, -1);
    MEMORY[0x21CE94770](v22, -1, -1);
  }

  v28 = one-time initialization token for defaults;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x800000021657E2D0);
    [v29 setValue:isa forKey:v31];
  }

  else
  {
  }
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        outlined init with copy of AnyHashable(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        outlined init with copy of Any(v25 + 8, v20);
        outlined destroy of UTType?(v24, &_ss11AnyHashableV3key_yp5valuetMd);
        v21 = v18;
        outlined init with take of Any(v20, v22);
        v13 = v21;
        outlined init with take of Any(v22, v23);
        outlined init with take of Any(v23, &v21);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = outlined init with take of Any(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = outlined init with take of Any(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      outlined destroy of UTType?(v24, &_ss11AnyHashableV3key_yp5valuetMd);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        *(&v28 + 1) = *(*(a1 + 56) + 8 * v12);
        v25[0] = v27[0];
        v25[1] = v27[1];
        v26 = v28;
        outlined init with copy of AnyHashable(v25, &v23);
        swift_unknownObjectRetain();
        if (!swift_dynamicCast())
        {
          outlined destroy of UTType?(v25, &_ss11AnyHashableV3key_yXl5valuetMd);

          goto LABEL_23;
        }

        v13 = v21;
        v14 = *(&v26 + 1);
        swift_unknownObjectRetain();
        outlined destroy of UTType?(v25, &_ss11AnyHashableV3key_yXl5valuetMd);
        v21 = v14;
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v15 = v23;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v13;
          v9[1] = v22;
          v10 = result;

          *(v2[7] + 8 * v10) = v15;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v13;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v15;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v23 = 0;
      v24 = 1;
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id RouteLocation.clLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RouteLocation();
  outlined init with copy of Date?(v0 + *(v8 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of Date?(v3);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = v0 + *(v8 + 24);
  if (*(v9 + 16))
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v11 = CLLocationCoordinate2DMake(*v9, *(v9 + 8));
  if (*(v0 + 8))
  {
    v12 = 0.0;
  }

  else
  {
    v12 = *v0;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithCoordinate:isa altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 course:0.0 speed:0.0 timestamp:{0.0, v12}];

  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t type metadata accessor for RouteLocation()
{
  result = type metadata singleton initialization cache for RouteLocation;
  if (!type metadata singleton initialization cache for RouteLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RouteLocation.speed.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RouteLocation.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RouteLocation() + 20);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t RouteLocation.timestamp.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RouteLocation() + 20);

  return outlined assign with take of Date?(a1, v3);
}

__n128 RouteLocation.coordinate.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RouteLocation() + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t RouteLocation.coordinate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for RouteLocation();
  v6 = v1 + *(result + 24);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t RouteLocation.init(latitude:longitude:speed:timestamp:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for RouteLocation();
  v13 = *(v12 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  v15 = a4 + *(v12 + 24);
  *v15 = a5;
  *(v15 + 8) = a6;
  *(v15 + 16) = 0;
  *a4 = a1;
  *(a4 + 8) = a2 & 1;

  return outlined assign with take of Date?(a3, a4 + v13);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RouteLocation.CodingKeys()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0x616E6964726F6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465657073;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RouteLocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RouteLocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RouteLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RouteLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RouteLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI13RouteLocationV10CodingKeys33_B754FD0AF245D5B823D60F42C49B4B97LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for RouteLocation();
    LOBYTE(v14) = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = *(v10 + 16);
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    lazy protocol witness table accessor for type HashableCoordinate and conformance HashableCoordinate();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HashableCoordinate and conformance HashableCoordinate()
{
  result = lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate;
  if (!lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate;
  if (!lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate;
  if (!lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate;
  if (!lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate and conformance HashableCoordinate);
  }

  return result;
}

uint64_t RouteLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v24 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI13RouteLocationV10CodingKeys33_B754FD0AF245D5B823D60F42C49B4B97LLOGMd);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - v5;
  v7 = type metadata accessor for RouteLocation();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v10[8] = 1;
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = &v10[*(v8 + 32)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RouteLocation.CodingKeys and conformance RouteLocation.CodingKeys();
  v29 = v6;
  v14 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    v23 = a1;
  }

  else
  {
    v24 = v13;
    v25 = v11;
    v31 = a1;
    v15 = v27;
    v16 = v28;
    LOBYTE(v32) = 0;
    v17 = v29;
    v18 = v30;
    *v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[8] = v19 & 1;
    LOBYTE(v32) = 1;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of Date?(v16, &v10[v25]);
    v34 = 2;
    lazy protocol witness table accessor for type HashableCoordinate and conformance HashableCoordinate();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v15 + 8))(v17, v18);
    v21 = v33;
    v22 = v24;
    *v24 = v32;
    v22[16] = v21;
    outlined init with copy of RouteLocation(v10, v26);
    v23 = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return outlined destroy of RouteLocation(v10);
}

uint64_t CLLocation.routeLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  [v2 coordinate];
  v8 = v7;
  [v2 coordinate];
  v10 = v9;
  [v2 speed];
  v12 = v11;
  v13 = [v2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 0, 1, v14);
  v16 = type metadata accessor for RouteLocation();
  v17 = *(v16 + 20);
  v15((a1 + v17), 1, 1, v14);
  v18 = a1 + *(v16 + 24);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = 0;
  *a1 = v12;
  *(a1 + 8) = 0;
  return outlined assign with take of Date?(v6, a1 + v17);
}

void type metadata completion function for RouteLocation()
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for HashableCoordinate?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t specialized RouteLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574)
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

uint64_t static MapCollectionViewMediumAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MapCollectionViewMediumAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *MapCollectionViewMediumAssetCell.mapView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI32MapCollectionViewMediumAssetCell_mapView);
  v2 = v1;
  return v1;
}

id MapCollectionViewMediumAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MapCollectionViewMediumAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MapCollectionViewMediumAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32MapCollectionViewMediumAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMapViewModel.empty;
  v4 = 2;
  v3 = objc_allocWithZone(type metadata accessor for MapView());
  *(v0 + v1) = MapView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MapCollectionViewMediumAssetCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[MapCollectionViewMediumAssetCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI32MapCollectionViewMediumAssetCell_mapView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x150))();
  }
}

id MapCollectionViewMediumAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapCollectionViewMediumAssetCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MapCollectionViewMediumAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32MapCollectionViewMediumAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMapViewModel.empty;
  v12 = 2;
  v3 = objc_allocWithZone(type metadata accessor for MapView());
  v4 = MapView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for MapCollectionViewMediumAssetCell()
{
  result = type metadata singleton initialization cache for MapCollectionViewMediumAssetCell;
  if (!type metadata singleton initialization cache for MapCollectionViewMediumAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void key path setter for AssetCachingManager.preparedViewModels : AssetCachingManager(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = v2;
}

id AssetCachingManager.preparedViewModels.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

void AssetCachingManager.preparedViewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

void key path setter for AssetCachingManager.nonPreparedViewModels : AssetCachingManager(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
  v5 = v2;
}

id AssetCachingManager.nonPreparedViewModels.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

void AssetCachingManager.nonPreparedViewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

id *AssetCachingManager.init()()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0[15] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AssetCachingManager();
  v1 = objc_msgSendSuper2(&v5, sel_init);
  swift_beginAccess();
  v2 = v1[14];
  v3 = v1;
  [v2 setCountLimit_];
  [v1[14] setTotalCostLimit_];
  [v1[14] setDelegate_];

  return v3;
}

void AssetCachingManager.startManaging(viewModel:)(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x138);
  v4 = swift_unknownObjectRetain();
  v3(v4, &protocol witness table for AssetCachingManager);
  swift_beginAccess();
  v5 = *(v1 + 120);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v5 setObject:a1 forKey:isa];
}

void AssetCachingManager.moveRenderedViewModel(uuid:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 objectForKey_];

  if (v4)
  {
    swift_beginAccess();
    v5 = *(v0 + 112);
    v6 = UUID._bridgeToObjectiveC()().super.isa;
    [v5 setObject:v4 forKey:v6];

    v7 = *(v1 + 120);
    v8 = UUID._bridgeToObjectiveC()().super.isa;
    [v7 removeObjectForKey_];
  }
}

uint64_t AssetCachingManager.moveClearedViewModel(assetViewModel:)(void *a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x1B0);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = AssetCachingManager.moveClearedViewModel(assetViewModel:);

  return v6();
}

uint64_t AssetCachingManager.moveClearedViewModel(assetViewModel:)()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](AssetCachingManager.moveClearedViewModel(assetViewModel:), v1, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + 120);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setObject:v1 forKey:isa];

  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = UUID._bridgeToObjectiveC()().super.isa;
  [v5 removeObjectForKey_];

  v7 = v0[1];

  return v7();
}

uint64_t AssetCachingManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AssetCachingManager.didFinishRendering(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v9;
  (*(v3 + 32))(&v11[v10], &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in AssetCachingManager.didFinishRendering(uuid:), v11);

  return outlined destroy of TaskPriority?(v7);
}

uint64_t closure #1 in AssetCachingManager.didFinishRendering(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  return MEMORY[0x2822009F8](closure #1 in AssetCachingManager.didFinishRendering(uuid:), 0, 0);
}

uint64_t closure #1 in AssetCachingManager.didFinishRendering(uuid:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in AssetCachingManager.didFinishRendering(uuid:), Strong, 0);
  }

  else
  {
    **(v0 + 88) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 120);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 objectForKey_];

  if (v4)
  {
    v5 = *(v0 + 112);
    swift_beginAccess();
    v6 = *(v5 + 112);
    v7 = UUID._bridgeToObjectiveC()().super.isa;
    [v6 setObject:v4 forKey:v7];

    v8 = *(v1 + 120);
    v9 = UUID._bridgeToObjectiveC()().super.isa;
    [v8 removeObjectForKey_];
  }

  return MEMORY[0x2822009F8](closure #1 in AssetCachingManager.didFinishRendering(uuid:), 0, 0);
}

{
  **(v0 + 88) = *(v0 + 112) == 0;
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in AssetCachingManager.didFinishRendering(uuid:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in AssetCachingManager.didFinishRendering(uuid:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t protocol witness for AssetViewModelDelegate.didFinishRendering(uuid:) in conformance AssetCachingManager(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v9;
  (*(v3 + 32))(&v11[v10], &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(0, 0, v7, &closure #1 in AssetCachingManager.didFinishRendering(uuid:)partial apply, v11);

  return outlined destroy of TaskPriority?(v7);
}

uint64_t AssetCachingManager.cache(_:willEvictObject:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of Any(a2, v10);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  outlined init with take of Any(v10, (v8 + 32));
  *(v8 + 64) = v7;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in AssetCachingManager.cache(_:willEvictObject:), v8);

  return outlined destroy of TaskPriority?(v5);
}

uint64_t closure #1 in AssetCachingManager.cache(_:willEvictObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  return MEMORY[0x2822009F8](closure #1 in AssetCachingManager.cache(_:willEvictObject:), 0, 0);
}

uint64_t closure #1 in AssetCachingManager.cache(_:willEvictObject:)()
{
  outlined init with copy of Any(v0[16], (v0 + 2));
  type metadata accessor for AssetViewModel();
  if (swift_dynamicCast())
  {
    v1 = v0[15];
    v0[18] = v1;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x1B0);
      v7 = (v3 + *v3);
      v4 = swift_task_alloc();
      v0[20] = v4;
      *v4 = v0;
      v4[1] = closure #1 in AssetCachingManager.cache(_:willEvictObject:);

      return v7();
    }
  }

  v6 = v0[1];

  return v6();
}

{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](closure #1 in AssetCachingManager.cache(_:willEvictObject:), v1, 0);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 120);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setObject:v2 forKey:isa];

  swift_beginAccess();
  v5 = *(v1 + 112);
  v6 = UUID._bridgeToObjectiveC()().super.isa;
  [v5 removeObjectForKey_];

  return MEMORY[0x2822009F8](closure #1 in AssetCachingManager.cache(_:willEvictObject:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in AssetCachingManager.cache(_:willEvictObject:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in AssetCachingManager.cache(_:willEvictObject:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t dispatch thunk of AssetCachingManager.moveClearedViewModel(assetViewModel:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t closure #1 in AssetCachingManager.didFinishRendering(uuid:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in AssetCachingManager.didFinishRendering(uuid:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t DBAssetData.init(id:size:sha256:assetClass:inlineData:filePath:blobFolderPath:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v37 = a8;
  v34 = a6;
  v35 = a7;
  v40 = a3;
  v41 = a4;
  v29 = a2;
  v42 = a1;
  v39 = a11;
  v38 = a10;
  v36 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  v31 = *a5;
  v17 = type metadata accessor for DBAssetData();
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
  v18 = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v59 = v17;
  v60 = v17;
  v61 = v18;
  v62 = v18;
  *(v12 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v12 + 48));
  static PersistentModel.createBackingData<A>()();
  *(v12 + 16) = 16843009;
  *(v12 + 20) = 257;
  *(v12 + 22) = 1;
  *(v12 + 32) = 0;
  *(v12 + 24) = 0;
  v33 = (v12 + 24);
  __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
  swift_getKeyPath();
  v59 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v12 + 40) = 0;
  ObservationRegistrar.init()();
  v19 = type metadata accessor for UUID();
  v30 = v19;
  v20 = *(v19 - 8);
  v32 = v20;
  (*(v20 + 16))(v16, v42, v19);
  (*(v20 + 56))(v16, 0, 1, v19);
  v59 = v12;
  swift_getKeyPath();
  v57 = v12;
  v58 = v16;
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
  v59 = v12;
  swift_getKeyPath();
  v54 = v12;
  v55 = v29;
  v56 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v59 = v12;
  swift_getKeyPath();
  v22 = v40;
  v21 = v41;
  v51 = v12;
  v52 = v40;
  v53 = v41;
  outlined copy of Data._Representation(v40, v41);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(v22, v21);

  v59 = v12;
  swift_getKeyPath();
  v49 = v12;
  v50 = v31;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v59 = v12;
  swift_getKeyPath();
  v24 = v34;
  v23 = v35;
  v46 = v12;
  v47 = v34;
  v48 = v35;
  outlined copy of Data?(v34, v35);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(v24, v23);

  v59 = v12;
  swift_getKeyPath();
  v43 = v12;
  v44 = v37;
  v45 = v36;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v25 = v33;
  swift_beginAccess();
  v26 = v39;
  *v25 = v38;
  *(v12 + 32) = v26;

  (*(*v12 + 416))(v27);
  outlined consume of Data?(v24, v23);
  outlined consume of Data._Representation(v40, v41);
  (*(v32 + 8))(v42, v30);
  return v12;
}

uint64_t type metadata accessor for DBAssetData()
{
  result = type metadata singleton initialization cache for DBAssetData;
  if (!type metadata singleton initialization cache for DBAssetData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DBAssetData.init(backingData:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DBAssetData();
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
  v6[0] = v4;
  v6[1] = v4;
  v7 = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v8 = v7;
  *(v2 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 48));
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 16843009;
  *(v2 + 20) = 257;
  *(v2 + 22) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v6[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v2 + 40) = 0;
  ObservationRegistrar.init()();
  *(v2 + 40) = 0;
  *(v2 + 16) = 0;
  *(v2 + 19) = 0;
  outlined init with copy of DBObject(a1, v6);
  (*(*v2 + 656))(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBAssetData.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DBAssetData.id.getter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?(&lazy protocol witness table cache variable for type UUID? and conformance <A> A?, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t DBAssetData.id.setter(uint64_t a1)
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of UTType?(a1, &_s10Foundation4UUIDVSgMd);
}

void (*DBAssetData.id.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?(&lazy protocol witness table cache variable for type UUID? and conformance <A> A?, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  PersistentModel.getValue<A>(forKey:)();

  return DBAssetData.id.modify;
}

void DBAssetData.id.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of DateInterval?(*(*a1 + 40), v3, &_s10Foundation4UUIDVSgMd);
    v2[1] = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    v2[2] = v5;
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  outlined destroy of UTType?(v4, &_s10Foundation4UUIDVSgMd);
  free(v4);
  free(v3);
  free(v2);
}

uint64_t DBAssetData.sha256.getter()
{
  return DBAssetData.sha256.getter();
}

{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBAssetData.sha256.setter(uint64_t a1, unint64_t a2)
{
  return DBAssetData.sha256.setter(a1, a2);
}

{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(a1, a2);
}

void (*DBAssetData.sha256.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBAssetData.sha256.modify;
}

void DBAssetData.sha256.modify(uint64_t **a1, char a2)
{
  DBAssetData.sha256.modify(a1, a2);
}

{
  v3 = *a1;
  v3[2] = (*a1)[4];
  v5 = *v3;
  v4 = v3[1];
  swift_getKeyPath();
  if (a2)
  {
    outlined copy of Data?(v5, v4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data?(v5, v4);

    outlined consume of Data?(*v3, v3[1]);
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data?(v5, v4);
  }

  free(v3);
}

uint64_t DBAssetData.size.getter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Int64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBAssetData.size.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBAssetData.size.modify(void *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Int64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBAssetData.size.modify;
}

void DBAssetData.size.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t DBAssetData._assetClass.getter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type DBAssetData.AssetClass? and conformance <A> A?(&lazy protocol witness table cache variable for type DBAssetData.AssetClass? and conformance <A> A?, lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t DBAssetData._assetClass.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBAssetData._assetClass.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type DBAssetData.AssetClass? and conformance <A> A?(&lazy protocol witness table cache variable for type DBAssetData.AssetClass? and conformance <A> A?, lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  PersistentModel.getValue<A>(forKey:)();

  return DBAssetData._assetClass.modify;
}

void DBAssetData._assetClass.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void *DBAssetData.assetClass.getter@<X0>(char *a1@<X8>)
{
  result = (*(*v1 + 336))(&v9);
  if (v9 == 2)
  {
    result = (*(*v1 + 504))(result);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = result;
    v6 = v4;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
LABEL_8:
      v8 = 0;
    }
  }

  else
  {
    v8 = v9 & 1;
  }

  *a1 = v8;
  return result;
}

uint64_t DBAssetData.assetLoaded.getter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t DBAssetData.assetLoaded.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBAssetData.assetLoaded.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return DBAssetData.assetLoaded.modify;
}

void DBAssetData.assetLoaded.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

Swift::Void __swiftcall DBAssetData.refreshAssetLoaded()()
{
  v1 = (*(*v0 + 456))();
  if (v2 >> 60 == 15)
  {
    v3 = (*(*v0 + 504))(v1);
    v9 = 0;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = [objc_opt_self() defaultManager];
      v8 = MEMORY[0x21CE91FC0](v5, v6);

      LOBYTE(v6) = [v7 fileExistsAtPath_];

      if (v6)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    outlined consume of Data?(v1, v2);
    v9 = 1;
  }

  v10 = *(*v0 + 400);

  v10(v9);
}

uint64_t DBAssetData.data.getter()
{
  v1 = type metadata accessor for UUID();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for Logger();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v37 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v37 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  result = (*(*v0 + 456))(v18);
  if (v22 >> 60 == 15)
  {
    v39 = v10;
    v40 = v9;
    v38 = v11;
    v23 = (*(*v0 + 504))(result);
    if (v24)
    {
      URL.init(fileURLWithPath:)();
      v25 = Data.init(contentsOf:options:)();
      (*(v38 + 8))(v20, v39);

      return v25;
    }

    (*(*v0 + 528))(v23);
    if (v26)
    {
      (*(*v0 + 192))();
      v28 = v45;
      v27 = v46;
      if (!(*(v45 + 48))(v5, 1, v46))
      {
        v29 = v42;
        (*(v28 + 16))(v42, v5, v27);
        outlined destroy of UTType?(v5, &_s10Foundation4UUIDVSgMd);
        UUID.uuidString.getter();
        (*(v28 + 8))(v29, v27);
        v30 = v44;
        URL.init(fileURLWithPath:)();

        v31 = v43;
        URL.appendingPathComponent(_:)();

        v32 = Data.init(contentsOf:options:)();
        v33 = *(v38 + 8);
        v34 = v32;
        v35 = v31;
        v36 = v39;
        v33(v35, v39);
        v33(v30, v36);
        return v34;
      }

      outlined destroy of UTType?(v5, &_s10Foundation4UUIDVSgMd);
    }

    return 0;
  }

  return result;
}

void (*DBAssetData.inlineData.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBAssetData.inlineData.modify;
}

uint64_t DBAssetData.filePath.getter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBAssetData.filePath.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBAssetData.filePath.modify(void *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBAssetData.filePath.modify;
}

void DBAssetData.filePath.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t DBAssetData.blobFolderPath.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DBAssetData.blobFolderPath.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t DBAssetData._assets.getter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSuggestion();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  return v0;
}

uint64_t DBAssetData._assets.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBAssetData._assets.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSuggestion();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  *v4 = *v6;
  return DBAssetData._assets.modify;
}

void DBAssetData._assets.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

Swift::Void __swiftcall DBAssetData.setBlobFolderPath(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v308[3] = *MEMORY[0x277D85DE8];
  v288 = type metadata accessor for CocoaError.Code();
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v286 = &v271 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = type metadata accessor for Logger();
  v298 = *(v300 - 8);
  v5 = MEMORY[0x28223BE20](v300);
  v299 = (&v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v289 = (&v271 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v285 = (&v271 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v282 = (&v271 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v294 = (&v271 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v297 = &v271 - v16;
  MEMORY[0x28223BE20](v15);
  v295 = (&v271 - v17);
  v305 = type metadata accessor for URL();
  v303 = *(v305 - 8);
  v18 = MEMORY[0x28223BE20](v305);
  v284 = &v271 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v281 = &v271 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v291 = &v271 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v290 = &v271 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v293 = &v271 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v292 = (&v271 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v271 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v301 = &v271 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v302 = &v271 - v36;
  MEMORY[0x28223BE20](v35);
  v304 = &v271 - v37;
  v296 = 0;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v271 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v271 - v43;
  v45 = *(*v1 + 536);

  v46 = v45(countAndFlagsBits, object);
  v47 = v1;
  v48 = (*v1 + 288);
  v283 = *v48;
  v49 = (v283)(v46);
  if ((v50 & 1) != 0 || v49 > 0)
  {
    if (!object)
    {
      return;
    }

    (*(*v1 + 192))(v49);
    if ((*(v39 + 48))(v44, 1, v38))
    {
      outlined destroy of UTType?(v44, &_s10Foundation4UUIDVSgMd);
      return;
    }

    v278 = v48;
    (*(v39 + 16))(v41, v44, v38);
    outlined destroy of UTType?(v44, &_s10Foundation4UUIDVSgMd);
    UUID.uuidString.getter();
    (*(v39 + 8))(v41, v38);
    v56 = v304;
    URL.init(fileURLWithPath:)();
    v57 = v302;
    URL.appendingPathComponent(_:)();

    v59 = *(*v1 + 504);
    v280 = *v1 + 504;
    v279 = v59;
    v60 = v59(v58);
    v62 = v61;
    v63 = URL.path.getter();
    if (v62)
    {
      v65 = v305;
      v66 = v303;
      if (v60 == v63 && v62 == v64)
      {

LABEL_86:
        v239 = *(v66 + 8);
        v239(v56, v65);
        v239(v57, v65);
        return;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v68)
      {
        goto LABEL_86;
      }
    }

    else
    {

      v65 = v305;
      v66 = v303;
    }

    (*(*v47 + 360))(&v306, v67);
    if (v306 == 1)
    {

      v70 = v301;
      v71 = v299;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v70 = v301;
      v71 = v299;
      if ((v72 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v73 = v279(v69);
    if (!v74)
    {
LABEL_61:
      v69 = (*(*v47 + 456))(v73);
      if (v198 >> 60 != 15)
      {
        v222 = v69;
        v223 = v198;
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v224 = v300;
        v225 = __swift_project_value_buffer(v300, static DBAssetData.Log);
        swift_beginAccess();
        v226 = v298;
        v71 = (v298 + 16);
        v227 = *(v298 + 16);
        v212 = v294;
        v301 = v225;
        v299 = v227;
        (v227)(v294, v225, v224);
        outlined copy of Data._Representation(v222, v223);
        v56 = v222;
        v210 = Logger.logObject.getter();
        LODWORD(v295) = static os_log_type_t.info.getter();
        v228 = os_log_type_enabled(v210, v295);
        v277 = v47;
        v297 = v71;
        if (v228)
        {
          v66 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v308[0] = v57;
          *v66 = 136446722;
          *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, v308);
          *(v66 + 12) = 2048;
          v229 = v223 >> 62;
          if ((v223 >> 62) > 1)
          {
            v230 = v305;
            if (v229 == 2)
            {
              v237 = v56[2];
              v236 = v56[3];
              v238 = __OFSUB__(v236, v237);
              v231 = v236 - v237;
              if (v238)
              {
                __break(1u);
                goto LABEL_83;
              }
            }

            else
            {
              v231 = 0;
            }
          }

          else
          {
            v230 = v305;
            if (v229)
            {
              LODWORD(v231) = HIDWORD(v56) - v56;
              if (__OFSUB__(HIDWORD(v56), v56))
              {
                __break(1u);
                return;
              }

              v231 = v231;
            }

            else
            {
              v231 = BYTE6(v223);
            }
          }

          *(v66 + 14) = v231;
          outlined consume of Data?(v56, v223);
          *(v66 + 22) = 2080;
          v240 = v302;
          swift_beginAccess();
          _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v241 = dispatch thunk of CustomStringConvertible.description.getter();
          v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v242, v308);

          *(v66 + 24) = v243;
          _os_log_impl(&dword_21607C000, v210, v295, "DBAssetData.%{public}s Copying inline data (%ld bytes) to BLOB folder %s", v66, 0x20u);
          swift_arrayDestroy();
          v244 = v57;
          v57 = v240;
          MEMORY[0x21CE94770](v244, -1, -1);
          MEMORY[0x21CE94770](v66, -1, -1);

          v232 = v300;
          v295 = *(v298 + 8);
          v295(v294, v300);
          v66 = v303;
        }

        else
        {
          outlined consume of Data?(v56, v223);

          v295 = *(v226 + 8);
          v295(v212, v224);
          v232 = v224;
          v230 = v305;
        }

        v245 = v289;
        swift_beginAccess();
        v246 = v290;
        (*(v66 + 16))(v290, v57, v230);
        v247 = v296;
        Data.write(to:options:)();
        v248 = v304;
        if (v247)
        {
          v294 = v223;
          v296 = v56;
          v251 = *(v66 + 8);
          v249 = (v66 + 8);
          v250 = v251;
          (v251)(v246, v230);
          (v299)(v245, v301, v232);
          v252 = v247;
          v253 = Logger.logObject.getter();
          v254 = v232;
          v255 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v253, v255))
          {
            v256 = v230;
            v257 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v301 = v250;
            v259 = v258;
            v260 = swift_slowAlloc();
            v303 = v249;
            v261 = v260;
            v307 = v260;
            *v257 = 136446722;
            *(v257 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, &v307);
            *(v257 + 12) = 2080;
            _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
            v262 = dispatch thunk of CustomStringConvertible.description.getter();
            v264 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v263, &v307);

            *(v257 + 14) = v264;
            *(v257 + 22) = 2112;
            v265 = v247;
            v266 = _swift_stdlib_bridgeErrorToNSError();
            *(v257 + 24) = v266;
            *v259 = v266;
            _os_log_impl(&dword_21607C000, v253, v255, "DBAssetData.%{public}s ERROR: Copying inline data to BLOB folder %s: %@", v257, 0x20u);
            outlined destroy of UTType?(v259, &_sSo8NSObjectCSgMd);
            MEMORY[0x21CE94770](v259, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v261, -1, -1);
            MEMORY[0x21CE94770](v257, -1, -1);

            outlined consume of Data?(v296, v294);
            v295(v245, v300);
            v267 = v301;
            (v301)(v304, v256);
            v267(v302, v256);
          }

          else
          {

            outlined consume of Data?(v296, v294);
            v295(v245, v254);
            (v250)(v304, v230);
            (v250)(v302, v230);
          }
        }

        else
        {
          v268 = *(v66 + 8);
          v268(v246, v230);
          v269 = URL.path.getter();
          v270 = v277;
          (*(*v277 + 512))(v269);
          (*(*v270 + 464))(0, 0xF000000000000000);
          outlined consume of Data?(v56, v223);
          v268(v248, v230);
          v268(v57, v230);
        }

        return;
      }

LABEL_62:
      v199 = (*(*v47 + 456))(v69);
      if (v200 >> 60 == 15)
      {
        v201 = v279(v199);
        if (v202)
        {
          v203 = v202;
          v277 = v47;
          v204 = v291;
          v205 = v201;
          URL.init(fileURLWithPath:)();
          v47 = v296;
          v206 = Data.init(contentsOf:options:)();
          if (v47)
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v208 = v300;
            v209 = __swift_project_value_buffer(v300, static DBAssetData.Log);
            swift_beginAccess();
            v210 = v298;
            (*(v298 + 16))(v71, v209, v208);

            v211 = v47;
            v212 = Logger.logObject.getter();
            v213 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v212, v213))
            {
              v214 = swift_slowAlloc();
              v215 = swift_slowAlloc();
              v216 = swift_slowAlloc();
              v308[0] = v216;
              *v214 = 136446722;
              *(v214 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, v308);
              *(v214 + 12) = 2080;
              v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v203, v308);

              *(v214 + 14) = v217;
              *(v214 + 22) = 2112;
              v218 = v47;
              v219 = _swift_stdlib_bridgeErrorToNSError();
              *(v214 + 24) = v219;
              *v215 = v219;
              _os_log_impl(&dword_21607C000, v212, v213, "DBAssetData.%{public}s ERROR: Loading file into RAM (%s): %@", v214, 0x20u);
              outlined destroy of UTType?(v215, &_sSo8NSObjectCSgMd);
              v220 = v215;
              v56 = v304;
              MEMORY[0x21CE94770](v220, -1, -1);
              swift_arrayDestroy();
              v221 = v216;
              v66 = v303;
              MEMORY[0x21CE94770](v221, -1, -1);
              MEMORY[0x21CE94770](v214, -1, -1);

              (*(v210 + 8))(v299, v300);
LABEL_84:
              v65 = v305;
              v201 = (*(v66 + 8))(v291, v305);
              v47 = v277;
              goto LABEL_85;
            }

LABEL_83:

            (*(v210 + 8))(v71, v300);
            goto LABEL_84;
          }

          v233 = v204;
          v234 = v206;
          v235 = v207;

          v47 = v277;
          (*(*v277 + 464))(v234, v235);
          v201 = (*(v66 + 8))(v233, v65);
        }
      }

      else
      {
        v201 = outlined consume of Data?(v199, v200);
      }

LABEL_85:
      (*(*v47 + 416))(v201);
      goto LABEL_86;
    }

    v296 = v73;
    v75 = v65;
    v76 = v74;
    URL.init(fileURLWithPath:)();
    URL.pathExtension.getter();
    URL.appendingPathExtension(_:)();

    (*(v66 + 40))(v57, v32, v75);
    _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      v77 = v300;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v78 = __swift_project_value_buffer(v77, static DBAssetData.Log);
      swift_beginAccess();
      v79 = v298;
      (*(v298 + 16))(v297, v78, v77);
      v80 = v293;
      (*(v66 + 16))(v293, v70, v75);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v277 = v47;
        v84 = v83;
        v303 = swift_slowAlloc();
        v308[0] = v303;
        *v84 = 136446466;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, v308);
        *(v84 + 12) = 2080;
        _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v299 = v81;
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        LODWORD(v296) = v82;
        v88 = *(v66 + 8);
        (v88)(v80, v75);
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v308);

        *(v84 + 14) = v89;
        v90 = v299;
        _os_log_impl(&dword_21607C000, v299, v296, "DBAssetData.%{public}s %s already in BLOB folder", v84, 0x16u);
        v91 = v303;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v91, -1, -1);
        v92 = v84;
        v47 = v277;
        MEMORY[0x21CE94770](v92, -1, -1);

        (*(v79 + 8))(v297, v300);
      }

      else
      {

        v88 = *(v66 + 8);
        (v88)(v80, v75);
        (*(v79 + 8))(v297, v77);
      }

      v65 = v75;
      v115 = v301;
      goto LABEL_37;
    }

    v293 = v76;
    v93 = v300;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v277 = v47;
    v94 = __swift_project_value_buffer(v93, static DBAssetData.Log);
    swift_beginAccess();
    v95 = v298;
    v96 = *(v298 + 16);
    v97 = v295;
    v276 = v94;
    v273 = v298 + 16;
    v272 = v96;
    v96(v295, v94, v93);
    v98 = *(v66 + 16);
    v99 = v292;
    v65 = v75;
    v275 = v66 + 16;
    v274 = v98;
    v98(v292, v301, v75);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = v99;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v306 = v104;
      *v103 = 136446722;
      *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, &v306);
      *(v103 + 12) = 2080;
      _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v106;
      v297 = *(v66 + 8);
      (v297)(v102, v305);
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v306);

      *(v103 + 14) = v108;
      *(v103 + 22) = 2080;
      v65 = v305;
      swift_beginAccess();
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &v306);

      *(v103 + 24) = v111;
      _os_log_impl(&dword_21607C000, v100, v101, "DBAssetData.%{public}s Copying %s to BLOB folder %s", v103, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v104, -1, -1);
      MEMORY[0x21CE94770](v103, -1, -1);

      v112 = *(v298 + 8);
      v113 = v295;
      v114 = v300;
    }

    else
    {

      v297 = *(v66 + 8);
      (v297)(v99, v65);
      v112 = *(v95 + 8);
      v113 = v97;
      v114 = v93;
    }

    v295 = v112;
    v112(v113, v114);
    v116 = objc_opt_self();
    v117 = [v116 defaultManager];
    v115 = v301;
    URL._bridgeToObjectiveC()(&v309);
    v119 = v118;
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v120);
    v122 = v121;
    v306 = 0;
    v123 = [v117 copyItemAtURL:v119 toURL:v121 error:&v306];

    if (v123)
    {
      v124 = v306;

      v125 = URL.path.getter();
      v47 = v277;
      (*(*v277 + 512))(v125);
      v56 = v304;
      v88 = v297;
LABEL_37:
      (*(*v47 + 464))(0, 0xF000000000000000);
      (v88)(v115, v65);
      (v88)(v56, v65);
      (v88)(v57, v65);
      return;
    }

    v126 = v306;
    v127 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v128 = v127;
    v129 = v286;
    static CocoaError.fileWriteFileExists.getter();
    _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
    v130 = v288;
    LOBYTE(v126) = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v287 + 8))(v129, v130);
    if ((v126 & 1) == 0)
    {
      v296 = 0;

      v154 = v285;
      v155 = v300;
      v272(v285, v276, v300);
      v156 = v284;
      v274(v284, v115, v65);
      v157 = v127;
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        v293 = swift_slowAlloc();
        v306 = v293;
        *v160 = 136446978;
        *(v160 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, &v306);
        *(v160 + 12) = 2080;
        _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        LODWORD(v288) = v159;
        v161 = dispatch thunk of CustomStringConvertible.description.getter();
        v163 = v162;
        v164 = v303;
        v165 = v297;
        (v297)(v156, v65);
        v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v163, &v306);

        *(v160 + 14) = v166;
        *(v160 + 22) = 2080;
        v57 = v302;
        v167 = dispatch thunk of CustomStringConvertible.description.getter();
        v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v168, &v306);

        *(v160 + 24) = v169;
        v66 = v164;
        *(v160 + 32) = 2112;
        v170 = v127;
        v171 = _swift_stdlib_bridgeErrorToNSError();
        *(v160 + 34) = v171;
        v172 = v292;
        *v292 = v171;
        _os_log_impl(&dword_21607C000, v158, v288, "DBAssetData.%{public}s ERROR: Copying %s to BLOB folder %s: %@", v160, 0x2Au);
        outlined destroy of UTType?(v172, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v172, -1, -1);
        v173 = v293;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v173, -1, -1);
        MEMORY[0x21CE94770](v160, -1, -1);

        v295(v285, v300);
        v73 = (v165)(v301, v65);
      }

      else
      {

        v66 = v303;
        v174 = v297;
        (v297)(v156, v65);
        v295(v154, v155);
        v73 = (v174)(v301, v65);
      }

LABEL_60:
      v56 = v304;
      v47 = v277;
      v71 = v299;
      goto LABEL_61;
    }

    v131 = [v116 defaultManager];
    v132 = MEMORY[0x21CE91FC0](v296, v293);

    v306 = 0;
    v133 = [v131 attributesOfItemAtPath:v132 error:&v306];

    v134 = v306;
    if (v133)
    {
      type metadata accessor for NSFileAttributeKey(0);
      _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
      v135 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v134;

      if (v135)
      {
        if (*(v135 + 16) && (v137 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCA1C0]), (v138 & 1) != 0))
        {
          outlined init with copy of Any(*(v135 + 56) + 32 * v137, &v306);

          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
          if (swift_dynamicCast())
          {
            v139 = v308[0];
            v140 = [v308[0] longLongValue];
            v141 = v283();
            if ((v142 & 1) == 0 && v140 == v141)
            {
              v143 = v282;
              v272(v282, v276, v300);
              v144 = v281;
              v274(v281, v115, v65);
              v145 = Logger.logObject.getter();
              LODWORD(v299) = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v145, v299))
              {
                v146 = swift_slowAlloc();
                v296 = swift_slowAlloc();
                v306 = v296;
                *v146 = 136446466;
                *(v146 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000021657E440, &v306);
                *(v146 + 12) = 2080;
                _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
                v147 = dispatch thunk of CustomStringConvertible.description.getter();
                v148 = v144;
                v150 = v149;
                v151 = v297;
                (v297)(v148, v65);
                v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v150, &v306);

                *(v146 + 14) = v152;
                _os_log_impl(&dword_21607C000, v145, v299, "DBAssetData.%{public}s %s already in BLOB folder", v146, 0x16u);
                v153 = v296;
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v153, -1, -1);
                MEMORY[0x21CE94770](v146, -1, -1);
              }

              else
              {

                v151 = v297;
                (v297)(v144, v65);
              }

              v295(v143, v300);
              (*(*v277 + 464))(0, 0xF000000000000000);

              (v151)(v301, v65);
              (v151)(v304, v65);
              (v151)(v302, v65);
              return;
            }

            goto LABEL_54;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v175 = v306;
      v176 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v139 = 0;
LABEL_54:
    v177 = [v116 defaultManager];
    URL._bridgeToObjectiveC()(v178);
    v180 = v179;
    v306 = 0;
    v181 = [v177 removeItemAtURL:v179 error:&v306];

    v57 = v302;
    if (v181)
    {
      v182 = v306;
    }

    else
    {
      v183 = v306;
      v184 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v185 = [v116 defaultManager];
    v186 = v301;
    URL._bridgeToObjectiveC()(&v309);
    v188 = v187;
    URL._bridgeToObjectiveC()(v189);
    v191 = v190;
    v306 = 0;
    v192 = [v185 &selRef_stopAnimating];

    if (v192)
    {
      v193 = *(*v277 + 464);
      v194 = v306;
      v193(0, 0xF000000000000000);

      v195 = v297;
      (v297)(v186, v65);
      (v195)(v304, v65);
      (v195)(v57, v65);
      return;
    }

    v196 = v306;
    v197 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v66 = v303;
    v73 = (v297)(v186, v65);
    v296 = 0;
    goto LABEL_60;
  }

  v51 = (*(*v1 + 456))();
  if (v52 >> 60 == 15)
  {
    v53 = (*(*v1 + 464))(0, 0xC000000000000000);
  }

  else
  {
    v53 = outlined consume of Data?(v51, v52);
  }

  (*(*v1 + 504))(v53);
  if (v54)
  {

    v55 = *(*v1 + 512);

    v55(0, 0);
  }
}

uint64_t DBAssetData.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);
  outlined init with take of MusicPlaybackCoordinatorDelegate(a1, v1 + 48);
  return swift_endAccess();
}

void (*DBAssetData.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of DBObject(v1 + 48, v4);
  return DBAssetData.persistentBackingData.modify;
}

void DBAssetData.persistentBackingData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of DBObject(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v3 + 48);
    outlined init with take of MusicPlaybackCoordinatorDelegate((v2 + 40), v3 + 48);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v3 + 48);
    outlined init with take of MusicPlaybackCoordinatorDelegate(v2, v3 + 48);
    swift_endAccess();
  }

  free(v2);
}

uint64_t static DBAssetData.schemaMetadata.getter()
{
  v22 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v22 - 8);
  v1 = v0;
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216598D80;
  v20 = v4;
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v6 = type metadata accessor for Schema.Attribute();
  swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  v8 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v24 + 1) = v6;
  v25 = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, MEMORY[0x277CDD5E8]);
  *&v23 = v8;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
  *&v26 = v7;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays14PartialKeyPathCy9MomentsUI11DBAssetDataCGGGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21658CA50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21658E210;
  *(v10 + 32) = swift_getKeyPath();
  *(v9 + 32) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData6SchemaC5IndexCy_9MomentsUI07DBAssetB0CGMd);
  swift_allocObject();
  v12 = Schema.Index.init(_:)();
  *(&v24 + 1) = v11;
  v13 = v21;
  v25 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Schema.Index<DBAssetData> and conformance Schema.Index<A>, &_s9SwiftData6SchemaC5IndexCy_9MomentsUI07DBAssetB0CGMd);
  *&v23 = v12;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v7);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = v14;
  (*(v1 + 32))(&v14[v20 + v16 * v3], v13, v22);
  *&v23 = v5;
  specialized Array.append<A>(contentsOf:)(v17, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CDD5C8]);
  return v23;
}

Swift::Int DBAssetData.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 616))(v2);
  return Hasher._finalize()();
}

MomentsUI::DBAssetData::AssetClass_optional __swiftcall DBAssetData.AssetClass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAssetData.AssetClass.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t DBAssetData.AssetClass.rawValue.getter()
{
  if (*v0)
  {
    return 99;
  }

  else
  {
    return 98;
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CBBC78]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CDD5C8]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for RouteLocation);
}

{
  v2 = v1;
  if (*v1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v5 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = *(v6 + 0x10);
  v8 = (*(v6 + 0x18) >> 1) - v7;
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v17, (v6 + 8 * v7 + 32), v8, a1);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = *(v6 + 16);
      v11 = __OFADD__(v10, v9);
      v12 = v10 + v9;
      if (v11)
      {
        __break(1u);
LABEL_23:
        *(v6 + 16) = a1;
        goto LABEL_8;
      }

      *(v6 + 16) = v12;
    }

    if (v9 != v8)
    {
      goto LABEL_8;
    }
  }

  a1 = *(v6 + 16);
  v14 = specialized FlattenSequence.Iterator.next()();
  if (v14)
  {
    while (1)
    {
      if (a1 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = v14;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v16;
      }

      v5 = *v2;
      v6 = *v2 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(v6 + 0x18) >> 1)
      {
        v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      else
      {
        v15 = a1;
      }

      while (v15 != a1)
      {
        *(v6 + 32 + 8 * a1++) = v14;
        v14 = specialized FlattenSequence.Iterator.next()();
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      *(v6 + 16) = v15;
      a1 = v15;
    }
  }

LABEL_8:

  *v2 = v5;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CBBC58]);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t DBAssetData.__allocating_init(id:size:sha256:ext:assetClass:inlineData:filePath:blobFolderURL:)(uint64_t a1, void *a2, int a3, uint64_t a4, NSString *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, NSURL *a13)
{
  v58 = a7;
  v59 = a6;
  v68 = a4;
  v69 = a5;
  LODWORD(v56) = a3;
  v57 = a2;
  v70 = a13;
  v66 = a10;
  v67 = a1;
  v65 = a9;
  v14 = type metadata accessor for UUID();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL.DirectoryHint();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v55 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v64 = *a8;
  if (a12)
  {
    v54 = a11;
    v28 = type metadata accessor for URL();
    v29 = *(*(v28 - 8) + 56);
    v29(v25, 1, 1, v28);
    (*(v17 + 104))(v19, *MEMORY[0x277CC91D8], v16);
    URL.init(filePath:directoryHint:relativeTo:)();
    v29(v27, 0, 1, v28);
  }

  else
  {
    v28 = type metadata accessor for URL();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  }

  v30 = v27;
  v31 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  v32 = (v31 == 2) | v31;
  v33 = UUID.uuidString.getter();
  v72[0] = v64;
  v34 = v70;
  v51 = v59;
  v59 = v30;
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v33, v35, v68, v69, v57, v56 & 1, v65, v66, v71, v30, v51, v58, v72, v70, v32 & 1, 0);
  v57 = v71[0];
  v56 = v71[1];
  v54 = v71[2];
  v53 = v71[3];
  v36 = v71[4];
  v37 = v71[5];
  v38 = v71[6];

  v39 = v34;
  v40 = v55;
  outlined init with copy of DateInterval?(v39, v55, &_s10Foundation3URLVSgMd);
  type metadata accessor for URL();
  v41 = *(v28 - 8);
  if ((*(v41 + 48))(v40, 1, v28) == 1)
  {
    outlined destroy of UTType?(v40, &_s10Foundation3URLVSgMd);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v44 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v44._countAndFlagsBits;
    object = v44._object;
    (*(v41 + 8))(v40, v28);
  }

  v46 = v62;
  v45 = v63;
  v47 = v60;
  v48 = v67;
  (*(v62 + 16))(v60, v67, v63);
  LOBYTE(v71[0]) = v64;
  v49 = (*(v61 + 600))(v47, v57, v56, v54, v71, v53, v36, v37, v38, countAndFlagsBits, object);
  outlined consume of Data?(v65, v66);
  outlined consume of Data?(v68, v69);
  outlined destroy of UTType?(v70, &_s10Foundation3URLVSgMd);
  (*(v46 + 8))(v48, v45);
  outlined destroy of UTType?(v59, &_s10Foundation3URLVSgMd);
  return v49;
}

uint64_t static DBAssetData.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBAssetData.Class = a1;
  unk_27CA90A08 = a2;
  byte_27CA90A10 = a3;
  return result;
}

uint64_t DBAssetData.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBAssetData.Log);
}

uint64_t static DBAssetData.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAssetData.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBAssetData.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAssetData.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBAssetData.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static DBAssetData.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBAssetData@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAssetData.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t closure #1 in DBAssetData.id.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?(&lazy protocol witness table cache variable for type UUID? and conformance <A> A?, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t closure #1 in DBAssetData.sha256.setter()
{
  return closure #1 in DBAssetData.sha256.setter();
}

{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t closure #1 in DBAssetData.size.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Int64? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBAssetData.AssetClass(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 98;
  }

  if (*a2)
  {
    v3 = 99;
  }

  else
  {
    v3 = 98;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBAssetData.AssetClass()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBAssetData.AssetClass()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAssetData.AssetClass()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBAssetData.AssetClass@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAssetData.AssetClass.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBAssetData.AssetClass(uint64_t *a1@<X8>)
{
  v2 = 98;
  if (*v1)
  {
    v2 = 99;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t closure #1 in DBAssetData._assetClass.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type DBAssetData.AssetClass? and conformance <A> A?(&lazy protocol witness table cache variable for type DBAssetData.AssetClass? and conformance <A> A?, lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path getter for DBAssetData.assetLoaded : DBAssetData@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t closure #1 in DBAssetData.assetLoaded.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t closure #1 in DBAssetData.filePath.setter()
{
  swift_getKeyPath();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t lazy protocol witness table accessor for type Int64? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Int64? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int64? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Int64VSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int64? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Int64VSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DBAssetData.AssetClass? and conformance <A> A?(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MomentsUI11DBAssetDataC10AssetClassOSgMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Bool? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Bool? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Bool? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Bool? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool? and conformance <A> A?);
  }

  return result;
}

uint64_t closure #1 in DBAssetData._assets.setter()
{
  swift_getKeyPath();
  type metadata accessor for DBSuggestion();
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.setValue<A, B>(forKey:to:)();
}

uint64_t DBAssetData.__allocating_init(id:size:sha256:assetClass:inlineData:filePath:blobFolderPath:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v32 = a6;
  v33 = a7;
  v38 = a3;
  v39 = a4;
  v27 = a2;
  v40 = a1;
  v37 = a11;
  v36 = a10;
  v34 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = swift_allocObject();
  v30 = *a5;
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
  v17 = _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v57 = v11;
  v58 = v11;
  v59 = v17;
  v60 = v17;
  *(v16 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v16 + 48));
  static PersistentModel.createBackingData<A>()();
  *(v16 + 16) = 16843009;
  *(v16 + 20) = 257;
  *(v16 + 22) = 1;
  *(v16 + 32) = 0;
  *(v16 + 24) = 0;
  v31 = (v16 + 24);
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  swift_getKeyPath();
  v57 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v16 + 40) = 0;
  ObservationRegistrar.init()();
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v28 = v18;
  v29 = v19;
  (*(v19 + 16))(v15, v40, v18);
  (*(v19 + 56))(v15, 0, 1, v18);
  v57 = v16;
  swift_getKeyPath();
  v55 = v16;
  v56 = v15;
  _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v15, &_s10Foundation4UUIDVSgMd);
  v57 = v16;
  swift_getKeyPath();
  v52 = v16;
  v53 = v27;
  v54 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v57 = v16;
  swift_getKeyPath();
  v21 = v38;
  v20 = v39;
  v49 = v16;
  v50 = v38;
  v51 = v39;
  outlined copy of Data._Representation(v38, v39);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(v21, v20);

  v57 = v16;
  swift_getKeyPath();
  v47 = v16;
  v48 = v30;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v57 = v16;
  swift_getKeyPath();
  v23 = v32;
  v22 = v33;
  v44 = v16;
  v45 = v32;
  v46 = v33;
  outlined copy of Data?(v32, v33);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(v23, v22);

  v57 = v16;
  swift_getKeyPath();
  v41 = v16;
  v42 = v35;
  v43 = v34;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v24 = v31;
  swift_beginAccess();
  v25 = v37;
  *v24 = v36;
  *(v16 + 32) = v25;

  DBAssetData.refreshAssetLoaded()();
  outlined consume of Data?(v23, v22);
  outlined consume of Data._Representation(v38, v39);
  (*(v29 + 8))(v40, v28);
  return v16;
}

uint64_t DBAssetData.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  v12 = (*(*v0 + 240))(v9);
  if (v13 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    v14 = outlined consume of Data?(v15, v16);
  }

  (*(*v0 + 192))(v14);
  outlined init with copy of DateInterval?(v11, v8, &_s10Foundation4UUIDVSgMd);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return outlined destroy of UTType?(v11, &_s10Foundation4UUIDVSgMd);
}

uint64_t DBAssetData.__allocating_init(backingData:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DBAssetData.init(backingData:)(a1);
  return v2;
}

uint64_t DBAssetData.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAssetData()
{
  Hasher.init(_seed:)();
  (*(**v0 + 616))(v2);
  return Hasher._finalize()();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance DBAssetData(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 664))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [PHAssetResource] and conformance [A], &_sSaySo15PHAssetResourceCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15PHAssetResourceCGMd);
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
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for PHAssetResource);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [Asset] and conformance [A], &_sSay9MomentsUI5AssetCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI5AssetCGMd);
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
        type metadata accessor for Asset();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [CLLocation] and conformance [A], &_sSaySo10CLLocationCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CLLocationCGMd);
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
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CLLocation);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [Suggestion] and conformance [A], &_sSay9MomentsUI10SuggestionCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10SuggestionCGMd);
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
        type metadata accessor for Suggestion();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSnapshot] and conformance [A], &_sSay9MomentsUI10DBSnapshotCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGMd);
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
        type metadata accessor for DBSnapshot();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A], &_sSay9MomentsUI12DBSuggestionCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGMd);
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
        type metadata accessor for DBSuggestion();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [SuggestionViewModel] and conformance [A], &_sSay9MomentsUI19SuggestionViewModelCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI19SuggestionViewModelCGMd);
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
        type metadata accessor for SuggestionViewModel();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [AssetViewModel] and conformance [A], &_sSay9MomentsUI14AssetViewModelCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI14AssetViewModelCGMd);
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
        type metadata accessor for AssetViewModel();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [CKRecordID] and conformance [A], &_sSaySo10CKRecordIDCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CKRecordIDCGMd);
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
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [NSManagedObjectID] and conformance [A], &_sSaySo17NSManagedObjectIDCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17NSManagedObjectIDCGMd);
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
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSManagedObjectID);
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

uint64_t specialized static DBAssetData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  type metadata accessor for DBAssetDataComparable();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;

      v22 = specialized static DBAssetDataComparable.== infix(_:_:)(v19, v21);

      return v22 & 1;
    }
  }

  v73 = v9;
  v74 = v5;
  v24 = (*(*a1 + 240))();
  v26 = v25;
  v28 = (*(*a2 + 240))();
  v29 = v27;
  if (v26 >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      v72 = v4;
      v30 = outlined consume of Data?(v24, v26);
      goto LABEL_13;
    }

LABEL_8:
    outlined consume of Data?(v24, v26);
    v31 = v28;
LABEL_9:
    outlined consume of Data?(v31, v29);
    goto LABEL_10;
  }

  if (v27 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v72 = v4;
  outlined copy of Data?(v24, v26);
  outlined copy of Data?(v28, v29);
  v33 = specialized static Data.== infix(_:_:)(v24, v26, v28, v29);
  outlined consume of Data?(v28, v29);
  outlined consume of Data?(v28, v29);
  outlined consume of Data?(v24, v26);
  v30 = outlined consume of Data?(v24, v26);
  if ((v33 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v34 = (*(*a1 + 288))(v30);
  v36 = v35;
  v37 = (*(*a2 + 288))();
  if (v36)
  {
    if ((v38 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v32 = 0;
    if ((v38 & 1) != 0 || v34 != v37)
    {
      return v32 & 1;
    }
  }

  v39 = (*(*a1 + 360))(&v77 + 1, v37);
  v40 = BYTE1(v77);
  (*(*a2 + 360))(&v77, v39);
  if (v40)
  {
    v41 = 99;
  }

  else
  {
    v41 = 98;
  }

  if (v77)
  {
    v42 = 99;
  }

  else
  {
    v42 = 98;
  }

  if (v41 == v42)
  {
    v43 = swift_bridgeObjectRelease_n();
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v43 = swift_bridgeObjectRelease_n();
    if ((v44 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v45 = (*(*a1 + 424))(v43);
  v47 = v46;
  v49 = (*(*a2 + 424))();
  v29 = v48;
  if (v47 >> 60 == 15)
  {
    if (v48 >> 60 != 15)
    {
      goto LABEL_36;
    }

    v50 = outlined consume of Data?(v45, v47);
  }

  else
  {
    if (v48 >> 60 == 15)
    {
      goto LABEL_36;
    }

    outlined copy of Data?(v45, v47);
    outlined copy of Data?(v49, v29);
    v51 = specialized static Data.== infix(_:_:)(v45, v47, v49, v29);
    outlined consume of Data?(v49, v29);
    outlined consume of Data?(v49, v29);
    outlined consume of Data?(v45, v47);
    v50 = outlined consume of Data?(v45, v47);
    if ((v51 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v45 = (*(*a1 + 456))(v50);
  v47 = v52;
  v49 = (*(*a2 + 456))();
  v29 = v53;
  if (v47 >> 60 != 15)
  {
    if (v53 >> 60 != 15)
    {
      outlined copy of Data?(v45, v47);
      outlined copy of Data?(v49, v29);
      v56 = specialized static Data.== infix(_:_:)(v45, v47, v49, v29);
      outlined consume of Data?(v49, v29);
      outlined consume of Data?(v49, v29);
      outlined consume of Data?(v45, v47);
      v54 = outlined consume of Data?(v45, v47);
      v55 = v74;
      if ((v56 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (v53 >> 60 != 15)
  {
LABEL_36:
    outlined consume of Data?(v45, v47);
    v31 = v49;
    goto LABEL_9;
  }

  v54 = outlined consume of Data?(v45, v47);
  v55 = v74;
LABEL_38:
  v57 = (*(*a1 + 504))(v54);
  v59 = v58;
  v60 = (*(*a2 + 504))();
  v32 = v61;
  if (v59)
  {
    if (!v61)
    {

      return v32 & 1;
    }

    if (v57 == v60 && v59 == v61)
    {

LABEL_47:
      v63 = (*(*a1 + 192))(v60);
      (*(*a2 + 192))(v63);
      v64 = *(v7 + 48);
      v65 = v73;
      outlined init with copy of DateInterval?(v17, v73, &_s10Foundation4UUIDVSgMd);
      outlined init with copy of DateInterval?(v15, v65 + v64, &_s10Foundation4UUIDVSgMd);
      v66 = *(v55 + 48);
      v67 = v72;
      if (v66(v65, 1, v72) == 1)
      {
        outlined destroy of UTType?(v15, &_s10Foundation4UUIDVSgMd);
        outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd);
        if (v66(v65 + v64, 1, v67) == 1)
        {
          outlined destroy of UTType?(v65, &_s10Foundation4UUIDVSgMd);
          v32 = 1;
          return v32 & 1;
        }
      }

      else
      {
        v68 = v76;
        outlined init with copy of DateInterval?(v65, v76, &_s10Foundation4UUIDVSgMd);
        if (v66(v65 + v64, 1, v67) != 1)
        {
          v70 = v74;
          v69 = v75;
          (*(v74 + 32))(v75, v65 + v64, v67);
          _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          v71 = *(v70 + 8);
          v71(v69, v67);
          outlined destroy of UTType?(v15, &_s10Foundation4UUIDVSgMd);
          outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd);
          v71(v68, v67);
          outlined destroy of UTType?(v65, &_s10Foundation4UUIDVSgMd);
          return v32 & 1;
        }

        outlined destroy of UTType?(v15, &_s10Foundation4UUIDVSgMd);
        outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd);
        (*(v74 + 8))(v68, v67);
      }

      outlined destroy of UTType?(v65, &_s10Foundation4UUIDVSg_ADtMd);
      goto LABEL_10;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v62)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (!v61)
    {
      goto LABEL_47;
    }
  }

LABEL_10:
  v32 = 0;
  return v32 & 1;
}