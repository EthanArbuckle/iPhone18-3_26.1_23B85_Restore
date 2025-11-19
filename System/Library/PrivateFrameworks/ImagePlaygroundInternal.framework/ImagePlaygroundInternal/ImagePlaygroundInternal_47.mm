id sub_1D279BEA4(uint64_t a1, SEL *a2)
{
  result = [v2 delegate];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D279BF38()
{
  result = [v0 delegate];
  if (result)
  {
    [result magicPaperViewControllerViewDidAppear_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D279BFC8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [v4 delegate];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 *a4];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D279C058()
{
  result = qword_1ED89FEC8;
  if (!qword_1ED89FEC8)
  {
    type metadata accessor for FloatingBubblesViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89FEC8);
  }

  return result;
}

uint64_t sub_1D279C0D0(uint64_t a1)
{
  v9[3] = type metadata accessor for Analytics.ImageGenerationEventPayload();
  v9[4] = &off_1F4DC4108;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1D279D6D0(a1, boxed_opaque_existential_1, type metadata accessor for Analytics.ImageGenerationEventPayload);
  v3 = sub_1D2878068();
  sub_1D22D7044(v9, v8);
  v4 = swift_allocObject();
  sub_1D227268C(v8, v4 + 16);
  v7[4] = sub_1D234778C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D2346E8C;
  v7[3] = &block_descriptor_45;
  v5 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v5);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_1D279C210(int a1)
{
  v10 = &type metadata for Analytics.CarouselPayload;
  v11 = &off_1F4DC4310;
  v7 = a1 & 0x1FF;
  v8 = BYTE2(a1) & 1;
  v9 = HIBYTE(a1);
  v1 = sub_1D2878068();
  sub_1D22D7044(&v7, v6);
  v2 = swift_allocObject();
  sub_1D227268C(v6, v2 + 16);
  v5[4] = sub_1D279D95C;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D2346E8C;
  v5[3] = &block_descriptor_39;
  v3 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v3);

  return __swift_destroy_boxed_opaque_existential_0(&v7);
}

uint64_t sub_1D279C340(uint64_t a1)
{
  v7[3] = &type metadata for Analytics.LibrarySizePayload;
  v7[4] = &off_1F4DC42F8;
  v7[0] = a1;
  v1 = sub_1D2878068();
  sub_1D22D7044(v7, v6);
  v2 = swift_allocObject();
  sub_1D227268C(v6, v2 + 16);
  v5[4] = sub_1D279D95C;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D2346E8C;
  v5[3] = &block_descriptor_57;
  v3 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v3);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1D279C458(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v15[3] = &type metadata for Analytics.ImageInteractionPayload;
  v15[4] = &off_1F4DC4328;
  v8 = swift_allocObject();
  v15[0] = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = sub_1D2878068();
  sub_1D22D7044(v15, v14);
  v10 = swift_allocObject();
  sub_1D227268C(v14, v10 + 16);
  v13[4] = sub_1D279D95C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D2346E8C;
  v13[3] = &block_descriptor_20_0;
  v11 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v11);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_1D279C5A8(_OWORD *a1)
{
  v10[3] = &_s22MagicPaperEventPayloadVN;
  v10[4] = &off_1F4DC3CF0;
  v2 = swift_allocObject();
  v10[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  *(v2 + 57) = *(a1 + 41);
  v4 = sub_1D2878068();
  sub_1D22D7044(v10, v9);
  v5 = swift_allocObject();
  sub_1D227268C(v9, v5 + 16);
  v8[4] = sub_1D279D95C;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D2346E8C;
  v8[3] = &block_descriptor_49_0;
  v6 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v6);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_1D279C6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v46 = a3;
  v47 = sub_1D2872008();
  v11 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v49 = _s7ManagerCMa();
  v50 = &off_1F4DC2000;
  v48[0] = a2;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 1;
  *(a6 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
  v18 = sub_1D2871318();
  (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_lastRepresentationsDidContainAPerson) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__representations) = MEMORY[0x1E69E7CC0];
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isMagicEditDebugViewVisible) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures) = v19;
  v20 = a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = -1;
  v21 = a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -4;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewFullHeightForKeyboardScrolling) = 0;
  v22 = (a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTopButtonsFrame);
  v23 = *MEMORY[0x1E695F050];
  v24 = *(MEMORY[0x1E695F050] + 8);
  v25 = *(MEMORY[0x1E695F050] + 16);
  v26 = *(MEMORY[0x1E695F050] + 24);
  *v22 = *MEMORY[0x1E695F050];
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  v27 = (a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame);
  *v27 = v23;
  v27[1] = v24;
  v27[2] = v25;
  v27[3] = v26;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_isShareLinkVisible) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__shouldShowPersonalizationSheet) = 0;
  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson;
  v29 = type metadata accessor for ImageGenerationPerson();
  (*(*(v29 - 8) + 56))(a6 + v28, 1, 1, v29);
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___errorViewModel) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___floatingbubblesViewModel) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel) = 0;
  v30 = (a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState);
  *v30 = 0;
  v30[1] = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___descriptionFieldWithSuggestionsViewModel) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___stylePickerViewModel) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__loadRecipeTask) = 0;
  v31 = a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___creationContextFactory) = 0;
  v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore;
  type metadata accessor for GeneratedPreviewsStore();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  sub_1D2871A18();
  *(a6 + v32) = v33;
  v34 = v46;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) = 0;
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground) = sub_1D25DAC18(v19);
  sub_1D2871A18();
  *(a6 + 80) = a1;
  sub_1D22D7044(v48, a6 + 88);
  *(a6 + 128) = v34;
  v35 = a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state;
  v36 = *(a4 + 16);
  *v35 = *a4;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a4 + 32);
  *(a6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle) = a5;
  if (a5 - 1 >= 4)
  {
    if (a5 - 5 >= 2)
    {
      sub_1D2870F78();
      if (a5)
      {
        v37 = sub_1D2870F78();
        MEMORY[0x1D389AA70](v37);
      }

      else
      {
        sub_1D2870F78();
        sub_1D2871FD8();
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2871FC8();
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D24DE0C4();
  }

  v38 = v47;
  (*(v11 + 16))(v13, v16, v47);
  type metadata accessor for CreationContext();
  swift_allocObject();
  v39 = CreationContext.init(defaultStyle:)(v13);

  (*(v11 + 8))(v16, v38);
  *(a6 + 72) = v39;
  v40 = __swift_project_boxed_opaque_existential_1(v48, v49);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *v40;
  v43 = *(*v40 + 32);
  *(v42 + 32) = &unk_1D28A58A8;
  *(v42 + 40) = v41;
  sub_1D2870F78();
  sub_1D22A576C(v43);

  __swift_destroy_boxed_opaque_existential_0(v48);
  return a6;
}

char *sub_1D279CC44(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = a1;
  v5 = type metadata accessor for MagicView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-1] - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38[-1] - v12;
  type metadata accessor for ServicesFetcher();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  v15 = _s7ManagerCMa();
  swift_allocObject();
  v16 = swift_retain_n();
  v17 = sub_1D239E2B0(v16, 1);
  type metadata accessor for SessionUndoManager();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v38[3] = v15;
  v38[4] = &off_1F4DC2000;
  v38[0] = v17;
  type metadata accessor for MagicViewModel();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v38, v15);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v38[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v26 = a3;
  v27 = sub_1D279C6F0(v14, v25, v18, a2, 0, v19);
  __swift_destroy_boxed_opaque_existential_0(v38);
  v28 = qword_1EC6E06E0;
  v29 = *algn_1EC6E06E8;
  sub_1D233EDE0(qword_1EC6E06E0);
  sub_1D27FF5A4(v28, v29);
  sub_1D233EE24(v28);
  v30 = qword_1EC6E06E0;
  qword_1EC6E06E0 = 0;
  *algn_1EC6E06E8 = 0;
  sub_1D233EE24(v30);
  swift_beginAccess();
  *(v27 + 64) = &protocol witness table for GPInProcessMagicPaperViewController;
  swift_unknownObjectWeakAssign();
  sub_1D2870F78();
  MagicView.init(magicViewModel:)(v13);
  sub_1D279D6D0(v13, v10, type metadata accessor for MagicView);
  v31 = objc_allocWithZone(type metadata accessor for MagicViewController());
  *&v31[qword_1EC6E06F0] = 0;
  *&v31[qword_1EC6E06F8] = 0;
  *&v31[qword_1EC6E0700] = 0;
  v32 = &v31[qword_1EC6E0708];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  sub_1D279D6D0(v10, v7, type metadata accessor for MagicView);
  v33 = sub_1D28759F8();
  sub_1D279D738(v10, type metadata accessor for MagicView);
  *&v33[qword_1EC6E06F0] = v27;
  sub_1D2870F78();

  result = [v33 view];
  if (result)
  {
    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor_];

    sub_1D279D738(v13, type metadata accessor for MagicView);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo35GPInProcessMagicPaperViewControllerC23ImagePlaygroundInternalE05magicE25ModelWillTransitionToBlobyyAC0ceK0CF_0()
{
  v1 = v0;
  v2 = sub_1D2873C48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v27 = sub_1D2873C28();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v15 = *(v3 + 8);
  v28 = v2;
  v15(v8, v2);
  sub_1D28720E8();
  v16 = sub_1D2873C38();
  v17 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v18 = swift_slowAlloc();
    v26 = v1;
    v19 = v18;
    *v18 = 0;
    v20 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v16, v17, v20, "Generative Tool Preview", "", v19, 2u);
    v21 = v19;
    v1 = v26;
    MEMORY[0x1D38A3520](v21, -1, -1);
  }

  v22 = v27;
  (*(v9 + 16))(v11, v14, v27);
  sub_1D2873C88();
  swift_allocObject();
  v23 = sub_1D2873C78();
  v15(v5, v28);
  (*(v9 + 8))(v14, v22);
  *(v1 + OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState) = v23;
}

id _sSo35GPInProcessMagicPaperViewControllerC23ImagePlaygroundInternalE05magicE14ModelDidCancelyyAC0ceK0CF_0()
{
  v1 = v0;
  v2 = sub_1D2873C58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D2873C28();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1D2873C48();
  v9 = *(v24 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v1 delegate];
  if (result)
  {
    [result magicPaperViewControllerDidCancel_];
    result = swift_unknownObjectRelease();
  }

  v14 = OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState;
  if (*&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState])
  {
    v22 = v3;
    v23 = v6;
    sub_1D2870F78();
    sub_1D28720E8();
    v15 = sub_1D2873C38();
    sub_1D2873C68();
    v21 = sub_1D2878BA8();
    if (sub_1D2878EE8())
    {
      sub_1D2870F78();
      sub_1D2873C98();

      v16 = v22;
      if ((*(v22 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v5, v2);
        v17 = "Cancelled";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v15, v21, v19, "Generative Tool Preview", v17, v18, 2u);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    (*(v25 + 8))(v8, v23);
    (*(v9 + 8))(v12, v24);
    *&v1[v14] = 0;
  }

  return result;
}

unint64_t type metadata accessor for GPInProcessMagicPaperViewController()
{
  result = qword_1EC6E1CD8;
  if (!qword_1EC6E1CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E1CD8);
  }

  return result;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D279D6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D279D738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D279D798(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BC8FC;

  return sub_1D2803928(a1, v1);
}

uint64_t objectdestroyTm_35()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D279D884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D2799594(a1, v4, v5, v6, v8, v7);
}

void sub_1D279D970()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptAmbiguity.Candidate();
    sub_1D28784C8();
    if (v1 <= 0x3F)
    {
      sub_1D2878F18();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D279DA24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) - (((-25 - v8) | v8) + ((-25 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      v18 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v20 = (v18 + v10 + 8) & ~v10;
        if ((v5 & 0x80000000) != 0)
        {
          v22 = (*(v4 + 48))((v8 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
        }

        else
        {
          v21 = *(v20 + 8);
          if (v21 >= 0xFFFFFFFF)
          {
            LODWORD(v21) = -1;
          }

          v22 = v21 + 1;
        }

        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *v18;
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-25 - v8) | v8) + ((-25 - v8) | v10)) != 2)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1D279DC28(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = v11 | 7;
  v13 = ((v11 + 24) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v14 = v13 + ((v11 + 24) & ~(v11 | 7));
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v20 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v22 = v18 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_61:
              if (v17 == 2)
              {
                *&a1[v14] = v19;
              }

              else
              {
                *&a1[v14] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v17)
    {
      a1[v14] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v23 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v25 = ((v23 + v12 + 8) & ~v12);
    if (v9 >= a2)
    {
      if ((v7 & 0x80000000) != 0)
      {
        v29 = *(v6 + 56);
        v30 = a2 + 1;

        v29((v11 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11, v30);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v25 = a2 - 0x7FFFFFFF;
        *(((v23 + v12 + 8) & ~v12) + 8) = 0;
      }

      else
      {
        *(((v23 + v12 + 8) & ~v12) + 8) = a2;
      }
    }

    else
    {
      if (v13 <= 3)
      {
        v26 = ~(-1 << (8 * v13));
      }

      else
      {
        v26 = -1;
      }

      if (v13)
      {
        v27 = v26 & (a2 - v8);
        if (v13 <= 3)
        {
          v28 = v13;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v13);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = a2 - 1;
    }

    *v23 = v24;
  }
}

void sub_1D279DF8C()
{
  sub_1D279E408();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D279E024(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D279E1B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1D279E408()
{
  if (!qword_1ED89CC68)
  {
    sub_1D27434BC();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CC68);
    }
  }
}

uint64_t sub_1D279E460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for PromptAmbiguity() + 32);
  type metadata accessor for PromptAmbiguity.Candidate();
  v8 = sub_1D2878F18();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t type metadata accessor for BetaDisclaimerText()
{
  result = qword_1ED8A2A20;
  if (!qword_1ED8A2A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D279E578()
{
  sub_1D24BFA5C();
  if (v0 <= 0x3F)
  {
    sub_1D24AF338();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D279E618()
{
  result = sub_1D28764B8();
  qword_1ED8B0178 = result;
  return result;
}

uint64_t sub_1D279E638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    v8 = *v1;
    if (v8 == 5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v9 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v7, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v14;
    if (v14 == 5)
    {
      goto LABEL_6;
    }
  }

  if (v8 != 6)
  {
    return sub_1D23437C4(a1);
  }

LABEL_6:
  if (qword_1EC6D88B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1D2871318();
  v11 = __swift_project_value_buffer(v10, qword_1EC6E3B48);
  return (*(*(v10 - 8) + 16))(a1, v11, v10);
}

uint64_t sub_1D279E830@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1D2874E88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871318();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D279E638(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D2876678();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  if (qword_1ED8A2A30 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED8B0178;
  v16 = swift_getKeyPath();
  v17 = v11 & 1;
  LOBYTE(v29[0]) = v17;
  sub_1D2870F78();
  v18 = sub_1D2875DA8();
  *&v24 = v7;
  *(&v24 + 1) = v9;
  LOBYTE(v25) = v17;
  *(&v25 + 1) = v13;
  *&v26 = KeyPath;
  BYTE8(v26) = 1;
  *&v27 = v16;
  *(&v27 + 1) = v15;
  v28 = v18;
  (*(v2 + 104))(v4, *MEMORY[0x1E697E6F8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1CE0);
  sub_1D279EAD8();
  v19 = v23;
  sub_1D28769A8();
  (*(v2 + 8))(v4, v1);
  v29[2] = v26;
  v29[3] = v27;
  v30 = v28;
  v29[0] = v24;
  v29[1] = v25;
  sub_1D279EC48(v29);
  v20 = sub_1D2876328();
  v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1CF0) + 36);
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1CF8);
  *(v19 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_1D279EAD8()
{
  result = qword_1ED89D900;
  if (!qword_1ED89D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1CE0);
    sub_1D279EB90();
    sub_1D22BB9D8(&qword_1ED89D388, &unk_1EC6DE930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D900);
  }

  return result;
}

unint64_t sub_1D279EB90()
{
  result = qword_1ED89DA88;
  if (!qword_1ED89DA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1CE8);
    sub_1D24DA0AC();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA88);
  }

  return result;
}

uint64_t sub_1D279EC48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D279ECB0()
{
  result = qword_1EC6E1D00;
  if (!qword_1EC6E1D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1CF8);
    sub_1D279ED3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1D00);
  }

  return result;
}

unint64_t sub_1D279ED3C()
{
  result = qword_1ED89DC98;
  if (!qword_1ED89DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1CE0);
    sub_1D279EAD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC98);
  }

  return result;
}

void sub_1D279EE6C()
{
  type metadata accessor for IdentifiedEntity.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1D279EF00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D279EF00()
{
  if (!qword_1ED89CE00)
  {
    v0 = sub_1D28788D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CE00);
    }
  }
}

uint64_t sub_1D279EF80()
{
  v0 = sub_1D2871818();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D279EFD8(uint64_t a1)
{
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA150);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v41 - v5;
  v7 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v41 - v11;
  v52 = type metadata accessor for IdentifiedEntity(0);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v41 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v14 + 80);
    v18 = *(v14 + 72);
    v46 = v9;
    v47 = (v17 + 32) & ~v17;
    v19 = a1 + v47;
    v51 = (v3 + 56);
    v20 = (v3 + 48);
    v45 = (v3 + 8);
    v42 = (v3 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v18;
    v21 = v2;
    while (1)
    {
      v24 = v54;
      sub_1D27A058C(v19, v54, type metadata accessor for IdentifiedEntity);
      v25 = *(v52 + 20);
      v26 = v20;
      v27 = v55;
      (*v51)(v55, 2, 2, v21);
      v28 = *(v53 + 48);
      sub_1D27A058C(v24 + v25, v6, type metadata accessor for IdentifiedEntity.Kind);
      v29 = v27;
      v20 = v26;
      sub_1D27A058C(v29, &v6[v28], type metadata accessor for IdentifiedEntity.Kind);
      v30 = *v26;
      v31 = (*v26)(v6, 2, v21);
      if (v31)
      {
        break;
      }

      v22 = v46;
      sub_1D27A058C(v6, v46, type metadata accessor for IdentifiedEntity.Kind);
      if (v30(&v6[v28], 2, v21))
      {
        sub_1D27A065C(v55, type metadata accessor for IdentifiedEntity.Kind);
        (*v45)(v22, v21);
        v23 = v50;
LABEL_5:
        sub_1D27A05F4(v6);
        goto LABEL_6;
      }

      v37 = &v6[v28];
      v38 = v43;
      (*v42)(v43, v37, v21);
      v44 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      v39 = *v45;
      (*v45)(v38, v21);
      sub_1D27A065C(v55, type metadata accessor for IdentifiedEntity.Kind);
      v39(v22, v21);
      v23 = v50;
      if (v44)
      {
        goto LABEL_14;
      }

      sub_1D27A065C(v6, type metadata accessor for IdentifiedEntity.Kind);
LABEL_6:
      sub_1D27A065C(v54, type metadata accessor for IdentifiedEntity);
LABEL_7:
      v19 += v23;
      if (!--v16)
      {
        return v49;
      }
    }

    if (v31 == 1)
    {
      sub_1D27A065C(v55, type metadata accessor for IdentifiedEntity.Kind);
      v32 = v30(&v6[v28], 2, v21) == 1;
    }

    else
    {
      sub_1D27A065C(v55, type metadata accessor for IdentifiedEntity.Kind);
      v32 = v30(&v6[v28], 2, v21) == 2;
    }

    v23 = v50;
    if (v32)
    {
LABEL_14:
      sub_1D27A065C(v6, type metadata accessor for IdentifiedEntity.Kind);
      sub_1D27A06BC(v54, v48);
      v33 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D82C0(0, *(v33 + 16) + 1, 1);
        v33 = v56;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D23D82C0(v35 > 1, v36 + 1, 1);
        v33 = v56;
      }

      *(v33 + 16) = v36 + 1;
      v49 = v33;
      sub_1D27A06BC(v48, v33 + v47 + v36 * v23);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D279F58C(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentifiedEntity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v9 + 72);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v22;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D27A058C(v14, v11, type metadata accessor for IdentifiedEntity);
    sub_1D27A058C(&v11[*(v5 + 20)], v4, type metadata accessor for IdentifiedEntity.Kind);
    v16 = sub_1D2871818();
    v17 = (*(*(v16 - 8) + 48))(v4, 2, v16);
    sub_1D27A065C(v4, type metadata accessor for IdentifiedEntity.Kind);
    if (v17)
    {
      sub_1D27A065C(v11, type metadata accessor for IdentifiedEntity);
    }

    else
    {
      sub_1D27A06BC(v11, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D82C0(0, *(v15 + 16) + 1, 1);
        v15 = v23;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D23D82C0(v19 > 1, v20 + 1, 1);
        v15 = v23;
      }

      *(v15 + 16) = v20 + 1;
      sub_1D27A06BC(v8, v15 + v22 + v20 * v13);
    }

    v14 += v13;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_1D279F838()
{
  v1 = v0;
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28797D8();
  sub_1D27A058C(v1, v8, type metadata accessor for IdentifiedEntity.Kind);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x1D38A2260](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1D38A2260](2);
    sub_1D27A0544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1D2879828();
}

uint64_t sub_1D279FA34()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D27A058C(v0, v7, type metadata accessor for IdentifiedEntity.Kind);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    return MEMORY[0x1D38A2260](v8 != 1);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x1D38A2260](2);
  sub_1D27A0544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D279FC0C()
{
  v1 = v0;
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28797D8();
  sub_1D27A058C(v1, v8, type metadata accessor for IdentifiedEntity.Kind);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x1D38A2260](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1D38A2260](2);
    sub_1D27A0544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1D2879828();
}

uint64_t sub_1D279FE58()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2877F38();
  v8 = type metadata accessor for IdentifiedEntity(0);
  sub_1D27A058C(v0 + *(v8 + 20), v7, type metadata accessor for IdentifiedEntity.Kind);
  v9 = (*(v2 + 48))(v7, 2, v1);
  if (v9)
  {
    return MEMORY[0x1D38A2260](v9 != 1);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x1D38A2260](2);
  sub_1D27A0544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D27A0050()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28797D8();
  sub_1D2877F38();
  v8 = type metadata accessor for IdentifiedEntity(0);
  sub_1D27A058C(v0 + *(v8 + 20), v7, type metadata accessor for IdentifiedEntity.Kind);
  v9 = (*(v2 + 48))(v7, 2, v1);
  if (v9)
  {
    MEMORY[0x1D38A2260](v9 != 1);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x1D38A2260](2);
    sub_1D27A0544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D2879828();
}

uint64_t sub_1D27A0264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D27A058C(v2 + *(a2 + 20), v10, type metadata accessor for IdentifiedEntity.Kind);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    MEMORY[0x1D38A2260](v11 != 1);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x1D38A2260](2);
    sub_1D27A0544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D2879828();
}

uint64_t sub_1D27A0478(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return sub_1D27A0720(a1 + v7, a2 + v7);
}

uint64_t sub_1D27A0544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27A058C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D27A05F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27A065C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D27A06BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiedEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27A0720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA150);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D27A058C(a1, &v21 - v12, type metadata accessor for IdentifiedEntity.Kind);
  sub_1D27A058C(a2, &v13[v15], type metadata accessor for IdentifiedEntity.Kind);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_1D27A058C(v13, v10, type metadata accessor for IdentifiedEntity.Kind);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D27A065C(v13, type metadata accessor for IdentifiedEntity.Kind);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1D27A05F4(v13);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D27A065C(v13, type metadata accessor for IdentifiedEntity.Kind);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D27A0A48(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-v9];
  v11 = sub_1D2870F68();
  sub_1D27A2480(v11, &OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__entities, sub_1D2338008);
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = v8[9];
  v15 = sub_1D2871318();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  *v10 = v13;
  *(v10 + 1) = v12;
  *&v10[v8[10]] = MEMORY[0x1E69E7CC0];
  v16 = &v10[v8[11]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  swift_getKeyPath();
  v24 = v2;
  v25 = v10;
  v26 = v2;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D2870F68();
  sub_1D28719D8();

  sub_1D22BD238(v10, &qword_1EC6E1D50);
  v17 = *(type metadata accessor for Prompt(0) + 36);
  v18 = sub_1D2871798();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6, a1 + v17, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  sub_1D27A25E0(v6);
  swift_getKeyPath();
  v26 = v2;
  sub_1D28719E8();

  v21 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
    sub_1D2870F78();
    v21(1);
    return sub_1D22D7900(v21, v22);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___shouldFocusTextFieldOnAppear) = 1;
  }

  return result;
}

uint64_t sub_1D27A0DA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D9A30);
  v7 = sub_1D27B1834(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D9A30);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &qword_1EC6D9A30);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D9A30);
}

unsigned __int8 *sub_1D27A0FA4(unsigned __int8 *result)
{
  if (*(v1 + 32) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27A110C()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state);
}

uint64_t sub_1D27A11B4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  if ((a1 & 1) != 0 || (swift_getKeyPath(), *&v24[0] = v2, sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel), sub_1D28719E8(), result = , (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) & 1) == 0))
  {
    *v9 = 0;
    *(v9 + 1) = 0xE000000000000000;
    v11 = v7[7];
    v12 = sub_1D2871318();
    (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
    v13 = MEMORY[0x1E69E7CC0];
    *&v9[v7[8]] = MEMORY[0x1E69E7CC0];
    v14 = &v9[v7[9]];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v23[-2] = v2;
    v23[-1] = v9;
    *&v24[0] = v2;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();

    sub_1D22BD238(v9, &qword_1EC6E1D50);
    sub_1D27A2480(v13, &OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__entities, sub_1D2338008);
    v16 = sub_1D2871798();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_1D27A25E0(v6);
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet))
    {
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      v23[-2] = v2;
      LOBYTE(v23[-1]) = 0;
      *&v24[0] = v2;
      sub_1D28719D8();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) = 0;
    }

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed))
    {
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      v23[-2] = v2;
      LOBYTE(v23[-1]) = 0;
      *&v24[0] = v2;
      sub_1D28719D8();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) = 0;
    }

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation))
    {
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      v23[-2] = v2;
      LOBYTE(v23[-1]) = 0;
      *&v24[0] = v2;
      sub_1D28719D8();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 0;
    }

    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v20 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v20);
    v23[-2] = v2;
    v23[-1] = v24;
    v23[1] = v2;
    sub_1D28719D8();

    result = sub_1D22BD238(v24, &unk_1EC6E1D30);
    v21 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8))
    {
      v22 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v22);
      v23[-3] = 0;
      v23[-2] = 0;
      v23[-4] = v2;
      *&v24[0] = v2;
      sub_1D28719D8();
    }

    else
    {
      *v21 = 0;
      v21[1] = 0;
    }
  }

  return result;
}

uint64_t sub_1D27A17E8()
{
  sub_1D2877B48();
  sub_1D27AFFF0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  return sub_1D2879088();
}

uint64_t sub_1D27A18D4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1D2877B38();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D27A194C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1D2877B38();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1D27A19C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1D27A1A0C()
{
  v47 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v42 - v3;
  v46 = sub_1D2871318();
  v44 = *(v46 - 8);
  v4 = MEMORY[0x1EEE9AC00](v46);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - v7;
  v9 = sub_1D2871158();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v14 = v0[1];
  v48 = v0;
  aBlock = v13;
  v51 = v14;
  sub_1D2870F68();
  sub_1D2871128();
  sub_1D22BD06C();
  v15 = sub_1D2878F88();
  v17 = v16;
  (*(v10 + 8))(v12, v9);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    return 0;
  }

  v43 = v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v21 = v49;
  sub_1D22BD1D0(v48 + *(v20 + 28), v49, &unk_1EC6E1D40);
  v22 = v44;
  v23 = v46;
  if ((*(v44 + 48))(v21, 1, v46) == 1)
  {
    sub_1D22BD238(v21, &unk_1EC6E1D40);
    return 1;
  }

  else
  {
    v24 = v8;
    (*(v22 + 32))(v8, v21, v23);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D27AFFF0(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    aBlock = sub_1D28782D8();
    v51 = v26;
    v58[0] = 12369903;
    v58[1] = 0xA300000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;
    v27 = sub_1D2878FA8();
    v29 = v28;

    v30 = sub_1D24B63AC(v25, v27, v29);

    v58[0] = v30;
    sub_1D22BCFD0(0, &qword_1ED89CD40);
    (*(v22 + 16))(v43, v8, v23);
    v31 = v23;
    v32 = sub_1D2878AE8();
    v33 = v22;
    v34 = *MEMORY[0x1E69DB5F0];
    v35 = v24;
    v36 = [v32 length];
    v37 = swift_allocObject();
    *(v37 + 16) = v58;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1D26730DC;
    *(v38 + 24) = v37;
    v54 = sub_1D26730D0;
    v55 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1D267502C;
    v53 = &block_descriptor_69;
    v39 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v32 enumerateAttribute:v34 inRange:0 options:v36 usingBlock:{0, v39}];

    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if (v39)
    {
      __break(1u);
    }

    else
    {
      v40 = v58[0];

      (*(v33 + 8))(v35, v31);
      v41 = *(v40 + 16);

      return v41 == 0;
    }
  }

  return result;
}

uint64_t sub_1D27A2028()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](*v0);
  return sub_1D2879828();
}

uint64_t sub_1D27A206C()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](*v0);
  return sub_1D2879828();
}

BOOL sub_1D27A20AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - v4;
  v6 = type metadata accessor for Prompt(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_1D27B0B50(v5, v9, type metadata accessor for Prompt);
    v12 = *(v1 + 16);
    v17[0] = *(v1 + 8);
    v17[1] = v12;
    v13 = *(v9 + 2);
    v16[1] = *(v9 + 1);
    v16[2] = v13;
    sub_1D22BD06C();
    v14 = sub_1D2878FB8();
    sub_1D27B0AF0(v9, type metadata accessor for Prompt);
    return v14 == 0;
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_1D22BD238(v5, &unk_1EC6E1D20);
    return 0;
  }
}

uint64_t sub_1D27A22BC()
{
  v1 = *(v0 + 8);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D27A2334(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27A2480(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = sub_1D2870F68();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D27A25E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__promptEditingCreationDate;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DAE40);
  v7 = sub_1D27B1B54(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DAE40);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &unk_1EC6DAE40);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6DAE40);
}

uint64_t sub_1D27A27DC(uint64_t result)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation);
  if (v3 == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation) = result & 1;
    if (v3)
    {
      swift_getKeyPath();
      sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
      sub_1D28719E8();

      if ((*(v1 + v2) & 1) == 0)
      {
        swift_getKeyPath();
        sub_1D28719E8();

        if ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) & 1) == 0)
        {
          return sub_1D27A6708();
        }
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27A29E8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = v2;

    return sub_1D27AF5B0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D27A2B4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D27A2CC8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27A2DCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    v6 = v4;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
    swift_beginAccess();
    sub_1D22BD1D0(v4 + v5, v2, &qword_1EC6E1D50);
    sub_1D27A2F44(v2);

    return sub_1D22BD238(v2, &qword_1EC6E1D50);
  }

  return result;
}

uint64_t sub_1D27A2F44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1D2871818();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v37 = a1;
  result = sub_1D27A1A0C();
  if ((result & 1) == 0)
  {
    v34 = v3;
    v35 = v5;
    sub_1D2871808();
    v18 = *(v12 + 16);
    v18(v10, v16, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v19 = v39;
    sub_1D27A3970(v10);
    if (*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state) != 1)
    {
      KeyPath = swift_getKeyPath();
      v32 = &v32;
      MEMORY[0x1EEE9AC00](KeyPath);
      v33 = v18;
      v21 = v39;
      *(&v32 - 2) = v39;
      *(&v32 - 8) = v22;
      v40 = v21;
      sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
      v18 = v33;
      sub_1D28719D8();
    }

    v23 = sub_1D28785F8();
    (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
    v24 = v36;
    v18(v36, v16, v11);
    v25 = v35;
    sub_1D22BD1D0(v37, v35, &qword_1EC6E1D50);
    sub_1D2878568();
    v26 = v39;
    sub_1D2870F78();
    v27 = sub_1D2878558();
    v28 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v29 = (v13 + *(v34 + 80) + v28) & ~*(v34 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    *(v30 + 2) = v27;
    *(v30 + 3) = v31;
    *(v30 + 4) = v26;
    (*(v12 + 32))(&v30[v28], v24, v11);
    sub_1D22EC9BC(v25, &v30[v29], &qword_1EC6E1D50);
    sub_1D22AE01C(0, 0, v38, &unk_1D28A6028, v30);

    return (*(v12 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_1D27A3404@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1D27A3538()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___analyzer;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___analyzer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___analyzer);
  }

  else
  {
    v3 = *(v0 + 16);
    type metadata accessor for PromptConceptAnalyzer();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = v3;
    *(v0 + v1) = v2;
    sub_1D2870F78();
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D27A35B0()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D27A365C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask);
  return sub_1D2870F78();
}

uint64_t sub_1D27A3710(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask;
  if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  v4 = sub_1D2878698();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1D27A38C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1D22BD1D0(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_1D27A3970(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTaskID;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D8F70);
  v7 = sub_1D27B1F14(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8F70);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &qword_1EC6D8F70);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70);
}

uint64_t sub_1D27A3BF4()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D27A3CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D27A3D64()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D27A3E5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state);
  return result;
}

uint64_t sub_1D27A3F34()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  swift_getKeyPath();
  v16 = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__modifyPromptInternally) & 1) == 0)
  {
    sub_1D27A4248();
    sub_1D27A4568();
    swift_getKeyPath();
    v16 = v0;
    sub_1D28719E8();

    v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
    swift_beginAccess();
    sub_1D22BD1D0(v1 + v10, v8, &qword_1EC6D9A30);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      return sub_1D22BD238(v8, &qword_1EC6D9A30);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_1D22BD238(v8, &qword_1EC6D9A30);
      v11 = sub_1D2871F78();
      result = (*(v3 + 8))(v5, v2);
      if (v11)
      {
        swift_getKeyPath();
        v15 = v1;
        sub_1D28719E8();

        v12 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v13 = *(v12 + 8);
          ObjectType = swift_getObjectType();
          (*(v13 + 32))(ObjectType, v13);
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D27A4248()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v8 - 2) = v0;
    *(&v8 - 8) = 0;
    v9 = v0;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    *(&v8 - 2) = v0;
    *(&v8 - 8) = 0;
    v9 = v0;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) = 0;
  }

  swift_getKeyPath();
  v9 = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask))
  {
    sub_1D2870F78();
    sub_1D28786B8();
  }

  v6 = sub_1D2871818();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  return sub_1D27A3970(v3);
}

uint64_t sub_1D27A4568()
{
  v1 = v0;
  v38 = sub_1D2877B38();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v31 - v4);
  v6 = sub_1D2877BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  swift_getKeyPath();
  v40 = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v15, v14, &qword_1EC6E1D50);
  LOBYTE(v15) = sub_1D27A1A0C();
  sub_1D22BD238(v14, &qword_1EC6E1D50);
  v37 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel_debounceTimer);
  ObjectType = swift_getObjectType();
  if (v15)
  {
    sub_1D2877B78();
    v16 = v35;
    v17 = *(v35 + 104);
    v18 = v38;
    v17(v5, *MEMORY[0x1E69E7F40], v38);
    v19 = v39;
    *v39 = 0;
    v17(v19, *MEMORY[0x1E69E7F28], v18);
    MEMORY[0x1D38A16E0](v11, v5, v19, ObjectType);
    v20 = *(v16 + 8);
    v20(v19, v18);
    v20(v5, v18);
    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v22 = v34;
    sub_1D2877B88();
    *v5 = 800;
    v23 = v35;
    v24 = *(v35 + 104);
    v25 = v38;
    v24(v5, *MEMORY[0x1E69E7F38], v38);
    v32 = v11;
    sub_1D2877B98();
    v26 = v6;
    v33 = v6;
    v27 = *(v23 + 8);
    v27(v5, v25);
    v28 = *(v7 + 8);
    v28(v22, v26);
    v24(v5, *MEMORY[0x1E69E7F40], v25);
    v29 = v39;
    *v39 = 0;
    v24(v29, *MEMORY[0x1E69E7F28], v25);
    v30 = v32;
    MEMORY[0x1D38A16E0](v32, v5, v29, ObjectType);
    v27(v29, v25);
    v27(v5, v25);
    return (v28)(v30, v33);
  }
}

uint64_t sub_1D27A49F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D22BD1D0(a2, &v9 - v5, &qword_1EC6E1D50);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22D7384(v6, a1 + v7, &qword_1EC6E1D50);
  swift_endAccess();
  sub_1D27A3F34();
  return sub_1D22BD238(v6, &qword_1EC6E1D50);
}

uint64_t sub_1D27A4B2C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v7 = *a1;
  swift_beginAccess();
  return sub_1D22BD1D0(v9 + v7, a3, a2);
}

uint64_t sub_1D27A4C0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v8 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v7 + v8, a4, a3);
}

uint64_t sub_1D27A4D04()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D27A4DA8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return sub_1D2870F68();
}

uint64_t sub_1D27A4E84()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D2878B88();
  swift_unknownObjectRelease();

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle, &qword_1EC6D9A30);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTaskID, &qword_1EC6D8F70);
  swift_unknownObjectRelease();

  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt, &qword_1EC6E1D50);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__promptEditingCreationDate, &unk_1EC6DAE40);

  sub_1D22D7900(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8));

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__representableToCommitAfterConfirmation, &unk_1EC6E1D30);
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel___observationRegistrar;
  v3 = sub_1D2871A28();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t sub_1D27A5060()
{
  sub_1D27A4E84();

  return swift_deallocClassInstance();
}

void sub_1D27A50E0()
{
  sub_1D27AFEE0(319, &qword_1ED8A6BF0, MEMORY[0x1E696E310], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D27AFEE0(319, &qword_1ED8A6C80, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D27AFEE0(319, qword_1ED8A4FB0, MEMORY[0x1E69E0158], type metadata accessor for PromptText);
      if (v2 <= 0x3F)
      {
        sub_1D27AFEE0(319, &qword_1ED8A6CB8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D2871A28();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1D27A53CC(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v55 - v4;
  v63 = type metadata accessor for Prompt(0);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v55 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1D2877B38();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v55 - v8;
  v57 = sub_1D2877BA8();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for PhotosPersonAsset();
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel___observationRegistrar;
  v72[0] = v2;
  v20 = sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  v68 = v19;
  v21 = v20;
  sub_1D28719E8();

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v22, v18, &qword_1EC6E1D50);
  LOBYTE(v19) = sub_1D27A1A0C();
  result = sub_1D22BD238(v18, &qword_1EC6E1D50);
  if ((v19 & 1) == 0)
  {
    sub_1D22BD1D0(v67, &v70, &unk_1EC6E1D30);
    if (v71)
    {
      sub_1D227268C(&v70, v72);
      sub_1D27A4248();
      if (sub_1D27A60F4())
      {
        sub_1D22D7044(v72, &v70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        v24 = swift_dynamicCast();
        v25 = *(v66 + 56);
        if (v24)
        {
          v25(v13, 0, 1, v14);
          v26 = v65;
          sub_1D27B0B50(v13, v65, type metadata accessor for PhotosPersonAsset);
          if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) == 1)
          {
            *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 1;
            sub_1D27AF5B0(1);
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v55 - 2) = v2;
            *(&v55 - 8) = 1;
            *&v70 = v2;
            sub_1D28719D8();
          }

          sub_1D22D7044(v72, &v70);
          v39 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v39);
          *(&v55 - 2) = v2;
          *(&v55 - 1) = &v70;
          v69 = v2;
          sub_1D28719D8();

          sub_1D22BD238(&v70, &unk_1EC6E1D30);
          v40 = *v26;
          v41 = v26[1];
          sub_1D2870F68();
          sub_1D27A2B4C(v40, v41);
          v42 = type metadata accessor for PhotosPersonAsset;
          goto LABEL_20;
        }

        v25(v13, 1, 1, v14);
        sub_1D22BD238(v13, &unk_1EC6DDDC0);
      }

      swift_getKeyPath();
      *&v70 = v2;
      sub_1D28719E8();

      v29 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        ObjectType = swift_getObjectType();
        (*(v30 + 8))(v2, v72, ObjectType, v30);
        swift_unknownObjectRelease();
      }

      return __swift_destroy_boxed_opaque_existential_0(v72);
    }

    sub_1D22BD238(&v70, &unk_1EC6E1D30);
    swift_getKeyPath();
    v72[0] = v2;
    sub_1D28719E8();

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state) <= 1u)
    {
      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state))
      {
        if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) == 1)
        {
          *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) = 1;
        }

        else
        {
          v49 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v49);
          *(&v55 - 2) = v2;
          *(&v55 - 8) = 1;
          v72[0] = v2;
          sub_1D28719D8();
        }
      }

      else
      {
        v67 = v21;
        v66 = swift_getObjectType();
        sub_1D2877B78();
        v32 = v59;
        v33 = *(v59 + 104);
        v34 = v60;
        v33(v64, *MEMORY[0x1E69E7F40], v60);
        v35 = v58;
        *v58 = 0;
        v33(v35, *MEMORY[0x1E69E7F28], v34);
        v36 = v64;
        MEMORY[0x1D38A16E0](v10, v64, v35, v66);
        v37 = *(v32 + 8);
        v37(v35, v34);
        v37(v36, v34);
        (*(v56 + 8))(v10, v57);
        if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) == 1)
        {
          *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) = 1;
        }

        else
        {
          v48 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v48);
          *(&v55 - 2) = v2;
          *(&v55 - 8) = 1;
          v72[0] = v2;
          sub_1D28719D8();
        }

        swift_getKeyPath();
        v72[0] = v2;
        sub_1D28719E8();

        sub_1D22BD1D0(v2 + v22, v18, &qword_1EC6E1D50);
        sub_1D27A2F44(v18);
        return sub_1D22BD238(v18, &qword_1EC6E1D50);
      }
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state) - 2 >= 3)
      {
        if (sub_1D27A6400())
        {
          return sub_1D27A27DC(1);
        }

        return sub_1D27A6708();
      }

      if ((sub_1D27A60F4() & 1) == 0)
      {
        return sub_1D27A6708();
      }

      v27 = v62;
      sub_1D27A69D4(v62);
      v28 = v63;
      if ((*(v61 + 48))(v27, 1, v63) == 1)
      {
        sub_1D22BD238(v27, &unk_1EC6E1D20);
        return sub_1D27A6708();
      }

      v26 = v55;
      sub_1D27B0B50(v27, v55, type metadata accessor for Prompt);
      v43 = sub_1D267E554(v26);
      v46 = v45;
      if (v43)
      {
        v47 = v44;
        if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) == 1)
        {
          *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 1;
          sub_1D27AF5B0(1);
        }

        else
        {
          v54 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v54);
          *(&v55 - 2) = v2;
          *(&v55 - 8) = 1;
          v72[0] = v2;
          sub_1D28719D8();
        }

        sub_1D27A2B4C(v47, v46);
      }

      else
      {

        swift_getKeyPath();
        v72[0] = v2;
        sub_1D28719E8();

        v50 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v50 + 8);
          v52 = swift_getObjectType();
          v72[3] = v28;
          v72[4] = sub_1D27AFFF0(&unk_1ED89E418, type metadata accessor for Prompt);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
          sub_1D27B0A88(v26, boxed_opaque_existential_1, type metadata accessor for Prompt);
          (*(v51 + 8))(v2, v72, v52, v51);
          swift_unknownObjectRelease();
          v42 = type metadata accessor for Prompt;
LABEL_20:
          sub_1D27B0AF0(v26, v42);
          return __swift_destroy_boxed_opaque_existential_0(v72);
        }
      }

      return sub_1D27B0AF0(v26, type metadata accessor for Prompt);
    }
  }

  return result;
}

uint64_t sub_1D27A60F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2872068();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E696E3A0], v9, v11);
  v14 = sub_1D2872058();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    swift_getKeyPath();
    v18[1] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
    swift_beginAccess();
    sub_1D22BD1D0(v1 + v15, v4, &qword_1EC6D9A30);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1D22BD238(v4, &qword_1EC6D9A30);
      v16 = 1;
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v16 = sub_1D2871F78();
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D27A6400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v9 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v10) = (*(v10 + 40))(ObjectType, v10);
    swift_unknownObjectRelease();
    if (v10)
    {
      swift_getKeyPath();
      v17 = v0;
      sub_1D28719E8();

      v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
      swift_beginAccess();
      sub_1D22BD1D0(v1 + v12, v4, &qword_1EC6D9A30);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1D22BD238(v4, &qword_1EC6D9A30);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v13 = sub_1D2871F78();
        (*(v6 + 8))(v8, v5);
        if ((v13 & 1) == 0)
        {
          swift_getKeyPath();
          v16 = v1;
          sub_1D28719E8();

          v14 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isFromEmojiPicker) ^ 1;
          return v14 & 1;
        }
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1D27A6708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-1] - v2;
  v4 = type metadata accessor for Prompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D27A69D4(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1D22BD238(v3, &unk_1EC6E1D20);
  }

  sub_1D27B0B50(v3, v7, type metadata accessor for Prompt);
  swift_getKeyPath();
  v14[0] = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v9 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1D27B0AF0(v7, type metadata accessor for Prompt);
  }

  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v14[3] = v4;
  v14[4] = sub_1D27AFFF0(&unk_1ED89E418, type metadata accessor for Prompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_1D27B0A88(v7, boxed_opaque_existential_1, type metadata accessor for Prompt);
  (*(v10 + 8))(v0, v14, ObjectType, v10);
  swift_unknownObjectRelease();
  sub_1D27B0AF0(v7, type metadata accessor for Prompt);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_1D27A69D4@<X0>(unint64_t a1@<X8>)
{
  v2 = v1;
  v139 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1D2871318();
  v145 = *(v146 - 8);
  v5 = MEMORY[0x1EEE9AC00](v146);
  v140 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v141 = &v121 - v7;
  v158 = type metadata accessor for Prompt(0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v142 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v121 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v143 = &v121 - v14;
  v149 = sub_1D2871798();
  v151 = *(v149 - 8);
  v15 = MEMORY[0x1EEE9AC00](v149);
  v147 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v121 - v17;
  v153 = type metadata accessor for IdentifiedEntity(0);
  v137 = *(v153 - 8);
  v18 = MEMORY[0x1EEE9AC00](v153);
  v152 = (&v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v155 = &v121 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v156 = &v121 - v22;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel___observationRegistrar;
  aBlock = v1;
  v24 = sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v25 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt);
  swift_beginAccess();
  v26 = v25[1];
  if ((v26 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v27 = *v25 & 0xFFFFFFFFFFFFLL;
  }

  sub_1D2870F68();
  v160 = v23;
  v159 = v25;
  if (v27)
  {
    v28 = 4 * v27;
    v27 = 15;
    do
    {
      v29 = sub_1D28782C8();
      v31 = v30;
      if (sub_1D2877F28())
      {
      }

      else
      {
        v32 = sub_1D27B0938(v29, v31);
        if ((v32 & 0x100000000) != 0)
        {
          goto LABEL_71;
        }

        v33 = v32;

        if ((v33 - 14) <= 0xFFFFFFFB && (v33 - 8232) >= 2 && v33 != 133)
        {
          v34 = 0;
          goto LABEL_15;
        }
      }

      v27 = sub_1D2878198();
    }

    while (v28 != v27 >> 14);
    v27 = 0;
    v34 = 1;
LABEL_15:
    v25 = v159;
  }

  else
  {
    v34 = 1;
  }

  swift_getKeyPath();
  aBlock = v1;
  sub_1D28719E8();

  v35 = v25[1];
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    v48 = 1;
LABEL_36:
    v49 = v158;
    return (*(v157 + 56))(a1, v48, 1, v49);
  }

  v154 = a1;
  sub_1D2870F68();
  while (1)
  {
    v31 = sub_1D28781A8();
    a1 = sub_1D28782C8();
    v29 = v37;
    if ((sub_1D2877F28() & 1) == 0)
    {
      break;
    }

LABEL_22:
    if (!(v31 >> 14))
    {

      goto LABEL_34;
    }
  }

  v38 = sub_1D27B0938(a1, v29);
  if ((v38 & 0x100000000) != 0)
  {
    goto LABEL_72;
  }

  v39 = v38;

  if ((v39 - 14) > 0xFFFFFFFB || (v39 - 8232) < 2 || v39 == 133)
  {
    goto LABEL_22;
  }

  if (v34)
  {
LABEL_34:
    v48 = 1;
    a1 = v154;
    goto LABEL_36;
  }

  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  v29 = v159[1];
  sub_1D2870F68();
  a1 = sub_1D2878198();

  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  v128 = a1 >> 14;
  if (a1 >> 14 < v27 >> 14)
  {
    goto LABEL_70;
  }

  sub_1D2870F68();
  v127 = a1;
  v136 = sub_1D28782F8();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v130 = MEMORY[0x1D38A0BC0](v136, v41, v43, v45);
  v131 = v46;

  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  v129 = v27 >> 14;
  if (v27 >> 14 || (swift_getKeyPath(), aBlock = v2, sub_1D28719E8(), , swift_getKeyPath(), aBlock = v2, sub_1D2870F68(), sub_1D28719E8(), , v47 = sub_1D28781A8(), , (v47 ^ v31) >= 0x4000))
  {
    swift_getKeyPath();
    aBlock = v2;
    sub_1D28719E8();

    swift_getKeyPath();
    aBlock = v2;
    sub_1D2870F68();
    sub_1D28719E8();

    v51 = sub_1D2878248();

    swift_getKeyPath();
    aBlock = v2;
    sub_1D28719E8();

    v52 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__entities);
    v53 = *(v52 + 16);
    if (!v53)
    {
      v137 = MEMORY[0x1E69E7CC0];
      goto LABEL_54;
    }

    v136 = v51;
    v54 = *(v153 + 24);
    v124 = *(v153 + 20);
    v126 = &v156[v54];
    v123 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v55 = v52 + v123;
    v122 = v137[9];
    v121 = v52;
    sub_1D2870F68();
    v56 = v55;
    v57 = MEMORY[0x1E69E7CC0];
    v31 = &unk_1D28A5E40;
    v58 = v129;
    v125 = v24;
    while (1)
    {
      v133 = v53;
      v137 = v57;
      v132 = v56;
      sub_1D27B0A88(v56, v156, type metadata accessor for IdentifiedEntity);
      v59 = *v126;
      v134 = v126[1];
      if (v58 >= v59 >> 14)
      {
        v59 = v27;
      }

      v135 = v59;
      swift_getKeyPath();
      aBlock = v2;
      sub_1D28719E8();

      v60 = v159;
      v29 = *v159;
      a1 = v159[1];
      swift_getKeyPath();
      aBlock = v2;
      sub_1D2870F68();
      sub_1D28719E8();

      v61 = sub_1D2878248();

      if (__OFSUB__(v61, v136))
      {
        break;
      }

      v62 = v127;
      if (v128 >= v134 >> 14)
      {
        v62 = v134;
      }

      v135 = v62;
      swift_getKeyPath();
      aBlock = v2;
      sub_1D28719E8();

      v29 = *v60;
      a1 = v60[1];
      swift_getKeyPath();
      aBlock = v2;
      sub_1D2870F68();
      sub_1D28719E8();

      v63 = sub_1D2878248();

      if (__OFSUB__(v63, v136))
      {
        goto LABEL_68;
      }

      v64 = sub_1D28781C8();
      v65 = sub_1D28781C8();
      if (v65 >> 14 < v64 >> 14)
      {
        goto LABEL_69;
      }

      v66 = v65;
      v67 = sub_1D28782F8();
      v68 = MEMORY[0x1D38A0BC0](v67);
      v70 = v69;

      v71 = v153;
      v72 = v156;
      v73 = v152;
      sub_1D27B0A88(&v156[v124], v152 + *(v153 + 20), type metadata accessor for IdentifiedEntity.Kind);
      sub_1D27B0AF0(v72, type metadata accessor for IdentifiedEntity);
      *v73 = v68;
      v73[1] = v70;
      v74 = (v73 + *(v71 + 24));
      *v74 = v64;
      v74[1] = v66;
      sub_1D27B0B50(v73, v155, type metadata accessor for IdentifiedEntity);
      v57 = v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1D27CC8B4(0, v57[2] + 1, 1, v57);
      }

      a1 = v154;
      v58 = v129;
      v31 = &unk_1D28A5E40;
      v76 = v57[2];
      v75 = v57[3];
      if (v76 >= v75 >> 1)
      {
        v57 = sub_1D27CC8B4(v75 > 1, v76 + 1, 1, v57);
      }

      v57[2] = v76 + 1;
      v77 = v122;
      sub_1D27B0B50(v155, v57 + v123 + v76 * v122, type metadata accessor for IdentifiedEntity);
      v56 = v132 + v77;
      v53 = v133 - 1;
      if (v133 == 1)
      {
        v137 = v57;

        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_61:
    v90 = sub_1D24B63AC(qword_1ED8B0010, v29, v31);
    v91 = v142;
    *(v142 + 3) = v90;
    *(v91 + 32) = v92 & 1;
    v93 = sub_1D27E1420(v29, v31);
    v95 = v94;
    v96 = v158;
LABEL_66:
    v116 = v160 == 4;
    *(v91 + 8) = v93;
    *(v91 + 16) = v95;
    *(v91 + 40) = v137;
    v117 = v147;
    v118 = v149;
    (v156)(v91 + *(v96 + 36), v147, v149);
    *(v91 + *(v96 + 40)) = v116;
    sub_1D2879838();
    sub_1D2877F38();

    v119 = sub_1D2879818();
    v120 = v151[1];
    v120(v117, v118);
    sub_1D22BD238(v150, &unk_1EC6E1D40);
    v120(v148, v118);
    *v91 = v119;
    sub_1D27B0B50(v91, a1, type metadata accessor for Prompt);
    v49 = v96;
    v48 = 0;
    return (*(v157 + 56))(a1, v48, 1, v49);
  }

  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  v137 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__entities);
  sub_1D2870F68();
LABEL_54:
  a1 = v154;
LABEL_55:
  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  v78 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__promptEditingCreationDate;
  swift_beginAccess();
  v79 = v143;
  sub_1D22BD1D0(v2 + v78, v143, &unk_1EC6DAE40);
  v80 = v151;
  v81 = v151[6];
  v82 = v149;
  if (v81(v79, 1, v149) == 1)
  {
    v83 = v148;
    sub_1D2871778();
    if (v81(v79, 1, v82) != 1)
    {
      sub_1D22BD238(v79, &unk_1EC6DAE40);
    }
  }

  else
  {
    v83 = v148;
    (v80[4])(v148, v79, v82);
  }

  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v85 = v150;
  sub_1D22BD1D0(v159 + *(v84 + 28), v150, &unk_1EC6E1D40);
  v86 = v151[2];
  v159 = v151 + 2;
  v156 = v86;
  (v86)(v147, v83, v82);
  swift_getKeyPath();
  aBlock = v2;
  sub_1D28719E8();

  LODWORD(v160) = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state);
  v87 = v144;
  sub_1D22BD1D0(v85, v144, &unk_1EC6E1D40);
  v88 = v145;
  v89 = v146;
  if ((*(v145 + 48))(v87, 1, v146) == 1)
  {
    sub_1D22BD238(v87, &unk_1EC6E1D40);
    v31 = v131;
    v29 = v130;
    if (qword_1ED89CD48 == -1)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

  v97 = v141;
  (*(v88 + 32))(v141, v87, v89);
  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v98 = qword_1ED8B0010;
  sub_1D28712B8();
  sub_1D27AFFF0(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
  aBlock = sub_1D28782D8();
  v162 = v99;
  v169[0] = 12369903;
  v169[1] = 0xA300000000000000;
  v167 = 0;
  v168 = 0xE000000000000000;
  sub_1D22BD06C();
  v100 = sub_1D2878FA8();
  v102 = v101;

  v103 = sub_1D24B63AC(v98, v100, v102);
  v105 = v104;

  v169[0] = v103;
  sub_1D22BCFD0(0, &qword_1ED89CD40);
  (*(v88 + 16))(v140, v97, v89);
  v106 = sub_1D2878AE8();
  v107 = *MEMORY[0x1E69DB5F0];
  v108 = [v106 length];
  v109 = swift_allocObject();
  *(v109 + 16) = v169;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_1D2436B8C;
  *(v110 + 24) = v109;
  v165 = sub_1D2436B94;
  v166 = v110;
  aBlock = MEMORY[0x1E69E9820];
  v162 = 1107296256;
  v163 = sub_1D267502C;
  v164 = &block_descriptor_46;
  v111 = _Block_copy(&aBlock);
  sub_1D2870F78();

  [v106 enumerateAttribute:v107 inRange:0 options:v108 usingBlock:{0, v111}];

  _Block_release(v111);
  LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

  if ((v106 & 1) == 0)
  {
    v112 = v169[0];

    v91 = v142;
    *(v142 + 3) = v112;
    *(v91 + 32) = v105 & 1;
    v113 = sub_1D27E0DA0();
    v93 = sub_1D27E1420(v113, v114);
    v95 = v115;

    (*(v88 + 8))(v97, v146);
    a1 = v154;
    v96 = v158;
    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D27A80B0()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  sub_1D23415B4(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8));
  return v1;
}

uint64_t sub_1D27A8170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D23415B4(a2, a3);
  return sub_1D22D7900(v4, v5);
}

uint64_t sub_1D27A81C8()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___shouldFocusTextFieldOnAppear;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___shouldFocusTextFieldOnAppear);
  if (v2 == 2)
  {
    swift_getKeyPath();
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    LOBYTE(v2) = *(v0 + 32) == 0;
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_1D27A8294(char a1)
{
  v2 = v1;
  v24 = sub_1D2872008();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  swift_getKeyPath();
  v26 = v1;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v10 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = v4;
    v12 = v6;
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    v16 = v13;
    v6 = v12;
    v4 = v11;
    v15(v1, a1 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v26 = v1;
  sub_1D28719E8();

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v17, v9, &qword_1EC6D9A30);
  v18 = v24;
  if ((*(v4 + 48))(v9, 1, v24))
  {
    return sub_1D22BD238(v9, &qword_1EC6D9A30);
  }

  (*(v4 + 16))(v6, v9, v18);
  sub_1D22BD238(v9, &qword_1EC6D9A30);
  v20 = sub_1D2871F78();
  result = (*(v4 + 8))(v6, v18);
  if (v20)
  {
    swift_getKeyPath();
    v25 = v2;
    sub_1D28719E8();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v10 + 8);
      v22 = swift_getObjectType();
      (*(v21 + 32))(v22, v21);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D27A85F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  swift_getKeyPath();
  *&v7[0] = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode) == 1)
  {
    swift_getKeyPath();
    *&v7[0] = v0;
    sub_1D28719E8();

    v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
    swift_beginAccess();
    sub_1D22BD1D0(v1 + v6, v4, &qword_1EC6E1D50);
    LOBYTE(v6) = sub_1D27A1A0C();
    result = sub_1D22BD238(v4, &qword_1EC6E1D50);
    if ((v6 & 1) == 0)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_1D27A53CC(v7);
      return sub_1D22BD238(v7, &unk_1EC6E1D30);
    }
  }

  return result;
}

uint64_t sub_1D27A87BC(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for BubbleWrapperView(0);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Bubble(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CuratedPrompt();
  v28 = sub_1D27AFFF0(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  sub_1D27B0A88(a1, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
  swift_getKeyPath();
  v25 = a2;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  LOBYTE(v25) = *(a2 + 32);
  sub_1D2847FA8(&v26, &v25, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6DC4D0);
  }

  else
  {
    sub_1D27B0B50(v10, v14, type metadata accessor for Bubble);
    v16 = v23;
    sub_1D27B0A88(v14, v7 + *(v23 + 20), type metadata accessor for Bubble);
    swift_getKeyPath();
    *&v26 = a2;
    sub_1D28719E8();

    v17 = *(a2 + 32);
    *v7 = 0;
    *(v7 + *(v16 + 24)) = v17;
    v18 = v24;
    sub_1D27B0A88(v7, v24, type metadata accessor for BubbleWrapperView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1DD0);
    swift_allocObject();
    MEMORY[0x1D389D4C0](v18);
    sub_1D2874A18();
    v19 = sub_1D2874A08();
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D27A8C0C(32.0, 32.0);

      sub_1D27B0AF0(v7, type metadata accessor for BubbleWrapperView);
      sub_1D27B0AF0(v14, type metadata accessor for Bubble);
      return v21;
    }

    sub_1D27B0AF0(v7, type metadata accessor for BubbleWrapperView);
    sub_1D27B0AF0(v14, type metadata accessor for Bubble);
  }

  return 0;
}

uint64_t sub_1D27A8C0C(double a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D27B48E4;
  *(v7 + 24) = v6;
  v12[4] = sub_1D2759384;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D27A19C0;
  v12[3] = &block_descriptor_199;
  v8 = _Block_copy(v12);
  v9 = v2;
  sub_1D2870F78();

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_1D27A8DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v19 - v15;
  if (a2)
  {
    v19[1] = a1;
    v19[2] = a2;
    v19[4] = a8;
    v19[5] = a9;
    v17 = sub_1D28718F8();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_1D22BD06C();
    v18 = sub_1D2878FE8();
    sub_1D22BD238(v16, &qword_1EC6E1D90);
    if (!v18)
    {
      swift_beginAccess();
      *(a10 + 16) = 1;
      *a7 = 1;
    }
  }
}

uint64_t sub_1D27A8F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50) - 8);
  v6[10] = v7;
  v6[11] = *(v7 + 64);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v6[13] = swift_task_alloc();
  v8 = sub_1D2871818();
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v6[16] = *(v9 + 64);
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = sub_1D2878568();
  v6[23] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v6[24] = v11;
  v6[25] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D27A912C, v11, v10);
}

uint64_t sub_1D27A912C()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask;
  v0[26] = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel___observationRegistrar;
  v0[27] = v2;
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v3 = *(v1 + v2);
  if (v3)
  {
    v0[28] = v3;
    sub_1D2870F78();
    v4 = MEMORY[0x1E69E7CA8];
    sub_1D28786B8();
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_1D27A9770;

    return MEMORY[0x1EEE6DA40](v5, v3, v4 + 8);
  }

  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[7];
  v51 = v0[8];
  v52 = v0[18];

  swift_getKeyPath();
  v0[6] = v10;
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTaskID;
  swift_beginAccess();
  v50 = *(v9 + 16);
  v50(v6, v51, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v12 = *(v52 + 48);
  sub_1D22BD1D0(v10 + v11, v7, &qword_1EC6D8F70);
  sub_1D22BD1D0(v6, v7 + v12, &qword_1EC6D8F70);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    v14 = v0[14];
    sub_1D22BD238(v0[21], &qword_1EC6D8F70);
    if (v13(v7 + v12, 1, v14) == 1)
    {
      sub_1D22BD238(v0[19], &qword_1EC6D8F70);
LABEL_12:
      v27 = v0[17];
      v49 = v27;
      v29 = v0[14];
      v28 = v0[15];
      v30 = v0[12];
      v31 = v0[13];
      v53 = v31;
      v47 = v0[10];
      v48 = v0[11];
      v33 = v0[8];
      v32 = v0[9];
      v34 = v0[7];
      v35 = sub_1D28785F8();
      (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
      sub_1D22BD1D0(v32, v30, &qword_1EC6E1D50);
      v36 = v27;
      v37 = v29;
      v50(v36, v33, v29);
      sub_1D2870F78();
      v38 = sub_1D2878558();
      v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v40 = (v48 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = (*(v28 + 80) + v40 + 8) & ~*(v28 + 80);
      v42 = swift_allocObject();
      v43 = MEMORY[0x1E69E85E0];
      *(v42 + 16) = v38;
      *(v42 + 24) = v43;
      sub_1D22EC9BC(v30, v42 + v39, &qword_1EC6E1D50);
      *(v42 + v40) = v34;
      (*(v28 + 32))(v42 + v41, v49, v37);
      v44 = sub_1D22AE01C(0, 0, v53, &unk_1D28A6038, v42);
      sub_1D27A3710(v44);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v15 = v0[14];
  sub_1D22BD1D0(v0[19], v0[20], &qword_1EC6D8F70);
  v16 = v13(v7 + v12, 1, v15);
  v17 = v0[20];
  v18 = v0[21];
  if (v16 == 1)
  {
    v20 = v0[14];
    v19 = v0[15];
    sub_1D22BD238(v0[21], &qword_1EC6D8F70);
    (*(v19 + 8))(v17, v20);
LABEL_10:
    sub_1D22BD238(v0[19], &qword_1EC6D94F0);
    goto LABEL_13;
  }

  v21 = v0[19];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[15];
  (*(v24 + 32))(v22, v7 + v12, v23);
  sub_1D27AFFF0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v25 = sub_1D2877F98();
  v26 = *(v24 + 8);
  v26(v22, v23);
  sub_1D22BD238(v18, &qword_1EC6D8F70);
  v26(v17, v23);
  sub_1D22BD238(v21, &qword_1EC6D8F70);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_13:

  v45 = v0[1];

  return v45();
}

uint64_t sub_1D27A9770()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D27A9890, v3, v2);
}

uint64_t sub_1D27A9890()
{
  v1 = v0[27];
  v2 = v0[7];

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v3 = *(v2 + v1);
  if (v3)
  {
    v0[28] = v3;
    sub_1D2870F78();
    v4 = MEMORY[0x1E69E7CA8];
    sub_1D28786B8();
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_1D27A9770;

    return MEMORY[0x1EEE6DA40](v5, v3, v4 + 8);
  }

  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[7];
  v51 = v0[8];
  v52 = v0[18];

  swift_getKeyPath();
  v0[6] = v10;
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTaskID;
  swift_beginAccess();
  v50 = *(v9 + 16);
  v50(v6, v51, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v12 = *(v52 + 48);
  sub_1D22BD1D0(v10 + v11, v7, &qword_1EC6D8F70);
  sub_1D22BD1D0(v6, v7 + v12, &qword_1EC6D8F70);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    v14 = v0[14];
    sub_1D22BD238(v0[21], &qword_1EC6D8F70);
    if (v13(v7 + v12, 1, v14) == 1)
    {
      sub_1D22BD238(v0[19], &qword_1EC6D8F70);
LABEL_12:
      v27 = v0[17];
      v49 = v27;
      v29 = v0[14];
      v28 = v0[15];
      v30 = v0[12];
      v31 = v0[13];
      v53 = v31;
      v47 = v0[10];
      v48 = v0[11];
      v33 = v0[8];
      v32 = v0[9];
      v34 = v0[7];
      v35 = sub_1D28785F8();
      (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
      sub_1D22BD1D0(v32, v30, &qword_1EC6E1D50);
      v36 = v27;
      v37 = v29;
      v50(v36, v33, v29);
      sub_1D2870F78();
      v38 = sub_1D2878558();
      v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v40 = (v48 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = (*(v28 + 80) + v40 + 8) & ~*(v28 + 80);
      v42 = swift_allocObject();
      v43 = MEMORY[0x1E69E85E0];
      *(v42 + 16) = v38;
      *(v42 + 24) = v43;
      sub_1D22EC9BC(v30, v42 + v39, &qword_1EC6E1D50);
      *(v42 + v40) = v34;
      (*(v28 + 32))(v42 + v41, v49, v37);
      v44 = sub_1D22AE01C(0, 0, v53, &unk_1D28A6038, v42);
      sub_1D27A3710(v44);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v15 = v0[14];
  sub_1D22BD1D0(v0[19], v0[20], &qword_1EC6D8F70);
  v16 = v13(v7 + v12, 1, v15);
  v17 = v0[20];
  v18 = v0[21];
  if (v16 == 1)
  {
    v20 = v0[14];
    v19 = v0[15];
    sub_1D22BD238(v0[21], &qword_1EC6D8F70);
    (*(v19 + 8))(v17, v20);
LABEL_10:
    sub_1D22BD238(v0[19], &qword_1EC6D94F0);
    goto LABEL_13;
  }

  v21 = v0[19];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[15];
  (*(v24 + 32))(v22, v7 + v12, v23);
  sub_1D27AFFF0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v25 = sub_1D2877F98();
  v26 = *(v24 + 8);
  v26(v22, v23);
  sub_1D22BD238(v18, &qword_1EC6D8F70);
  v26(v17, v23);
  sub_1D22BD238(v21, &qword_1EC6D8F70);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_13:

  v45 = v0[1];

  return v45();
}

uint64_t sub_1D27A9ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  v6[24] = swift_task_alloc();
  v7 = type metadata accessor for Prompt(0);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = sub_1D2871818();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v6[36] = swift_task_alloc();
  v9 = sub_1D2872008();
  v6[37] = v9;
  v6[38] = *(v9 - 8);
  v6[39] = swift_task_alloc();
  sub_1D2878568();
  v6[40] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v6[41] = v11;
  v6[42] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D27AA178, v11, v10);
}

uint64_t sub_1D27AA178()
{
  v1 = v0;
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[21];
  v6 = v0[22];
  v20 = *v5;
  v0[43] = *v5;
  v18 = v2;
  v19 = v5[1];
  v0[44] = v19;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v8 = sub_1D27B4058(*(v5 + *(v7 + 32)));
  v0[45] = v8;
  v0[46] = sub_1D27A3538();
  swift_getKeyPath();
  v0[13] = v6;
  v9 = v0 + 13;
  v9[34] = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel___observationRegistrar;
  v9[35] = sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v6 + v10, v4, &qword_1EC6D9A30);
  if ((*(v3 + 48))(v4, 1, v18) == 1)
  {
    sub_1D22BD238(v1[36], &qword_1EC6D9A30);
    v11 = 0;
  }

  else
  {
    v13 = v1[38];
    v12 = v1[39];
    v14 = v1[37];
    (*(v13 + 32))(v12, v1[36], v14);
    v15 = sub_1D2871F78();
    (*(v13 + 8))(v12, v14);
    v11 = v15 ^ 1;
  }

  v16 = swift_task_alloc();
  v1[49] = v16;
  *v16 = v1;
  v16[1] = sub_1D27AA3D0;

  return sub_1D2783DE8(v20, v19, v11 & 1, v8);
}

uint64_t sub_1D27AA3D0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *v4;
  v10 = *v4;
  *(v7 + 432) = a1;
  *(v7 + 400) = a2;
  *(v7 + 408) = a3;

  v8 = swift_task_alloc();
  *(v7 + 416) = v8;
  *v8 = v10;
  v8[1] = sub_1D27AA57C;

  return sub_1D27AB0A4(a3);
}

uint64_t sub_1D27AA57C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 424) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1D27AA6C8, v4, v3);
}

uint64_t sub_1D27AA6C8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 176);
  v59 = *(v0 + 184);
  v60 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 112) = v5;
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTaskID;
  swift_beginAccess();
  (*(v4 + 16))(v1, v59, v3);
  v58 = *(v4 + 56);
  v58(v1, 0, 1, v3);
  v7 = v5 + v6;
  v8 = *(v60 + 48);
  sub_1D22BD1D0(v7, v2, &qword_1EC6D8F70);
  sub_1D22BD1D0(v1, v2 + v8, &qword_1EC6D8F70);
  v9 = *(v4 + 48);
  if (v9(v2, 1, v3) == 1)
  {
    v10 = *(v0 + 224);
    sub_1D22BD238(*(v0 + 280), &qword_1EC6D8F70);
    if (v9(v2 + v8, 1, v10) == 1)
    {
      sub_1D22BD238(*(v0 + 256), &qword_1EC6D8F70);
      v11 = v0 + 112;
      goto LABEL_9;
    }

LABEL_7:
    sub_1D22BD238(*(v0 + 256), &qword_1EC6D94F0);
    goto LABEL_26;
  }

  v12 = *(v0 + 224);
  sub_1D22BD1D0(*(v0 + 256), *(v0 + 272), &qword_1EC6D8F70);
  v13 = v9(v2 + v8, 1, v12);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  if (v13 == 1)
  {
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);

    sub_1D22BD238(v16, &qword_1EC6D8F70);
    (*(v14 + 8))(v17, v15);
    goto LABEL_7;
  }

  v19 = *(v0 + 272);
  v18 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  (*(v14 + 32))(v21, v2 + v8, *(v0 + 224));
  sub_1D27AFFF0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v22 = sub_1D2877F98();
  v23 = *(v14 + 8);
  v23(v21, v15);
  sub_1D22BD238(v18, &qword_1EC6D8F70);
  v23(v19, v15);
  sub_1D22BD238(v20, &qword_1EC6D8F70);
  v11 = v0 + 112;
  if ((v22 & 1) == 0)
  {

    goto LABEL_26;
  }

LABEL_9:
  v24 = *(v0 + 432);
  v25 = *(v0 + 176);
  if (*(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state) != v24)
  {
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    *(v0 + 128) = v25;
    sub_1D28719D8();

    v25 = *(v0 + 176);
  }

  v27 = *(v0 + 424);
  v62 = *(v0 + 344);
  v28 = *(v0 + 168);
  sub_1D27A2480(*(v0 + 400), &OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__entities, sub_1D2338008);
  v29 = swift_task_alloc();
  *(v29 + 16) = v62;
  *(v29 + 32) = v28;
  *(v29 + 40) = v27;
  sub_1D27AC580(sub_1D27B4750);

  swift_getKeyPath();
  *(v0 + 136) = v25;
  sub_1D28719E8();

  v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested;
  if (*(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) != 1)
  {
    goto LABEL_24;
  }

  v31 = *(v0 + 432);
  if ((v31 - 3) < 2)
  {
    if (sub_1D27A60F4())
    {
      v33 = *(v0 + 200);
      v32 = *(v0 + 208);
      v34 = *(v0 + 192);
      sub_1D27A69D4(v34);
      if ((*(v32 + 48))(v34, 1, v33) != 1)
      {
        v42 = *(v0 + 216);
        sub_1D27B0B50(*(v0 + 192), v42, type metadata accessor for Prompt);
        v43 = sub_1D267E554(v42);
        v46 = v45;
        if (v43)
        {
          v47 = v44;
          v48 = *(v0 + 176);
          if (*(v48 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) == 1)
          {
            *(v48 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 1;
            sub_1D27AF5B0(1);
          }

          else
          {
            swift_getKeyPath();
            v56 = swift_task_alloc();
            *(v56 + 16) = v48;
            *(v56 + 24) = 1;
            *(v0 + 160) = v48;
            sub_1D28719D8();
          }

          v57 = *(v0 + 216);
          sub_1D27A2B4C(v47, v46);
          sub_1D27B0AF0(v57, type metadata accessor for Prompt);
        }

        else
        {
          v49 = *(v0 + 176);

          swift_getKeyPath();
          *(v0 + 152) = v49;
          sub_1D28719E8();

          v50 = v49 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
          Strong = swift_unknownObjectWeakLoadStrong();
          v52 = *(v0 + 216);
          if (Strong)
          {
            v53 = *(v0 + 200);
            v63 = *(v0 + 176);
            v54 = *(v50 + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 40) = v53;
            *(v0 + 48) = sub_1D27AFFF0(&unk_1ED89E418, type metadata accessor for Prompt);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 - 96));
            sub_1D27B0A88(v52, boxed_opaque_existential_1, type metadata accessor for Prompt);
            (*(v54 + 8))(v63, v11 - 96, ObjectType, v54);
            swift_unknownObjectRelease();
            sub_1D27B0AF0(v52, type metadata accessor for Prompt);
            __swift_destroy_boxed_opaque_existential_0(v11 - 96);
          }

          else
          {
            sub_1D27B0AF0(*(v0 + 216), type metadata accessor for Prompt);
          }
        }

LABEL_22:
        if (*(v25 + v30))
        {
          goto LABEL_23;
        }

LABEL_24:
        *(v25 + v30) = 0;
        goto LABEL_25;
      }

      sub_1D22BD238(*(v0 + 192), &unk_1EC6E1D20);
    }

LABEL_21:
    sub_1D27A6708();
    goto LABEL_22;
  }

  if (v31 == 5)
  {
    if (sub_1D27A6400())
    {
      sub_1D27A27DC(1);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  v35 = *(v0 + 176);
  swift_getKeyPath();
  v36 = swift_task_alloc();
  *(v36 + 16) = v35;
  *(v36 + 24) = 0;
  *(v0 + 144) = v35;
  sub_1D28719D8();

LABEL_25:
  v37 = *(v0 + 264);
  v58(v37, 1, 1, *(v0 + 224));
  sub_1D27A3970(v37);
LABEL_26:
  v38 = *(v0 + 176);
  if (*(v38 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask))
  {
    swift_getKeyPath();
    v39 = swift_task_alloc();
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v0 + 120) = v38;
    sub_1D28719D8();
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1D27AB0A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D70);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D80);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_1D2873788();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for AnalyzerAmbiguity();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  sub_1D2878568();
  v2[22] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v2[23] = v8;
  v2[24] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D27AB364, v8, v7);
}

uint64_t sub_1D27AB364()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 200) = v1;
  v2 = sub_1D27CDFA0(0, v1, 0, MEMORY[0x1E69E7CC0]);
  if (!v1)
  {
LABEL_11:

    v25 = *(v0 + 8);

    return v25(v2);
  }

  v3 = 0;
  v4 = *(v0 + 160);
  *(v0 + 304) = *(v4 + 80);
  *(v0 + 208) = *(v4 + 72);
  while (1)
  {
    *(v0 + 216) = v3;
    *(v0 + 224) = v2;
    v5 = *(v0 + 168);
    sub_1D27B0A88(*(v0 + 16) + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v0 + 208) * v3, v5, type metadata accessor for AnalyzerAmbiguity);
    v6 = *(v5 + 16);
    *(v0 + 232) = v6;
    v7 = sub_1D27CDFC4(0, *(v6 + 16), 0, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 16);
    *(v0 + 240) = v8;
    if (v8)
    {
      v27 = *(v0 + 120);
      v28 = *(v0 + 128);
      v29 = *(v28 + 16);
      v28 += 16;
      v30 = *(v28 + 64);
      *(v0 + 308) = v30;
      *(v0 + 248) = *(v28 + 56);
      *(v0 + 256) = v29;
      *(v0 + 264) = 0;
      *(v0 + 272) = v7;
      v29(*(v0 + 144), *(v0 + 232) + ((v30 + 32) & ~v30), v27);
      v31 = swift_task_alloc();
      *(v0 + 280) = v31;
      *v31 = v0;
      v31[1] = sub_1D27AB7FC;
      v32 = *(v0 + 144);
      v33 = *(v0 + 80);
      goto LABEL_16;
    }

    *(v0 + 288) = v7;
    v9 = *(v0 + 168);
    if (*(v7 + 16))
    {
      break;
    }

    sub_1D27B0AF0(*(v0 + 168), type metadata accessor for AnalyzerAmbiguity);

    v2 = *(v0 + 224);
LABEL_4:
    v3 = *(v0 + 216) + 1;
    if (v3 == *(v0 + 200))
    {
      goto LABEL_11;
    }
  }

  v10 = *(v0 + 152);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 56);
  (*(*(v0 + 96) + 56))(*(v0 + 72), 1, 1, *(v0 + 88));
  sub_1D22BD1D0(v9 + *(v10 + 24), v13, &qword_1EC6DA528);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    sub_1D22BD238(*(v0 + 56), &qword_1EC6DA528);
    v14 = *(v0 + 288);
    v15 = *(v0 + 224);
    v16 = *(v0 + 168);
    v17 = *(v0 + 48);
    v18 = *v16;
    v19 = v16[1];
    sub_1D22BD1D0(*(v0 + 72), v17 + *(*(v0 + 32) + 32), &qword_1EC6E1D80);
    *v17 = v18;
    v17[1] = v19;
    v17[2] = v14;
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    v2 = *(v0 + 224);
    if (v21 >= v20 >> 1)
    {
      v2 = sub_1D27CDFA0(v20 > 1, v21 + 1, 1, *(v0 + 224));
    }

    v22 = *(v0 + 168);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    sub_1D22BD238(*(v0 + 72), &qword_1EC6E1D80);
    sub_1D27B0AF0(v22, type metadata accessor for AnalyzerAmbiguity);
    *(v2 + 16) = v21 + 1;
    sub_1D22EC9BC(v24, v2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &unk_1EC6E1D70);
    goto LABEL_4;
  }

  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 56), *(v0 + 120));
  v34 = swift_task_alloc();
  *(v0 + 296) = v34;
  *v34 = v0;
  v34[1] = sub_1D27ABF10;
  v32 = *(v0 + 136);
  v33 = *(v0 + 64);
LABEL_16:

  return sub_1D27AC87C(v33, v32);
}

uint64_t sub_1D27AB7FC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D27AB980, v6, v5);
}

uint64_t sub_1D27AB980()
{
  v1 = *(v0 + 80);
  if ((*(*(v0 + 96) + 48))(v1, 1, *(v0 + 88)) == 1)
  {
    sub_1D22BD238(v1, &qword_1EC6E1D80);
    v2 = *(v0 + 272);
  }

  else
  {
    v3 = *(v0 + 272);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    sub_1D22EC9BC(v1, v4, &qword_1EC6E1D88);
    sub_1D22BD1D0(v4, v5, &qword_1EC6E1D88);
    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v2 = *(v0 + 272);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1D27CDFC4(v6 > 1, v7 + 1, 1, *(v0 + 272));
    }

    v8 = *(v0 + 104);
    v9 = *(v0 + 96);
    sub_1D22BD238(*(v0 + 112), &qword_1EC6E1D88);
    *(v2 + 16) = v7 + 1;
    sub_1D22EC9BC(v8, v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7, &qword_1EC6E1D88);
  }

  v10 = *(v0 + 264) + 1;
  if (v10 == *(v0 + 240))
  {
    while (1)
    {
      *(v0 + 288) = v2;
      v11 = *(v0 + 168);
      if (*(v2 + 16))
      {
        v12 = *(v0 + 152);
        v14 = *(v0 + 120);
        v13 = *(v0 + 128);
        v15 = *(v0 + 56);
        (*(*(v0 + 96) + 56))(*(v0 + 72), 1, 1, *(v0 + 88));
        sub_1D22BD1D0(v11 + *(v12 + 24), v15, &qword_1EC6DA528);
        if ((*(v13 + 48))(v15, 1, v14) != 1)
        {
          (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 56), *(v0 + 120));
          v41 = swift_task_alloc();
          *(v0 + 296) = v41;
          *v41 = v0;
          v41[1] = sub_1D27ABF10;
          v39 = *(v0 + 136);
          v40 = *(v0 + 64);
          goto LABEL_21;
        }

        sub_1D22BD238(*(v0 + 56), &qword_1EC6DA528);
        v16 = *(v0 + 288);
        v17 = *(v0 + 224);
        v18 = *(v0 + 168);
        v19 = *(v0 + 48);
        v20 = *v18;
        v21 = v18[1];
        sub_1D22BD1D0(*(v0 + 72), v19 + *(*(v0 + 32) + 32), &qword_1EC6E1D80);
        *v19 = v20;
        v19[1] = v21;
        v19[2] = v16;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        v24 = *(v0 + 224);
        if (v23 >= v22 >> 1)
        {
          v24 = sub_1D27CDFA0(v22 > 1, v23 + 1, 1, *(v0 + 224));
        }

        v25 = *(v0 + 168);
        v26 = *(v0 + 40);
        v27 = *(v0 + 48);
        sub_1D22BD238(*(v0 + 72), &qword_1EC6E1D80);
        sub_1D27B0AF0(v25, type metadata accessor for AnalyzerAmbiguity);
        *(v24 + 16) = v23 + 1;
        sub_1D22EC9BC(v27, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, &unk_1EC6E1D70);
      }

      else
      {
        sub_1D27B0AF0(*(v0 + 168), type metadata accessor for AnalyzerAmbiguity);

        v24 = *(v0 + 224);
      }

      v28 = *(v0 + 216) + 1;
      if (v28 == *(v0 + 200))
      {
        break;
      }

      *(v0 + 216) = v28;
      *(v0 + 224) = v24;
      v29 = *(v0 + 168);
      sub_1D27B0A88(*(v0 + 16) + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v0 + 208) * v28, v29, type metadata accessor for AnalyzerAmbiguity);
      v30 = *(v29 + 16);
      *(v0 + 232) = v30;
      v2 = sub_1D27CDFC4(0, *(v30 + 16), 0, MEMORY[0x1E69E7CC0]);
      v31 = *(v30 + 16);
      *(v0 + 240) = v31;
      if (v31)
      {
        v10 = 0;
        v34 = *(v0 + 128);
        v35 = *(v34 + 80);
        *(v0 + 308) = v35;
        v36 = *(v34 + 72);
        *(v0 + 248) = v36;
        v37 = *(v34 + 16);
        *(v0 + 256) = v37;
        goto LABEL_20;
      }
    }

    v32 = *(v0 + 8);

    return v32(v24);
  }

  else
  {
    v36 = *(v0 + 248);
    v37 = *(v0 + 256);
    LOBYTE(v35) = *(v0 + 308);
LABEL_20:
    *(v0 + 264) = v10;
    *(v0 + 272) = v2;
    v37(*(v0 + 144), *(v0 + 232) + ((v35 + 32) & ~v35) + v36 * v10, *(v0 + 120));
    v38 = swift_task_alloc();
    *(v0 + 280) = v38;
    *v38 = v0;
    v38[1] = sub_1D27AB7FC;
    v39 = *(v0 + 144);
    v40 = *(v0 + 80);
LABEL_21:

    return sub_1D27AC87C(v40, v39);
  }
}

uint64_t sub_1D27ABF10()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D27AC030, v3, v2);
}

uint64_t sub_1D27AC030()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  sub_1D22BD238(v1, &qword_1EC6E1D80);
  sub_1D22EC9BC(v2, v1, &qword_1EC6E1D80);
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = *(v0 + 288);
  v5 = *(v0 + 224);
  v6 = *(v0 + 168);
  v7 = *(v0 + 48);
  v8 = *v6;
  v9 = v6[1];
  sub_1D22BD1D0(*(v0 + 72), v7 + *(*(v0 + 32) + 32), &qword_1EC6E1D80);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v4;
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = *(v0 + 224);
  if (v11 >= v10 >> 1)
  {
    v12 = sub_1D27CDFA0(v10 > 1, v11 + 1, 1, *(v0 + 224));
  }

  v13 = *(v0 + 168);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_1D22BD238(*(v0 + 72), &qword_1EC6E1D80);
  sub_1D27B0AF0(v13, type metadata accessor for AnalyzerAmbiguity);
  *(v12 + 16) = v11 + 1;
  sub_1D22EC9BC(v15, v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, &unk_1EC6E1D70);
  while (1)
  {
    v16 = *(v0 + 216) + 1;
    if (v16 == *(v0 + 200))
    {
      break;
    }

    *(v0 + 216) = v16;
    *(v0 + 224) = v12;
    v17 = *(v0 + 168);
    sub_1D27B0A88(*(v0 + 16) + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v0 + 208) * v16, v17, type metadata accessor for AnalyzerAmbiguity);
    v18 = *(v17 + 16);
    *(v0 + 232) = v18;
    v19 = sub_1D27CDFC4(0, *(v18 + 16), 0, v3);
    v20 = *(v18 + 16);
    *(v0 + 240) = v20;
    if (v20)
    {
      v28 = *(v0 + 120);
      v29 = *(v0 + 128);
      v30 = *(v29 + 16);
      v29 += 16;
      v31 = *(v29 + 64);
      *(v0 + 308) = v31;
      *(v0 + 248) = *(v29 + 56);
      *(v0 + 256) = v30;
      *(v0 + 264) = 0;
      *(v0 + 272) = v19;
      v30(*(v0 + 144), *(v0 + 232) + ((v31 + 32) & ~v31), v28);
      v32 = swift_task_alloc();
      *(v0 + 280) = v32;
      *v32 = v0;
      v32[1] = sub_1D27AB7FC;
      v33 = *(v0 + 144);
      v34 = *(v0 + 80);
LABEL_15:

      return sub_1D27AC87C(v34, v33);
    }

    *(v0 + 288) = v19;
    if (*(v19 + 16))
    {
      v21 = *(v0 + 152);
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = *(v0 + 56);
      v25 = *(v0 + 168);
      (*(*(v0 + 96) + 56))(*(v0 + 72), 1, 1, *(v0 + 88));
      sub_1D22BD1D0(v25 + *(v21 + 24), v24, &qword_1EC6DA528);
      if ((*(v22 + 48))(v24, 1, v23) == 1)
      {
        sub_1D22BD238(*(v0 + 56), &qword_1EC6DA528);
        goto LABEL_2;
      }

      (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 56), *(v0 + 120));
      v35 = swift_task_alloc();
      *(v0 + 296) = v35;
      *v35 = v0;
      v35[1] = sub_1D27ABF10;
      v33 = *(v0 + 136);
      v34 = *(v0 + 64);
      goto LABEL_15;
    }

    sub_1D27B0AF0(*(v0 + 168), type metadata accessor for AnalyzerAmbiguity);

    v12 = *(v0 + 224);
  }

  v26 = *(v0 + 8);

  return v26(v12);
}

uint64_t sub_1D27AC4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  sub_1D22BD1D0(a3 + v10[7], a5 + v10[7], &unk_1EC6E1D40);
  v11 = v10[9];
  v12 = (a3 + v11);
  v13 = *(a3 + v11 + 16);
  *a5 = a1;
  a5[1] = a2;
  *(a5 + v10[8]) = a4;
  v14 = a5 + v11;
  *v14 = *v12;
  v14[16] = v13;
  sub_1D2870F68();

  return sub_1D2870F68();
}

uint64_t sub_1D27AC580(void (*a1)(__n128))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__modifyPromptInternally;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__modifyPromptInternally) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__modifyPromptInternally) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12[1] = v12;
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[-2] = v1;
    LOBYTE(v12[-1]) = 1;
    v13 = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }

  a1(v4);
  v9 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v9);
  v12[-2] = v1;
  v12[-1] = v6;
  v13 = v1;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  result = sub_1D22BD238(v6, &qword_1EC6E1D50);
  if (*(v1 + v7))
  {
    v11 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v11);
    v12[-2] = v1;
    LOBYTE(v12[-1]) = 0;
    v13 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + v7) = 0;
  }

  return result;
}

uint64_t sub_1D27AC87C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_1D28718F8();
  v3[16] = swift_task_alloc();
  sub_1D2878048();
  v3[17] = swift_task_alloc();
  sub_1D2878028();
  v3[18] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v4 = sub_1D2871818();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_1D2872AF8();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_1D2872AE8();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = sub_1D2872B28();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v8 = sub_1D2873788();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = sub_1D2878568();
  v3[38] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v3[39] = v10;
  v3[40] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D27ACBDC, v10, v9);
}

uint64_t sub_1D27ACBDC()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[14];
  v5 = *(v2 + 16);
  v0[41] = v5;
  v0[42] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E69E0140])
  {
    v31 = v0[35];
    v30 = v0[36];
    v32 = v0[34];
    v33 = v0[13];

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    (*(v31 + 8))(v30, v32);
LABEL_11:

    v55 = v0[1];

    return v55();
  }

  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[31];
  v9 = v0[32];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  (*(v0[35] + 96))(v6, v0[34]);
  (*(v9 + 32))(v7, v6, v8);
  sub_1D2872B08();
  if ((*(v11 + 88))(v10, v12) != *MEMORY[0x1E69DFCF0])
  {
    v36 = v0[26];
    v35 = v0[27];
    v37 = v0[25];

    (*(v36 + 8))(v35, v37);
LABEL_8:
    v39 = v0[32];
    v38 = v0[33];
    v40 = v0[31];
    v27 = sub_1D2872B18();
    v26 = v41;
    (*(v39 + 8))(v38, v40);
    v29 = 0;
    goto LABEL_9;
  }

  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[27];
  v15 = v0[28];
  (*(v0[26] + 96))(v16, v0[25]);
  (*(v14 + 32))(v13, v16, v15);
  if ((sub_1D2872AD8() & 1) == 0)
  {
    v48 = v0[32];
    v47 = v0[33];
    v50 = v0[30];
    v49 = v0[31];
    v51 = v0[28];
    v52 = v0[29];
    v53 = v0[13];

    (*(v52 + 8))(v50, v51);
    (*(v48 + 8))(v47, v49);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    goto LABEL_11;
  }

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[22];
  v20 = *(v0[15] + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel_personsCache);
  v0[43] = v20;
  sub_1D2872AB8();
  v21 = sub_1D28717C8();
  v22 = *(v18 + 8);
  v0[44] = v22;
  v0[45] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v17, v19);
  v23 = [v20 objectForKey_];

  if (v23)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v24 = v0[33];
    v25 = v0[31];
    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    v28 = *(v0[32] + 8);
    sub_1D2870F68();
    v28(v24, v25);
    v29 = *(v23 + 4);

LABEL_9:
    v42 = v0[41];
    v43 = v0[34];
    v45 = v0[13];
    v44 = v0[14];
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
    v42(v45 + *(v46 + 32), v44, v43);
    *v45 = v27;
    v45[1] = v26;
    v45[2] = v29;
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    goto LABEL_11;
  }

  sub_1D23C6CA0();
  v57 = _SystemPhotoLibrary.photoLibrary.getter();
  v0[46] = v57;

  if (!v57)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
LABEL_22:

    goto LABEL_8;
  }

  v58 = v0[24];
  v59 = v0[22];
  sub_1D2872AB8();
  v60 = sub_1D286641C(v58, v57);
  v0[47] = v60;
  v22(v58, v59);
  if (!v60)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    goto LABEL_22;
  }

  v61 = [v60 name];
  if (!v61)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    goto LABEL_8;
  }

  v62 = v61;
  v63 = sub_1D28780A8();
  v65 = v64;

  v0[48] = v63;
  v0[49] = v65;
  type metadata accessor for PhotosFaceCropFetcher();
  v0[50] = swift_initStackObject();
  v66 = [objc_opt_self() mainScreen];
  [v66 scale];
  v0[51] = v67;

  v0[52] = sub_1D2878558();
  v69 = sub_1D28784F8();
  v0[53] = v69;
  v0[54] = v68;

  return MEMORY[0x1EEE6DFA0](sub_1D27AD288, v69, v68);
}

uint64_t sub_1D27AD288()
{
  v1 = v0[51];
  v2 = *(v0 + 47);
  sub_1D2878CC8();
  v5 = [objc_allocWithZone(MEMORY[0x1E69C3780]) initWithPerson:v2 targetSize:v3 displayScale:{v4, v1}];
  *(v0 + 55) = v5;
  [v5 setCornerStyle_];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1D27AD398;
  v7 = *(v0 + 21);

  return sub_1D268764C(v7, v5);
}

uint64_t sub_1D27AD398()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_1D27ADC3C;
  }

  else
  {
    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_1D27AD4BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D27AD4BC()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1D27AD52C, v1, v2);
}

id sub_1D27AD52C()
{

  v1 = v0[20];
  sub_1D22BD1D0(v0[21], v1, &qword_1EC6DDD60);
  v2 = type metadata accessor for PhotosPersonImage();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v17 = v0[19];
    v16 = v0[20];
    sub_1D27B0A88(v16 + *(v2 + 24), v17, type metadata accessor for PlaygroundImage);
    sub_1D27B0AF0(v16, type metadata accessor for PhotosPersonImage);
    v18 = v0[19];
    if (*(v17 + 8) == 2)
    {
      v19 = *v18;
      v20 = v18;
    }

    else
    {
      v21 = sub_1D262B684();
      v22 = v0[19];
      if (v21)
      {
        v23 = v21;
        result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v21 imageOrientation:sub_1D263073C(*(v22 + 24))];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        sub_1D27B0AF0(v0[19], type metadata accessor for PlaygroundImage);

LABEL_10:
        v25 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v19;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_1D27B4794;
        *(v27 + 24) = v26;
        v0[6] = sub_1D2758C0C;
        v0[7] = v27;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1D27A19C0;
        v0[5] = &block_descriptor_137;
        v28 = _Block_copy(v0 + 2);
        v29 = v25;
        v30 = v19;
        sub_1D2870F78();

        v31 = [v29 imageWithActions_];

        _Block_release(v28);
        LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

        if (v29)
        {
          __break(1u);
        }

        else
        {
          v60 = v31;
          v32 = sub_1D2872AC8();
          v34 = v0[48];
          v33 = v0[49];
          if ((v32 & 1) == 0)
          {
LABEL_14:
            v56 = v0[46];
            v57 = v0[47];
            v37 = v0[44];
            v55 = v0[43];
            v39 = v0[29];
            v38 = v0[30];
            v40 = v0[24];
            v41 = v0[22];
            v58 = v0[21];
            v59 = v0[28];
            type metadata accessor for TitleAndIcon();
            v42 = swift_allocObject();
            *(v42 + 16) = v34;
            *(v42 + 24) = v33;
            *(v42 + 32) = v60;
            v43 = v60;
            sub_1D2870F78();
            v44 = v38;
            sub_1D2872AB8();
            v45 = sub_1D28717C8();
            v37(v40, v41);
            [v55 setObject:v42 forKey:v45];

            sub_1D22BD238(v58, &qword_1EC6DDD60);
            (*(v39 + 8))(v44, v59);
            v46 = v0[33];
            v47 = v0[31];
            v12 = *(v42 + 16);
            v14 = *(v42 + 24);
            v48 = *(v0[32] + 8);
            sub_1D2870F68();
            v48(v46, v47);
            v15 = *(v42 + 32);

            goto LABEL_15;
          }

          sub_1D2878018();
          sub_1D2878008();
          sub_1D2877FF8();

          sub_1D2878008();
          sub_1D2878038();
          if (qword_1ED89E0E8 == -1)
          {
LABEL_13:
            v35 = qword_1ED8B0058;
            sub_1D28718C8();
            v34 = sub_1D28780E8();
            v33 = v36;
            goto LABEL_14;
          }
        }

        swift_once();
        goto LABEL_13;
      }

      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      v20 = v22;
    }

    sub_1D27B0AF0(v20, type metadata accessor for PlaygroundImage);
    goto LABEL_10;
  }

  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[21];
  sub_1D22BD238(v0[20], &qword_1EC6DDD60);

  sub_1D22BD238(v8, &qword_1EC6DDD60);
  (*(v6 + 8))(v5, v7);
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  v12 = sub_1D2872B18();
  v14 = v13;
  (*(v10 + 8))(v9, v11);
  v15 = 0;
LABEL_15:
  v49 = v0[41];
  v50 = v0[34];
  v52 = v0[13];
  v51 = v0[14];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
  v49(v52 + *(v53 + 32), v51, v50);
  *v52 = v12;
  v52[1] = v14;
  v52[2] = v15;
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);

  v54 = v0[1];

  return v54();
}

uint64_t sub_1D27ADC3C()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1D27ADCAC, v1, v2);
}

id sub_1D27ADCAC()
{
  v1 = v0[21];

  v2 = type metadata accessor for PhotosPersonImage();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = v0[20];
  sub_1D22BD1D0(v0[21], v4, &qword_1EC6DDD60);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v19 = v0[19];
    v18 = v0[20];
    sub_1D27B0A88(v18 + *(v2 + 24), v19, type metadata accessor for PlaygroundImage);
    sub_1D27B0AF0(v18, type metadata accessor for PhotosPersonImage);
    v20 = v0[19];
    if (*(v19 + 8) == 2)
    {
      v21 = *v20;
      v22 = v20;
    }

    else
    {
      v23 = sub_1D262B684();
      v24 = v0[19];
      if (v23)
      {
        v25 = v23;
        result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v23 imageOrientation:sub_1D263073C(*(v24 + 24))];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        sub_1D27B0AF0(v0[19], type metadata accessor for PlaygroundImage);

LABEL_10:
        v27 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v21;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1D27B4794;
        *(v29 + 24) = v28;
        v0[6] = sub_1D2758C0C;
        v0[7] = v29;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1D27A19C0;
        v0[5] = &block_descriptor_137;
        v30 = _Block_copy(v0 + 2);
        v31 = v27;
        v32 = v21;
        sub_1D2870F78();

        v33 = [v31 imageWithActions_];

        _Block_release(v30);
        LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

        if (v31)
        {
          __break(1u);
        }

        else
        {
          v62 = v33;
          v34 = sub_1D2872AC8();
          v36 = v0[48];
          v35 = v0[49];
          if ((v34 & 1) == 0)
          {
LABEL_14:
            v58 = v0[46];
            v59 = v0[47];
            v39 = v0[44];
            v57 = v0[43];
            v41 = v0[29];
            v40 = v0[30];
            v42 = v0[24];
            v43 = v0[22];
            v60 = v0[21];
            v61 = v0[28];
            type metadata accessor for TitleAndIcon();
            v44 = swift_allocObject();
            *(v44 + 16) = v36;
            *(v44 + 24) = v35;
            *(v44 + 32) = v62;
            v45 = v62;
            sub_1D2870F78();
            v46 = v40;
            sub_1D2872AB8();
            v47 = sub_1D28717C8();
            v39(v42, v43);
            [v57 setObject:v44 forKey:v47];

            sub_1D22BD238(v60, &qword_1EC6DDD60);
            (*(v41 + 8))(v46, v61);
            v48 = v0[33];
            v49 = v0[31];
            v14 = *(v44 + 16);
            v16 = *(v44 + 24);
            v50 = *(v0[32] + 8);
            sub_1D2870F68();
            v50(v48, v49);
            v17 = *(v44 + 32);

            goto LABEL_15;
          }

          sub_1D2878018();
          sub_1D2878008();
          sub_1D2877FF8();

          sub_1D2878008();
          sub_1D2878038();
          if (qword_1ED89E0E8 == -1)
          {
LABEL_13:
            v37 = qword_1ED8B0058;
            sub_1D28718C8();
            v36 = sub_1D28780E8();
            v35 = v38;
            goto LABEL_14;
          }
        }

        swift_once();
        goto LABEL_13;
      }

      v21 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      v22 = v24;
    }

    sub_1D27B0AF0(v22, type metadata accessor for PlaygroundImage);
    goto LABEL_10;
  }

  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[21];
  sub_1D22BD238(v0[20], &qword_1EC6DDD60);

  sub_1D22BD238(v10, &qword_1EC6DDD60);
  (*(v8 + 8))(v7, v9);
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[31];
  v14 = sub_1D2872B18();
  v16 = v15;
  (*(v12 + 8))(v11, v13);
  v17 = 0;
LABEL_15:
  v51 = v0[41];
  v52 = v0[34];
  v54 = v0[13];
  v53 = v0[14];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
  v51(v54 + *(v55 + 32), v53, v52);
  *v54 = v14;
  v54[1] = v16;
  v54[2] = v17;
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);

  v56 = v0[1];

  return v56();
}

uint64_t sub_1D27AE430@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D27AE50C(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation;
  v3 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation);
  *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation) = a2;
  if (v3 == 1)
  {
    v4 = result;
    swift_getKeyPath();
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    if ((*(v4 + v2) & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) != 1)
      {
        return sub_1D27A6708();
      }
    }
  }

  return result;
}

uint64_t sub_1D27AE638()
{
  v1 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = *(*(v0 + 24) + 32);
  v5 = *(v4 + 16);
  result = sub_1D2870F68();
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_1D22D7044(v8, v12);
      sub_1D22D7044(v12, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0);
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0(v10);
        __swift_destroy_boxed_opaque_existential_0(v12);
        return 1;
      }

      sub_1D227268C(v12, v11);
      result = swift_dynamicCast();
      if (result)
      {

        sub_1D27B0AF0(v3, type metadata accessor for PhotosPersonAsset);
        return 1;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 0;
  }

  return result;
}

uint64_t sub_1D27AE7F0()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D23C7CA8();
  v7 = sub_1D2878068();
  v8 = sub_1D2878068();
  v9 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v6 + 48))
  {
    sub_1D2870F68();
    v10 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = v9;
    sub_1D24E8054(v10, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v9 = v22[0];
  }

  v12 = sub_1D2878068();
  v13 = sub_1D2418030(v9);

  if (v13)
  {
    type metadata accessor for IAPayloadKey(0);
    v21[1] = v14;
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D27AFFF0(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v15 = sub_1D2877E78();
  }

  else
  {
    v15 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v7 withNullableUniqueStringID:v12 withPayload:v15];

  result = sub_1D27AEBDC();
  if ((result & 1) == 0)
  {
    sub_1D2871EC8();
    v22[3] = v2;
    v22[4] = sub_1D27AFFF0(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
    swift_getKeyPath();
    v21[2] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v18 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v1, v22, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    (*(v3 + 8))(v5, v2);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  return result;
}

uint64_t sub_1D27AEBDC()
{
  v1 = v0;
  v2 = sub_1D2877B48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D2877BA8();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *(sub_1D23C6B54() + 56);

  if (v15 == 1)
  {
    v33 = v3;
    v34 = v2;
    v16 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet);
    v31 = v5;
    v32 = v6;
    v29 = 1;
    if (v16 == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v27 - 2) = v1;
      *(&v27 - 8) = 1;
      aBlock[0] = v1;
      sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
      sub_1D28719D8();
    }

    v30 = v7;
    sub_1D27A27DC(0);
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v18 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
      sub_1D2870F78();
      v18(0);
      sub_1D22D7900(v18, v19);
    }

    sub_1D22BCFD0(0, &qword_1ED89CD50);
    v20 = sub_1D2878AB8();
    sub_1D2877B88();
    sub_1D2877BC8();
    v28 = *(v9 + 8);
    v28(v11, v36);
    v21 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D27B4844;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_162;
    v22 = _Block_copy(aBlock);
    sub_1D2870F78();
    v23 = v35;
    sub_1D2877B58();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D27AFFF0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
    v24 = v31;
    v25 = v34;
    sub_1D2879088();
    MEMORY[0x1D38A1510](v14, v23, v24, v22);
    _Block_release(v22);

    (*(v33 + 8))(v24, v25);
    (*(v30 + 8))(v23, v32);
    v28(v14, v36);

    return v29;
  }

  return v15;
}

uint64_t sub_1D27AF1A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(sub_1D23C6B54() + 56);

    if (v2 == 1)
    {
      swift_getKeyPath();
      sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
      sub_1D28719E8();

      v3 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 24);
        sub_1D2870F78();
        v6(sub_1D27B484C, v1, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1D27AF30C();
    }
  }

  return result;
}

uint64_t sub_1D27AF30C()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2871EC8();
  v13[3] = v1;
  v13[4] = sub_1D27AFFF0(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  swift_getKeyPath();
  v12 = v0;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v6 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v0, v13, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v13);
  result = sub_1D27A6708();
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v0;
    v11[-8] = 0;
    v13[0] = v0;
    sub_1D28719D8();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) = 0;
  }

  return result;
}

uint64_t sub_1D27AF5B0(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    swift_getKeyPath();
    *&v14[0] = v1;
    sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    if ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) & 1) == 0)
    {
      swift_getKeyPath();
      *&v14[0] = v1;
      sub_1D28719E8();

      v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed;
      if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) == 1)
      {
        swift_getKeyPath();
        sub_1D28719E8();

        v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__representableToCommitAfterConfirmation;
        swift_beginAccess();
        sub_1D22BD1D0(v2 + v4, &v12, &unk_1EC6E1D30);
        if (v13)
        {
          sub_1D227268C(&v12, v14);
          swift_getKeyPath();
          *&v12 = v2;
          sub_1D28719E8();

          v5 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v6 = *(v5 + 8);
            ObjectType = swift_getObjectType();
            (*(v6 + 8))(v2, v14, ObjectType, v6);
            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_0(v14);
        }

        else
        {
          sub_1D22BD238(&v12, &unk_1EC6E1D30);
          sub_1D27A6708();
        }
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v12 = v2;
      sub_1D28719D8();

      result = sub_1D22BD238(v14, &unk_1EC6E1D30);
      if (*(v2 + v3))
      {
        v9 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v9);
        *&v14[0] = v2;
        sub_1D28719D8();
      }

      else
      {
        *(v2 + v3) = 0;
      }

      v10 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8))
      {
        v11 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v11);
        *&v14[0] = v2;
        sub_1D28719D8();
      }

      else
      {
        *v10 = 0;
        v10[1] = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D27AF9D4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D27AFA74@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__representableToCommitAfterConfirmation;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &unk_1EC6E1D30);
}

uint64_t sub_1D27AFB4C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = a2;
  return sub_1D27AF5B0(v3);
}

uint64_t sub_1D27AFB98()
{
  swift_getKeyPath();
  sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D27AFC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  *v3 = a2;
  v3[1] = a3;
  sub_1D2870F68();
}

uint64_t sub_1D27AFC9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__representableToCommitAfterConfirmation;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v4, &unk_1EC6E1D30);
  return swift_endAccess();
}

uint64_t sub_1D27AFD18()
{

  return swift_deallocClassInstance();
}

void sub_1D27AFDC4()
{
  sub_1D27AFEE0(319, &qword_1ED89CF20, type metadata accessor for CuratedPrompt, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D27AFEE0(319, &qword_1ED89CF10, type metadata accessor for IdentifiedEntity, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D2871798();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D27AFEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D27AFF98(uint64_t a1)
{
  result = sub_1D27AFFF0(&qword_1ED89E428, type metadata accessor for Prompt);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D27AFFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27B0038(uint64_t a1)
{
  *(a1 + 8) = sub_1D27AFFF0(&qword_1ED89E410, type metadata accessor for Prompt);
  result = sub_1D27AFFF0(qword_1ED89E438, type metadata accessor for Prompt);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D27B00BC@<X0>(uint64_t a1@<X8>)
{
  v34 = sub_1D28714D8();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Bubble(0);
  v40 = *(v8 - 8);
  v41 = v8;
  v39 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v35 = &v33 - v11;
  v42 = v1;
  v37 = sub_1D28779E8();
  v43 = type metadata accessor for BubbleWrapperView(0);
  v13 = *(v43 + 20);
  v36 = type metadata accessor for Bubble;
  sub_1D27B0A88(v1 + v13, v12, type metadata accessor for Bubble);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  v14 = type metadata accessor for BubbleView();
  v15 = v14[7];
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v16 = a1 + v14[8];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a1 + v14[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFB0);
  sub_1D2874328();
  sub_1D2877FE8();
  sub_1D28718C8();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v3 + 104);
  v20 = v34;
  v19(v5, v18, v34);
  sub_1D28714F8();
  sub_1D2877FE8();
  sub_1D28718C8();
  v19(v5, v18, v20);
  sub_1D28714F8();
  sub_1D2877FE8();
  sub_1D28718C8();
  v19(v5, v18, v20);
  sub_1D28714F8();
  v21 = a1 + v14[22];
  *v21 = xmmword_1D288A490;
  *(v21 + 16) = xmmword_1D288A4A0;
  *(v21 + 32) = xmmword_1D288A4B0;
  *(v21 + 48) = xmmword_1D288A4C0;
  *(v21 + 64) = xmmword_1D288A4D0;
  *(v21 + 80) = xmmword_1D288A4E0;
  *(v21 + 96) = 0x3FE4CCCCCCCCCCCDLL;
  v22 = v38;
  *(a1 + v14[10]) = v37;
  v23 = v35;
  v24 = v36;
  sub_1D27B0A88(v35, v22, v36);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = swift_allocObject();
  sub_1D27B0B50(v22, v26 + v25, type metadata accessor for Bubble);
  sub_1D2874328();
  *(a1 + v14[12]) = 0;
  v27 = (a1 + v14[13]);
  *v27 = CGRectMake;
  v27[1] = 0;
  v28 = (a1 + v14[14]);
  *v28 = CGRectMake;
  v28[1] = 0;
  *(a1 + v14[16]) = 0;
  sub_1D27B0A88(v23, v22, v24);
  v29 = swift_allocObject();
  sub_1D27B0B50(v22, v29 + v25, type metadata accessor for Bubble);
  sub_1D2874328();
  sub_1D27B0AF0(v23, type metadata accessor for Bubble);
  *(a1 + v14[17]) = 1;
  KeyPath = swift_getKeyPath();
  LOBYTE(v25) = *(v42 + *(v43 + 24));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1DE0);
  v32 = a1 + *(result + 36);
  *v32 = KeyPath;
  *(v32 + 8) = v25;
  return result;
}

void sub_1D27B07A8(int a1, id a2, void *a3)
{
  v5 = [a2 format];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v23 = [objc_opt_self() bezierPathWithOvalInRect_];
  [v23 addClip];
  v14 = [a2 format];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [a3 drawInRect_];
}

unint64_t sub_1D27B0938(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1D27B0BE8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1D2879158();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1D2879208() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_1D27B0A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D27B0AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D27B0B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D27B0BE8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1D27B0C80(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1D27B0CF4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1D27B0C80(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1D23BEC78(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D27B0CF4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1D2879208();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1D27B0E18(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v67) = a5;
  v77 = a4;
  v63 = a2;
  v62 = a1;
  v75 = sub_1D2877B38();
  v73 = *(v75 - 8);
  v8 = MEMORY[0x1EEE9AC00](v75);
  v72 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v57 - v10;
  v76 = sub_1D2877BA8();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2877B48();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2877B68();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v57 - v17;
  v18 = sub_1D2878AF8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a3;
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  v23 = sub_1D2872008();
  (*(*(v23 - 8) + 56))(v6 + v22, 1, 1, v23);
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___analyzer) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask) = 0;
  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTaskID;
  v25 = sub_1D2871818();
  (*(*(v25 - 8) + 56))(v6 + v24, 1, 1, v25);
  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel_debounceTimer;
  sub_1D22BCFD0(0, &unk_1ED89CD20);
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v26 = sub_1D2878AB8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D27AFFF0(&unk_1ED89CD30, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0);
  sub_1D22BB9D8(&qword_1ED89CE70, &unk_1EC6E10E0);
  sub_1D2879088();
  v27 = sub_1D2878B08();

  (*(v19 + 8))(v21, v18);
  *(v6 + v58) = v27;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__callDidSetAmbiguities) = 1;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__modifyPromptInternally) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel_onboardingSheetPresentationDelay) = 0x3FC999999999999ALL;
  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel_personsCache;
  v29 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  [v29 setCountLimit_];
  *(v6 + v28) = v29;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state) = 0;
  v30 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt);
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  v32 = v31[7];
  v33 = sub_1D2871318();
  (*(*(v33 - 8) + 56))(&v30[v32], 1, 1, v33);
  v34 = MEMORY[0x1E69E7CC0];
  *&v30[v31[8]] = MEMORY[0x1E69E7CC0];
  v35 = &v30[v31[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__entities) = v34;
  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__promptEditingCreationDate;
  v37 = sub_1D2871798();
  (*(*(v37 - 8) + 56))(v6 + v36, 1, 1, v37);
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__disallowedCuratedPromptIDs) = MEMORY[0x1E69E7CD0];
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode) = 0;
  v38 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  *v38 = 0;
  v38[1] = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel____lazy_storage___shouldFocusTextFieldOnAppear) = 2;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingSwitchStyleConfirmation) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) = 0;
  v39 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  *v39 = 0;
  v39[1] = 0;
  v40 = v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__representableToCommitAfterConfirmation;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0;
  sub_1D2871A18();
  v41 = v63;
  *(v6 + 16) = v62;
  *(v6 + 24) = v41;
  *(v6 + 32) = v59;
  v42 = v60;
  sub_1D22BD1D0(v77, v60, &qword_1EC6D9A30);
  v43 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D22BD238(v6 + v43, &qword_1EC6D9A30);
  sub_1D22EC9BC(v42, v6 + v43, &qword_1EC6D9A30);
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isFromEmojiPicker) = v67;
  v67 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel_debounceTimer;
  swift_getObjectType();
  v44 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D27B2354;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_99;
  v45 = _Block_copy(aBlock);
  sub_1D2870F78();
  v46 = v61;
  sub_1D2877B58();
  v47 = v64;
  sub_1D27A17E8();
  sub_1D2878B78();
  _Block_release(v45);
  (*(v68 + 8))(v47, v69);
  (*(v65 + 8))(v46, v66);

  ObjectType = swift_getObjectType();
  v49 = v70;
  sub_1D2877B78();
  v50 = v73;
  v51 = *(v73 + 104);
  v52 = v71;
  v53 = v75;
  v51(v71, *MEMORY[0x1E69E7F40], v75);
  v54 = v72;
  *v72 = 0;
  v51(v54, *MEMORY[0x1E69E7F28], v53);
  MEMORY[0x1D38A16E0](v49, v52, v54, ObjectType);
  v55 = *(v50 + 8);
  v55(v54, v53);
  v55(v52, v53);
  (*(v74 + 8))(v49, v76);
  swift_getObjectType();
  sub_1D2878B98();
  sub_1D22BD238(v77, &qword_1EC6D9A30);
  return v6;
}

uint64_t sub_1D27B1834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v21 - v13, &qword_1EC6D9A30);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D9A30);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D9A30);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D27AFFF0(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v14, &qword_1EC6D9A30);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &unk_1EC6E1D60);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D9A30);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D27B1B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D58);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v21 - v13, &unk_1EC6DAE40);
  sub_1D22BD1D0(a2, &v14[v15], &unk_1EC6DAE40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &unk_1EC6DAE40);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D27AFFF0(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v14, &unk_1EC6DAE40);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6E1D58);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &unk_1EC6DAE40);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D27B1F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v21 - v13, &qword_1EC6D8F70);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D8F70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D8F70);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D27AFFF0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v14, &qword_1EC6D8F70);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6D94F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F70);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D27B235C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2871818() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D27A8F04(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D27B24C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1D2871818() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BDFF8;

  return sub_1D27A9ECC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1D27B2640(uint64_t a1, int64_t a2)
{
  v149 = a1;
  v132 = sub_1D28718F8();
  v127 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v126 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for CuratedPrompt();
  v138 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v7 = (&v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v131 = &v125 - v11;
  v12 = type metadata accessor for PhotosPersonAsset();
  v13 = *(v12 - 8);
  v136 = v12;
  v137 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v2;
  v15 = *(v2 + 16);
  p_aBlock = sub_1D23C7044();
  v17 = sub_1D27ED8C8();

  v135 = v15;
  if ((v17 & 1) != 0 && (p_aBlock = sub_1D23C7B7C(), v18 = sub_1D22BF738(), , !v18))
  {
    p_aBlock = sub_1D23C6DDC();
    v20 = sub_1D2554D28();

    v19 = v20;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v21 = v137;
  v22 = v19[2];
  v146 = v7;
  v147 = a2;
  KeyPath = v148;
  v145 = v22;
  if (!v22)
  {

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v24 = 0;
  v143 = v19 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
  v129 = (v127 + 56);
  v25 = MEMORY[0x1E69E7CC0];
  v128 = &v164;
  v144 = v19;
  do
  {
    v26 = v19[2];
    if (v24 >= v26)
    {
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    sub_1D27B0A88(v143 + *(v21 + 72) * v24, KeyPath, type metadata accessor for PhotosPersonAsset);
    v27 = *(KeyPath + 56);
    if (!v27 || (v28 = [v27 name]) == 0)
    {
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      goto LABEL_33;
    }

    v29 = v7;
    v141 = v25;
    v30 = v28;
    v31 = sub_1D28780A8();
    isEscapingClosureAtFileLocation = a2;
    v33 = v32;

    *(&v151 + 1) = v136;
    v152 = sub_1D27AFFF0(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v150);
    sub_1D27B0A88(KeyPath, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = (v35 + 16);
    v37 = v149;
    v38 = sub_1D2878188();
    v139 = v35;
    v140 = v33;
    v133 = v31;
    if (v38 > 2)
    {
      *&aBlock = v31;
      *(&aBlock + 1) = v33;
      v153 = v37;
      v154 = isEscapingClosureAtFileLocation;
      v42 = v131;
      (*v129)(v131, 1, 1, v132);
      sub_1D22BD06C();
      sub_1D2878FD8();
      p_aBlock = v43;
      v44 = v42;
      KeyPath = v148;
      sub_1D22BD238(v44, &qword_1EC6E1D90);
      *v36 = (p_aBlock & 1) == 0;
      a2 = isEscapingClosureAtFileLocation;
      v7 = v29;
      v21 = v137;
    }

    else
    {
      *&aBlock = v31;
      *(&aBlock + 1) = v33;
      v39 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v39 = v31;
      }

      v40 = 7;
      if (((v33 >> 60) & ((v31 & 0x800000000000000) == 0)) != 0)
      {
        v40 = 11;
      }

      v153 = 15;
      v154 = v40 | (v39 << 16);
      v41 = swift_allocObject();
      v41[2] = v37;
      v41[3] = isEscapingClosureAtFileLocation;
      v41[4] = v35;
      sub_1D2870F68();
      sub_1D2870F78();
      isEscapingClosureAtFileLocation = &unk_1D28A6118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1DA8);
      sub_1D22BD06C();
      sub_1D22BB9D8(&unk_1EC6E1DB0, &qword_1EC6E1DA8);
      p_aBlock = &aBlock;
      v7 = v146;
      a2 = v147;
      sub_1D2878F98();
      v21 = v137;
    }

    swift_beginAccess();
    if (*v36)
    {
      v45 = KeyPath + *(v136 + 20);
      v46 = v45 + *(type metadata accessor for PhotosPersonImage() + 24);
      v47 = v134;
      sub_1D27B0A88(v46, v134, type metadata accessor for PlaygroundImage);
      if (*(v47 + 8) == 2)
      {
        v48 = v134;
        v49 = *v134;
        v50 = v48;
      }

      else
      {
        v51 = sub_1D262B684();
        if (v51)
        {
          v52 = v51;
          LODWORD(v53) = *(v134 + 24);
          type metadata accessor for CGImagePropertyOrientation(0);
          if ((v53 - 1) >= 8)
          {
            goto LABEL_152;
          }

          v53 = qword_1D28A62D8[(v53 - 1)];
          v54 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v52 imageOrientation:v53];
          if (!v54)
          {
            __break(1u);
LABEL_152:
            LODWORD(aBlock) = v53;
            result = sub_1D28796B8();
            __break(1u);
            return result;
          }

          v49 = v54;
          sub_1D27B0AF0(v134, type metadata accessor for PlaygroundImage);

          goto LABEL_30;
        }

        v49 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        v50 = v134;
      }

      sub_1D27B0AF0(v50, type metadata accessor for PlaygroundImage);
LABEL_30:
      v55 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
      v25 = swift_allocObject();
      *(v25 + 16) = v55;
      *(v25 + 24) = v49;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1D27B5978;
      *(v21 + 24) = v25;
      *&v165 = sub_1D2759384;
      *(&v165 + 1) = v21;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v164 = sub_1D27A19C0;
      *(&v164 + 1) = &block_descriptor_185;
      v56 = _Block_copy(&aBlock);
      v7 = v55;
      KeyPath = v49;
      sub_1D2870F78();

      p_aBlock = [v7 imageWithActions_];

      _Block_release(v56);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_149;
      }

      sub_1D22D7044(&v150, &v160 + 8);
      *&v157 = v133;
      *(&v157 + 1) = v140;
      *&v158 = v133;
      *(&v158 + 1) = v140;
      a2 = v147;
      *&v159 = v149;
      *(&v159 + 1) = v147;
      *&v160 = p_aBlock;
      sub_1D2870F68();
      sub_1D2870F68();
      v7 = v146;
      v25 = v141;
      v21 = v137;
      KeyPath = v148;
      goto LABEL_32;
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v25 = v141;
LABEL_32:

    __swift_destroy_boxed_opaque_existential_0(&v150);
LABEL_33:
    sub_1D27B0AF0(KeyPath, type metadata accessor for PhotosPersonAsset);
    if (*(&v157 + 1))
    {
      v165 = v159;
      v166 = v160;
      v167 = v161;
      v168 = v162;
      aBlock = v157;
      v164 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CDD60(0, *(v25 + 16) + 1, 1, v25);
      }

      v58 = *(v25 + 16);
      v57 = *(v25 + 24);
      p_aBlock = v58 + 1;
      v19 = v144;
      if (v58 >= v57 >> 1)
      {
        v25 = sub_1D27CDD60((v57 > 1), v58 + 1, 1, v25);
        v19 = v144;
      }

      *(v25 + 16) = p_aBlock;
      v59 = (v25 + 96 * v58);
      v60 = v164;
      v59[2] = aBlock;
      v59[3] = v60;
      v61 = v165;
      v62 = v166;
      v63 = v168;
      v59[6] = v167;
      v59[7] = v63;
      v59[4] = v61;
      v59[5] = v62;
      KeyPath = v148;
    }

    else
    {
      sub_1D22BD238(&v157, &unk_1EC6E1D98);
      v19 = v144;
    }

    ++v24;
  }

  while (v145 != v24);

LABEL_41:
  isEscapingClosureAtFileLocation = *(sub_1D23C7858() + 56);
  sub_1D2870F68();

  KeyPath = swift_getKeyPath();
  v64 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel___observationRegistrar;
  v21 = v142;
  *&aBlock = v142;
  v144 = sub_1D27AFFF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  v145 = v64;
  p_aBlock = v21 + v64;
  sub_1D28719E8();

  if (!*(v21 + 32) || (v140 = *(isEscapingClosureAtFileLocation + 16)) == 0)
  {

    v24 = MEMORY[0x1E69E7CC0];
    if (!*(v25 + 16))
    {
      goto LABEL_118;
    }

LABEL_110:
    v97 = [objc_opt_self() mainBundle];
    p_aBlock = sub_1D2871368();
    KeyPath = v98;

    v7 = sub_1D27CDE80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = v7[2];
    v26 = v7[3];
    isEscapingClosureAtFileLocation = v21 + 1;
    if (v21 >= v26 >> 1)
    {
      goto LABEL_150;
    }

    goto LABEL_111;
  }

  v141 = v25;
  v25 = 0;
  v65 = *(v138 + 80);
  v139 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__disallowedCuratedPromptIDs;
  v143 = isEscapingClosureAtFileLocation;
  v137 = isEscapingClosureAtFileLocation + ((v65 + 32) & ~v65);
  v133 = "numberOfSuggestedPeople";
  v134 = 0x80000001D28B8A20;
  v128 = "carousel-face-quality-threshold";
  v129 = (v127 + 56);
  v24 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v26 = *(v143 + 16);
    if (v25 >= v26)
    {
      goto LABEL_147;
    }

    sub_1D27B0A88(v137 + *(v138 + 72) * v25, v7, type metadata accessor for CuratedPrompt);
    swift_getKeyPath();
    v21 = v142;
    *&aBlock = v142;
    p_aBlock = &v145[v142];
    sub_1D28719E8();

    KeyPath = *(v21 + v139);
    v66 = *(KeyPath + 16);
    v148 = v24;
    if (v66)
    {
      v21 = *v7;
      isEscapingClosureAtFileLocation = v7[1];
      sub_1D28797D8();
      sub_1D2870F68();
      sub_1D2877F38();
      v67 = sub_1D2879828();
      p_aBlock = KeyPath + 56;
      v68 = -1 << *(KeyPath + 32);
      v69 = v67 & ~v68;
      if ((*(KeyPath + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
      {
        v70 = ~v68;
        while (1)
        {
          v71 = (*(KeyPath + 48) + 16 * v69);
          v72 = *v71 == v21 && v71[1] == isEscapingClosureAtFileLocation;
          if (v72 || (sub_1D2879618() & 1) != 0)
          {
            break;
          }

          v69 = (v69 + 1) & v70;
          if (((*(p_aBlock + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        v73 = 0;
      }

      else
      {
LABEL_56:
        v73 = 1;
      }

      v7 = v146;
    }

    else
    {
      v73 = 1;
    }

    if ((v7[6][64] & 1) == 0)
    {
      if (v73)
      {
        goto LABEL_91;
      }

      goto LABEL_97;
    }

    v74 = type metadata accessor for PersonalizationFeatures();
    v75 = v135;
    swift_beginAccess();
    v76 = *(v75 + 16);
    if (*(v76 + 16) && (v77 = sub_1D25D0574(v74), (v78 & 1) != 0))
    {
      sub_1D22D7044(*(v76 + 56) + 40 * v77, &aBlock);
      swift_endAccess();
      sub_1D227268C(&aBlock, &v150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
      swift_dynamicCast();
      v21 = v155;
    }

    else
    {
      swift_endAccess();
      v21 = swift_allocObject();
      sub_1D2871DF8();
      *(v21 + 16) = sub_1D2871DE8() & 1;
      *(v21 + 17) = 1;
      sub_1D2871A18();
      *(&v164 + 1) = v74;
      *&v165 = &off_1F4DD7110;
      *&aBlock = v21;
      swift_beginAccess();
      sub_1D2870F78();
      sub_1D25CDC34(&aBlock, v74);
      swift_endAccess();
    }

    v79 = [objc_opt_self() mainBundle];
    KeyPath = [v79 bundleIdentifier];

    if (!KeyPath)
    {
      goto LABEL_74;
    }

    isEscapingClosureAtFileLocation = sub_1D28780A8();
    v81 = v80;

    if (isEscapingClosureAtFileLocation == 0xD000000000000015 && v134 == v81)
    {

      goto LABEL_72;
    }

    KeyPath = sub_1D2879618();

    if ((KeyPath & 1) == 0)
    {
LABEL_74:
      if (qword_1ED8A4928 != -1)
      {
        swift_once();
      }

      sub_1D22BCFD0(0, &qword_1ED89CDA0);
      isEscapingClosureAtFileLocation = sub_1D2878A58();
      v82 = sub_1D2878068();
      v83 = [isEscapingClosureAtFileLocation objectForKey_];

      if (v83)
      {
        sub_1D2879008();
        swift_unknownObjectRelease();
      }

      else
      {
        v150 = 0u;
        v151 = 0u;
      }

      v7 = v146;
      aBlock = v150;
      v164 = v151;
      if (!*(&v151 + 1))
      {
        goto LABEL_89;
      }

      if (swift_dynamicCast() & 1) == 0 || (v155)
      {
        goto LABEL_90;
      }

      KeyPath = sub_1D2878A58();
      isEscapingClosureAtFileLocation = sub_1D2878068();
      p_aBlock = [KeyPath objectForKey_];

      if (p_aBlock)
      {
        sub_1D2879008();
        swift_unknownObjectRelease();
      }

      else
      {
        v150 = 0u;
        v151 = 0u;
      }

      aBlock = v150;
      v164 = v151;
      if (!*(&v151 + 1))
      {
LABEL_89:
        sub_1D22BD238(&aBlock, &qword_1EC6E1900);
        goto LABEL_90;
      }

      if (swift_dynamicCast() & 1) == 0 || (v155)
      {
        goto LABEL_90;
      }

LABEL_73:

      goto LABEL_97;
    }

LABEL_72:
    *(&v164 + 1) = &type metadata for NotesFeatures;
    *&v165 = sub_1D22D7288();
    LOBYTE(aBlock) = 0;
    p_aBlock = sub_1D2871AA8();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if ((p_aBlock & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_90:
    KeyPath = swift_getKeyPath();
    *&aBlock = v21;
    sub_1D27AFFF0(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
    sub_1D28719E8();

    p_aBlock = *(v21 + 16);

    if ((v73 & p_aBlock & 1) == 0)
    {
LABEL_97:
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v24 = v148;
      goto LABEL_103;
    }

LABEL_91:
    v84 = v7[2];
    v21 = v7[3];
    *(&v164 + 1) = v130;
    *&v165 = sub_1D27AFFF0(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
    v85 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    sub_1D27B0A88(v7, v85, type metadata accessor for CuratedPrompt);
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = 0;
    v86 = (isEscapingClosureAtFileLocation + 16);
    v87 = v149;
    if (sub_1D2878188() > 2)
    {
      *&v150 = v84;
      *(&v150 + 1) = v21;
      v155 = v87;
      v156 = a2;
      KeyPath = v131;
      (*v129)(v131, 1, 1, v132);
      sub_1D22BD06C();
      sub_1D2878FD8();
      p_aBlock = v90;
      sub_1D22BD238(KeyPath, &qword_1EC6E1D90);
      *v86 = (p_aBlock & 1) == 0;
    }

    else
    {
      *&v150 = v84;
      *(&v150 + 1) = v21;
      v88 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v88 = v84;
      }

      v89 = 7;
      if (((v21 >> 60) & ((v84 & 0x800000000000000) == 0)) != 0)
      {
        v89 = 11;
      }

      v155 = 15;
      v156 = v89 | (v88 << 16);
      KeyPath = swift_allocObject();
      *(KeyPath + 16) = v87;
      *(KeyPath + 24) = a2;
      *(KeyPath + 32) = isEscapingClosureAtFileLocation;
      sub_1D2870F68();
      sub_1D2870F78();
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1DA8);
      sub_1D22BD06C();
      sub_1D22BB9D8(&unk_1EC6E1DB0, &qword_1EC6E1DA8);
      p_aBlock = &v150;
      v7 = v146;
      a2 = v147;
      sub_1D2878F98();
    }

    swift_beginAccess();
    if (*v86)
    {
      swift_bridgeObjectRetain_n();
      sub_1D2870F68();
      p_aBlock = sub_1D27A87BC(v7, v142);
      sub_1D22D7044(&aBlock, &v160 + 8);
      *&v157 = v84;
      *(&v157 + 1) = v21;
      *&v158 = v84;
      *(&v158 + 1) = v21;
      *&v159 = v149;
      *(&v159 + 1) = a2;
      *&v160 = p_aBlock;
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
    }

    v24 = v148;

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
LABEL_103:
    sub_1D27B0AF0(v7, type metadata accessor for CuratedPrompt);
    if (*(&v157 + 1))
    {
      v165 = v159;
      v166 = v160;
      v167 = v161;
      v168 = v162;
      aBlock = v157;
      v164 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1D27CDD60(0, *(v24 + 2) + 1, 1, v24);
      }

      KeyPath = *(v24 + 2);
      v91 = *(v24 + 3);
      p_aBlock = KeyPath + 1;
      if (KeyPath >= v91 >> 1)
      {
        v24 = sub_1D27CDD60((v91 > 1), KeyPath + 1, 1, v24);
      }

      *(v24 + 2) = p_aBlock;
      v92 = &v24[96 * KeyPath];
      v93 = v164;
      *(v92 + 2) = aBlock;
      *(v92 + 3) = v93;
      v94 = v165;
      v95 = v166;
      v96 = v168;
      *(v92 + 6) = v167;
      *(v92 + 7) = v96;
      *(v92 + 4) = v94;
      *(v92 + 5) = v95;
    }

    else
    {
      sub_1D22BD238(&v157, &unk_1EC6E1D98);
    }

    if (++v25 != v140)
    {
      continue;
    }

    break;
  }

  v25 = v141;
  if (*(v141 + 16))
  {
    goto LABEL_110;
  }

LABEL_118:

  v7 = MEMORY[0x1E69E7CC0];
  if (*(v24 + 2))
  {
    goto LABEL_112;
  }

LABEL_119:

  if (v7[2])
  {
    while (1)
    {
      v145 = v7;
      KeyPath = [objc_allocWithZone(MEMORY[0x1E69DD080]) init];
      v107 = sub_1D2878068();
      v108 = [v107 length];

      v109 = sub_1D2878068();
      v21 = v126;
      sub_1D28718C8();
      sub_1D2871838();
      v24 = v110;
      (*(v127 + 8))(v21, v132);
      v111 = sub_1D2878068();

      p_aBlock = [KeyPath completionsForPartialWordRange:0 inString:v108 language:{v109, v111}];

      if (!p_aBlock)
      {
        return v145;
      }

      v7 = sub_1D28783E8();

      v112 = v7[2];
      if (!v112)
      {
        break;
      }

      v25 = 0;
      v113 = v7 + 5;
      isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
      v114 = v149;
      while (1)
      {
        v26 = v7[2];
        if (v25 >= v26)
        {
          break;
        }

        KeyPath = *(v113 - 1);
        v24 = *v113;
        v21 = v147;
        if (KeyPath != v114 || v24 != v147)
        {
          if (sub_1D2879618())
          {
            v114 = v149;
          }

          else
          {
            *&aBlock = KeyPath;
            *(&aBlock + 1) = v24;
            swift_bridgeObjectRetain_n();
            MEMORY[0x1D38A0C50](32, 0xE100000000000000);
            v146 = *(&aBlock + 1);
            v148 = aBlock;
            sub_1D2870F68();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              isEscapingClosureAtFileLocation = sub_1D27CDD60(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
            }

            v21 = *(isEscapingClosureAtFileLocation + 16);
            v116 = *(isEscapingClosureAtFileLocation + 24);
            p_aBlock = v21 + 1;
            v114 = v149;
            if (v21 >= v116 >> 1)
            {
              v120 = sub_1D27CDD60((v116 > 1), v21 + 1, 1, isEscapingClosureAtFileLocation);
              v114 = v149;
              isEscapingClosureAtFileLocation = v120;
            }

            *(isEscapingClosureAtFileLocation + 16) = p_aBlock;
            v117 = isEscapingClosureAtFileLocation + 96 * v21;
            *(v117 + 32) = KeyPath;
            *(v117 + 40) = v24;
            v119 = v146;
            v118 = v147;
            *(v117 + 48) = v148;
            *(v117 + 56) = v119;
            *(v117 + 64) = v114;
            *(v117 + 72) = v118;
            *(v117 + 80) = 0u;
            *(v117 + 96) = 0u;
            *(v117 + 112) = 0u;
          }
        }

        ++v25;
        v113 += 2;
        if (v112 == v25)
        {
          goto LABEL_137;
        }
      }

LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      v7 = sub_1D27CDE80((v26 > 1), isEscapingClosureAtFileLocation, 1, v7);
LABEL_111:
      v7[2] = isEscapingClosureAtFileLocation;
      v99 = &v7[3 * v21];
      v99[4] = p_aBlock;
      v99[5] = KeyPath;
      v99[6] = v25;
      if (!*(v24 + 2))
      {
        goto LABEL_119;
      }

LABEL_112:
      v100 = [objc_opt_self() mainBundle];
      v101 = sub_1D2871368();
      v103 = v102;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D27CDE80(0, (v7[2] + 1), 1, v7);
      }

      v105 = v7[2];
      v104 = v7[3];
      if (v105 >= v104 >> 1)
      {
        v7 = sub_1D27CDE80((v104 > 1), v105 + 1, 1, v7);
      }

      v7[2] = (v105 + 1);
      v106 = &v7[3 * v105];
      v106[4] = v101;
      v106[5] = v103;
      v106[6] = v24;
    }

    isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
LABEL_137:

    if (!*(isEscapingClosureAtFileLocation + 16))
    {

      return v145;
    }

    v7 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D27CDE80(0, (v7[2] + 1), 1, v7);
    }

    v122 = v7[2];
    v121 = v7[3];
    if (v122 >= v121 >> 1)
    {
      v7 = sub_1D27CDE80((v121 > 1), v122 + 1, 1, v7);
    }

    v7[2] = (v122 + 1);
    v123 = &v7[3 * v122];
    v123[4] = 0;
    v123[5] = 0xE000000000000000;
    v123[6] = isEscapingClosureAtFileLocation;
  }

  return v7;
}

uint64_t sub_1D27B4058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v45 - v4;
  v5 = sub_1D2873788();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D70);
  v15 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v49 = &v45 - v16;
  v17 = type metadata accessor for AnalyzerAmbiguity();
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v55 = v5;
  v56 = v19;
  v69 = MEMORY[0x1E69E7CC0];
  v54 = v20;
  sub_1D23D8BE4(0, v20, 0);
  v21 = 0;
  v53 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v66 = (v6 + 16);
  v63 = v69;
  v64 = v6 + 32;
  v48 = v3;
  v51 = (v6 + 56);
  v52 = (v3 + 48);
  v50 = *(v15 + 72);
  v22 = v49;
  v47 = v11;
  v46 = v14;
  do
  {
    v62 = v21;
    sub_1D22BD1D0(v53 + v50 * v21, v22, &unk_1EC6E1D70);
    v23 = *v22;
    v60 = v22[1];
    v61 = v23;
    v24 = v22[2];
    v25 = *(v24 + 16);
    if (v25)
    {
      v68 = MEMORY[0x1E69E7CC0];
      sub_1D23D8C28(0, v25, 0);
      v26 = v68;
      v27 = v24 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v67 = *(v48 + 72);
      v28 = v2;
      v29 = v55;
      do
      {
        v30 = v6;
        v31 = v65;
        sub_1D22BD1D0(v27, v65, &qword_1EC6E1D88);
        (*v66)(v8, v31 + *(v28 + 32), v29);
        sub_1D22BD238(v31, &qword_1EC6E1D88);
        v68 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D23D8C28(v32 > 1, v33 + 1, 1);
          v26 = v68;
        }

        *(v26 + 16) = v33 + 1;
        v6 = v30;
        (*(v30 + 32))(v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v33, v8, v29);
        v27 += v67;
        --v25;
      }

      while (v25);
      v2 = v28;
      v11 = v47;
      v14 = v46;
      v22 = v49;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
      v29 = v55;
    }

    sub_1D22BD1D0(v22 + *(v59 + 32), v11, &qword_1EC6E1D80);
    sub_1D22BD238(v22, &unk_1EC6E1D70);
    if ((*v52)(v11, 1, v2) == 1)
    {
      sub_1D22BD238(v11, &qword_1EC6E1D80);
      v34 = 1;
    }

    else
    {
      (*v66)(v14, &v11[*(v2 + 32)], v29);
      sub_1D22BD238(v11, &qword_1EC6E1D88);
      v34 = 0;
    }

    (*v51)(v14, v34, 1, v29);
    v35 = v56;
    v36 = v60;
    *v56 = v61;
    v35[1] = v36;
    v35[2] = v26;
    v37 = v35;
    sub_1D22EC9BC(v14, v35 + *(v58 + 24), &qword_1EC6DA528);
    v38 = v63;
    v69 = v63;
    v40 = *(v63 + 16);
    v39 = *(v63 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1D23D8BE4(v39 > 1, v40 + 1, 1);
      v37 = v56;
      v38 = v69;
    }

    v41 = v62 + 1;
    *(v38 + 16) = v40 + 1;
    v42 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v63 = v38;
    v43 = v38 + v42 + *(v57 + 72) * v40;
    v21 = v41;
    sub_1D27B0B50(v37, v43, type metadata accessor for AnalyzerAmbiguity);
  }

  while (v21 != v54);
  return v63;
}

uint64_t sub_1D27B470C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__analyzerTask) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D27B47B4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D27B4800()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = *(v0 + 24);
  return sub_1D27AF5B0(v2);
}

uint64_t sub_1D27B484C(uint64_t result)
{
  if (result)
  {
    return sub_1D27AF30C();
  }

  return result;
}

uint64_t objectdestroy_168Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D27B4928()
{
  result = type metadata accessor for Bubble(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_234Tm()
{
  v1 = *(type metadata accessor for Bubble(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  type metadata accessor for Bubble.BubbleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {

        v76 = *(type metadata accessor for Prompt(0) + 36);
        v77 = sub_1D2871798();
        (*(*(v77 - 8) + 8))(v3 + v76, v77);
        goto LABEL_64;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_15;
      }

      v41 = type metadata accessor for PhotosPersonAsset();
      if (!(*(*(v41 - 8) + 48))(v0 + v2, 1, v41))
      {

        if (*(v3 + 32))
        {
        }

        v42 = v3 + *(v41 + 20);

        v43 = (v42 + *(type metadata accessor for PhotosPersonImage() + 24));

        v44 = type metadata accessor for PlaygroundImage();
        v45 = v44[8];
        v46 = sub_1D2871818();
        (*(*(v46 - 8) + 8))(v43 + v45, v46);
        v47 = (v43 + v44[10]);
        v48 = v47[1];
        if (v48 >> 60 != 15)
        {
          sub_1D22D6D60(*v47, v48);
        }

        v49 = v44[11];
        v50 = sub_1D2873AA8();
        v51 = *(v50 - 8);
        if (!(*(v51 + 48))(v43 + v49, 1, v50))
        {
          (*(v51 + 8))(v43 + v49, v50);
        }
      }

      v5 = *(type metadata accessor for PersonConditioningImage() + 20);
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload == 8)
    {
LABEL_15:

      v6 = type metadata accessor for PlaygroundImage();
      v7 = v6[8];
      v8 = sub_1D2871818();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      v9 = (v3 + v6[10]);
      v10 = v9[1];
      if (v10 >> 60 != 15)
      {
        sub_1D22D6D60(*v9, v10);
      }

      v11 = v6[11];
      v12 = sub_1D2873AA8();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v3 + v11, 1, v12))
      {
        (*(v13 + 8))(v3 + v11, v12);
      }

      goto LABEL_64;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_64;
      }

      goto LABEL_15;
    }

LABEL_62:

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = sub_1D2872008();
      (*(*(v24 - 8) + 8))(v0 + v2, v24);
      goto LABEL_64;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_64;
    }

    v14 = type metadata accessor for CuratedPrompt();
    v15 = (v3 + v14[8]);
    v16 = type metadata accessor for PlaygroundImage();
    v17 = *(*(v16 - 1) + 48);
    if (v17(v15, 1, v16))
    {
      goto LABEL_55;
    }

    v18 = v16[8];
    v19 = sub_1D2871818();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    v20 = (v15 + v16[10]);
    v21 = v20[1];
    if (v21 >> 60 != 15)
    {
      sub_1D22D6D60(*v20, v21);
    }

    v22 = v16[11];
    v23 = sub_1D2873AA8();
    v80 = *(v23 - 8);
    v82 = v22;
    if ((*(v80 + 48))(v15 + v22, 1, v23))
    {
      goto LABEL_55;
    }

LABEL_54:
    (*(v80 + 8))(v15 + v82, v23);
LABEL_55:
    v66 = (v3 + v14[9]);
    if (!v17(v66, 1, v16))
    {

      v67 = v16[8];
      v68 = sub_1D2871818();
      (*(*(v68 - 8) + 8))(v66 + v67, v68);
      v69 = (v66 + v16[10]);
      v70 = v69[1];
      if (v70 >> 60 != 15)
      {
        sub_1D22D6D60(*v69, v70);
      }

      v71 = v16[11];
      v72 = sub_1D2873AA8();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v66 + v71, 1, v72))
      {
        (*(v73 + 8))(v66 + v71, v72);
      }
    }

    v74 = v3 + v14[23];
    v75 = *(v74 + 48);
    if (v75 != 255)
    {
      sub_1D23B7DA0(*v74, *(v74 + 8), *(v74 + 16), *(v74 + 24), *(v74 + 32), *(v74 + 40), v75 & 1);
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v14 = type metadata accessor for CuratedPrompt();
    v15 = (v3 + v14[8]);
    v16 = type metadata accessor for PlaygroundImage();
    v17 = *(*(v16 - 1) + 48);
    if (v17(v15, 1, v16))
    {
      goto LABEL_55;
    }

    v61 = v16[8];
    v62 = sub_1D2871818();
    (*(*(v62 - 8) + 8))(v15 + v61, v62);
    v63 = (v15 + v16[10]);
    v64 = v63[1];
    if (v64 >> 60 != 15)
    {
      sub_1D22D6D60(*v63, v64);
    }

    v65 = v16[11];
    v23 = sub_1D2873AA8();
    v80 = *(v23 - 8);
    v82 = v65;
    if ((*(v80 + 48))(v15 + v65, 1, v23))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (EnumCaseMultiPayload != 3)
  {

    if (*(v3 + 32))
    {
    }

    v3 += *(type metadata accessor for PhotosPersonAsset() + 20);

    v5 = *(type metadata accessor for PhotosPersonImage() + 24);
LABEL_45:
    v52 = v3 + v5;

    v53 = type metadata accessor for PlaygroundImage();
    v54 = v53[8];
    v55 = sub_1D2871818();
    (*(*(v55 - 8) + 8))(v52 + v54, v55);
    v56 = (v52 + v53[10]);
    v57 = v56[1];
    if (v57 >> 60 != 15)
    {
      sub_1D22D6D60(*v56, v57);
    }

    v58 = v53[11];
    v59 = sub_1D2873AA8();
    v60 = *(v59 - 8);
    if (!(*(v60 + 48))(v52 + v58, 1, v59))
    {
      (*(v60 + 8))(v52 + v58, v59);
    }

    goto LABEL_64;
  }

  v25 = type metadata accessor for PlaygroundImage();
  v26 = v25[8];
  v27 = sub_1D2871818();
  v83 = *(*(v27 - 8) + 8);
  v83(v3 + v26, v27);
  v28 = (v3 + v25[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1D22D6D60(*v28, v29);
  }

  v30 = v25[11];
  v31 = sub_1D2873AA8();
  v32 = *(v31 - 8);
  v81 = *(v32 + 48);
  if (!v81(v3 + v30, 1, v31))
  {
    (*(v32 + 8))(v3 + v30, v31);
  }

  v79 = v32;
  v33 = type metadata accessor for CharacterAsset();
  v34 = (v3 + *(v33 + 20));
  if (!(*(*(v25 - 1) + 48))(v34, 1, v25))
  {

    v83(v34 + v25[8], v27);
    v35 = (v34 + v25[10]);
    v36 = v35[1];
    if (v36 >> 60 != 15)
    {
      sub_1D22D6D60(*v35, v36);
    }

    v37 = v25[11];
    if (!v81(v34 + v37, 1, v31))
    {
      (*(v79 + 8))(v34 + v37, v31);
    }
  }

  v38 = *(v33 + 24);
  v39 = v38 + *(type metadata accessor for CharacterRecipe() + 20);
  v40 = sub_1D28737A8();
  (*(*(v40 - 8) + 8))(v3 + v39, v40);
LABEL_64:

  return swift_deallocObject();
}

uint64_t sub_1D27B5714@<X0>(void *a1@<X8>)
{
  type metadata accessor for Bubble(0);

  return sub_1D26BC35C(a1);
}

unint64_t sub_1D27B5784()
{
  result = qword_1EC6D7E18;
  if (!qword_1EC6D7E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1DE0);
    sub_1D27AFFF0(&qword_1ED8A5240, type metadata accessor for BubbleView);
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E18);
  }

  return result;
}

uint64_t sub_1D27B597C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[10];
  sub_1D27B5BB8();
  sub_1D28742E8();
  *v9 = v12;
  *(v9 + 8) = *(&v12 + 1);
  *(v9 + 16) = v13;
  v10 = a2 + v4[11];
  sub_1D28772F8();
  *v10 = v12;
  *(v10 + 16) = v13;
  type metadata accessor for PromptViewModel(0);
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D2877638();
  return sub_1D22EC9BC(a1, a2 + v4[9], &qword_1EC6D9C10);
}

uint64_t type metadata accessor for PromptView()
{
  result = qword_1ED8A4FA0;
  if (!qword_1ED8A4FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D27B5BB8()
{
  result = qword_1ED8A1E28;
  if (!qword_1ED8A1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1E28);
  }

  return result;
}

void sub_1D27B5C34()
{
  sub_1D27B5E50(319, &qword_1ED89D068, type metadata accessor for PromptViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D22EAE8C();
    if (v1 <= 0x3F)
    {
      sub_1D27B5E50(319, &qword_1ED89DFD8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D27B5F54(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D27B5E50(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D27B5E50(319, &qword_1ED89DE60, MEMORY[0x1E697E730], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D27B5EB4();
              if (v6 <= 0x3F)
              {
                sub_1D27B5F54(319, &qword_1ED89D1A0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D27B5E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D27B5EB4()
{
  if (!qword_1ED89E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08);
    sub_1D27B9820(&qword_1ED8A1E18, sub_1D27B5BB8);
    v0 = sub_1D28742F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E0C0);
    }
  }
}

void sub_1D27B5F54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D27B5FC0@<X0>(uint64_t a1@<X8>)
{
  v163 = a1;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v120 - v2;
  v166 = type metadata accessor for PromptView();
  v157 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v169 = v3;
  v160 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v154 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1D28714D8();
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for PhotoSharingConfirmationParams(0);
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = &v120 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v126 = &v120 - v13;
  v131 = sub_1D2878048();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v142 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v120 - v16;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v159);
  v18 = &v120 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v120 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  v170 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v120 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E18);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v120 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E20);
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v120 - v28;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E28);
  MEMORY[0x1EEE9AC00](v128);
  v132 = &v120 - v29;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E30);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v120 - v30;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E38);
  v136 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v134 = &v120 - v31;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E40);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v137 = &v120 - v32;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E48);
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v140 = &v120 - v33;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E50);
  MEMORY[0x1EEE9AC00](v138);
  v145 = &v120 - v34;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E58);
  MEMORY[0x1EEE9AC00](v167);
  v148 = &v120 - v35;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E60);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v168 = &v120 - v36;
  sub_1D2877628();
  swift_getKeyPath();
  v125 = v21;
  sub_1D2877648();

  (*(v170 + 8))(v24, v22);
  v37 = v22;
  v38 = v1;
  sub_1D2877618();
  v39 = *&v179[0];
  swift_getKeyPath();
  *&v179[0] = v39;
  v170 = sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v40 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v39 + v40, v18, &qword_1EC6E1D50);
  LOBYTE(v40) = sub_1D27A1A0C();
  v158 = v18;
  sub_1D22BD238(v18, &qword_1EC6E1D50);
  if (v40)
  {

    v123 = 0;
  }

  else
  {
    swift_getKeyPath();
    *&v179[0] = v39;
    sub_1D28719E8();

    v41 = *(v39 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested);

    v123 = v41 ^ 1;
  }

  sub_1D27B7814(v165);
  v42 = v37;
  v43 = v38;
  sub_1D2877618();
  v44 = *&v179[0];
  swift_getKeyPath();
  *&v179[0] = v44;
  sub_1D28719E8();

  v45 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  v46 = v44 + v45;
  v47 = v126;
  sub_1D22BD1D0(v46, v126, &qword_1EC6D9A30);

  v48 = sub_1D2872008();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v47, 1, v48);
  v51 = 0;
  v164 = 0;
  v52 = v166;
  v124 = v49;
  if (!v50)
  {
    v53 = v121;
    sub_1D2871F58();
    v54 = sub_1D2871F38();
    v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
    v51 = 0;
    v56 = 0;
    if (!v55)
    {
      v51 = sub_1D2871F28();
    }

    v164 = v56;
    sub_1D22BD238(v53, &qword_1EC6D9D58);
  }

  v122 = v48;
  sub_1D22BD238(v47, &qword_1EC6D9A30);
  sub_1D2877618();
  v57 = v42;
  v58 = *&v179[0];
  sub_1D2877618();
  v59 = *&v179[0];
  sub_1D22BD1D0(v43 + *(v52 + 36), &v27[v25[12]], &qword_1EC6D9C10);
  v126 = v57;
  sub_1D2877618();
  v60 = *&v179[0];
  swift_getKeyPath();
  v61 = v43;
  *&v179[0] = v60;
  sub_1D28719E8();

  v62 = *(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode);

  sub_1D22EC9BC(v125, v27, &qword_1EC6E1E10);
  v27[v25[7]] = v123 & 1;
  (*(v130 + 32))(&v27[v25[8]], v165, v131);
  v63 = &v27[v25[9]];
  v64 = v164;
  *v63 = v51;
  v63[1] = v64;
  v65 = &v27[v25[10]];
  *v65 = sub_1D27B91B4;
  v65[1] = v58;
  v66 = &v27[v25[11]];
  *v66 = sub_1D27B91B8;
  v66[1] = v59;
  *&v27[v25[13]] = 100;
  v27[v25[14]] = v62;
  v67 = &v27[v25[15]];
  *v67 = swift_getKeyPath();
  v67[8] = 0;
  v68 = v129;
  sub_1D22EC9BC(v27, v129, &qword_1EC6E1E18);
  *(v68 + *(v127 + 36)) = 256;
  sub_1D27B7F58(v179);
  LOBYTE(v171) = 0;
  sub_1D28772F8();
  LOBYTE(v67) = v174;
  v69 = v175;
  v70 = v132;
  sub_1D22EC9BC(v68, v132, &qword_1EC6E1E20);
  v71 = v70 + *(v128 + 36);
  v72 = v179[3];
  *(v71 + 32) = v179[2];
  *(v71 + 48) = v72;
  *(v71 + 64) = v179[4];
  v73 = v179[1];
  *v71 = v179[0];
  *(v71 + 16) = v73;
  *(v71 + 80) = v67;
  *(v71 + 81) = *v178;
  *(v71 + 84) = *&v178[3];
  *(v71 + 88) = v69;
  v74 = v149;
  v165 = v61;
  sub_1D27B8324(v149);
  v75 = v150;
  sub_1D27B9450(v74, v150, type metadata accessor for PhotoSharingConfirmationParams);
  v76 = v135;
  v77 = v133;
  v78 = &v133[*(v135 + 36)];
  sub_1D27B9450(v75, v78, type metadata accessor for PhotoSharingConfirmationParams);
  v79 = v78 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
  (*(v124 + 16))(v79, v75, v122);
  v80 = (v75 + v147[5]);
  v81 = *v80;
  v82 = v80[1];
  LOBYTE(v68) = *(v75 + v147[6]);
  LOBYTE(v58) = *(v75 + v147[7]);
  v83 = type metadata accessor for PhotoSharingViewConfiguration(0);
  v84 = (v79 + v83[5]);
  *v84 = v81;
  v84[1] = v82;
  *(v79 + v83[6]) = v68;
  *(v79 + v83[7]) = v58;
  sub_1D2870F68();
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v85 = v153;
  v86 = __swift_project_value_buffer(v153, qword_1ED8B0060);
  (*(v151 + 2))(v152, v86, v85);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D27B91BC(v75);
  sub_1D27B91BC(v74);
  sub_1D22EC9BC(v70, v77, &qword_1EC6E1E28);
  v87 = (v165 + *(v166 + 40));
  LODWORD(v166) = *v87;
  v164 = *(v87 + 1);
  LODWORD(v154) = v87[16];
  LOBYTE(v174) = v166;
  v175 = v164;
  LOBYTE(v176) = v154;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E68);
  sub_1D28742C8();
  v174 = v171;
  v175 = v172;
  LOBYTE(v176) = v173;
  LOBYTE(v171) = 0;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E08);
  v89 = v77;
  v90 = sub_1D27B9218();
  v91 = sub_1D27B9820(&qword_1ED8A1E18, sub_1D27B5BB8);
  v92 = v134;
  v153 = v88;
  sub_1D2876EA8();

  sub_1D22BD238(v89, &qword_1EC6E1E30);
  v93 = sub_1D28740A8();
  v174 = v76;
  v175 = v88;
  v176 = v90;
  v177 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v137;
  v96 = v139;
  sub_1D28766F8();
  (*(v136 + 8))(v92, v96);
  swift_getKeyPath();
  LOBYTE(v171) = 0;
  v174 = v96;
  v175 = v93;
  v176 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v97 = v140;
  v98 = v143;
  sub_1D28768D8();

  (*(v141 + 8))(v95, v98);
  v99 = v165;
  v100 = v160;
  sub_1D27B9450(v165, v160, type metadata accessor for PromptView);
  v101 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v102 = swift_allocObject();
  sub_1D27B94B8(v100, v102 + v101);
  v103 = v145;
  (*(v144 + 32))(v145, v97, v146);
  v104 = (v103 + *(v138 + 36));
  *v104 = sub_1D27B951C;
  v104[1] = v102;
  v104[2] = 0;
  v104[3] = 0;
  v151 = type metadata accessor for PromptView;
  sub_1D27B9450(v99, v100, type metadata accessor for PromptView);
  v105 = swift_allocObject();
  sub_1D27B94B8(v100, v105 + v101);
  v106 = v148;
  sub_1D229E370(v103, v148);
  v107 = (v106 + *(v167 + 36));
  *v107 = 0;
  v107[1] = 0;
  v107[2] = sub_1D27B9534;
  v107[3] = v105;
  LOBYTE(v174) = v166;
  v175 = v164;
  LOBYTE(v176) = v154;
  sub_1D28742A8();
  sub_1D27B9450(v99, v100, type metadata accessor for PromptView);
  v108 = swift_allocObject();
  sub_1D27B94B8(v100, v108 + v101);
  v166 = sub_1D27B95CC();
  v164 = sub_1D27B9820(&qword_1ED8A1E10, sub_1D245C9B0);
  v109 = v153;
  sub_1D2876F48();

  sub_1D229E3E0(v106);
  v110 = v99;
  sub_1D2877618();
  v111 = v174;
  swift_getKeyPath();
  v174 = v111;
  sub_1D28719E8();

  v112 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  v113 = v111 + v112;
  v114 = v158;
  sub_1D22BD1D0(v113, v158, &qword_1EC6E1D50);

  v115 = v161;
  sub_1D22BD1D0(v114 + *(v159 + 28), v161, &unk_1EC6E1D40);
  sub_1D22BD238(v114, &qword_1EC6E1D50);
  sub_1D27B9450(v110, v100, v151);
  v116 = swift_allocObject();
  sub_1D27B94B8(v100, v116 + v101);
  v174 = v167;
  v175 = v109;
  v176 = v166;
  v177 = v164;
  swift_getOpaqueTypeConformance2();
  sub_1D27B9918();
  v117 = v156;
  v118 = v168;
  sub_1D2876F48();

  sub_1D22BD238(v115, &unk_1EC6E1D40);
  return (*(v155 + 8))(v118, v117);
}

uint64_t sub_1D27B7814@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_1D2875628();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v39 - v5;
  v47 = sub_1D2874E88();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v39 - v13;
  v46 = sub_1D2871F38();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1D2872008();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  v49 = v1;
  sub_1D2877618();
  v22 = v51;
  swift_getKeyPath();
  v51 = v22;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v22 + v23, v17, &qword_1EC6D9A30);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D9A30);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    if (sub_1D2871F78())
    {
      v24 = v45;
      sub_1D2871F58();
      v25 = v44;
      v26 = v46;
      if ((*(v44 + 48))(v24, 1, v46) == 1)
      {
        sub_1D22BD238(v24, &qword_1EC6D9D58);
      }

      else
      {
        v37 = v40;
        (*(v25 + 32))(v40, v24, v26);
        sub_1D2871ED8();
        (*(v25 + 8))(v37, v26);
      }

      sub_1D2878058();
      return (*(v19 + 8))(v21, v18);
    }

    (*(v19 + 8))(v21, v18);
  }

  v27 = type metadata accessor for PromptView();
  v28 = v49;
  sub_1D24CC284(v11);
  v29 = v48;
  sub_1D24CC0C4(v48);
  v30 = v47;
  (*(v6 + 104))(v8, *MEMORY[0x1E697E6C8], v47);
  v31 = sub_1D27E00AC(v11, v8, v29);
  v32 = *(v6 + 8);
  v32(v8, v30);
  sub_1D22BD238(v29, &qword_1EC6D99B8);
  v32(v11, v30);
  if ((v31 & 1) == 0)
  {
    v33 = (v28 + *(v27 + 28));
    v34 = *v33;
    if (*(v33 + 8) != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v35 = sub_1D28762E8();
      sub_1D2873BE8();

      v36 = v41;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v34, 0);
      (*(v42 + 8))(v36, v43);
    }
  }

  return sub_1D2877FE8();
}

uint64_t sub_1D27B7F58@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1D2871F38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2872008();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1;
  sub_1D2877618();

  sub_1D2871EC8();
  sub_1D2871F58();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &qword_1EC6D9D58);
    v26 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v26 = sub_1D2871ED8();
    v16 = v17;
    (*(v9 + 8))(v11, v8);
  }

  (*(v13 + 8))(v15, v12);
  sub_1D2877618();
  v18 = sub_1D27AE638();

  v19 = v27;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v28 + 8))(v19, v3);
  v20 = v31;
  v21 = v32;
  v22 = v33;
  sub_1D2877618();
  v23 = v30;
  result = sub_1D2877618();
  v25 = v30;
  *a1 = v26;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 48) = sub_1D27B9E2C;
  *(a1 + 56) = v23;
  *(a1 + 64) = sub_1D27B9E30;
  *(a1 + 72) = v25;
  return result;
}

int *sub_1D27B8324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PromptView();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v4;
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  sub_1D2877618();
  v14 = v45;
  swift_getKeyPath();
  v45 = v14;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v14 + v15, v10, &qword_1EC6D9A30);

  v16 = *(v12 + 48);
  v17 = v16(v10, 1, v11);
  v35 = v11;
  if (v17 == 1)
  {
    sub_1D2871EC8();
    if (v16(v10, 1, v11) != 1)
    {
      sub_1D22BD238(v10, &qword_1EC6D9A30);
    }
  }

  else
  {
    (*(v12 + 32))(v41, v10, v11);
  }

  v18 = v36;
  sub_1D2877618();
  v19 = v42;
  swift_getKeyPath();
  v42 = v19;
  sub_1D28719E8();

  v21 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  v20 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8);
  sub_1D2870F68();

  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v37 + 8))(v7, v5);
  v22 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v18;
  v26 = v40;
  sub_1D27B9450(v25, v40, type metadata accessor for PromptView);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_1D27B94B8(v26, v28 + v27);
  (*(v12 + 32))(a1, v41, v35);
  result = type metadata accessor for PhotoSharingConfirmationParams(0);
  v30 = (a1 + result[5]);
  *v30 = v21;
  v30[1] = v20;
  *(a1 + result[6]) = 1;
  *(a1 + result[7]) = 0;
  v31 = a1 + result[8];
  *v31 = v22;
  *(v31 + 8) = v23;
  *(v31 + 16) = v24;
  v32 = (a1 + result[9]);
  *v32 = sub_1D27B9DA0;
  v32[1] = v28;
  v33 = (a1 + result[10]);
  *v33 = 0;
  v33[1] = 0;
  return result;
}

uint64_t sub_1D27B8844(uint64_t a1)
{
  v2 = type metadata accessor for PromptView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  sub_1D2877618();
  v5 = v17;
  sub_1D27B9450(a1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PromptView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1D27B94B8(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  swift_getKeyPath();
  v14 = v5;
  v15 = sub_1D27B99CC;
  v16 = v7;
  v17 = v5;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  sub_1D2877618();
  v8 = v17;
  sub_1D2877618();
  v9 = sub_1D27A81C8();

  swift_getKeyPath();
  v17 = v8;
  sub_1D28719E8();

  v10 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (!v10)
  {
  }

  v11 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
  sub_1D2870F78();
  v10(v9 & 1);

  return sub_1D22D7900(v10, v11);
}